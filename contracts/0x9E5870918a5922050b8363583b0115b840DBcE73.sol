contract main {




// =====================  Runtime code  =====================


#
#  - claim(address arg1)
#
const MULTIPLIER = 1000000000000000000 * 10^18


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
uint32 stor51;
address owner;
uint256 stor51;
address stakeTokenAddress;
uint256 totalStaked;
mapping of uint256 userStaked;
mapping of struct rewards;
uint256 rewardsId;
mapping of struct userStates;

function userStates(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    return userStates[arg1][arg2].field_0, userStates[arg1][arg2].field_256
}

function stakeToken() payable {
    return stakeTokenAddress
}

function totalStaked() payable {
    return totalStaked
}

function owner() payable {
    return address(owner)
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
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(owner) = 0
    emit OwnershipTransferred(address(owner), 0);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    address(owner) = arg1
    emit OwnershipTransferred(address(owner), arg1);
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor0.field_8):
        address(owner) = msg.sender
        emit OwnershipTransferred(address(owner), msg.sender);
        stakeTokenAddress = arg1
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            address(owner) = msg.sender
            emit OwnershipTransferred(address(owner), msg.sender);
            stakeTokenAddress = arg1
        else:
            uint16(stor0.field_0) = 257
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                address(owner) = msg.sender
                emit OwnershipTransferred(address(owner), msg.sender);
                stakeTokenAddress = arg1
            else:
                uint16(stor0.field_0) = 257
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    address(owner) = msg.sender
                    emit OwnershipTransferred(address(owner), msg.sender);
                    stakeTokenAddress = arg1
                else:
                    uint16(stor0.field_0) = 257
                    uint8(stor0.field_8) = 0
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                    if uint8(stor0.field_8):
                        address(owner) = msg.sender
                        emit OwnershipTransferred(address(owner), msg.sender);
                        stakeTokenAddress = arg1
                    else:
                        uint16(stor0.field_0) = 257
                        address(owner) = msg.sender
                        emit OwnershipTransferred(address(owner), msg.sender);
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        stakeTokenAddress = arg1
                        uint8(stor0.field_8) = 0
}

function setNewReward(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    if address(owner) != msg.sender:
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
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[484 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), (arg4 * arg2) - (arg3 * arg2), 0
    mem[584] = 0
    call arg1 with:
       funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), (arg4 * arg2) - (arg3 * arg2), 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), (arg4 * arg2) - (arg3 * arg2), 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if arg1:
                revert with memory
                  from 128
                   len arg1
            revert with 0, 'SafeERC20: low-level call failed'
        if arg1:
            require arg1 >= 32
            require arg2 == bool(arg2)
            if not arg2:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[516] == bool(mem[516])
            if not mem[516]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit 0x97c9184a: rewardsId, address(arg1), arg2, arg3, arg4
}

function withdrawByOwner(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 132] = address(owner)
    if arg2 <= ext_call.return_data[0]:
        mem[ceil32(return_data.size) + 164] = arg2
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor51)
        mem[ceil32(return_data.size) + 128 len 4] = transfer(address rg1, uint256 rg2)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(arg1):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor51), uint32(stor51), arg2, 0
        mem[ceil32(return_data.size) + 328] = 0
        call arg1 with:
           funct Mask(32, 224, transfer(address rg1, uint256 rg2), Mask(224, 0, stor51), uint32(stor51), arg2, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, transfer(address rg1, uint256 rg2), Mask(224, 0, stor51), uint32(stor51), arg2, 0) << 288)
    else:
        mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor51)
        mem[ceil32(return_data.size) + 128 len 4] = transfer(address rg1, uint256 rg2)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(arg1):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor51), uint32(stor51), ext_call.return_data[0], 0
        mem[ceil32(return_data.size) + 328] = 0
        call arg1 with:
           funct Mask(32, 224, transfer(address rg1, uint256 rg2), Mask(224, 0, stor51), uint32(stor51), ext_call.return_data[0], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, transfer(address rg1, uint256 rg2), Mask(224, 0, stor51), uint32(stor51), ext_call.return_data[0], 0) << 288)
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
}

function claimReward(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if totalStaked:
        if block.number > rewards[arg2].field_512:
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
                    if rewards[arg2].field_1024 > !((1000000000000000000 * 10^18 * block.number * rewards[arg2].field_256) - (1000000000000000000 * 10^18 * rewards[arg2].field_1280 * rewards[arg2].field_256) / totalStaked):
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
                    if rewards[arg2].field_1024 > !((1000000000000000000 * 10^18 * rewards[arg2].field_768 * rewards[arg2].field_256) - (1000000000000000000 * 10^18 * rewards[arg2].field_1280 * rewards[arg2].field_256) / totalStaked):
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
    if userStates[address(arg1)][arg2].field_256 > !((rewards[arg2].field_1024 * userStaked[address(arg1)]) - (userStates[address(arg1)][arg2].field_0 * userStaked[address(arg1)]) / 1000000000000000000 * 10^18):
        revert with 'NH{q', 17
    userStates[address(arg1)][arg2].field_256 += (rewards[arg2].field_1024 * userStaked[address(arg1)]) - (userStates[address(arg1)][arg2].field_0 * userStaked[address(arg1)]) / 1000000000000000000 * 10^18
    userStates[address(arg1)][arg2].field_0 = rewards[arg2].field_1024
    if userStates[address(arg1)][arg2].field_256:
        mem[100] = this.address
        require ext_code.size(rewards[arg2].field_0)
        staticcall rewards[arg2].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > userStates[address(arg1)][arg2].field_256:
            mem[ceil32(return_data.size) + 132] = arg1
            mem[ceil32(return_data.size) + 164] = userStates[address(arg1)][arg2].field_256
            mem[ceil32(return_data.size) + 96] = 68
            mem[ceil32(return_data.size) + 132 len 28] = address(arg1) << 64
            mem[ceil32(return_data.size) + 128 len 4] = transfer(address rg1, uint256 rg2)
            mem[ceil32(return_data.size) + 196] = 32
            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(rewards[arg2].field_0):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 260 len 96] = transfer(address rg1, uint256 rg2), address(arg1) << 64, 0, userStates[address(arg1)][arg2].field_256, 0
            mem[ceil32(return_data.size) + 328] = 0
            call rewards[arg2].field_0 with:
               funct Mask(32, 224, transfer(address rg1, uint256 rg2), address(arg1) << 64, 0, userStates[address(arg1)][arg2].field_256, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, transfer(address rg1, uint256 rg2), address(arg1) << 64, 0, userStates[address(arg1)][arg2].field_256, 0) << 288)
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
        if 0 == totalStaked:
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
            _111 = mem[64]
            mem[64] = mem[64] + 192
            mem[_111] = rewards[idx].field_0
            mem[_111 + 32] = rewards[idx].field_256
            mem[_111 + 64] = rewards[idx].field_512
            mem[_111 + 96] = rewards[idx].field_768
            mem[_111 + 128] = rewards[idx].field_1024
            mem[_111 + 160] = rewards[idx].field_1280
            if block.number > rewards[idx].field_512:
                if block.number < rewards[idx].field_768:
                    if block.number < rewards[idx].field_1280:
                        revert with 'NH{q', 17
                    if block.number - rewards[idx].field_1280:
                        if block.number - rewards[idx].field_1280 and rewards[idx].field_256 > -1 / block.number - rewards[idx].field_1280:
                            revert with 'NH{q', 17
                        mem[0] = idx
                        mem[32] = sha3(address(arg1), 106)
                        _140 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_140] = userStates[address(arg1)][idx].field_0
                        mem[_140 + 32] = userStates[address(arg1)][idx].field_256
                        if userStates[address(arg1)][idx].field_0:
                            if (block.number * rewards[idx].field_256) - (rewards[idx].field_1280 * rewards[idx].field_256) and 1000000000000000000 * 10^18 > -1 / (block.number * rewards[idx].field_256) - (rewards[idx].field_1280 * rewards[idx].field_256):
                                revert with 'NH{q', 17
                            if not totalStaked:
                                revert with 'NH{q', 18
                            if rewards[idx].field_1024 < userStates[address(arg1)][idx].field_0:
                                revert with 'NH{q', 17
                            if rewards[idx].field_1024 - userStates[address(arg1)][idx].field_0 > !((1000000000000000000 * 10^18 * block.number * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked):
                                revert with 'NH{q', 17
                            mem[0] = arg1
                            mem[32] = 103
                            if rewards[idx].field_1024 - userStates[address(arg1)][idx].field_0 + ((1000000000000000000 * 10^18 * block.number * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked) and userStaked[address(arg1)] > -1 / rewards[idx].field_1024 - userStates[address(arg1)][idx].field_0 + ((1000000000000000000 * 10^18 * block.number * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked):
                                revert with 'NH{q', 17
                            if userStates[address(arg1)][idx].field_256 > !((rewards[idx].field_1024 * userStaked[address(arg1)]) - (userStates[address(arg1)][idx].field_0 * userStaked[address(arg1)]) + ((1000000000000000000 * 10^18 * block.number * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked * userStaked[address(arg1)]) / 1000000000000000000 * 10^18):
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
                                if rewards[idx].field_1024 - userStates[address(arg1)][idx].field_0 > !((1000000000000000000 * 10^18 * block.number * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked):
                                    revert with 'NH{q', 17
                                mem[0] = arg1
                                mem[32] = 103
                                if rewards[idx].field_1024 - userStates[address(arg1)][idx].field_0 + ((1000000000000000000 * 10^18 * block.number * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked) and userStaked[address(arg1)] > -1 / rewards[idx].field_1024 - userStates[address(arg1)][idx].field_0 + ((1000000000000000000 * 10^18 * block.number * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked):
                                    revert with 'NH{q', 17
                                if userStates[address(arg1)][idx].field_256 > !((rewards[idx].field_1024 * userStaked[address(arg1)]) - (userStates[address(arg1)][idx].field_0 * userStaked[address(arg1)]) + ((1000000000000000000 * 10^18 * block.number * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked * userStaked[address(arg1)]) / 1000000000000000000 * 10^18):
                                    revert with 'NH{q', 17
                                if idx < 1:
                                    revert with 'NH{q', 17
                                if idx - 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx - 1) + 128] = userStates[address(arg1)][idx].field_256 + ((rewards[idx].field_1024 * userStaked[address(arg1)]) - (userStates[address(arg1)][idx].field_0 * userStaked[address(arg1)]) + ((1000000000000000000 * 10^18 * block.number * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked * userStaked[address(arg1)]) / 1000000000000000000 * 10^18)
                            else:
                                mem[_140] = 1000000000000000000 * 10^18
                                if (block.number * rewards[idx].field_256) - (rewards[idx].field_1280 * rewards[idx].field_256) and 1000000000000000000 * 10^18 > -1 / (block.number * rewards[idx].field_256) - (rewards[idx].field_1280 * rewards[idx].field_256):
                                    revert with 'NH{q', 17
                                if not totalStaked:
                                    revert with 'NH{q', 18
                                if rewards[idx].field_1024 < 1000000000000000000 * 10^18:
                                    revert with 'NH{q', 17
                                if rewards[idx].field_1024 - 1000000000000000000 * 10^18 > !((1000000000000000000 * 10^18 * block.number * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked):
                                    revert with 'NH{q', 17
                                mem[0] = arg1
                                mem[32] = 103
                                if rewards[idx].field_1024 + ((1000000000000000000 * 10^18 * block.number * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked) - 1000000000000000000 * 10^18 and userStaked[address(arg1)] > -1 / rewards[idx].field_1024 + ((1000000000000000000 * 10^18 * block.number * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked) - 1000000000000000000 * 10^18:
                                    revert with 'NH{q', 17
                                if userStates[address(arg1)][idx].field_256 > !((rewards[idx].field_1024 * userStaked[address(arg1)]) - (1000000000000000000 * 10^18 * userStaked[address(arg1)]) + ((1000000000000000000 * 10^18 * block.number * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked * userStaked[address(arg1)]) / 1000000000000000000 * 10^18):
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
                        _143 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_143] = userStates[address(arg1)][idx].field_0
                        mem[_143 + 32] = userStates[address(arg1)][idx].field_256
                        if userStates[address(arg1)][idx].field_0:
                            if (rewards[idx].field_768 * rewards[idx].field_256) - (rewards[idx].field_1280 * rewards[idx].field_256) and 1000000000000000000 * 10^18 > -1 / (rewards[idx].field_768 * rewards[idx].field_256) - (rewards[idx].field_1280 * rewards[idx].field_256):
                                revert with 'NH{q', 17
                            if not totalStaked:
                                revert with 'NH{q', 18
                            if rewards[idx].field_1024 < userStates[address(arg1)][idx].field_0:
                                revert with 'NH{q', 17
                            if rewards[idx].field_1024 - userStates[address(arg1)][idx].field_0 > !((1000000000000000000 * 10^18 * rewards[idx].field_768 * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked):
                                revert with 'NH{q', 17
                            mem[0] = arg1
                            mem[32] = 103
                            if rewards[idx].field_1024 - userStates[address(arg1)][idx].field_0 + ((1000000000000000000 * 10^18 * rewards[idx].field_768 * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked) and userStaked[address(arg1)] > -1 / rewards[idx].field_1024 - userStates[address(arg1)][idx].field_0 + ((1000000000000000000 * 10^18 * rewards[idx].field_768 * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked):
                                revert with 'NH{q', 17
                            if userStates[address(arg1)][idx].field_256 > !((rewards[idx].field_1024 * userStaked[address(arg1)]) - (userStates[address(arg1)][idx].field_0 * userStaked[address(arg1)]) + ((1000000000000000000 * 10^18 * rewards[idx].field_768 * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked * userStaked[address(arg1)]) / 1000000000000000000 * 10^18):
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
                                if rewards[idx].field_1024 - userStates[address(arg1)][idx].field_0 > !((1000000000000000000 * 10^18 * rewards[idx].field_768 * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked):
                                    revert with 'NH{q', 17
                                mem[0] = arg1
                                mem[32] = 103
                                if rewards[idx].field_1024 - userStates[address(arg1)][idx].field_0 + ((1000000000000000000 * 10^18 * rewards[idx].field_768 * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked) and userStaked[address(arg1)] > -1 / rewards[idx].field_1024 - userStates[address(arg1)][idx].field_0 + ((1000000000000000000 * 10^18 * rewards[idx].field_768 * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked):
                                    revert with 'NH{q', 17
                                if userStates[address(arg1)][idx].field_256 > !((rewards[idx].field_1024 * userStaked[address(arg1)]) - (userStates[address(arg1)][idx].field_0 * userStaked[address(arg1)]) + ((1000000000000000000 * 10^18 * rewards[idx].field_768 * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked * userStaked[address(arg1)]) / 1000000000000000000 * 10^18):
                                    revert with 'NH{q', 17
                                if idx < 1:
                                    revert with 'NH{q', 17
                                if idx - 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx - 1) + 128] = userStates[address(arg1)][idx].field_256 + ((rewards[idx].field_1024 * userStaked[address(arg1)]) - (userStates[address(arg1)][idx].field_0 * userStaked[address(arg1)]) + ((1000000000000000000 * 10^18 * rewards[idx].field_768 * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked * userStaked[address(arg1)]) / 1000000000000000000 * 10^18)
                            else:
                                mem[_143] = 1000000000000000000 * 10^18
                                if (rewards[idx].field_768 * rewards[idx].field_256) - (rewards[idx].field_1280 * rewards[idx].field_256) and 1000000000000000000 * 10^18 > -1 / (rewards[idx].field_768 * rewards[idx].field_256) - (rewards[idx].field_1280 * rewards[idx].field_256):
                                    revert with 'NH{q', 17
                                if not totalStaked:
                                    revert with 'NH{q', 18
                                if rewards[idx].field_1024 < 1000000000000000000 * 10^18:
                                    revert with 'NH{q', 17
                                if rewards[idx].field_1024 - 1000000000000000000 * 10^18 > !((1000000000000000000 * 10^18 * rewards[idx].field_768 * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked):
                                    revert with 'NH{q', 17
                                mem[0] = arg1
                                mem[32] = 103
                                if rewards[idx].field_1024 + ((1000000000000000000 * 10^18 * rewards[idx].field_768 * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked) - 1000000000000000000 * 10^18 and userStaked[address(arg1)] > -1 / rewards[idx].field_1024 + ((1000000000000000000 * 10^18 * rewards[idx].field_768 * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked) - 1000000000000000000 * 10^18:
                                    revert with 'NH{q', 17
                                if userStates[address(arg1)][idx].field_256 > !((rewards[idx].field_1024 * userStaked[address(arg1)]) - (1000000000000000000 * 10^18 * userStaked[address(arg1)]) + ((1000000000000000000 * 10^18 * rewards[idx].field_768 * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked * userStaked[address(arg1)]) / 1000000000000000000 * 10^18):
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
        if 0 == totalStaked:
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
            _114 = mem[64]
            mem[64] = mem[64] + 192
            mem[_114] = rewards[idx].field_0
            mem[_114 + 32] = rewards[idx].field_256
            mem[_114 + 64] = rewards[idx].field_512
            mem[_114 + 96] = rewards[idx].field_768
            mem[_114 + 128] = rewards[idx].field_1024
            mem[_114 + 160] = rewards[idx].field_1280
            if block.number > rewards[idx].field_512:
                if block.number < rewards[idx].field_768:
                    if block.number < rewards[idx].field_1280:
                        revert with 'NH{q', 17
                    if block.number - rewards[idx].field_1280:
                        if block.number - rewards[idx].field_1280 and rewards[idx].field_256 > -1 / block.number - rewards[idx].field_1280:
                            revert with 'NH{q', 17
                        mem[0] = idx
                        mem[32] = sha3(address(arg1), 106)
                        _146 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_146] = userStates[address(arg1)][idx].field_0
                        mem[_146 + 32] = userStates[address(arg1)][idx].field_256
                        if userStates[address(arg1)][idx].field_0:
                            if (block.number * rewards[idx].field_256) - (rewards[idx].field_1280 * rewards[idx].field_256) and 1000000000000000000 * 10^18 > -1 / (block.number * rewards[idx].field_256) - (rewards[idx].field_1280 * rewards[idx].field_256):
                                revert with 'NH{q', 17
                            if not totalStaked:
                                revert with 'NH{q', 18
                            if rewards[idx].field_1024 < userStates[address(arg1)][idx].field_0:
                                revert with 'NH{q', 17
                            if rewards[idx].field_1024 - userStates[address(arg1)][idx].field_0 > !((1000000000000000000 * 10^18 * block.number * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked):
                                revert with 'NH{q', 17
                            mem[0] = arg1
                            mem[32] = 103
                            if rewards[idx].field_1024 - userStates[address(arg1)][idx].field_0 + ((1000000000000000000 * 10^18 * block.number * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked) and userStaked[address(arg1)] > -1 / rewards[idx].field_1024 - userStates[address(arg1)][idx].field_0 + ((1000000000000000000 * 10^18 * block.number * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked):
                                revert with 'NH{q', 17
                            if userStates[address(arg1)][idx].field_256 > !((rewards[idx].field_1024 * userStaked[address(arg1)]) - (userStates[address(arg1)][idx].field_0 * userStaked[address(arg1)]) + ((1000000000000000000 * 10^18 * block.number * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked * userStaked[address(arg1)]) / 1000000000000000000 * 10^18):
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
                                if rewards[idx].field_1024 - userStates[address(arg1)][idx].field_0 > !((1000000000000000000 * 10^18 * block.number * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked):
                                    revert with 'NH{q', 17
                                mem[0] = arg1
                                mem[32] = 103
                                if rewards[idx].field_1024 - userStates[address(arg1)][idx].field_0 + ((1000000000000000000 * 10^18 * block.number * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked) and userStaked[address(arg1)] > -1 / rewards[idx].field_1024 - userStates[address(arg1)][idx].field_0 + ((1000000000000000000 * 10^18 * block.number * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked):
                                    revert with 'NH{q', 17
                                if userStates[address(arg1)][idx].field_256 > !((rewards[idx].field_1024 * userStaked[address(arg1)]) - (userStates[address(arg1)][idx].field_0 * userStaked[address(arg1)]) + ((1000000000000000000 * 10^18 * block.number * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked * userStaked[address(arg1)]) / 1000000000000000000 * 10^18):
                                    revert with 'NH{q', 17
                                if idx < 1:
                                    revert with 'NH{q', 17
                                if idx - 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx - 1) + 128] = userStates[address(arg1)][idx].field_256 + ((rewards[idx].field_1024 * userStaked[address(arg1)]) - (userStates[address(arg1)][idx].field_0 * userStaked[address(arg1)]) + ((1000000000000000000 * 10^18 * block.number * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked * userStaked[address(arg1)]) / 1000000000000000000 * 10^18)
                            else:
                                mem[_146] = 1000000000000000000 * 10^18
                                if (block.number * rewards[idx].field_256) - (rewards[idx].field_1280 * rewards[idx].field_256) and 1000000000000000000 * 10^18 > -1 / (block.number * rewards[idx].field_256) - (rewards[idx].field_1280 * rewards[idx].field_256):
                                    revert with 'NH{q', 17
                                if not totalStaked:
                                    revert with 'NH{q', 18
                                if rewards[idx].field_1024 < 1000000000000000000 * 10^18:
                                    revert with 'NH{q', 17
                                if rewards[idx].field_1024 - 1000000000000000000 * 10^18 > !((1000000000000000000 * 10^18 * block.number * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked):
                                    revert with 'NH{q', 17
                                mem[0] = arg1
                                mem[32] = 103
                                if rewards[idx].field_1024 + ((1000000000000000000 * 10^18 * block.number * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked) - 1000000000000000000 * 10^18 and userStaked[address(arg1)] > -1 / rewards[idx].field_1024 + ((1000000000000000000 * 10^18 * block.number * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked) - 1000000000000000000 * 10^18:
                                    revert with 'NH{q', 17
                                if userStates[address(arg1)][idx].field_256 > !((rewards[idx].field_1024 * userStaked[address(arg1)]) - (1000000000000000000 * 10^18 * userStaked[address(arg1)]) + ((1000000000000000000 * 10^18 * block.number * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked * userStaked[address(arg1)]) / 1000000000000000000 * 10^18):
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
                        _149 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_149] = userStates[address(arg1)][idx].field_0
                        mem[_149 + 32] = userStates[address(arg1)][idx].field_256
                        if userStates[address(arg1)][idx].field_0:
                            if (rewards[idx].field_768 * rewards[idx].field_256) - (rewards[idx].field_1280 * rewards[idx].field_256) and 1000000000000000000 * 10^18 > -1 / (rewards[idx].field_768 * rewards[idx].field_256) - (rewards[idx].field_1280 * rewards[idx].field_256):
                                revert with 'NH{q', 17
                            if not totalStaked:
                                revert with 'NH{q', 18
                            if rewards[idx].field_1024 < userStates[address(arg1)][idx].field_0:
                                revert with 'NH{q', 17
                            if rewards[idx].field_1024 - userStates[address(arg1)][idx].field_0 > !((1000000000000000000 * 10^18 * rewards[idx].field_768 * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked):
                                revert with 'NH{q', 17
                            mem[0] = arg1
                            mem[32] = 103
                            if rewards[idx].field_1024 - userStates[address(arg1)][idx].field_0 + ((1000000000000000000 * 10^18 * rewards[idx].field_768 * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked) and userStaked[address(arg1)] > -1 / rewards[idx].field_1024 - userStates[address(arg1)][idx].field_0 + ((1000000000000000000 * 10^18 * rewards[idx].field_768 * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked):
                                revert with 'NH{q', 17
                            if userStates[address(arg1)][idx].field_256 > !((rewards[idx].field_1024 * userStaked[address(arg1)]) - (userStates[address(arg1)][idx].field_0 * userStaked[address(arg1)]) + ((1000000000000000000 * 10^18 * rewards[idx].field_768 * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked * userStaked[address(arg1)]) / 1000000000000000000 * 10^18):
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
                                if rewards[idx].field_1024 - userStates[address(arg1)][idx].field_0 > !((1000000000000000000 * 10^18 * rewards[idx].field_768 * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked):
                                    revert with 'NH{q', 17
                                mem[0] = arg1
                                mem[32] = 103
                                if rewards[idx].field_1024 - userStates[address(arg1)][idx].field_0 + ((1000000000000000000 * 10^18 * rewards[idx].field_768 * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked) and userStaked[address(arg1)] > -1 / rewards[idx].field_1024 - userStates[address(arg1)][idx].field_0 + ((1000000000000000000 * 10^18 * rewards[idx].field_768 * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked):
                                    revert with 'NH{q', 17
                                if userStates[address(arg1)][idx].field_256 > !((rewards[idx].field_1024 * userStaked[address(arg1)]) - (userStates[address(arg1)][idx].field_0 * userStaked[address(arg1)]) + ((1000000000000000000 * 10^18 * rewards[idx].field_768 * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked * userStaked[address(arg1)]) / 1000000000000000000 * 10^18):
                                    revert with 'NH{q', 17
                                if idx < 1:
                                    revert with 'NH{q', 17
                                if idx - 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx - 1) + 128] = userStates[address(arg1)][idx].field_256 + ((rewards[idx].field_1024 * userStaked[address(arg1)]) - (userStates[address(arg1)][idx].field_0 * userStaked[address(arg1)]) + ((1000000000000000000 * 10^18 * rewards[idx].field_768 * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked * userStaked[address(arg1)]) / 1000000000000000000 * 10^18)
                            else:
                                mem[_149] = 1000000000000000000 * 10^18
                                if (rewards[idx].field_768 * rewards[idx].field_256) - (rewards[idx].field_1280 * rewards[idx].field_256) and 1000000000000000000 * 10^18 > -1 / (rewards[idx].field_768 * rewards[idx].field_256) - (rewards[idx].field_1280 * rewards[idx].field_256):
                                    revert with 'NH{q', 17
                                if not totalStaked:
                                    revert with 'NH{q', 18
                                if rewards[idx].field_1024 < 1000000000000000000 * 10^18:
                                    revert with 'NH{q', 17
                                if rewards[idx].field_1024 - 1000000000000000000 * 10^18 > !((1000000000000000000 * 10^18 * rewards[idx].field_768 * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked):
                                    revert with 'NH{q', 17
                                mem[0] = arg1
                                mem[32] = 103
                                if rewards[idx].field_1024 + ((1000000000000000000 * 10^18 * rewards[idx].field_768 * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked) - 1000000000000000000 * 10^18 and userStaked[address(arg1)] > -1 / rewards[idx].field_1024 + ((1000000000000000000 * 10^18 * rewards[idx].field_768 * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked) - 1000000000000000000 * 10^18:
                                    revert with 'NH{q', 17
                                if userStates[address(arg1)][idx].field_256 > !((rewards[idx].field_1024 * userStaked[address(arg1)]) - (1000000000000000000 * 10^18 * userStaked[address(arg1)]) + ((1000000000000000000 * 10^18 * rewards[idx].field_768 * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked * userStaked[address(arg1)]) / 1000000000000000000 * 10^18):
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
    if ceil32(32 * arg1.length) + 97 > test266151307() or ceil32(32 * arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = ceil32(32 * arg1.length) + 97
    mem[96] = arg1.length
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    idx = 0
    while idx < arg1.length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _3216 = mem[(32 * idx) + 128]
        s = 1
        while s <= rewardsId:
            if not totalStaked:
                if userStates[address(_3216)][s].field_0:
                    if rewards[s].field_1024 < userStates[address(_3216)][s].field_0:
                        revert with 'NH{q', 17
                    mem[0] = address(_3216)
                    mem[32] = 103
                    if rewards[s].field_1024 - userStates[address(_3216)][s].field_0 and userStaked[address(_3216)] > -1 / rewards[s].field_1024 - userStates[address(_3216)][s].field_0:
                        revert with 'NH{q', 17
                    if userStates[address(_3216)][s].field_256 > !((rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18):
                        revert with 'NH{q', 17
                    userStates[address(_3216)][s].field_256 += (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
                    userStates[address(_3216)][s].field_0 = rewards[s].field_1024
                    if not userStates[address(_3216)][s].field_256:
                        mem[mem[64]] = s
                        mem[mem[64] + 32] = address(_3216)
                        mem[mem[64] + 64] = userStates[address(_3216)][s].field_0
                        mem[mem[64] + 96] = (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
                    else:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(rewards[s].field_0)
                        staticcall rewards[s].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4857 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_4857] <= userStates[address(_3216)][s].field_256:
                            mem[mem[64]] = s
                            mem[mem[64] + 32] = address(_3216)
                            mem[mem[64] + 64] = userStates[address(_3216)][s].field_0
                            mem[mem[64] + 96] = (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
                        else:
                            _4903 = mem[64]
                            mem[mem[64] + 36] = address(_3216)
                            mem[mem[64] + 68] = userStates[address(_3216)][s].field_256
                            _4921 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_4921 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_4921 + 36 len 28]
                            mem[64] = _4903 + 164
                            mem[_4903 + 100] = 32
                            mem[_4903 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(rewards[s].field_0):
                                revert with 0, 'Address: call to non-contract'
                            _4985 = mem[_4921]
                            idx = 0
                            while idx < _4985:
                                mem[idx + _4903 + 164] = mem[idx + _4921 + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_4985) > _4985:
                                mem[_4985 + _4903 + 164] = 0
                            call rewards[s].field_0.mem[_4903 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_4903 + 168 len _4985 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_4903 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_4903 + 168] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _4903 + 232] = mem[idx + _4903 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_4903 + 232]
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                userStates[address(_3216)][s].field_256 = 0
                                mem[_4903 + 164] = s
                                mem[_4903 + 196] = address(_3216)
                                mem[_4903 + 228] = userStates[address(_3216)][s].field_0
                                mem[_4903 + 260] = (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
                            else:
                                mem[64] = _4903 + ceil32(return_data.size) + 165
                                mem[_4903 + 164] = return_data.size
                                mem[_4903 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_4903 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_4903 + ceil32(return_data.size) + 169] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _4903 + ceil32(return_data.size) + 233] = mem[idx + _4903 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_4903 + ceil32(return_data.size) + 233]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_4903 + 196] == bool(mem[_4903 + 196])
                                    if not mem[_4903 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                userStates[address(_3216)][s].field_256 = 0
                                mem[_4903 + ceil32(return_data.size) + 165] = s
                                mem[_4903 + ceil32(return_data.size) + 197] = address(_3216)
                                mem[_4903 + ceil32(return_data.size) + 229] = userStates[address(_3216)][s].field_0
                                mem[_4903 + ceil32(return_data.size) + 261] = (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
                else:
                    if rewards[s].field_1024 < 1000000000000000000 * 10^18:
                        if rewards[s].field_1024 < userStates[address(_3216)][s].field_0:
                            revert with 'NH{q', 17
                        mem[0] = address(_3216)
                        mem[32] = 103
                        if rewards[s].field_1024 - userStates[address(_3216)][s].field_0 and userStaked[address(_3216)] > -1 / rewards[s].field_1024 - userStates[address(_3216)][s].field_0:
                            revert with 'NH{q', 17
                        if userStates[address(_3216)][s].field_256 > !((rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18):
                            revert with 'NH{q', 17
                        userStates[address(_3216)][s].field_256 += (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
                        userStates[address(_3216)][s].field_0 = rewards[s].field_1024
                        if not userStates[address(_3216)][s].field_256:
                            mem[mem[64]] = s
                            mem[mem[64] + 32] = address(_3216)
                            mem[mem[64] + 64] = userStates[address(_3216)][s].field_0
                            mem[mem[64] + 96] = (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
                        else:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(rewards[s].field_0)
                            staticcall rewards[s].field_0.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4867 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_4867] <= userStates[address(_3216)][s].field_256:
                                mem[mem[64]] = s
                                mem[mem[64] + 32] = address(_3216)
                                mem[mem[64] + 64] = userStates[address(_3216)][s].field_0
                                mem[mem[64] + 96] = (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
                            else:
                                _4923 = mem[64]
                                mem[mem[64] + 36] = address(_3216)
                                mem[mem[64] + 68] = userStates[address(_3216)][s].field_256
                                _4940 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_4940 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_4940 + 36 len 28]
                                mem[64] = _4923 + 164
                                mem[_4923 + 100] = 32
                                mem[_4923 + 132] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(rewards[s].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                _5007 = mem[_4940]
                                idx = 0
                                while idx < _5007:
                                    mem[idx + _4923 + 164] = mem[idx + _4940 + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_5007) > _5007:
                                    mem[_5007 + _4923 + 164] = 0
                                call rewards[s].field_0.mem[_4923 + 164 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_4923 + 168 len _5007 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_4923 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_4923 + 168] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _4923 + 232] = mem[idx + _4923 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_4923 + 232]
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    userStates[address(_3216)][s].field_256 = 0
                                    mem[_4923 + 164] = s
                                    mem[_4923 + 196] = address(_3216)
                                    mem[_4923 + 228] = userStates[address(_3216)][s].field_0
                                    mem[_4923 + 260] = (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
                                else:
                                    mem[64] = _4923 + ceil32(return_data.size) + 165
                                    mem[_4923 + 164] = return_data.size
                                    mem[_4923 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_4923 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_4923 + ceil32(return_data.size) + 169] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _4923 + ceil32(return_data.size) + 233] = mem[idx + _4923 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_4923 + ceil32(return_data.size) + 233]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_4923 + 196] == bool(mem[_4923 + 196])
                                        if not mem[_4923 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    userStates[address(_3216)][s].field_256 = 0
                                    mem[_4923 + ceil32(return_data.size) + 165] = s
                                    mem[_4923 + ceil32(return_data.size) + 197] = address(_3216)
                                    mem[_4923 + ceil32(return_data.size) + 229] = userStates[address(_3216)][s].field_0
                                    mem[_4923 + ceil32(return_data.size) + 261] = (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
                    else:
                        userStates[address(_3216)][s].field_0 = 1000000000000000000 * 10^18
                        if rewards[s].field_1024 < userStates[address(_3216)][s].field_0:
                            revert with 'NH{q', 17
                        mem[0] = address(_3216)
                        mem[32] = 103
                        if rewards[s].field_1024 - userStates[address(_3216)][s].field_0 and userStaked[address(_3216)] > -1 / rewards[s].field_1024 - userStates[address(_3216)][s].field_0:
                            revert with 'NH{q', 17
                        if userStates[address(_3216)][s].field_256 > !((rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18):
                            revert with 'NH{q', 17
                        userStates[address(_3216)][s].field_256 += (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
                        userStates[address(_3216)][s].field_0 = rewards[s].field_1024
                        if not userStates[address(_3216)][s].field_256:
                            mem[mem[64]] = s
                            mem[mem[64] + 32] = address(_3216)
                            mem[mem[64] + 64] = userStates[address(_3216)][s].field_0
                            mem[mem[64] + 96] = (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
                        else:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(rewards[s].field_0)
                            staticcall rewards[s].field_0.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4880 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_4880] <= userStates[address(_3216)][s].field_256:
                                mem[mem[64]] = s
                                mem[mem[64] + 32] = address(_3216)
                                mem[mem[64] + 64] = userStates[address(_3216)][s].field_0
                                mem[mem[64] + 96] = (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
                            else:
                                _4942 = mem[64]
                                mem[mem[64] + 36] = address(_3216)
                                mem[mem[64] + 68] = userStates[address(_3216)][s].field_256
                                _4954 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_4954 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_4954 + 36 len 28]
                                mem[64] = _4942 + 164
                                mem[_4942 + 100] = 32
                                mem[_4942 + 132] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(rewards[s].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                _5025 = mem[_4954]
                                idx = 0
                                while idx < _5025:
                                    mem[idx + _4942 + 164] = mem[idx + _4954 + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_5025) > _5025:
                                    mem[_5025 + _4942 + 164] = 0
                                call rewards[s].field_0.mem[_4942 + 164 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_4942 + 168 len _5025 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_4942 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_4942 + 168] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _4942 + 232] = mem[idx + _4942 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_4942 + 232]
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    userStates[address(_3216)][s].field_256 = 0
                                    mem[_4942 + 164] = s
                                    mem[_4942 + 196] = address(_3216)
                                    mem[_4942 + 228] = userStates[address(_3216)][s].field_0
                                    mem[_4942 + 260] = (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
                                else:
                                    mem[64] = _4942 + ceil32(return_data.size) + 165
                                    mem[_4942 + 164] = return_data.size
                                    mem[_4942 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_4942 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_4942 + ceil32(return_data.size) + 169] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _4942 + ceil32(return_data.size) + 233] = mem[idx + _4942 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_4942 + ceil32(return_data.size) + 233]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_4942 + 196] == bool(mem[_4942 + 196])
                                        if not mem[_4942 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    userStates[address(_3216)][s].field_256 = 0
                                    mem[_4942 + ceil32(return_data.size) + 165] = s
                                    mem[_4942 + ceil32(return_data.size) + 197] = address(_3216)
                                    mem[_4942 + ceil32(return_data.size) + 229] = userStates[address(_3216)][s].field_0
                                    mem[_4942 + ceil32(return_data.size) + 261] = (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
            else:
                if block.number <= rewards[s].field_512:
                    if userStates[address(_3216)][s].field_0:
                        if rewards[s].field_1024 < userStates[address(_3216)][s].field_0:
                            revert with 'NH{q', 17
                        mem[0] = address(_3216)
                        mem[32] = 103
                        if rewards[s].field_1024 - userStates[address(_3216)][s].field_0 and userStaked[address(_3216)] > -1 / rewards[s].field_1024 - userStates[address(_3216)][s].field_0:
                            revert with 'NH{q', 17
                        if userStates[address(_3216)][s].field_256 > !((rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18):
                            revert with 'NH{q', 17
                        userStates[address(_3216)][s].field_256 += (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
                        userStates[address(_3216)][s].field_0 = rewards[s].field_1024
                        if not userStates[address(_3216)][s].field_256:
                            mem[mem[64]] = s
                            mem[mem[64] + 32] = address(_3216)
                            mem[mem[64] + 64] = userStates[address(_3216)][s].field_0
                            mem[mem[64] + 96] = (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
                        else:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(rewards[s].field_0)
                            staticcall rewards[s].field_0.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4862 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_4862] <= userStates[address(_3216)][s].field_256:
                                mem[mem[64]] = s
                                mem[mem[64] + 32] = address(_3216)
                                mem[mem[64] + 64] = userStates[address(_3216)][s].field_0
                                mem[mem[64] + 96] = (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
                            else:
                                _4918 = mem[64]
                                mem[mem[64] + 36] = address(_3216)
                                mem[mem[64] + 68] = userStates[address(_3216)][s].field_256
                                _4934 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_4934 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_4934 + 36 len 28]
                                mem[64] = _4918 + 164
                                mem[_4918 + 100] = 32
                                mem[_4918 + 132] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(rewards[s].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                _5001 = mem[_4934]
                                idx = 0
                                while idx < _5001:
                                    mem[idx + _4918 + 164] = mem[idx + _4934 + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_5001) > _5001:
                                    mem[_5001 + _4918 + 164] = 0
                                call rewards[s].field_0.mem[_4918 + 164 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_4918 + 168 len _5001 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_4918 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_4918 + 168] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _4918 + 232] = mem[idx + _4918 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_4918 + 232]
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    userStates[address(_3216)][s].field_256 = 0
                                    mem[_4918 + 164] = s
                                    mem[_4918 + 196] = address(_3216)
                                    mem[_4918 + 228] = userStates[address(_3216)][s].field_0
                                    mem[_4918 + 260] = (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
                                else:
                                    mem[64] = _4918 + ceil32(return_data.size) + 165
                                    mem[_4918 + 164] = return_data.size
                                    mem[_4918 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_4918 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_4918 + ceil32(return_data.size) + 169] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _4918 + ceil32(return_data.size) + 233] = mem[idx + _4918 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_4918 + ceil32(return_data.size) + 233]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_4918 + 196] == bool(mem[_4918 + 196])
                                        if not mem[_4918 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    userStates[address(_3216)][s].field_256 = 0
                                    mem[_4918 + ceil32(return_data.size) + 165] = s
                                    mem[_4918 + ceil32(return_data.size) + 197] = address(_3216)
                                    mem[_4918 + ceil32(return_data.size) + 229] = userStates[address(_3216)][s].field_0
                                    mem[_4918 + ceil32(return_data.size) + 261] = (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
                    else:
                        if rewards[s].field_1024 < 1000000000000000000 * 10^18:
                            if rewards[s].field_1024 < userStates[address(_3216)][s].field_0:
                                revert with 'NH{q', 17
                            mem[0] = address(_3216)
                            mem[32] = 103
                            if rewards[s].field_1024 - userStates[address(_3216)][s].field_0 and userStaked[address(_3216)] > -1 / rewards[s].field_1024 - userStates[address(_3216)][s].field_0:
                                revert with 'NH{q', 17
                            if userStates[address(_3216)][s].field_256 > !((rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18):
                                revert with 'NH{q', 17
                            userStates[address(_3216)][s].field_256 += (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
                            userStates[address(_3216)][s].field_0 = rewards[s].field_1024
                            if not userStates[address(_3216)][s].field_256:
                                mem[mem[64]] = s
                                mem[mem[64] + 32] = address(_3216)
                                mem[mem[64] + 64] = userStates[address(_3216)][s].field_0
                                mem[mem[64] + 96] = (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
                            else:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(rewards[s].field_0)
                                staticcall rewards[s].field_0.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4876 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_4876] <= userStates[address(_3216)][s].field_256:
                                    mem[mem[64]] = s
                                    mem[mem[64] + 32] = address(_3216)
                                    mem[mem[64] + 64] = userStates[address(_3216)][s].field_0
                                    mem[mem[64] + 96] = (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
                                else:
                                    _4936 = mem[64]
                                    mem[mem[64] + 36] = address(_3216)
                                    mem[mem[64] + 68] = userStates[address(_3216)][s].field_256
                                    _4950 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_4950 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_4950 + 36 len 28]
                                    mem[64] = _4936 + 164
                                    mem[_4936 + 100] = 32
                                    mem[_4936 + 132] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(rewards[s].field_0):
                                        revert with 0, 'Address: call to non-contract'
                                    _5020 = mem[_4950]
                                    idx = 0
                                    while idx < _5020:
                                        mem[idx + _4936 + 164] = mem[idx + _4950 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(_5020) > _5020:
                                        mem[_5020 + _4936 + 164] = 0
                                    call rewards[s].field_0.mem[_4936 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_4936 + 168 len _5020 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_4936 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_4936 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _4936 + 232] = mem[idx + _4936 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_4936 + 232]
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        userStates[address(_3216)][s].field_256 = 0
                                        mem[_4936 + 164] = s
                                        mem[_4936 + 196] = address(_3216)
                                        mem[_4936 + 228] = userStates[address(_3216)][s].field_0
                                        mem[_4936 + 260] = (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
                                    else:
                                        mem[64] = _4936 + ceil32(return_data.size) + 165
                                        mem[_4936 + 164] = return_data.size
                                        mem[_4936 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_4936 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_4936 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _4936 + ceil32(return_data.size) + 233] = mem[idx + _4936 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_4936 + ceil32(return_data.size) + 233]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_4936 + 196] == bool(mem[_4936 + 196])
                                            if not mem[_4936 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        userStates[address(_3216)][s].field_256 = 0
                                        mem[_4936 + ceil32(return_data.size) + 165] = s
                                        mem[_4936 + ceil32(return_data.size) + 197] = address(_3216)
                                        mem[_4936 + ceil32(return_data.size) + 229] = userStates[address(_3216)][s].field_0
                                        mem[_4936 + ceil32(return_data.size) + 261] = (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
                        else:
                            userStates[address(_3216)][s].field_0 = 1000000000000000000 * 10^18
                            if rewards[s].field_1024 < userStates[address(_3216)][s].field_0:
                                revert with 'NH{q', 17
                            mem[0] = address(_3216)
                            mem[32] = 103
                            if rewards[s].field_1024 - userStates[address(_3216)][s].field_0 and userStaked[address(_3216)] > -1 / rewards[s].field_1024 - userStates[address(_3216)][s].field_0:
                                revert with 'NH{q', 17
                            if userStates[address(_3216)][s].field_256 > !((rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18):
                                revert with 'NH{q', 17
                            userStates[address(_3216)][s].field_256 += (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
                            userStates[address(_3216)][s].field_0 = rewards[s].field_1024
                            if not userStates[address(_3216)][s].field_256:
                                mem[mem[64]] = s
                                mem[mem[64] + 32] = address(_3216)
                                mem[mem[64] + 64] = userStates[address(_3216)][s].field_0
                                mem[mem[64] + 96] = (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
                            else:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(rewards[s].field_0)
                                staticcall rewards[s].field_0.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4882 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_4882] <= userStates[address(_3216)][s].field_256:
                                    mem[mem[64]] = s
                                    mem[mem[64] + 32] = address(_3216)
                                    mem[mem[64] + 64] = userStates[address(_3216)][s].field_0
                                    mem[mem[64] + 96] = (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
                                else:
                                    _4952 = mem[64]
                                    mem[mem[64] + 36] = address(_3216)
                                    mem[mem[64] + 68] = userStates[address(_3216)][s].field_256
                                    _4959 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_4959 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_4959 + 36 len 28]
                                    mem[64] = _4952 + 164
                                    mem[_4952 + 100] = 32
                                    mem[_4952 + 132] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(rewards[s].field_0):
                                        revert with 0, 'Address: call to non-contract'
                                    _5033 = mem[_4959]
                                    idx = 0
                                    while idx < _5033:
                                        mem[idx + _4952 + 164] = mem[idx + _4959 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(_5033) > _5033:
                                        mem[_5033 + _4952 + 164] = 0
                                    call rewards[s].field_0.mem[_4952 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_4952 + 168 len _5033 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_4952 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_4952 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _4952 + 232] = mem[idx + _4952 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_4952 + 232]
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        userStates[address(_3216)][s].field_256 = 0
                                        mem[_4952 + 164] = s
                                        mem[_4952 + 196] = address(_3216)
                                        mem[_4952 + 228] = userStates[address(_3216)][s].field_0
                                        mem[_4952 + 260] = (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
                                    else:
                                        mem[64] = _4952 + ceil32(return_data.size) + 165
                                        mem[_4952 + 164] = return_data.size
                                        mem[_4952 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_4952 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_4952 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _4952 + ceil32(return_data.size) + 233] = mem[idx + _4952 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_4952 + ceil32(return_data.size) + 233]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_4952 + 196] == bool(mem[_4952 + 196])
                                            if not mem[_4952 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        userStates[address(_3216)][s].field_256 = 0
                                        mem[_4952 + ceil32(return_data.size) + 165] = s
                                        mem[_4952 + ceil32(return_data.size) + 197] = address(_3216)
                                        mem[_4952 + ceil32(return_data.size) + 229] = userStates[address(_3216)][s].field_0
                                        mem[_4952 + ceil32(return_data.size) + 261] = (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
                else:
                    if block.number < rewards[s].field_768:
                        if block.number < rewards[s].field_1280:
                            revert with 'NH{q', 17
                        if not block.number - rewards[s].field_1280:
                            if userStates[address(_3216)][s].field_0:
                                if rewards[s].field_1024 < userStates[address(_3216)][s].field_0:
                                    revert with 'NH{q', 17
                                mem[0] = address(_3216)
                                mem[32] = 103
                                if rewards[s].field_1024 - userStates[address(_3216)][s].field_0 and userStaked[address(_3216)] > -1 / rewards[s].field_1024 - userStates[address(_3216)][s].field_0:
                                    revert with 'NH{q', 17
                                if userStates[address(_3216)][s].field_256 > !((rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18):
                                    revert with 'NH{q', 17
                                userStates[address(_3216)][s].field_256 += (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
                                userStates[address(_3216)][s].field_0 = rewards[s].field_1024
                                if not userStates[address(_3216)][s].field_256:
                                    mem[mem[64]] = s
                                    mem[mem[64] + 32] = address(_3216)
                                    mem[mem[64] + 64] = userStates[address(_3216)][s].field_0
                                    mem[mem[64] + 96] = (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
                                else:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(rewards[s].field_0)
                                    staticcall rewards[s].field_0.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4907 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_4907] <= userStates[address(_3216)][s].field_256:
                                        mem[mem[64]] = s
                                        mem[mem[64] + 32] = address(_3216)
                                        mem[mem[64] + 64] = userStates[address(_3216)][s].field_0
                                        mem[mem[64] + 96] = (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
                                    else:
                                        _4975 = mem[64]
                                        mem[mem[64] + 36] = address(_3216)
                                        mem[mem[64] + 68] = userStates[address(_3216)][s].field_256
                                        _4991 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_4991 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_4991 + 36 len 28]
                                        mem[64] = _4975 + 164
                                        mem[_4975 + 100] = 32
                                        mem[_4975 + 132] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(rewards[s].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        _5080 = mem[_4991]
                                        idx = 0
                                        while idx < _5080:
                                            mem[idx + _4975 + 164] = mem[idx + _4991 + 32]
                                            idx = idx + 32
                                            continue 
                                        if ceil32(_5080) > _5080:
                                            mem[_5080 + _4975 + 164] = 0
                                        call rewards[s].field_0.mem[_4975 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_4975 + 168 len _5080 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_4975 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_4975 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _4975 + 232] = mem[idx + _4975 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_4975 + 232]
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            userStates[address(_3216)][s].field_256 = 0
                                            mem[_4975 + 164] = s
                                            mem[_4975 + 196] = address(_3216)
                                            mem[_4975 + 228] = userStates[address(_3216)][s].field_0
                                            mem[_4975 + 260] = (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
                                        else:
                                            mem[64] = _4975 + ceil32(return_data.size) + 165
                                            mem[_4975 + 164] = return_data.size
                                            mem[_4975 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_4975 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_4975 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _4975 + ceil32(return_data.size) + 233] = mem[idx + _4975 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_4975 + ceil32(return_data.size) + 233]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_4975 + 196] == bool(mem[_4975 + 196])
                                                if not mem[_4975 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            userStates[address(_3216)][s].field_256 = 0
                                            mem[_4975 + ceil32(return_data.size) + 165] = s
                                            mem[_4975 + ceil32(return_data.size) + 197] = address(_3216)
                                            mem[_4975 + ceil32(return_data.size) + 229] = userStates[address(_3216)][s].field_0
                                            mem[_4975 + ceil32(return_data.size) + 261] = (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
                            else:
                                if rewards[s].field_1024 < 1000000000000000000 * 10^18:
                                    if rewards[s].field_1024 < userStates[address(_3216)][s].field_0:
                                        revert with 'NH{q', 17
                                    mem[0] = address(_3216)
                                    mem[32] = 103
                                    if rewards[s].field_1024 - userStates[address(_3216)][s].field_0 and userStaked[address(_3216)] > -1 / rewards[s].field_1024 - userStates[address(_3216)][s].field_0:
                                        revert with 'NH{q', 17
                                    if userStates[address(_3216)][s].field_256 > !((rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18):
                                        revert with 'NH{q', 17
                                    userStates[address(_3216)][s].field_256 += (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
                                    userStates[address(_3216)][s].field_0 = rewards[s].field_1024
                                    if not userStates[address(_3216)][s].field_256:
                                        mem[mem[64]] = s
                                        mem[mem[64] + 32] = address(_3216)
                                        mem[mem[64] + 64] = userStates[address(_3216)][s].field_0
                                        mem[mem[64] + 96] = (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
                                    else:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(rewards[s].field_0)
                                        staticcall rewards[s].field_0.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _4927 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_4927] <= userStates[address(_3216)][s].field_256:
                                            mem[mem[64]] = s
                                            mem[mem[64] + 32] = address(_3216)
                                            mem[mem[64] + 64] = userStates[address(_3216)][s].field_0
                                            mem[mem[64] + 96] = (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
                                        else:
                                            _4993 = mem[64]
                                            mem[mem[64] + 36] = address(_3216)
                                            mem[mem[64] + 68] = userStates[address(_3216)][s].field_256
                                            _5013 = mem[64]
                                            mem[mem[64]] = 68
                                            mem[64] = mem[64] + 100
                                            mem[_5013 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_5013 + 36 len 28]
                                            mem[64] = _4993 + 164
                                            mem[_4993 + 100] = 32
                                            mem[_4993 + 132] = 'SafeERC20: low-level call failed'
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 'Address: insufficient balance for call'
                                            if not ext_code.size(rewards[s].field_0):
                                                revert with 0, 'Address: call to non-contract'
                                            _5103 = mem[_5013]
                                            idx = 0
                                            while idx < _5103:
                                                mem[idx + _4993 + 164] = mem[idx + _5013 + 32]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(_5103) > _5103:
                                                mem[_5103 + _4993 + 164] = 0
                                            call rewards[s].field_0.mem[_4993 + 164 len 4] with:
                                                 gas gas_remaining wei
                                                args mem[_4993 + 168 len _5103 - 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    if mem[96]:
                                                        revert with memory
                                                          from 128
                                                           len mem[96]
                                                    mem[_4993 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[_4993 + 168] = 32
                                                    idx = 0
                                                    while idx < 32:
                                                        mem[idx + _4993 + 232] = mem[idx + _4993 + 132]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 32, 32, mem[_4993 + 232]
                                                if mem[96]:
                                                    require mem[96] >= 32
                                                    require mem[128] == bool(mem[128])
                                                    if not mem[128]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                userStates[address(_3216)][s].field_256 = 0
                                                mem[_4993 + 164] = s
                                                mem[_4993 + 196] = address(_3216)
                                                mem[_4993 + 228] = userStates[address(_3216)][s].field_0
                                                mem[_4993 + 260] = (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
                                            else:
                                                mem[64] = _4993 + ceil32(return_data.size) + 165
                                                mem[_4993 + 164] = return_data.size
                                                mem[_4993 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[_4993 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[_4993 + ceil32(return_data.size) + 169] = 32
                                                    idx = 0
                                                    while idx < 32:
                                                        mem[idx + _4993 + ceil32(return_data.size) + 233] = mem[idx + _4993 + 132]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 32, 32, mem[_4993 + ceil32(return_data.size) + 233]
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    require mem[_4993 + 196] == bool(mem[_4993 + 196])
                                                    if not mem[_4993 + 196]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                userStates[address(_3216)][s].field_256 = 0
                                                mem[_4993 + ceil32(return_data.size) + 165] = s
                                                mem[_4993 + ceil32(return_data.size) + 197] = address(_3216)
                                                mem[_4993 + ceil32(return_data.size) + 229] = userStates[address(_3216)][s].field_0
                                                mem[_4993 + ceil32(return_data.size) + 261] = (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
                                else:
                                    userStates[address(_3216)][s].field_0 = 1000000000000000000 * 10^18
                                    if rewards[s].field_1024 < userStates[address(_3216)][s].field_0:
                                        revert with 'NH{q', 17
                                    mem[0] = address(_3216)
                                    mem[32] = 103
                                    if rewards[s].field_1024 - userStates[address(_3216)][s].field_0 and userStaked[address(_3216)] > -1 / rewards[s].field_1024 - userStates[address(_3216)][s].field_0:
                                        revert with 'NH{q', 17
                                    if userStates[address(_3216)][s].field_256 > !((rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18):
                                        revert with 'NH{q', 17
                                    userStates[address(_3216)][s].field_256 += (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
                                    userStates[address(_3216)][s].field_0 = rewards[s].field_1024
                                    if not userStates[address(_3216)][s].field_256:
                                        mem[mem[64]] = s
                                        mem[mem[64] + 32] = address(_3216)
                                        mem[mem[64] + 64] = userStates[address(_3216)][s].field_0
                                        mem[mem[64] + 96] = (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
                                    else:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(rewards[s].field_0)
                                        staticcall rewards[s].field_0.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _4945 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_4945] <= userStates[address(_3216)][s].field_256:
                                            mem[mem[64]] = s
                                            mem[mem[64] + 32] = address(_3216)
                                            mem[mem[64] + 64] = userStates[address(_3216)][s].field_0
                                            mem[mem[64] + 96] = (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
                                        else:
                                            _5015 = mem[64]
                                            mem[mem[64] + 36] = address(_3216)
                                            mem[mem[64] + 68] = userStates[address(_3216)][s].field_256
                                            _5028 = mem[64]
                                            mem[mem[64]] = 68
                                            mem[64] = mem[64] + 100
                                            mem[_5028 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_5028 + 36 len 28]
                                            mem[64] = _5015 + 164
                                            mem[_5015 + 100] = 32
                                            mem[_5015 + 132] = 'SafeERC20: low-level call failed'
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 'Address: insufficient balance for call'
                                            if not ext_code.size(rewards[s].field_0):
                                                revert with 0, 'Address: call to non-contract'
                                            _5124 = mem[_5028]
                                            idx = 0
                                            while idx < _5124:
                                                mem[idx + _5015 + 164] = mem[idx + _5028 + 32]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(_5124) > _5124:
                                                mem[_5124 + _5015 + 164] = 0
                                            call rewards[s].field_0.mem[_5015 + 164 len 4] with:
                                                 gas gas_remaining wei
                                                args mem[_5015 + 168 len _5124 - 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    if mem[96]:
                                                        revert with memory
                                                          from 128
                                                           len mem[96]
                                                    mem[_5015 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[_5015 + 168] = 32
                                                    idx = 0
                                                    while idx < 32:
                                                        mem[idx + _5015 + 232] = mem[idx + _5015 + 132]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 32, 32, mem[_5015 + 232]
                                                if mem[96]:
                                                    require mem[96] >= 32
                                                    require mem[128] == bool(mem[128])
                                                    if not mem[128]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                userStates[address(_3216)][s].field_256 = 0
                                                mem[_5015 + 164] = s
                                                mem[_5015 + 196] = address(_3216)
                                                mem[_5015 + 228] = userStates[address(_3216)][s].field_0
                                                mem[_5015 + 260] = (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
                                            else:
                                                mem[64] = _5015 + ceil32(return_data.size) + 165
                                                mem[_5015 + 164] = return_data.size
                                                mem[_5015 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[_5015 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[_5015 + ceil32(return_data.size) + 169] = 32
                                                    idx = 0
                                                    while idx < 32:
                                                        mem[idx + _5015 + ceil32(return_data.size) + 233] = mem[idx + _5015 + 132]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 32, 32, mem[_5015 + ceil32(return_data.size) + 233]
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    require mem[_5015 + 196] == bool(mem[_5015 + 196])
                                                    if not mem[_5015 + 196]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                userStates[address(_3216)][s].field_256 = 0
                                                mem[_5015 + ceil32(return_data.size) + 165] = s
                                                mem[_5015 + ceil32(return_data.size) + 197] = address(_3216)
                                                mem[_5015 + ceil32(return_data.size) + 229] = userStates[address(_3216)][s].field_0
                                                mem[_5015 + ceil32(return_data.size) + 261] = (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
                        else:
                            if block.number - rewards[s].field_1280 and rewards[s].field_256 > -1 / block.number - rewards[s].field_1280:
                                revert with 'NH{q', 17
                            if (block.number * rewards[s].field_256) - (rewards[s].field_1280 * rewards[s].field_256) and 1000000000000000000 * 10^18 > -1 / (block.number * rewards[s].field_256) - (rewards[s].field_1280 * rewards[s].field_256):
                                revert with 'NH{q', 17
                            if not totalStaked:
                                revert with 'NH{q', 18
                            if rewards[s].field_1024 > !((1000000000000000000 * 10^18 * block.number * rewards[s].field_256) - (1000000000000000000 * 10^18 * rewards[s].field_1280 * rewards[s].field_256) / totalStaked):
                                revert with 'NH{q', 17
                            rewards[s].field_1024 += (1000000000000000000 * 10^18 * block.number * rewards[s].field_256) - (1000000000000000000 * 10^18 * rewards[s].field_1280 * rewards[s].field_256) / totalStaked
                            rewards[s].field_1280 = block.number
                            if userStates[address(_3216)][s].field_0:
                                if rewards[s].field_1024 < userStates[address(_3216)][s].field_0:
                                    revert with 'NH{q', 17
                                mem[0] = address(_3216)
                                mem[32] = 103
                                if rewards[s].field_1024 - userStates[address(_3216)][s].field_0 and userStaked[address(_3216)] > -1 / rewards[s].field_1024 - userStates[address(_3216)][s].field_0:
                                    revert with 'NH{q', 17
                                if userStates[address(_3216)][s].field_256 > !((rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18):
                                    revert with 'NH{q', 17
                                userStates[address(_3216)][s].field_256 += (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
                                userStates[address(_3216)][s].field_0 = rewards[s].field_1024
                                if not userStates[address(_3216)][s].field_256:
                                    mem[mem[64]] = s
                                    mem[mem[64] + 32] = address(_3216)
                                    mem[mem[64] + 64] = userStates[address(_3216)][s].field_0
                                    mem[mem[64] + 96] = (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
                                else:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(rewards[s].field_0)
                                    staticcall rewards[s].field_0.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5056 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_5056] <= userStates[address(_3216)][s].field_256:
                                        mem[mem[64]] = s
                                        mem[mem[64] + 32] = address(_3216)
                                        mem[mem[64] + 64] = userStates[address(_3216)][s].field_0
                                        mem[mem[64] + 96] = (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
                                    else:
                                        _5167 = mem[64]
                                        mem[mem[64] + 36] = address(_3216)
                                        mem[mem[64] + 68] = userStates[address(_3216)][s].field_256
                                        _5203 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_5203 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_5203 + 36 len 28]
                                        mem[64] = _5167 + 164
                                        mem[_5167 + 100] = 32
                                        mem[_5167 + 132] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(rewards[s].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        _5423 = mem[_5203]
                                        idx = 0
                                        while idx < _5423:
                                            mem[idx + _5167 + 164] = mem[idx + _5203 + 32]
                                            idx = idx + 32
                                            continue 
                                        if ceil32(_5423) > _5423:
                                            mem[_5423 + _5167 + 164] = 0
                                        call rewards[s].field_0.mem[_5167 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_5167 + 168 len _5423 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_5167 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_5167 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _5167 + 232] = mem[idx + _5167 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_5167 + 232]
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            userStates[address(_3216)][s].field_256 = 0
                                            mem[_5167 + 164] = s
                                            mem[_5167 + 196] = address(_3216)
                                            mem[_5167 + 228] = userStates[address(_3216)][s].field_0
                                            mem[_5167 + 260] = (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
                                        else:
                                            mem[64] = _5167 + ceil32(return_data.size) + 165
                                            mem[_5167 + 164] = return_data.size
                                            mem[_5167 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_5167 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_5167 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _5167 + ceil32(return_data.size) + 233] = mem[idx + _5167 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_5167 + ceil32(return_data.size) + 233]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_5167 + 196] == bool(mem[_5167 + 196])
                                                if not mem[_5167 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            userStates[address(_3216)][s].field_256 = 0
                                            mem[_5167 + ceil32(return_data.size) + 165] = s
                                            mem[_5167 + ceil32(return_data.size) + 197] = address(_3216)
                                            mem[_5167 + ceil32(return_data.size) + 229] = userStates[address(_3216)][s].field_0
                                            mem[_5167 + ceil32(return_data.size) + 261] = (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
                            else:
                                if rewards[s].field_1024 < 1000000000000000000 * 10^18:
                                    if rewards[s].field_1024 < userStates[address(_3216)][s].field_0:
                                        revert with 'NH{q', 17
                                    mem[0] = address(_3216)
                                    mem[32] = 103
                                    if rewards[s].field_1024 - userStates[address(_3216)][s].field_0 and userStaked[address(_3216)] > -1 / rewards[s].field_1024 - userStates[address(_3216)][s].field_0:
                                        revert with 'NH{q', 17
                                    if userStates[address(_3216)][s].field_256 > !((rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18):
                                        revert with 'NH{q', 17
                                    userStates[address(_3216)][s].field_256 += (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
                                    userStates[address(_3216)][s].field_0 = rewards[s].field_1024
                                    if not userStates[address(_3216)][s].field_256:
                                        mem[mem[64]] = s
                                        mem[mem[64] + 32] = address(_3216)
                                        mem[mem[64] + 64] = userStates[address(_3216)][s].field_0
                                        mem[mem[64] + 96] = (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
                                    else:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(rewards[s].field_0)
                                        staticcall rewards[s].field_0.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5077 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_5077] <= userStates[address(_3216)][s].field_256:
                                            mem[mem[64]] = s
                                            mem[mem[64] + 32] = address(_3216)
                                            mem[mem[64] + 64] = userStates[address(_3216)][s].field_0
                                            mem[mem[64] + 96] = (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
                                        else:
                                            _5205 = mem[64]
                                            mem[mem[64] + 36] = address(_3216)
                                            mem[mem[64] + 68] = userStates[address(_3216)][s].field_256
                                            _5246 = mem[64]
                                            mem[mem[64]] = 68
                                            mem[64] = mem[64] + 100
                                            mem[_5246 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_5246 + 36 len 28]
                                            mem[64] = _5205 + 164
                                            mem[_5205 + 100] = 32
                                            mem[_5205 + 132] = 'SafeERC20: low-level call failed'
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 'Address: insufficient balance for call'
                                            if not ext_code.size(rewards[s].field_0):
                                                revert with 0, 'Address: call to non-contract'
                                            _5503 = mem[_5246]
                                            idx = 0
                                            while idx < _5503:
                                                mem[idx + _5205 + 164] = mem[idx + _5246 + 32]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(_5503) > _5503:
                                                mem[_5503 + _5205 + 164] = 0
                                            call rewards[s].field_0.mem[_5205 + 164 len 4] with:
                                                 gas gas_remaining wei
                                                args mem[_5205 + 168 len _5503 - 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    if mem[96]:
                                                        revert with memory
                                                          from 128
                                                           len mem[96]
                                                    mem[_5205 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[_5205 + 168] = 32
                                                    idx = 0
                                                    while idx < 32:
                                                        mem[idx + _5205 + 232] = mem[idx + _5205 + 132]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 32, 32, mem[_5205 + 232]
                                                if mem[96]:
                                                    require mem[96] >= 32
                                                    require mem[128] == bool(mem[128])
                                                    if not mem[128]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                userStates[address(_3216)][s].field_256 = 0
                                                mem[_5205 + 164] = s
                                                mem[_5205 + 196] = address(_3216)
                                                mem[_5205 + 228] = userStates[address(_3216)][s].field_0
                                                mem[_5205 + 260] = (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
                                            else:
                                                mem[64] = _5205 + ceil32(return_data.size) + 165
                                                mem[_5205 + 164] = return_data.size
                                                mem[_5205 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[_5205 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[_5205 + ceil32(return_data.size) + 169] = 32
                                                    idx = 0
                                                    while idx < 32:
                                                        mem[idx + _5205 + ceil32(return_data.size) + 233] = mem[idx + _5205 + 132]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 32, 32, mem[_5205 + ceil32(return_data.size) + 233]
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    require mem[_5205 + 196] == bool(mem[_5205 + 196])
                                                    if not mem[_5205 + 196]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                userStates[address(_3216)][s].field_256 = 0
                                                mem[_5205 + ceil32(return_data.size) + 165] = s
                                                mem[_5205 + ceil32(return_data.size) + 197] = address(_3216)
                                                mem[_5205 + ceil32(return_data.size) + 229] = userStates[address(_3216)][s].field_0
                                                mem[_5205 + ceil32(return_data.size) + 261] = (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
                                else:
                                    userStates[address(_3216)][s].field_0 = 1000000000000000000 * 10^18
                                    if rewards[s].field_1024 < userStates[address(_3216)][s].field_0:
                                        revert with 'NH{q', 17
                                    mem[0] = address(_3216)
                                    mem[32] = 103
                                    if rewards[s].field_1024 - userStates[address(_3216)][s].field_0 and userStaked[address(_3216)] > -1 / rewards[s].field_1024 - userStates[address(_3216)][s].field_0:
                                        revert with 'NH{q', 17
                                    if userStates[address(_3216)][s].field_256 > !((rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18):
                                        revert with 'NH{q', 17
                                    userStates[address(_3216)][s].field_256 += (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
                                    userStates[address(_3216)][s].field_0 = rewards[s].field_1024
                                    if not userStates[address(_3216)][s].field_256:
                                        mem[mem[64]] = s
                                        mem[mem[64] + 32] = address(_3216)
                                        mem[mem[64] + 64] = userStates[address(_3216)][s].field_0
                                        mem[mem[64] + 96] = (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
                                    else:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(rewards[s].field_0)
                                        staticcall rewards[s].field_0.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5102 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_5102] <= userStates[address(_3216)][s].field_256:
                                            mem[mem[64]] = s
                                            mem[mem[64] + 32] = address(_3216)
                                            mem[mem[64] + 64] = userStates[address(_3216)][s].field_0
                                            mem[mem[64] + 96] = (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
                                        else:
                                            _5248 = mem[64]
                                            mem[mem[64] + 36] = address(_3216)
                                            mem[mem[64] + 68] = userStates[address(_3216)][s].field_256
                                            _5278 = mem[64]
                                            mem[mem[64]] = 68
                                            mem[64] = mem[64] + 100
                                            mem[_5278 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_5278 + 36 len 28]
                                            mem[64] = _5248 + 164
                                            mem[_5248 + 100] = 32
                                            mem[_5248 + 132] = 'SafeERC20: low-level call failed'
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 'Address: insufficient balance for call'
                                            if not ext_code.size(rewards[s].field_0):
                                                revert with 0, 'Address: call to non-contract'
                                            _5577 = mem[_5278]
                                            idx = 0
                                            while idx < _5577:
                                                mem[idx + _5248 + 164] = mem[idx + _5278 + 32]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(_5577) > _5577:
                                                mem[_5577 + _5248 + 164] = 0
                                            call rewards[s].field_0.mem[_5248 + 164 len 4] with:
                                                 gas gas_remaining wei
                                                args mem[_5248 + 168 len _5577 - 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    if mem[96]:
                                                        revert with memory
                                                          from 128
                                                           len mem[96]
                                                    mem[_5248 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[_5248 + 168] = 32
                                                    idx = 0
                                                    while idx < 32:
                                                        mem[idx + _5248 + 232] = mem[idx + _5248 + 132]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 32, 32, mem[_5248 + 232]
                                                if mem[96]:
                                                    require mem[96] >= 32
                                                    require mem[128] == bool(mem[128])
                                                    if not mem[128]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                userStates[address(_3216)][s].field_256 = 0
                                                mem[_5248 + 164] = s
                                                mem[_5248 + 196] = address(_3216)
                                                mem[_5248 + 228] = userStates[address(_3216)][s].field_0
                                                mem[_5248 + 260] = (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
                                            else:
                                                mem[64] = _5248 + ceil32(return_data.size) + 165
                                                mem[_5248 + 164] = return_data.size
                                                mem[_5248 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[_5248 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[_5248 + ceil32(return_data.size) + 169] = 32
                                                    idx = 0
                                                    while idx < 32:
                                                        mem[idx + _5248 + ceil32(return_data.size) + 233] = mem[idx + _5248 + 132]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 32, 32, mem[_5248 + ceil32(return_data.size) + 233]
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    require mem[_5248 + 196] == bool(mem[_5248 + 196])
                                                    if not mem[_5248 + 196]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                userStates[address(_3216)][s].field_256 = 0
                                                mem[_5248 + ceil32(return_data.size) + 165] = s
                                                mem[_5248 + ceil32(return_data.size) + 197] = address(_3216)
                                                mem[_5248 + ceil32(return_data.size) + 229] = userStates[address(_3216)][s].field_0
                                                mem[_5248 + ceil32(return_data.size) + 261] = (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
                    else:
                        if rewards[s].field_768 < rewards[s].field_1280:
                            revert with 'NH{q', 17
                        if not rewards[s].field_768 - rewards[s].field_1280:
                            if userStates[address(_3216)][s].field_0:
                                if rewards[s].field_1024 < userStates[address(_3216)][s].field_0:
                                    revert with 'NH{q', 17
                                mem[0] = address(_3216)
                                mem[32] = 103
                                if rewards[s].field_1024 - userStates[address(_3216)][s].field_0 and userStaked[address(_3216)] > -1 / rewards[s].field_1024 - userStates[address(_3216)][s].field_0:
                                    revert with 'NH{q', 17
                                if userStates[address(_3216)][s].field_256 > !((rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18):
                                    revert with 'NH{q', 17
                                userStates[address(_3216)][s].field_256 += (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
                                userStates[address(_3216)][s].field_0 = rewards[s].field_1024
                                if not userStates[address(_3216)][s].field_256:
                                    mem[mem[64]] = s
                                    mem[mem[64] + 32] = address(_3216)
                                    mem[mem[64] + 64] = userStates[address(_3216)][s].field_0
                                    mem[mem[64] + 96] = (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
                                else:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(rewards[s].field_0)
                                    staticcall rewards[s].field_0.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4913 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_4913] <= userStates[address(_3216)][s].field_256:
                                        mem[mem[64]] = s
                                        mem[mem[64] + 32] = address(_3216)
                                        mem[mem[64] + 64] = userStates[address(_3216)][s].field_0
                                        mem[mem[64] + 96] = (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
                                    else:
                                        _4978 = mem[64]
                                        mem[mem[64] + 36] = address(_3216)
                                        mem[mem[64] + 68] = userStates[address(_3216)][s].field_256
                                        _4996 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_4996 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_4996 + 36 len 28]
                                        mem[64] = _4978 + 164
                                        mem[_4978 + 100] = 32
                                        mem[_4978 + 132] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(rewards[s].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        _5089 = mem[_4996]
                                        idx = 0
                                        while idx < _5089:
                                            mem[idx + _4978 + 164] = mem[idx + _4996 + 32]
                                            idx = idx + 32
                                            continue 
                                        if ceil32(_5089) > _5089:
                                            mem[_5089 + _4978 + 164] = 0
                                        call rewards[s].field_0.mem[_4978 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_4978 + 168 len _5089 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_4978 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_4978 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _4978 + 232] = mem[idx + _4978 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_4978 + 232]
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            userStates[address(_3216)][s].field_256 = 0
                                            mem[_4978 + 164] = s
                                            mem[_4978 + 196] = address(_3216)
                                            mem[_4978 + 228] = userStates[address(_3216)][s].field_0
                                            mem[_4978 + 260] = (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
                                        else:
                                            mem[64] = _4978 + ceil32(return_data.size) + 165
                                            mem[_4978 + 164] = return_data.size
                                            mem[_4978 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_4978 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_4978 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _4978 + ceil32(return_data.size) + 233] = mem[idx + _4978 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_4978 + ceil32(return_data.size) + 233]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_4978 + 196] == bool(mem[_4978 + 196])
                                                if not mem[_4978 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            userStates[address(_3216)][s].field_256 = 0
                                            mem[_4978 + ceil32(return_data.size) + 165] = s
                                            mem[_4978 + ceil32(return_data.size) + 197] = address(_3216)
                                            mem[_4978 + ceil32(return_data.size) + 229] = userStates[address(_3216)][s].field_0
                                            mem[_4978 + ceil32(return_data.size) + 261] = (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
                            else:
                                if rewards[s].field_1024 < 1000000000000000000 * 10^18:
                                    if rewards[s].field_1024 < userStates[address(_3216)][s].field_0:
                                        revert with 'NH{q', 17
                                    mem[0] = address(_3216)
                                    mem[32] = 103
                                    if rewards[s].field_1024 - userStates[address(_3216)][s].field_0 and userStaked[address(_3216)] > -1 / rewards[s].field_1024 - userStates[address(_3216)][s].field_0:
                                        revert with 'NH{q', 17
                                    if userStates[address(_3216)][s].field_256 > !((rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18):
                                        revert with 'NH{q', 17
                                    userStates[address(_3216)][s].field_256 += (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
                                    userStates[address(_3216)][s].field_0 = rewards[s].field_1024
                                    if not userStates[address(_3216)][s].field_256:
                                        mem[mem[64]] = s
                                        mem[mem[64] + 32] = address(_3216)
                                        mem[mem[64] + 64] = userStates[address(_3216)][s].field_0
                                        mem[mem[64] + 96] = (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
                                    else:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(rewards[s].field_0)
                                        staticcall rewards[s].field_0.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _4931 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_4931] <= userStates[address(_3216)][s].field_256:
                                            mem[mem[64]] = s
                                            mem[mem[64] + 32] = address(_3216)
                                            mem[mem[64] + 64] = userStates[address(_3216)][s].field_0
                                            mem[mem[64] + 96] = (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
                                        else:
                                            _4998 = mem[64]
                                            mem[mem[64] + 36] = address(_3216)
                                            mem[mem[64] + 68] = userStates[address(_3216)][s].field_256
                                            _5017 = mem[64]
                                            mem[mem[64]] = 68
                                            mem[64] = mem[64] + 100
                                            mem[_5017 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_5017 + 36 len 28]
                                            mem[64] = _4998 + 164
                                            mem[_4998 + 100] = 32
                                            mem[_4998 + 132] = 'SafeERC20: low-level call failed'
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 'Address: insufficient balance for call'
                                            if not ext_code.size(rewards[s].field_0):
                                                revert with 0, 'Address: call to non-contract'
                                            _5110 = mem[_5017]
                                            idx = 0
                                            while idx < _5110:
                                                mem[idx + _4998 + 164] = mem[idx + _5017 + 32]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(_5110) > _5110:
                                                mem[_5110 + _4998 + 164] = 0
                                            call rewards[s].field_0.mem[_4998 + 164 len 4] with:
                                                 gas gas_remaining wei
                                                args mem[_4998 + 168 len _5110 - 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    if mem[96]:
                                                        revert with memory
                                                          from 128
                                                           len mem[96]
                                                    mem[_4998 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[_4998 + 168] = 32
                                                    idx = 0
                                                    while idx < 32:
                                                        mem[idx + _4998 + 232] = mem[idx + _4998 + 132]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 32, 32, mem[_4998 + 232]
                                                if mem[96]:
                                                    require mem[96] >= 32
                                                    require mem[128] == bool(mem[128])
                                                    if not mem[128]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                userStates[address(_3216)][s].field_256 = 0
                                                mem[_4998 + 164] = s
                                                mem[_4998 + 196] = address(_3216)
                                                mem[_4998 + 228] = userStates[address(_3216)][s].field_0
                                                mem[_4998 + 260] = (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
                                            else:
                                                mem[64] = _4998 + ceil32(return_data.size) + 165
                                                mem[_4998 + 164] = return_data.size
                                                mem[_4998 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[_4998 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[_4998 + ceil32(return_data.size) + 169] = 32
                                                    idx = 0
                                                    while idx < 32:
                                                        mem[idx + _4998 + ceil32(return_data.size) + 233] = mem[idx + _4998 + 132]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 32, 32, mem[_4998 + ceil32(return_data.size) + 233]
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    require mem[_4998 + 196] == bool(mem[_4998 + 196])
                                                    if not mem[_4998 + 196]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                userStates[address(_3216)][s].field_256 = 0
                                                mem[_4998 + ceil32(return_data.size) + 165] = s
                                                mem[_4998 + ceil32(return_data.size) + 197] = address(_3216)
                                                mem[_4998 + ceil32(return_data.size) + 229] = userStates[address(_3216)][s].field_0
                                                mem[_4998 + ceil32(return_data.size) + 261] = (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
                                else:
                                    userStates[address(_3216)][s].field_0 = 1000000000000000000 * 10^18
                                    if rewards[s].field_1024 < userStates[address(_3216)][s].field_0:
                                        revert with 'NH{q', 17
                                    mem[0] = address(_3216)
                                    mem[32] = 103
                                    if rewards[s].field_1024 - userStates[address(_3216)][s].field_0 and userStaked[address(_3216)] > -1 / rewards[s].field_1024 - userStates[address(_3216)][s].field_0:
                                        revert with 'NH{q', 17
                                    if userStates[address(_3216)][s].field_256 > !((rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18):
                                        revert with 'NH{q', 17
                                    userStates[address(_3216)][s].field_256 += (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
                                    userStates[address(_3216)][s].field_0 = rewards[s].field_1024
                                    if not userStates[address(_3216)][s].field_256:
                                        mem[mem[64]] = s
                                        mem[mem[64] + 32] = address(_3216)
                                        mem[mem[64] + 64] = userStates[address(_3216)][s].field_0
                                        mem[mem[64] + 96] = (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
                                    else:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(rewards[s].field_0)
                                        staticcall rewards[s].field_0.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _4948 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_4948] <= userStates[address(_3216)][s].field_256:
                                            mem[mem[64]] = s
                                            mem[mem[64] + 32] = address(_3216)
                                            mem[mem[64] + 64] = userStates[address(_3216)][s].field_0
                                            mem[mem[64] + 96] = (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
                                        else:
                                            _5019 = mem[64]
                                            mem[mem[64] + 36] = address(_3216)
                                            mem[mem[64] + 68] = userStates[address(_3216)][s].field_256
                                            _5031 = mem[64]
                                            mem[mem[64]] = 68
                                            mem[64] = mem[64] + 100
                                            mem[_5031 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_5031 + 36 len 28]
                                            mem[64] = _5019 + 164
                                            mem[_5019 + 100] = 32
                                            mem[_5019 + 132] = 'SafeERC20: low-level call failed'
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 'Address: insufficient balance for call'
                                            if not ext_code.size(rewards[s].field_0):
                                                revert with 0, 'Address: call to non-contract'
                                            _5127 = mem[_5031]
                                            idx = 0
                                            while idx < _5127:
                                                mem[idx + _5019 + 164] = mem[idx + _5031 + 32]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(_5127) > _5127:
                                                mem[_5127 + _5019 + 164] = 0
                                            call rewards[s].field_0.mem[_5019 + 164 len 4] with:
                                                 gas gas_remaining wei
                                                args mem[_5019 + 168 len _5127 - 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    if mem[96]:
                                                        revert with memory
                                                          from 128
                                                           len mem[96]
                                                    mem[_5019 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[_5019 + 168] = 32
                                                    idx = 0
                                                    while idx < 32:
                                                        mem[idx + _5019 + 232] = mem[idx + _5019 + 132]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 32, 32, mem[_5019 + 232]
                                                if mem[96]:
                                                    require mem[96] >= 32
                                                    require mem[128] == bool(mem[128])
                                                    if not mem[128]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                userStates[address(_3216)][s].field_256 = 0
                                                mem[_5019 + 164] = s
                                                mem[_5019 + 196] = address(_3216)
                                                mem[_5019 + 228] = userStates[address(_3216)][s].field_0
                                                mem[_5019 + 260] = (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
                                            else:
                                                mem[64] = _5019 + ceil32(return_data.size) + 165
                                                mem[_5019 + 164] = return_data.size
                                                mem[_5019 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[_5019 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[_5019 + ceil32(return_data.size) + 169] = 32
                                                    idx = 0
                                                    while idx < 32:
                                                        mem[idx + _5019 + ceil32(return_data.size) + 233] = mem[idx + _5019 + 132]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 32, 32, mem[_5019 + ceil32(return_data.size) + 233]
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    require mem[_5019 + 196] == bool(mem[_5019 + 196])
                                                    if not mem[_5019 + 196]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                userStates[address(_3216)][s].field_256 = 0
                                                mem[_5019 + ceil32(return_data.size) + 165] = s
                                                mem[_5019 + ceil32(return_data.size) + 197] = address(_3216)
                                                mem[_5019 + ceil32(return_data.size) + 229] = userStates[address(_3216)][s].field_0
                                                mem[_5019 + ceil32(return_data.size) + 261] = (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
                        else:
                            if rewards[s].field_768 - rewards[s].field_1280 and rewards[s].field_256 > -1 / rewards[s].field_768 - rewards[s].field_1280:
                                revert with 'NH{q', 17
                            if (rewards[s].field_768 * rewards[s].field_256) - (rewards[s].field_1280 * rewards[s].field_256) and 1000000000000000000 * 10^18 > -1 / (rewards[s].field_768 * rewards[s].field_256) - (rewards[s].field_1280 * rewards[s].field_256):
                                revert with 'NH{q', 17
                            if not totalStaked:
                                revert with 'NH{q', 18
                            if rewards[s].field_1024 > !((1000000000000000000 * 10^18 * rewards[s].field_768 * rewards[s].field_256) - (1000000000000000000 * 10^18 * rewards[s].field_1280 * rewards[s].field_256) / totalStaked):
                                revert with 'NH{q', 17
                            rewards[s].field_1024 += (1000000000000000000 * 10^18 * rewards[s].field_768 * rewards[s].field_256) - (1000000000000000000 * 10^18 * rewards[s].field_1280 * rewards[s].field_256) / totalStaked
                            rewards[s].field_1280 = rewards[s].field_768
                            if userStates[address(_3216)][s].field_0:
                                if rewards[s].field_1024 < userStates[address(_3216)][s].field_0:
                                    revert with 'NH{q', 17
                                mem[0] = address(_3216)
                                mem[32] = 103
                                if rewards[s].field_1024 - userStates[address(_3216)][s].field_0 and userStaked[address(_3216)] > -1 / rewards[s].field_1024 - userStates[address(_3216)][s].field_0:
                                    revert with 'NH{q', 17
                                if userStates[address(_3216)][s].field_256 > !((rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18):
                                    revert with 'NH{q', 17
                                userStates[address(_3216)][s].field_256 += (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
                                userStates[address(_3216)][s].field_0 = rewards[s].field_1024
                                if not userStates[address(_3216)][s].field_256:
                                    mem[mem[64]] = s
                                    mem[mem[64] + 32] = address(_3216)
                                    mem[mem[64] + 64] = userStates[address(_3216)][s].field_0
                                    mem[mem[64] + 96] = (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
                                else:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(rewards[s].field_0)
                                    staticcall rewards[s].field_0.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5065 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_5065] <= userStates[address(_3216)][s].field_256:
                                        mem[mem[64]] = s
                                        mem[mem[64] + 32] = address(_3216)
                                        mem[mem[64] + 64] = userStates[address(_3216)][s].field_0
                                        mem[mem[64] + 96] = (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
                                    else:
                                        _5171 = mem[64]
                                        mem[mem[64] + 36] = address(_3216)
                                        mem[mem[64] + 68] = userStates[address(_3216)][s].field_256
                                        _5210 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_5210 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_5210 + 36 len 28]
                                        mem[64] = _5171 + 164
                                        mem[_5171 + 100] = 32
                                        mem[_5171 + 132] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(rewards[s].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        _5445 = mem[_5210]
                                        idx = 0
                                        while idx < _5445:
                                            mem[idx + _5171 + 164] = mem[idx + _5210 + 32]
                                            idx = idx + 32
                                            continue 
                                        if ceil32(_5445) > _5445:
                                            mem[_5445 + _5171 + 164] = 0
                                        call rewards[s].field_0.mem[_5171 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_5171 + 168 len _5445 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_5171 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_5171 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _5171 + 232] = mem[idx + _5171 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_5171 + 232]
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            userStates[address(_3216)][s].field_256 = 0
                                            mem[_5171 + 164] = s
                                            mem[_5171 + 196] = address(_3216)
                                            mem[_5171 + 228] = userStates[address(_3216)][s].field_0
                                            mem[_5171 + 260] = (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
                                        else:
                                            mem[64] = _5171 + ceil32(return_data.size) + 165
                                            mem[_5171 + 164] = return_data.size
                                            mem[_5171 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_5171 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_5171 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _5171 + ceil32(return_data.size) + 233] = mem[idx + _5171 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_5171 + ceil32(return_data.size) + 233]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_5171 + 196] == bool(mem[_5171 + 196])
                                                if not mem[_5171 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            userStates[address(_3216)][s].field_256 = 0
                                            mem[_5171 + ceil32(return_data.size) + 165] = s
                                            mem[_5171 + ceil32(return_data.size) + 197] = address(_3216)
                                            mem[_5171 + ceil32(return_data.size) + 229] = userStates[address(_3216)][s].field_0
                                            mem[_5171 + ceil32(return_data.size) + 261] = (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
                            else:
                                if rewards[s].field_1024 < 1000000000000000000 * 10^18:
                                    if rewards[s].field_1024 < userStates[address(_3216)][s].field_0:
                                        revert with 'NH{q', 17
                                    mem[0] = address(_3216)
                                    mem[32] = 103
                                    if rewards[s].field_1024 - userStates[address(_3216)][s].field_0 and userStaked[address(_3216)] > -1 / rewards[s].field_1024 - userStates[address(_3216)][s].field_0:
                                        revert with 'NH{q', 17
                                    if userStates[address(_3216)][s].field_256 > !((rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18):
                                        revert with 'NH{q', 17
                                    userStates[address(_3216)][s].field_256 += (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
                                    userStates[address(_3216)][s].field_0 = rewards[s].field_1024
                                    if not userStates[address(_3216)][s].field_256:
                                        mem[mem[64]] = s
                                        mem[mem[64] + 32] = address(_3216)
                                        mem[mem[64] + 64] = userStates[address(_3216)][s].field_0
                                        mem[mem[64] + 96] = (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
                                    else:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(rewards[s].field_0)
                                        staticcall rewards[s].field_0.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5086 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_5086] <= userStates[address(_3216)][s].field_256:
                                            mem[mem[64]] = s
                                            mem[mem[64] + 32] = address(_3216)
                                            mem[mem[64] + 64] = userStates[address(_3216)][s].field_0
                                            mem[mem[64] + 96] = (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
                                        else:
                                            _5212 = mem[64]
                                            mem[mem[64] + 36] = address(_3216)
                                            mem[mem[64] + 68] = userStates[address(_3216)][s].field_256
                                            _5254 = mem[64]
                                            mem[mem[64]] = 68
                                            mem[64] = mem[64] + 100
                                            mem[_5254 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_5254 + 36 len 28]
                                            mem[64] = _5212 + 164
                                            mem[_5212 + 100] = 32
                                            mem[_5212 + 132] = 'SafeERC20: low-level call failed'
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 'Address: insufficient balance for call'
                                            if not ext_code.size(rewards[s].field_0):
                                                revert with 0, 'Address: call to non-contract'
                                            _5520 = mem[_5254]
                                            idx = 0
                                            while idx < _5520:
                                                mem[idx + _5212 + 164] = mem[idx + _5254 + 32]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(_5520) > _5520:
                                                mem[_5520 + _5212 + 164] = 0
                                            call rewards[s].field_0.mem[_5212 + 164 len 4] with:
                                                 gas gas_remaining wei
                                                args mem[_5212 + 168 len _5520 - 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    if mem[96]:
                                                        revert with memory
                                                          from 128
                                                           len mem[96]
                                                    mem[_5212 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[_5212 + 168] = 32
                                                    idx = 0
                                                    while idx < 32:
                                                        mem[idx + _5212 + 232] = mem[idx + _5212 + 132]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 32, 32, mem[_5212 + 232]
                                                if mem[96]:
                                                    require mem[96] >= 32
                                                    require mem[128] == bool(mem[128])
                                                    if not mem[128]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                userStates[address(_3216)][s].field_256 = 0
                                                mem[_5212 + 164] = s
                                                mem[_5212 + 196] = address(_3216)
                                                mem[_5212 + 228] = userStates[address(_3216)][s].field_0
                                                mem[_5212 + 260] = (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
                                            else:
                                                mem[64] = _5212 + ceil32(return_data.size) + 165
                                                mem[_5212 + 164] = return_data.size
                                                mem[_5212 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[_5212 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[_5212 + ceil32(return_data.size) + 169] = 32
                                                    idx = 0
                                                    while idx < 32:
                                                        mem[idx + _5212 + ceil32(return_data.size) + 233] = mem[idx + _5212 + 132]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 32, 32, mem[_5212 + ceil32(return_data.size) + 233]
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    require mem[_5212 + 196] == bool(mem[_5212 + 196])
                                                    if not mem[_5212 + 196]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                userStates[address(_3216)][s].field_256 = 0
                                                mem[_5212 + ceil32(return_data.size) + 165] = s
                                                mem[_5212 + ceil32(return_data.size) + 197] = address(_3216)
                                                mem[_5212 + ceil32(return_data.size) + 229] = userStates[address(_3216)][s].field_0
                                                mem[_5212 + ceil32(return_data.size) + 261] = (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
                                else:
                                    userStates[address(_3216)][s].field_0 = 1000000000000000000 * 10^18
                                    if rewards[s].field_1024 < userStates[address(_3216)][s].field_0:
                                        revert with 'NH{q', 17
                                    mem[0] = address(_3216)
                                    mem[32] = 103
                                    if rewards[s].field_1024 - userStates[address(_3216)][s].field_0 and userStaked[address(_3216)] > -1 / rewards[s].field_1024 - userStates[address(_3216)][s].field_0:
                                        revert with 'NH{q', 17
                                    if userStates[address(_3216)][s].field_256 > !((rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18):
                                        revert with 'NH{q', 17
                                    userStates[address(_3216)][s].field_256 += (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
                                    userStates[address(_3216)][s].field_0 = rewards[s].field_1024
                                    if not userStates[address(_3216)][s].field_256:
                                        mem[mem[64]] = s
                                        mem[mem[64] + 32] = address(_3216)
                                        mem[mem[64] + 64] = userStates[address(_3216)][s].field_0
                                        mem[mem[64] + 96] = (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
                                    else:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(rewards[s].field_0)
                                        staticcall rewards[s].field_0.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5109 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_5109] <= userStates[address(_3216)][s].field_256:
                                            mem[mem[64]] = s
                                            mem[mem[64] + 32] = address(_3216)
                                            mem[mem[64] + 64] = userStates[address(_3216)][s].field_0
                                            mem[mem[64] + 96] = (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
                                        else:
                                            _5256 = mem[64]
                                            mem[mem[64] + 36] = address(_3216)
                                            mem[mem[64] + 68] = userStates[address(_3216)][s].field_256
                                            _5285 = mem[64]
                                            mem[mem[64]] = 68
                                            mem[64] = mem[64] + 100
                                            mem[_5285 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_5285 + 36 len 28]
                                            mem[64] = _5256 + 164
                                            mem[_5256 + 100] = 32
                                            mem[_5256 + 132] = 'SafeERC20: low-level call failed'
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 'Address: insufficient balance for call'
                                            if not ext_code.size(rewards[s].field_0):
                                                revert with 0, 'Address: call to non-contract'
                                            _5583 = mem[_5285]
                                            idx = 0
                                            while idx < _5583:
                                                mem[idx + _5256 + 164] = mem[idx + _5285 + 32]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(_5583) > _5583:
                                                mem[_5583 + _5256 + 164] = 0
                                            call rewards[s].field_0.mem[_5256 + 164 len 4] with:
                                                 gas gas_remaining wei
                                                args mem[_5256 + 168 len _5583 - 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    if mem[96]:
                                                        revert with memory
                                                          from 128
                                                           len mem[96]
                                                    mem[_5256 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[_5256 + 168] = 32
                                                    idx = 0
                                                    while idx < 32:
                                                        mem[idx + _5256 + 232] = mem[idx + _5256 + 132]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 32, 32, mem[_5256 + 232]
                                                if mem[96]:
                                                    require mem[96] >= 32
                                                    require mem[128] == bool(mem[128])
                                                    if not mem[128]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                userStates[address(_3216)][s].field_256 = 0
                                                mem[_5256 + 164] = s
                                                mem[_5256 + 196] = address(_3216)
                                                mem[_5256 + 228] = userStates[address(_3216)][s].field_0
                                                mem[_5256 + 260] = (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
                                            else:
                                                mem[64] = _5256 + ceil32(return_data.size) + 165
                                                mem[_5256 + 164] = return_data.size
                                                mem[_5256 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[_5256 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[_5256 + ceil32(return_data.size) + 169] = 32
                                                    idx = 0
                                                    while idx < 32:
                                                        mem[idx + _5256 + ceil32(return_data.size) + 233] = mem[idx + _5256 + 132]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 32, 32, mem[_5256 + ceil32(return_data.size) + 233]
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    require mem[_5256 + 196] == bool(mem[_5256 + 196])
                                                    if not mem[_5256 + 196]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                userStates[address(_3216)][s].field_256 = 0
                                                mem[_5256 + ceil32(return_data.size) + 165] = s
                                                mem[_5256 + ceil32(return_data.size) + 197] = address(_3216)
                                                mem[_5256 + ceil32(return_data.size) + 229] = userStates[address(_3216)][s].field_0
                                                mem[_5256 + ceil32(return_data.size) + 261] = (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
            emit 0x6c649450: s, address(_3216), userStates[address(_3216)][s].field_0, (rewards[s].field_1024 * userStaked[address(_3216)]) - (userStates[address(_3216)][s].field_0 * userStaked[address(_3216)]) / 1000000000000000000 * 10^18
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
                if userStates[address(msg.sender)][idx].field_256 > !((rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18):
                    revert with 'NH{q', 17
                userStates[address(msg.sender)][idx].field_256 += (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                userStates[address(msg.sender)][idx].field_0 = rewards[idx].field_1024
                if not userStates[address(msg.sender)][idx].field_256:
                    mem[mem[64]] = idx
                    mem[mem[64] + 32] = msg.sender
                    mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                    mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                else:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(rewards[idx].field_0)
                    staticcall rewards[idx].field_0.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1831 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_1831] <= userStates[address(msg.sender)][idx].field_256:
                        mem[mem[64]] = idx
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                        mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                    else:
                        _1885 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = userStates[address(msg.sender)][idx].field_256
                        _1905 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_1905 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1905 + 36 len 28]
                        mem[64] = _1885 + 164
                        mem[_1885 + 100] = 32
                        mem[_1885 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(rewards[idx].field_0):
                            revert with 0, 'Address: call to non-contract'
                        _2001 = mem[_1905]
                        s = 0
                        while s < _2001:
                            mem[s + _1885 + 164] = mem[s + _1905 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_2001) > _2001:
                            mem[_2001 + _1885 + 164] = 0
                        call rewards[idx].field_0.mem[_1885 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_1885 + 168 len _2001 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_1885 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1885 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _1885 + 232] = mem[idx + _1885 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_1885 + 232]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            userStates[address(msg.sender)][idx].field_256 = 0
                            mem[_1885 + 164] = idx
                            mem[_1885 + 196] = msg.sender
                            mem[_1885 + 228] = userStates[address(msg.sender)][idx].field_0
                            mem[_1885 + 260] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                        else:
                            mem[64] = _1885 + ceil32(return_data.size) + 165
                            mem[_1885 + 164] = return_data.size
                            mem[_1885 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_1885 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1885 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _1885 + ceil32(return_data.size) + 233] = mem[idx + _1885 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_1885 + ceil32(return_data.size) + 233]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_1885 + 196] == bool(mem[_1885 + 196])
                                if not mem[_1885 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            userStates[address(msg.sender)][idx].field_256 = 0
                            mem[_1885 + ceil32(return_data.size) + 165] = idx
                            mem[_1885 + ceil32(return_data.size) + 197] = msg.sender
                            mem[_1885 + ceil32(return_data.size) + 229] = userStates[address(msg.sender)][idx].field_0
                            mem[_1885 + ceil32(return_data.size) + 261] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
            else:
                if rewards[idx].field_1024 < 1000000000000000000 * 10^18:
                    if rewards[idx].field_1024 < userStates[address(msg.sender)][idx].field_0:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 103
                    if rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0 and userStaked[address(msg.sender)] > -1 / rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0:
                        revert with 'NH{q', 17
                    if userStates[address(msg.sender)][idx].field_256 > !((rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18):
                        revert with 'NH{q', 17
                    userStates[address(msg.sender)][idx].field_256 += (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                    userStates[address(msg.sender)][idx].field_0 = rewards[idx].field_1024
                    if not userStates[address(msg.sender)][idx].field_256:
                        mem[mem[64]] = idx
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                        mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                    else:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(rewards[idx].field_0)
                        staticcall rewards[idx].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1841 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_1841] <= userStates[address(msg.sender)][idx].field_256:
                            mem[mem[64]] = idx
                            mem[mem[64] + 32] = msg.sender
                            mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                            mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                        else:
                            _1907 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = userStates[address(msg.sender)][idx].field_256
                            _1924 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_1924 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1924 + 36 len 28]
                            mem[64] = _1907 + 164
                            mem[_1907 + 100] = 32
                            mem[_1907 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(rewards[idx].field_0):
                                revert with 0, 'Address: call to non-contract'
                            _2031 = mem[_1924]
                            s = 0
                            while s < _2031:
                                mem[s + _1907 + 164] = mem[s + _1924 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_2031) > _2031:
                                mem[_2031 + _1907 + 164] = 0
                            call rewards[idx].field_0.mem[_1907 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_1907 + 168 len _2031 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_1907 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_1907 + 168] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _1907 + 232] = mem[idx + _1907 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_1907 + 232]
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                userStates[address(msg.sender)][idx].field_256 = 0
                                mem[_1907 + 164] = idx
                                mem[_1907 + 196] = msg.sender
                                mem[_1907 + 228] = userStates[address(msg.sender)][idx].field_0
                                mem[_1907 + 260] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                            else:
                                mem[64] = _1907 + ceil32(return_data.size) + 165
                                mem[_1907 + 164] = return_data.size
                                mem[_1907 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_1907 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_1907 + ceil32(return_data.size) + 169] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _1907 + ceil32(return_data.size) + 233] = mem[idx + _1907 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_1907 + ceil32(return_data.size) + 233]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_1907 + 196] == bool(mem[_1907 + 196])
                                    if not mem[_1907 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                userStates[address(msg.sender)][idx].field_256 = 0
                                mem[_1907 + ceil32(return_data.size) + 165] = idx
                                mem[_1907 + ceil32(return_data.size) + 197] = msg.sender
                                mem[_1907 + ceil32(return_data.size) + 229] = userStates[address(msg.sender)][idx].field_0
                                mem[_1907 + ceil32(return_data.size) + 261] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                else:
                    userStates[address(msg.sender)][idx].field_0 = 1000000000000000000 * 10^18
                    if rewards[idx].field_1024 < userStates[address(msg.sender)][idx].field_0:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 103
                    if rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0 and userStaked[address(msg.sender)] > -1 / rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0:
                        revert with 'NH{q', 17
                    if userStates[address(msg.sender)][idx].field_256 > !((rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18):
                        revert with 'NH{q', 17
                    userStates[address(msg.sender)][idx].field_256 += (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                    userStates[address(msg.sender)][idx].field_0 = rewards[idx].field_1024
                    if not userStates[address(msg.sender)][idx].field_256:
                        mem[mem[64]] = idx
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                        mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                    else:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(rewards[idx].field_0)
                        staticcall rewards[idx].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1855 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_1855] <= userStates[address(msg.sender)][idx].field_256:
                            mem[mem[64]] = idx
                            mem[mem[64] + 32] = msg.sender
                            mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                            mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                        else:
                            _1926 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = userStates[address(msg.sender)][idx].field_256
                            _1942 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_1942 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1942 + 36 len 28]
                            mem[64] = _1926 + 164
                            mem[_1926 + 100] = 32
                            mem[_1926 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(rewards[idx].field_0):
                                revert with 0, 'Address: call to non-contract'
                            _2061 = mem[_1942]
                            s = 0
                            while s < _2061:
                                mem[s + _1926 + 164] = mem[s + _1942 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_2061) > _2061:
                                mem[_2061 + _1926 + 164] = 0
                            call rewards[idx].field_0.mem[_1926 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_1926 + 168 len _2061 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_1926 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_1926 + 168] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _1926 + 232] = mem[idx + _1926 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_1926 + 232]
                                if mem[96]:
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
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_1926 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_1926 + ceil32(return_data.size) + 169] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _1926 + ceil32(return_data.size) + 233] = mem[idx + _1926 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_1926 + ceil32(return_data.size) + 233]
                                if return_data.size:
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
            if block.number <= rewards[idx].field_512:
                if userStates[address(msg.sender)][idx].field_0:
                    if rewards[idx].field_1024 < userStates[address(msg.sender)][idx].field_0:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 103
                    if rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0 and userStaked[address(msg.sender)] > -1 / rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0:
                        revert with 'NH{q', 17
                    if userStates[address(msg.sender)][idx].field_256 > !((rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18):
                        revert with 'NH{q', 17
                    userStates[address(msg.sender)][idx].field_256 += (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                    userStates[address(msg.sender)][idx].field_0 = rewards[idx].field_1024
                    if not userStates[address(msg.sender)][idx].field_256:
                        mem[mem[64]] = idx
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                        mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                    else:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(rewards[idx].field_0)
                        staticcall rewards[idx].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1836 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_1836] <= userStates[address(msg.sender)][idx].field_256:
                            mem[mem[64]] = idx
                            mem[mem[64] + 32] = msg.sender
                            mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                            mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                        else:
                            _1902 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = userStates[address(msg.sender)][idx].field_256
                            _1918 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_1918 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1918 + 36 len 28]
                            mem[64] = _1902 + 164
                            mem[_1902 + 100] = 32
                            mem[_1902 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(rewards[idx].field_0):
                                revert with 0, 'Address: call to non-contract'
                            _2025 = mem[_1918]
                            s = 0
                            while s < _2025:
                                mem[s + _1902 + 164] = mem[s + _1918 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_2025) > _2025:
                                mem[_2025 + _1902 + 164] = 0
                            call rewards[idx].field_0.mem[_1902 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_1902 + 168 len _2025 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_1902 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_1902 + 168] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _1902 + 232] = mem[idx + _1902 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_1902 + 232]
                                if mem[96]:
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
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_1902 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_1902 + ceil32(return_data.size) + 169] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _1902 + ceil32(return_data.size) + 233] = mem[idx + _1902 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_1902 + ceil32(return_data.size) + 233]
                                if return_data.size:
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
                    if rewards[idx].field_1024 < 1000000000000000000 * 10^18:
                        if rewards[idx].field_1024 < userStates[address(msg.sender)][idx].field_0:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 103
                        if rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0 and userStaked[address(msg.sender)] > -1 / rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0:
                            revert with 'NH{q', 17
                        if userStates[address(msg.sender)][idx].field_256 > !((rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18):
                            revert with 'NH{q', 17
                        userStates[address(msg.sender)][idx].field_256 += (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                        userStates[address(msg.sender)][idx].field_0 = rewards[idx].field_1024
                        if not userStates[address(msg.sender)][idx].field_256:
                            mem[mem[64]] = idx
                            mem[mem[64] + 32] = msg.sender
                            mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                            mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                        else:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(rewards[idx].field_0)
                            staticcall rewards[idx].field_0.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1851 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_1851] <= userStates[address(msg.sender)][idx].field_256:
                                mem[mem[64]] = idx
                                mem[mem[64] + 32] = msg.sender
                                mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                            else:
                                _1920 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = userStates[address(msg.sender)][idx].field_256
                                _1938 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_1938 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1938 + 36 len 28]
                                mem[64] = _1920 + 164
                                mem[_1920 + 100] = 32
                                mem[_1920 + 132] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(rewards[idx].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                _2056 = mem[_1938]
                                s = 0
                                while s < _2056:
                                    mem[s + _1920 + 164] = mem[s + _1938 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_2056) > _2056:
                                    mem[_2056 + _1920 + 164] = 0
                                call rewards[idx].field_0.mem[_1920 + 164 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_1920 + 168 len _2056 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_1920 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_1920 + 168] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _1920 + 232] = mem[idx + _1920 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_1920 + 232]
                                    if mem[96]:
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
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_1920 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_1920 + ceil32(return_data.size) + 169] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _1920 + ceil32(return_data.size) + 233] = mem[idx + _1920 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_1920 + ceil32(return_data.size) + 233]
                                    if return_data.size:
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
                        if userStates[address(msg.sender)][idx].field_256 > !((rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18):
                            revert with 'NH{q', 17
                        userStates[address(msg.sender)][idx].field_256 += (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                        userStates[address(msg.sender)][idx].field_0 = rewards[idx].field_1024
                        if not userStates[address(msg.sender)][idx].field_256:
                            mem[mem[64]] = idx
                            mem[mem[64] + 32] = msg.sender
                            mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                            mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                        else:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(rewards[idx].field_0)
                            staticcall rewards[idx].field_0.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1858 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_1858] <= userStates[address(msg.sender)][idx].field_256:
                                mem[mem[64]] = idx
                                mem[mem[64] + 32] = msg.sender
                                mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                            else:
                                _1940 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = userStates[address(msg.sender)][idx].field_256
                                _1959 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_1959 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1959 + 36 len 28]
                                mem[64] = _1940 + 164
                                mem[_1940 + 100] = 32
                                mem[_1940 + 132] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(rewards[idx].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                _2073 = mem[_1959]
                                s = 0
                                while s < _2073:
                                    mem[s + _1940 + 164] = mem[s + _1959 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_2073) > _2073:
                                    mem[_2073 + _1940 + 164] = 0
                                call rewards[idx].field_0.mem[_1940 + 164 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_1940 + 168 len _2073 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_1940 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_1940 + 168] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _1940 + 232] = mem[idx + _1940 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_1940 + 232]
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    userStates[address(msg.sender)][idx].field_256 = 0
                                    mem[_1940 + 164] = idx
                                    mem[_1940 + 196] = msg.sender
                                    mem[_1940 + 228] = userStates[address(msg.sender)][idx].field_0
                                    mem[_1940 + 260] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                else:
                                    mem[64] = _1940 + ceil32(return_data.size) + 165
                                    mem[_1940 + 164] = return_data.size
                                    mem[_1940 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_1940 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_1940 + ceil32(return_data.size) + 169] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _1940 + ceil32(return_data.size) + 233] = mem[idx + _1940 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_1940 + ceil32(return_data.size) + 233]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_1940 + 196] == bool(mem[_1940 + 196])
                                        if not mem[_1940 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    userStates[address(msg.sender)][idx].field_256 = 0
                                    mem[_1940 + ceil32(return_data.size) + 165] = idx
                                    mem[_1940 + ceil32(return_data.size) + 197] = msg.sender
                                    mem[_1940 + ceil32(return_data.size) + 229] = userStates[address(msg.sender)][idx].field_0
                                    mem[_1940 + ceil32(return_data.size) + 261] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
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
                            if userStates[address(msg.sender)][idx].field_256 > !((rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18):
                                revert with 'NH{q', 17
                            userStates[address(msg.sender)][idx].field_256 += (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                            userStates[address(msg.sender)][idx].field_0 = rewards[idx].field_1024
                            if not userStates[address(msg.sender)][idx].field_256:
                                mem[mem[64]] = idx
                                mem[mem[64] + 32] = msg.sender
                                mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                            else:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(rewards[idx].field_0)
                                staticcall rewards[idx].field_0.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1891 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_1891] <= userStates[address(msg.sender)][idx].field_256:
                                    mem[mem[64]] = idx
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                    mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                else:
                                    _1991 = mem[64]
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = userStates[address(msg.sender)][idx].field_256
                                    _2015 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_2015 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_2015 + 36 len 28]
                                    mem[64] = _1991 + 164
                                    mem[_1991 + 100] = 32
                                    mem[_1991 + 132] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(rewards[idx].field_0):
                                        revert with 0, 'Address: call to non-contract'
                                    _2164 = mem[_2015]
                                    s = 0
                                    while s < _2164:
                                        mem[s + _1991 + 164] = mem[s + _2015 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_2164) > _2164:
                                        mem[_2164 + _1991 + 164] = 0
                                    call rewards[idx].field_0.mem[_1991 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_1991 + 168 len _2164 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_1991 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_1991 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _1991 + 232] = mem[idx + _1991 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_1991 + 232]
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        userStates[address(msg.sender)][idx].field_256 = 0
                                        mem[_1991 + 164] = idx
                                        mem[_1991 + 196] = msg.sender
                                        mem[_1991 + 228] = userStates[address(msg.sender)][idx].field_0
                                        mem[_1991 + 260] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                    else:
                                        mem[64] = _1991 + ceil32(return_data.size) + 165
                                        mem[_1991 + 164] = return_data.size
                                        mem[_1991 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_1991 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_1991 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _1991 + ceil32(return_data.size) + 233] = mem[idx + _1991 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_1991 + ceil32(return_data.size) + 233]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_1991 + 196] == bool(mem[_1991 + 196])
                                            if not mem[_1991 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        userStates[address(msg.sender)][idx].field_256 = 0
                                        mem[_1991 + ceil32(return_data.size) + 165] = idx
                                        mem[_1991 + ceil32(return_data.size) + 197] = msg.sender
                                        mem[_1991 + ceil32(return_data.size) + 229] = userStates[address(msg.sender)][idx].field_0
                                        mem[_1991 + ceil32(return_data.size) + 261] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                        else:
                            if rewards[idx].field_1024 < 1000000000000000000 * 10^18:
                                if rewards[idx].field_1024 < userStates[address(msg.sender)][idx].field_0:
                                    revert with 'NH{q', 17
                                mem[0] = msg.sender
                                mem[32] = 103
                                if rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0 and userStaked[address(msg.sender)] > -1 / rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0:
                                    revert with 'NH{q', 17
                                if userStates[address(msg.sender)][idx].field_256 > !((rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18):
                                    revert with 'NH{q', 17
                                userStates[address(msg.sender)][idx].field_256 += (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                userStates[address(msg.sender)][idx].field_0 = rewards[idx].field_1024
                                if not userStates[address(msg.sender)][idx].field_256:
                                    mem[mem[64]] = idx
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                    mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                else:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(rewards[idx].field_0)
                                    staticcall rewards[idx].field_0.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1911 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_1911] <= userStates[address(msg.sender)][idx].field_256:
                                        mem[mem[64]] = idx
                                        mem[mem[64] + 32] = msg.sender
                                        mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                        mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                    else:
                                        _2017 = mem[64]
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = userStates[address(msg.sender)][idx].field_256
                                        _2049 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_2049 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_2049 + 36 len 28]
                                        mem[64] = _2017 + 164
                                        mem[_2017 + 100] = 32
                                        mem[_2017 + 132] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(rewards[idx].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        _2195 = mem[_2049]
                                        s = 0
                                        while s < _2195:
                                            mem[s + _2017 + 164] = mem[s + _2049 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_2195) > _2195:
                                            mem[_2195 + _2017 + 164] = 0
                                        call rewards[idx].field_0.mem[_2017 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_2017 + 168 len _2195 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_2017 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_2017 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _2017 + 232] = mem[idx + _2017 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_2017 + 232]
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            userStates[address(msg.sender)][idx].field_256 = 0
                                            mem[_2017 + 164] = idx
                                            mem[_2017 + 196] = msg.sender
                                            mem[_2017 + 228] = userStates[address(msg.sender)][idx].field_0
                                            mem[_2017 + 260] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                        else:
                                            mem[64] = _2017 + ceil32(return_data.size) + 165
                                            mem[_2017 + 164] = return_data.size
                                            mem[_2017 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_2017 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_2017 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _2017 + ceil32(return_data.size) + 233] = mem[idx + _2017 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_2017 + ceil32(return_data.size) + 233]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_2017 + 196] == bool(mem[_2017 + 196])
                                                if not mem[_2017 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            userStates[address(msg.sender)][idx].field_256 = 0
                                            mem[_2017 + ceil32(return_data.size) + 165] = idx
                                            mem[_2017 + ceil32(return_data.size) + 197] = msg.sender
                                            mem[_2017 + ceil32(return_data.size) + 229] = userStates[address(msg.sender)][idx].field_0
                                            mem[_2017 + ceil32(return_data.size) + 261] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                            else:
                                userStates[address(msg.sender)][idx].field_0 = 1000000000000000000 * 10^18
                                if rewards[idx].field_1024 < userStates[address(msg.sender)][idx].field_0:
                                    revert with 'NH{q', 17
                                mem[0] = msg.sender
                                mem[32] = 103
                                if rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0 and userStaked[address(msg.sender)] > -1 / rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0:
                                    revert with 'NH{q', 17
                                if userStates[address(msg.sender)][idx].field_256 > !((rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18):
                                    revert with 'NH{q', 17
                                userStates[address(msg.sender)][idx].field_256 += (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                userStates[address(msg.sender)][idx].field_0 = rewards[idx].field_1024
                                if not userStates[address(msg.sender)][idx].field_256:
                                    mem[mem[64]] = idx
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                    mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                else:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(rewards[idx].field_0)
                                    staticcall rewards[idx].field_0.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1933 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_1933] <= userStates[address(msg.sender)][idx].field_256:
                                        mem[mem[64]] = idx
                                        mem[mem[64] + 32] = msg.sender
                                        mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                        mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                    else:
                                        _2051 = mem[64]
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = userStates[address(msg.sender)][idx].field_256
                                        _2068 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_2068 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_2068 + 36 len 28]
                                        mem[64] = _2051 + 164
                                        mem[_2051 + 100] = 32
                                        mem[_2051 + 132] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(rewards[idx].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        _2224 = mem[_2068]
                                        s = 0
                                        while s < _2224:
                                            mem[s + _2051 + 164] = mem[s + _2068 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_2224) > _2224:
                                            mem[_2224 + _2051 + 164] = 0
                                        call rewards[idx].field_0.mem[_2051 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_2051 + 168 len _2224 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_2051 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_2051 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _2051 + 232] = mem[idx + _2051 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_2051 + 232]
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            userStates[address(msg.sender)][idx].field_256 = 0
                                            mem[_2051 + 164] = idx
                                            mem[_2051 + 196] = msg.sender
                                            mem[_2051 + 228] = userStates[address(msg.sender)][idx].field_0
                                            mem[_2051 + 260] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                        else:
                                            mem[64] = _2051 + ceil32(return_data.size) + 165
                                            mem[_2051 + 164] = return_data.size
                                            mem[_2051 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_2051 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_2051 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _2051 + ceil32(return_data.size) + 233] = mem[idx + _2051 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_2051 + ceil32(return_data.size) + 233]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_2051 + 196] == bool(mem[_2051 + 196])
                                                if not mem[_2051 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            userStates[address(msg.sender)][idx].field_256 = 0
                                            mem[_2051 + ceil32(return_data.size) + 165] = idx
                                            mem[_2051 + ceil32(return_data.size) + 197] = msg.sender
                                            mem[_2051 + ceil32(return_data.size) + 229] = userStates[address(msg.sender)][idx].field_0
                                            mem[_2051 + ceil32(return_data.size) + 261] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                    else:
                        if block.number - rewards[idx].field_1280 and rewards[idx].field_256 > -1 / block.number - rewards[idx].field_1280:
                            revert with 'NH{q', 17
                        if (block.number * rewards[idx].field_256) - (rewards[idx].field_1280 * rewards[idx].field_256) and 1000000000000000000 * 10^18 > -1 / (block.number * rewards[idx].field_256) - (rewards[idx].field_1280 * rewards[idx].field_256):
                            revert with 'NH{q', 17
                        if not totalStaked:
                            revert with 'NH{q', 18
                        if rewards[idx].field_1024 > !((1000000000000000000 * 10^18 * block.number * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked):
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
                            if userStates[address(msg.sender)][idx].field_256 > !((rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18):
                                revert with 'NH{q', 17
                            userStates[address(msg.sender)][idx].field_256 += (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                            userStates[address(msg.sender)][idx].field_0 = rewards[idx].field_1024
                            if not userStates[address(msg.sender)][idx].field_256:
                                mem[mem[64]] = idx
                                mem[mem[64] + 32] = msg.sender
                                mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                            else:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(rewards[idx].field_0)
                                staticcall rewards[idx].field_0.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2136 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_2136] <= userStates[address(msg.sender)][idx].field_256:
                                    mem[mem[64]] = idx
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                    mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                else:
                                    _2279 = mem[64]
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = userStates[address(msg.sender)][idx].field_256
                                    _2315 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_2315 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_2315 + 36 len 28]
                                    mem[64] = _2279 + 164
                                    mem[_2279 + 100] = 32
                                    mem[_2279 + 132] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(rewards[idx].field_0):
                                        revert with 0, 'Address: call to non-contract'
                                    _2535 = mem[_2315]
                                    s = 0
                                    while s < _2535:
                                        mem[s + _2279 + 164] = mem[s + _2315 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_2535) > _2535:
                                        mem[_2535 + _2279 + 164] = 0
                                    call rewards[idx].field_0.mem[_2279 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_2279 + 168 len _2535 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_2279 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_2279 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _2279 + 232] = mem[idx + _2279 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_2279 + 232]
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        userStates[address(msg.sender)][idx].field_256 = 0
                                        mem[_2279 + 164] = idx
                                        mem[_2279 + 196] = msg.sender
                                        mem[_2279 + 228] = userStates[address(msg.sender)][idx].field_0
                                        mem[_2279 + 260] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                    else:
                                        mem[64] = _2279 + ceil32(return_data.size) + 165
                                        mem[_2279 + 164] = return_data.size
                                        mem[_2279 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_2279 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_2279 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _2279 + ceil32(return_data.size) + 233] = mem[idx + _2279 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_2279 + ceil32(return_data.size) + 233]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_2279 + 196] == bool(mem[_2279 + 196])
                                            if not mem[_2279 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        userStates[address(msg.sender)][idx].field_256 = 0
                                        mem[_2279 + ceil32(return_data.size) + 165] = idx
                                        mem[_2279 + ceil32(return_data.size) + 197] = msg.sender
                                        mem[_2279 + ceil32(return_data.size) + 229] = userStates[address(msg.sender)][idx].field_0
                                        mem[_2279 + ceil32(return_data.size) + 261] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                        else:
                            if rewards[idx].field_1024 < 1000000000000000000 * 10^18:
                                if rewards[idx].field_1024 < userStates[address(msg.sender)][idx].field_0:
                                    revert with 'NH{q', 17
                                mem[0] = msg.sender
                                mem[32] = 103
                                if rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0 and userStaked[address(msg.sender)] > -1 / rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0:
                                    revert with 'NH{q', 17
                                if userStates[address(msg.sender)][idx].field_256 > !((rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18):
                                    revert with 'NH{q', 17
                                userStates[address(msg.sender)][idx].field_256 += (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                userStates[address(msg.sender)][idx].field_0 = rewards[idx].field_1024
                                if not userStates[address(msg.sender)][idx].field_256:
                                    mem[mem[64]] = idx
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                    mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                else:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(rewards[idx].field_0)
                                    staticcall rewards[idx].field_0.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2161 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_2161] <= userStates[address(msg.sender)][idx].field_256:
                                        mem[mem[64]] = idx
                                        mem[mem[64] + 32] = msg.sender
                                        mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                        mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                    else:
                                        _2317 = mem[64]
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = userStates[address(msg.sender)][idx].field_256
                                        _2358 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_2358 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_2358 + 36 len 28]
                                        mem[64] = _2317 + 164
                                        mem[_2317 + 100] = 32
                                        mem[_2317 + 132] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(rewards[idx].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        _2615 = mem[_2358]
                                        s = 0
                                        while s < _2615:
                                            mem[s + _2317 + 164] = mem[s + _2358 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_2615) > _2615:
                                            mem[_2615 + _2317 + 164] = 0
                                        call rewards[idx].field_0.mem[_2317 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_2317 + 168 len _2615 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_2317 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_2317 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _2317 + 232] = mem[idx + _2317 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_2317 + 232]
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            userStates[address(msg.sender)][idx].field_256 = 0
                                            mem[_2317 + 164] = idx
                                            mem[_2317 + 196] = msg.sender
                                            mem[_2317 + 228] = userStates[address(msg.sender)][idx].field_0
                                            mem[_2317 + 260] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                        else:
                                            mem[64] = _2317 + ceil32(return_data.size) + 165
                                            mem[_2317 + 164] = return_data.size
                                            mem[_2317 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_2317 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_2317 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _2317 + ceil32(return_data.size) + 233] = mem[idx + _2317 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_2317 + ceil32(return_data.size) + 233]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_2317 + 196] == bool(mem[_2317 + 196])
                                                if not mem[_2317 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            userStates[address(msg.sender)][idx].field_256 = 0
                                            mem[_2317 + ceil32(return_data.size) + 165] = idx
                                            mem[_2317 + ceil32(return_data.size) + 197] = msg.sender
                                            mem[_2317 + ceil32(return_data.size) + 229] = userStates[address(msg.sender)][idx].field_0
                                            mem[_2317 + ceil32(return_data.size) + 261] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                            else:
                                userStates[address(msg.sender)][idx].field_0 = 1000000000000000000 * 10^18
                                if rewards[idx].field_1024 < userStates[address(msg.sender)][idx].field_0:
                                    revert with 'NH{q', 17
                                mem[0] = msg.sender
                                mem[32] = 103
                                if rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0 and userStaked[address(msg.sender)] > -1 / rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0:
                                    revert with 'NH{q', 17
                                if userStates[address(msg.sender)][idx].field_256 > !((rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18):
                                    revert with 'NH{q', 17
                                userStates[address(msg.sender)][idx].field_256 += (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                userStates[address(msg.sender)][idx].field_0 = rewards[idx].field_1024
                                if not userStates[address(msg.sender)][idx].field_256:
                                    mem[mem[64]] = idx
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                    mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                else:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(rewards[idx].field_0)
                                    staticcall rewards[idx].field_0.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2194 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_2194] <= userStates[address(msg.sender)][idx].field_256:
                                        mem[mem[64]] = idx
                                        mem[mem[64] + 32] = msg.sender
                                        mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                        mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                    else:
                                        _2360 = mem[64]
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = userStates[address(msg.sender)][idx].field_256
                                        _2390 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_2390 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_2390 + 36 len 28]
                                        mem[64] = _2360 + 164
                                        mem[_2360 + 100] = 32
                                        mem[_2360 + 132] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(rewards[idx].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        _2689 = mem[_2390]
                                        s = 0
                                        while s < _2689:
                                            mem[s + _2360 + 164] = mem[s + _2390 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_2689) > _2689:
                                            mem[_2689 + _2360 + 164] = 0
                                        call rewards[idx].field_0.mem[_2360 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_2360 + 168 len _2689 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_2360 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_2360 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _2360 + 232] = mem[idx + _2360 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_2360 + 232]
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            userStates[address(msg.sender)][idx].field_256 = 0
                                            mem[_2360 + 164] = idx
                                            mem[_2360 + 196] = msg.sender
                                            mem[_2360 + 228] = userStates[address(msg.sender)][idx].field_0
                                            mem[_2360 + 260] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                        else:
                                            mem[64] = _2360 + ceil32(return_data.size) + 165
                                            mem[_2360 + 164] = return_data.size
                                            mem[_2360 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_2360 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_2360 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _2360 + ceil32(return_data.size) + 233] = mem[idx + _2360 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_2360 + ceil32(return_data.size) + 233]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_2360 + 196] == bool(mem[_2360 + 196])
                                                if not mem[_2360 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            userStates[address(msg.sender)][idx].field_256 = 0
                                            mem[_2360 + ceil32(return_data.size) + 165] = idx
                                            mem[_2360 + ceil32(return_data.size) + 197] = msg.sender
                                            mem[_2360 + ceil32(return_data.size) + 229] = userStates[address(msg.sender)][idx].field_0
                                            mem[_2360 + ceil32(return_data.size) + 261] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
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
                            if userStates[address(msg.sender)][idx].field_256 > !((rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18):
                                revert with 'NH{q', 17
                            userStates[address(msg.sender)][idx].field_256 += (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                            userStates[address(msg.sender)][idx].field_0 = rewards[idx].field_1024
                            if not userStates[address(msg.sender)][idx].field_256:
                                mem[mem[64]] = idx
                                mem[mem[64] + 32] = msg.sender
                                mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                            else:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(rewards[idx].field_0)
                                staticcall rewards[idx].field_0.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1897 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_1897] <= userStates[address(msg.sender)][idx].field_256:
                                    mem[mem[64]] = idx
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                    mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                else:
                                    _1994 = mem[64]
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = userStates[address(msg.sender)][idx].field_256
                                    _2020 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_2020 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_2020 + 36 len 28]
                                    mem[64] = _1994 + 164
                                    mem[_1994 + 100] = 32
                                    mem[_1994 + 132] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(rewards[idx].field_0):
                                        revert with 0, 'Address: call to non-contract'
                                    _2173 = mem[_2020]
                                    s = 0
                                    while s < _2173:
                                        mem[s + _1994 + 164] = mem[s + _2020 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_2173) > _2173:
                                        mem[_2173 + _1994 + 164] = 0
                                    call rewards[idx].field_0.mem[_1994 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_1994 + 168 len _2173 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_1994 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_1994 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _1994 + 232] = mem[idx + _1994 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_1994 + 232]
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        userStates[address(msg.sender)][idx].field_256 = 0
                                        mem[_1994 + 164] = idx
                                        mem[_1994 + 196] = msg.sender
                                        mem[_1994 + 228] = userStates[address(msg.sender)][idx].field_0
                                        mem[_1994 + 260] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                    else:
                                        mem[64] = _1994 + ceil32(return_data.size) + 165
                                        mem[_1994 + 164] = return_data.size
                                        mem[_1994 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_1994 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_1994 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _1994 + ceil32(return_data.size) + 233] = mem[idx + _1994 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_1994 + ceil32(return_data.size) + 233]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_1994 + 196] == bool(mem[_1994 + 196])
                                            if not mem[_1994 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        userStates[address(msg.sender)][idx].field_256 = 0
                                        mem[_1994 + ceil32(return_data.size) + 165] = idx
                                        mem[_1994 + ceil32(return_data.size) + 197] = msg.sender
                                        mem[_1994 + ceil32(return_data.size) + 229] = userStates[address(msg.sender)][idx].field_0
                                        mem[_1994 + ceil32(return_data.size) + 261] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                        else:
                            if rewards[idx].field_1024 < 1000000000000000000 * 10^18:
                                if rewards[idx].field_1024 < userStates[address(msg.sender)][idx].field_0:
                                    revert with 'NH{q', 17
                                mem[0] = msg.sender
                                mem[32] = 103
                                if rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0 and userStaked[address(msg.sender)] > -1 / rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0:
                                    revert with 'NH{q', 17
                                if userStates[address(msg.sender)][idx].field_256 > !((rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18):
                                    revert with 'NH{q', 17
                                userStates[address(msg.sender)][idx].field_256 += (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                userStates[address(msg.sender)][idx].field_0 = rewards[idx].field_1024
                                if not userStates[address(msg.sender)][idx].field_256:
                                    mem[mem[64]] = idx
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                    mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                else:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(rewards[idx].field_0)
                                    staticcall rewards[idx].field_0.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1915 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_1915] <= userStates[address(msg.sender)][idx].field_256:
                                        mem[mem[64]] = idx
                                        mem[mem[64] + 32] = msg.sender
                                        mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                        mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                    else:
                                        _2022 = mem[64]
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = userStates[address(msg.sender)][idx].field_256
                                        _2053 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_2053 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_2053 + 36 len 28]
                                        mem[64] = _2022 + 164
                                        mem[_2022 + 100] = 32
                                        mem[_2022 + 132] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(rewards[idx].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        _2202 = mem[_2053]
                                        s = 0
                                        while s < _2202:
                                            mem[s + _2022 + 164] = mem[s + _2053 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_2202) > _2202:
                                            mem[_2202 + _2022 + 164] = 0
                                        call rewards[idx].field_0.mem[_2022 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_2022 + 168 len _2202 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_2022 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_2022 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _2022 + 232] = mem[idx + _2022 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_2022 + 232]
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            userStates[address(msg.sender)][idx].field_256 = 0
                                            mem[_2022 + 164] = idx
                                            mem[_2022 + 196] = msg.sender
                                            mem[_2022 + 228] = userStates[address(msg.sender)][idx].field_0
                                            mem[_2022 + 260] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                        else:
                                            mem[64] = _2022 + ceil32(return_data.size) + 165
                                            mem[_2022 + 164] = return_data.size
                                            mem[_2022 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_2022 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_2022 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _2022 + ceil32(return_data.size) + 233] = mem[idx + _2022 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_2022 + ceil32(return_data.size) + 233]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_2022 + 196] == bool(mem[_2022 + 196])
                                                if not mem[_2022 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            userStates[address(msg.sender)][idx].field_256 = 0
                                            mem[_2022 + ceil32(return_data.size) + 165] = idx
                                            mem[_2022 + ceil32(return_data.size) + 197] = msg.sender
                                            mem[_2022 + ceil32(return_data.size) + 229] = userStates[address(msg.sender)][idx].field_0
                                            mem[_2022 + ceil32(return_data.size) + 261] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                            else:
                                userStates[address(msg.sender)][idx].field_0 = 1000000000000000000 * 10^18
                                if rewards[idx].field_1024 < userStates[address(msg.sender)][idx].field_0:
                                    revert with 'NH{q', 17
                                mem[0] = msg.sender
                                mem[32] = 103
                                if rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0 and userStaked[address(msg.sender)] > -1 / rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0:
                                    revert with 'NH{q', 17
                                if userStates[address(msg.sender)][idx].field_256 > !((rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18):
                                    revert with 'NH{q', 17
                                userStates[address(msg.sender)][idx].field_256 += (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                userStates[address(msg.sender)][idx].field_0 = rewards[idx].field_1024
                                if not userStates[address(msg.sender)][idx].field_256:
                                    mem[mem[64]] = idx
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                    mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                else:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(rewards[idx].field_0)
                                    staticcall rewards[idx].field_0.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1936 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_1936] <= userStates[address(msg.sender)][idx].field_256:
                                        mem[mem[64]] = idx
                                        mem[mem[64] + 32] = msg.sender
                                        mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                        mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                    else:
                                        _2055 = mem[64]
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = userStates[address(msg.sender)][idx].field_256
                                        _2071 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_2071 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_2071 + 36 len 28]
                                        mem[64] = _2055 + 164
                                        mem[_2055 + 100] = 32
                                        mem[_2055 + 132] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(rewards[idx].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        _2227 = mem[_2071]
                                        s = 0
                                        while s < _2227:
                                            mem[s + _2055 + 164] = mem[s + _2071 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_2227) > _2227:
                                            mem[_2227 + _2055 + 164] = 0
                                        call rewards[idx].field_0.mem[_2055 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_2055 + 168 len _2227 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_2055 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_2055 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _2055 + 232] = mem[idx + _2055 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_2055 + 232]
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            userStates[address(msg.sender)][idx].field_256 = 0
                                            mem[_2055 + 164] = idx
                                            mem[_2055 + 196] = msg.sender
                                            mem[_2055 + 228] = userStates[address(msg.sender)][idx].field_0
                                            mem[_2055 + 260] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                        else:
                                            mem[64] = _2055 + ceil32(return_data.size) + 165
                                            mem[_2055 + 164] = return_data.size
                                            mem[_2055 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_2055 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_2055 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _2055 + ceil32(return_data.size) + 233] = mem[idx + _2055 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_2055 + ceil32(return_data.size) + 233]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_2055 + 196] == bool(mem[_2055 + 196])
                                                if not mem[_2055 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            userStates[address(msg.sender)][idx].field_256 = 0
                                            mem[_2055 + ceil32(return_data.size) + 165] = idx
                                            mem[_2055 + ceil32(return_data.size) + 197] = msg.sender
                                            mem[_2055 + ceil32(return_data.size) + 229] = userStates[address(msg.sender)][idx].field_0
                                            mem[_2055 + ceil32(return_data.size) + 261] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                    else:
                        if rewards[idx].field_768 - rewards[idx].field_1280 and rewards[idx].field_256 > -1 / rewards[idx].field_768 - rewards[idx].field_1280:
                            revert with 'NH{q', 17
                        if (rewards[idx].field_768 * rewards[idx].field_256) - (rewards[idx].field_1280 * rewards[idx].field_256) and 1000000000000000000 * 10^18 > -1 / (rewards[idx].field_768 * rewards[idx].field_256) - (rewards[idx].field_1280 * rewards[idx].field_256):
                            revert with 'NH{q', 17
                        if not totalStaked:
                            revert with 'NH{q', 18
                        if rewards[idx].field_1024 > !((1000000000000000000 * 10^18 * rewards[idx].field_768 * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked):
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
                            if userStates[address(msg.sender)][idx].field_256 > !((rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18):
                                revert with 'NH{q', 17
                            userStates[address(msg.sender)][idx].field_256 += (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                            userStates[address(msg.sender)][idx].field_0 = rewards[idx].field_1024
                            if not userStates[address(msg.sender)][idx].field_256:
                                mem[mem[64]] = idx
                                mem[mem[64] + 32] = msg.sender
                                mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                            else:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(rewards[idx].field_0)
                                staticcall rewards[idx].field_0.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2145 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_2145] <= userStates[address(msg.sender)][idx].field_256:
                                    mem[mem[64]] = idx
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                    mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                else:
                                    _2283 = mem[64]
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = userStates[address(msg.sender)][idx].field_256
                                    _2322 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_2322 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_2322 + 36 len 28]
                                    mem[64] = _2283 + 164
                                    mem[_2283 + 100] = 32
                                    mem[_2283 + 132] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(rewards[idx].field_0):
                                        revert with 0, 'Address: call to non-contract'
                                    _2557 = mem[_2322]
                                    s = 0
                                    while s < _2557:
                                        mem[s + _2283 + 164] = mem[s + _2322 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_2557) > _2557:
                                        mem[_2557 + _2283 + 164] = 0
                                    call rewards[idx].field_0.mem[_2283 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_2283 + 168 len _2557 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_2283 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_2283 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _2283 + 232] = mem[idx + _2283 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_2283 + 232]
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        userStates[address(msg.sender)][idx].field_256 = 0
                                        mem[_2283 + 164] = idx
                                        mem[_2283 + 196] = msg.sender
                                        mem[_2283 + 228] = userStates[address(msg.sender)][idx].field_0
                                        mem[_2283 + 260] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                    else:
                                        mem[64] = _2283 + ceil32(return_data.size) + 165
                                        mem[_2283 + 164] = return_data.size
                                        mem[_2283 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_2283 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_2283 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _2283 + ceil32(return_data.size) + 233] = mem[idx + _2283 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_2283 + ceil32(return_data.size) + 233]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_2283 + 196] == bool(mem[_2283 + 196])
                                            if not mem[_2283 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        userStates[address(msg.sender)][idx].field_256 = 0
                                        mem[_2283 + ceil32(return_data.size) + 165] = idx
                                        mem[_2283 + ceil32(return_data.size) + 197] = msg.sender
                                        mem[_2283 + ceil32(return_data.size) + 229] = userStates[address(msg.sender)][idx].field_0
                                        mem[_2283 + ceil32(return_data.size) + 261] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                        else:
                            if rewards[idx].field_1024 < 1000000000000000000 * 10^18:
                                if rewards[idx].field_1024 < userStates[address(msg.sender)][idx].field_0:
                                    revert with 'NH{q', 17
                                mem[0] = msg.sender
                                mem[32] = 103
                                if rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0 and userStaked[address(msg.sender)] > -1 / rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0:
                                    revert with 'NH{q', 17
                                if userStates[address(msg.sender)][idx].field_256 > !((rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18):
                                    revert with 'NH{q', 17
                                userStates[address(msg.sender)][idx].field_256 += (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                userStates[address(msg.sender)][idx].field_0 = rewards[idx].field_1024
                                if not userStates[address(msg.sender)][idx].field_256:
                                    mem[mem[64]] = idx
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                    mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                else:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(rewards[idx].field_0)
                                    staticcall rewards[idx].field_0.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2170 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_2170] <= userStates[address(msg.sender)][idx].field_256:
                                        mem[mem[64]] = idx
                                        mem[mem[64] + 32] = msg.sender
                                        mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                        mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                    else:
                                        _2324 = mem[64]
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = userStates[address(msg.sender)][idx].field_256
                                        _2366 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_2366 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_2366 + 36 len 28]
                                        mem[64] = _2324 + 164
                                        mem[_2324 + 100] = 32
                                        mem[_2324 + 132] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(rewards[idx].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        _2632 = mem[_2366]
                                        s = 0
                                        while s < _2632:
                                            mem[s + _2324 + 164] = mem[s + _2366 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_2632) > _2632:
                                            mem[_2632 + _2324 + 164] = 0
                                        call rewards[idx].field_0.mem[_2324 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_2324 + 168 len _2632 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_2324 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_2324 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _2324 + 232] = mem[idx + _2324 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_2324 + 232]
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            userStates[address(msg.sender)][idx].field_256 = 0
                                            mem[_2324 + 164] = idx
                                            mem[_2324 + 196] = msg.sender
                                            mem[_2324 + 228] = userStates[address(msg.sender)][idx].field_0
                                            mem[_2324 + 260] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                        else:
                                            mem[64] = _2324 + ceil32(return_data.size) + 165
                                            mem[_2324 + 164] = return_data.size
                                            mem[_2324 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_2324 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_2324 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _2324 + ceil32(return_data.size) + 233] = mem[idx + _2324 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_2324 + ceil32(return_data.size) + 233]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_2324 + 196] == bool(mem[_2324 + 196])
                                                if not mem[_2324 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            userStates[address(msg.sender)][idx].field_256 = 0
                                            mem[_2324 + ceil32(return_data.size) + 165] = idx
                                            mem[_2324 + ceil32(return_data.size) + 197] = msg.sender
                                            mem[_2324 + ceil32(return_data.size) + 229] = userStates[address(msg.sender)][idx].field_0
                                            mem[_2324 + ceil32(return_data.size) + 261] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                            else:
                                userStates[address(msg.sender)][idx].field_0 = 1000000000000000000 * 10^18
                                if rewards[idx].field_1024 < userStates[address(msg.sender)][idx].field_0:
                                    revert with 'NH{q', 17
                                mem[0] = msg.sender
                                mem[32] = 103
                                if rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0 and userStaked[address(msg.sender)] > -1 / rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0:
                                    revert with 'NH{q', 17
                                if userStates[address(msg.sender)][idx].field_256 > !((rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18):
                                    revert with 'NH{q', 17
                                userStates[address(msg.sender)][idx].field_256 += (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                userStates[address(msg.sender)][idx].field_0 = rewards[idx].field_1024
                                if not userStates[address(msg.sender)][idx].field_256:
                                    mem[mem[64]] = idx
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                    mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                else:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(rewards[idx].field_0)
                                    staticcall rewards[idx].field_0.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2201 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_2201] <= userStates[address(msg.sender)][idx].field_256:
                                        mem[mem[64]] = idx
                                        mem[mem[64] + 32] = msg.sender
                                        mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                        mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                    else:
                                        _2368 = mem[64]
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = userStates[address(msg.sender)][idx].field_256
                                        _2397 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_2397 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_2397 + 36 len 28]
                                        mem[64] = _2368 + 164
                                        mem[_2368 + 100] = 32
                                        mem[_2368 + 132] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(rewards[idx].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        _2695 = mem[_2397]
                                        s = 0
                                        while s < _2695:
                                            mem[s + _2368 + 164] = mem[s + _2397 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_2695) > _2695:
                                            mem[_2695 + _2368 + 164] = 0
                                        call rewards[idx].field_0.mem[_2368 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_2368 + 168 len _2695 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_2368 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_2368 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _2368 + 232] = mem[idx + _2368 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_2368 + 232]
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            userStates[address(msg.sender)][idx].field_256 = 0
                                            mem[_2368 + 164] = idx
                                            mem[_2368 + 196] = msg.sender
                                            mem[_2368 + 228] = userStates[address(msg.sender)][idx].field_0
                                            mem[_2368 + 260] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                        else:
                                            mem[64] = _2368 + ceil32(return_data.size) + 165
                                            mem[_2368 + 164] = return_data.size
                                            mem[_2368 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_2368 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_2368 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _2368 + ceil32(return_data.size) + 233] = mem[idx + _2368 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_2368 + ceil32(return_data.size) + 233]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_2368 + 196] == bool(mem[_2368 + 196])
                                                if not mem[_2368 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            userStates[address(msg.sender)][idx].field_256 = 0
                                            mem[_2368 + ceil32(return_data.size) + 165] = idx
                                            mem[_2368 + ceil32(return_data.size) + 197] = msg.sender
                                            mem[_2368 + ceil32(return_data.size) + 229] = userStates[address(msg.sender)][idx].field_0
                                            mem[_2368 + ceil32(return_data.size) + 261] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
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
    _1770 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _1772 = mem[_1770]
    mem[0] = msg.sender
    mem[32] = 103
    if arg1 <= mem[_1770]:
        if userStaked[msg.sender] > !arg1:
            revert with 'NH{q', 17
        userStaked[msg.sender] += arg1
        if totalStaked > !arg1:
            revert with 'NH{q', 17
        totalStaked += arg1
        _1793 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = this.address
        mem[mem[64] + 100] = arg1
        _1794 = mem[64]
        mem[mem[64]] = 100
        mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
        mem[64] = mem[64] + 196
        mem[_1793 + 132] = 32
        mem[_1793 + 164] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(stakeTokenAddress):
            revert with 0, 'Address: call to non-contract'
        _1814 = mem[_1794]
        mem[_1793 + 196 len ceil32(mem[_1794])] = mem[_1794 + 32 len ceil32(mem[_1794])]
        if ceil32(_1814) > _1814:
            mem[_1814 + _1793 + 196] = 0
        call stakeTokenAddress with:
             gas gas_remaining wei
            args mem[_1793 + 200 len _1814 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            if mem[96]:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[_1793 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[_1793 + 228] == bool(mem[_1793 + 228])
                if not mem[_1793 + 228]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit Deposit(msg.sender, arg1, block.number);
    else:
        if userStaked[msg.sender] > !_1772:
            revert with 'NH{q', 17
        userStaked[msg.sender] += _1772
        if totalStaked > !_1772:
            revert with 'NH{q', 17
        totalStaked += _1772
        _1796 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = this.address
        mem[mem[64] + 100] = _1772
        _1798 = mem[64]
        mem[mem[64]] = 100
        mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
        mem[64] = mem[64] + 196
        mem[_1796 + 132] = 32
        mem[_1796 + 164] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(stakeTokenAddress):
            revert with 0, 'Address: call to non-contract'
        _1825 = mem[_1798]
        mem[_1796 + 196 len ceil32(mem[_1798])] = mem[_1798 + 32 len ceil32(mem[_1798])]
        if ceil32(_1825) > _1825:
            mem[_1825 + _1796 + 196] = 0
        call stakeTokenAddress with:
             gas gas_remaining wei
            args mem[_1796 + 200 len _1825 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            if mem[96]:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[_1796 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[_1796 + 228] == bool(mem[_1796 + 228])
                if not mem[_1796 + 228]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit Deposit(msg.sender, _1772, block.number);
}

function withdraw(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
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
                if userStates[address(msg.sender)][idx].field_256 > !((rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18):
                    revert with 'NH{q', 17
                userStates[address(msg.sender)][idx].field_256 += (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                userStates[address(msg.sender)][idx].field_0 = rewards[idx].field_1024
                if not userStates[address(msg.sender)][idx].field_256:
                    mem[mem[64]] = idx
                    mem[mem[64] + 32] = msg.sender
                    mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                    mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                else:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(rewards[idx].field_0)
                    staticcall rewards[idx].field_0.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1849 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_1849] <= userStates[address(msg.sender)][idx].field_256:
                        mem[mem[64]] = idx
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                        mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                    else:
                        _1901 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = userStates[address(msg.sender)][idx].field_256
                        _1923 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_1923 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1923 + 36 len 28]
                        mem[64] = _1901 + 164
                        mem[_1901 + 100] = 32
                        mem[_1901 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(rewards[idx].field_0):
                            revert with 0, 'Address: call to non-contract'
                        _2021 = mem[_1923]
                        s = 0
                        while s < _2021:
                            mem[s + _1901 + 164] = mem[s + _1923 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_2021) > _2021:
                            mem[_2021 + _1901 + 164] = 0
                        call rewards[idx].field_0.mem[_1901 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_1901 + 168 len _2021 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_1901 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1901 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _1901 + 232] = mem[idx + _1901 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_1901 + 232]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            userStates[address(msg.sender)][idx].field_256 = 0
                            mem[_1901 + 164] = idx
                            mem[_1901 + 196] = msg.sender
                            mem[_1901 + 228] = userStates[address(msg.sender)][idx].field_0
                            mem[_1901 + 260] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                        else:
                            mem[64] = _1901 + ceil32(return_data.size) + 165
                            mem[_1901 + 164] = return_data.size
                            mem[_1901 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_1901 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1901 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _1901 + ceil32(return_data.size) + 233] = mem[idx + _1901 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_1901 + ceil32(return_data.size) + 233]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_1901 + 196] == bool(mem[_1901 + 196])
                                if not mem[_1901 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            userStates[address(msg.sender)][idx].field_256 = 0
                            mem[_1901 + ceil32(return_data.size) + 165] = idx
                            mem[_1901 + ceil32(return_data.size) + 197] = msg.sender
                            mem[_1901 + ceil32(return_data.size) + 229] = userStates[address(msg.sender)][idx].field_0
                            mem[_1901 + ceil32(return_data.size) + 261] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
            else:
                if rewards[idx].field_1024 < 1000000000000000000 * 10^18:
                    if rewards[idx].field_1024 < userStates[address(msg.sender)][idx].field_0:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 103
                    if rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0 and userStaked[address(msg.sender)] > -1 / rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0:
                        revert with 'NH{q', 17
                    if userStates[address(msg.sender)][idx].field_256 > !((rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18):
                        revert with 'NH{q', 17
                    userStates[address(msg.sender)][idx].field_256 += (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                    userStates[address(msg.sender)][idx].field_0 = rewards[idx].field_1024
                    if not userStates[address(msg.sender)][idx].field_256:
                        mem[mem[64]] = idx
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                        mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                    else:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(rewards[idx].field_0)
                        staticcall rewards[idx].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1861 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_1861] <= userStates[address(msg.sender)][idx].field_256:
                            mem[mem[64]] = idx
                            mem[mem[64] + 32] = msg.sender
                            mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                            mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                        else:
                            _1925 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = userStates[address(msg.sender)][idx].field_256
                            _1944 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_1944 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1944 + 36 len 28]
                            mem[64] = _1925 + 164
                            mem[_1925 + 100] = 32
                            mem[_1925 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(rewards[idx].field_0):
                                revert with 0, 'Address: call to non-contract'
                            _2043 = mem[_1944]
                            s = 0
                            while s < _2043:
                                mem[s + _1925 + 164] = mem[s + _1944 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_2043) > _2043:
                                mem[_2043 + _1925 + 164] = 0
                            call rewards[idx].field_0.mem[_1925 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_1925 + 168 len _2043 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_1925 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_1925 + 168] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _1925 + 232] = mem[idx + _1925 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_1925 + 232]
                                if mem[96]:
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
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_1925 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_1925 + ceil32(return_data.size) + 169] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _1925 + ceil32(return_data.size) + 233] = mem[idx + _1925 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_1925 + ceil32(return_data.size) + 233]
                                if return_data.size:
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
                    if userStates[address(msg.sender)][idx].field_256 > !((rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18):
                        revert with 'NH{q', 17
                    userStates[address(msg.sender)][idx].field_256 += (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                    userStates[address(msg.sender)][idx].field_0 = rewards[idx].field_1024
                    if not userStates[address(msg.sender)][idx].field_256:
                        mem[mem[64]] = idx
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                        mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                    else:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(rewards[idx].field_0)
                        staticcall rewards[idx].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1874 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_1874] <= userStates[address(msg.sender)][idx].field_256:
                            mem[mem[64]] = idx
                            mem[mem[64] + 32] = msg.sender
                            mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                            mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                        else:
                            _1946 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = userStates[address(msg.sender)][idx].field_256
                            _1958 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_1958 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1958 + 36 len 28]
                            mem[64] = _1946 + 164
                            mem[_1946 + 100] = 32
                            mem[_1946 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(rewards[idx].field_0):
                                revert with 0, 'Address: call to non-contract'
                            _2069 = mem[_1958]
                            s = 0
                            while s < _2069:
                                mem[s + _1946 + 164] = mem[s + _1958 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_2069) > _2069:
                                mem[_2069 + _1946 + 164] = 0
                            call rewards[idx].field_0.mem[_1946 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_1946 + 168 len _2069 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_1946 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_1946 + 168] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _1946 + 232] = mem[idx + _1946 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_1946 + 232]
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                userStates[address(msg.sender)][idx].field_256 = 0
                                mem[_1946 + 164] = idx
                                mem[_1946 + 196] = msg.sender
                                mem[_1946 + 228] = userStates[address(msg.sender)][idx].field_0
                                mem[_1946 + 260] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                            else:
                                mem[64] = _1946 + ceil32(return_data.size) + 165
                                mem[_1946 + 164] = return_data.size
                                mem[_1946 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_1946 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_1946 + ceil32(return_data.size) + 169] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _1946 + ceil32(return_data.size) + 233] = mem[idx + _1946 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_1946 + ceil32(return_data.size) + 233]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_1946 + 196] == bool(mem[_1946 + 196])
                                    if not mem[_1946 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                userStates[address(msg.sender)][idx].field_256 = 0
                                mem[_1946 + ceil32(return_data.size) + 165] = idx
                                mem[_1946 + ceil32(return_data.size) + 197] = msg.sender
                                mem[_1946 + ceil32(return_data.size) + 229] = userStates[address(msg.sender)][idx].field_0
                                mem[_1946 + ceil32(return_data.size) + 261] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
        else:
            if block.number <= rewards[idx].field_512:
                if userStates[address(msg.sender)][idx].field_0:
                    if rewards[idx].field_1024 < userStates[address(msg.sender)][idx].field_0:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 103
                    if rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0 and userStaked[address(msg.sender)] > -1 / rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0:
                        revert with 'NH{q', 17
                    if userStates[address(msg.sender)][idx].field_256 > !((rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18):
                        revert with 'NH{q', 17
                    userStates[address(msg.sender)][idx].field_256 += (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                    userStates[address(msg.sender)][idx].field_0 = rewards[idx].field_1024
                    if not userStates[address(msg.sender)][idx].field_256:
                        mem[mem[64]] = idx
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                        mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                    else:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(rewards[idx].field_0)
                        staticcall rewards[idx].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1856 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_1856] <= userStates[address(msg.sender)][idx].field_256:
                            mem[mem[64]] = idx
                            mem[mem[64] + 32] = msg.sender
                            mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                            mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                        else:
                            _1920 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = userStates[address(msg.sender)][idx].field_256
                            _1938 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_1938 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1938 + 36 len 28]
                            mem[64] = _1920 + 164
                            mem[_1920 + 100] = 32
                            mem[_1920 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(rewards[idx].field_0):
                                revert with 0, 'Address: call to non-contract'
                            _2037 = mem[_1938]
                            s = 0
                            while s < _2037:
                                mem[s + _1920 + 164] = mem[s + _1938 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_2037) > _2037:
                                mem[_2037 + _1920 + 164] = 0
                            call rewards[idx].field_0.mem[_1920 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_1920 + 168 len _2037 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_1920 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_1920 + 168] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _1920 + 232] = mem[idx + _1920 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_1920 + 232]
                                if mem[96]:
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
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_1920 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_1920 + ceil32(return_data.size) + 169] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _1920 + ceil32(return_data.size) + 233] = mem[idx + _1920 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_1920 + ceil32(return_data.size) + 233]
                                if return_data.size:
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
                    if rewards[idx].field_1024 < 1000000000000000000 * 10^18:
                        if rewards[idx].field_1024 < userStates[address(msg.sender)][idx].field_0:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 103
                        if rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0 and userStaked[address(msg.sender)] > -1 / rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0:
                            revert with 'NH{q', 17
                        if userStates[address(msg.sender)][idx].field_256 > !((rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18):
                            revert with 'NH{q', 17
                        userStates[address(msg.sender)][idx].field_256 += (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                        userStates[address(msg.sender)][idx].field_0 = rewards[idx].field_1024
                        if not userStates[address(msg.sender)][idx].field_256:
                            mem[mem[64]] = idx
                            mem[mem[64] + 32] = msg.sender
                            mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                            mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                        else:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(rewards[idx].field_0)
                            staticcall rewards[idx].field_0.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1870 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_1870] <= userStates[address(msg.sender)][idx].field_256:
                                mem[mem[64]] = idx
                                mem[mem[64] + 32] = msg.sender
                                mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                            else:
                                _1940 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = userStates[address(msg.sender)][idx].field_256
                                _1954 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_1954 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1954 + 36 len 28]
                                mem[64] = _1940 + 164
                                mem[_1940 + 100] = 32
                                mem[_1940 + 132] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(rewards[idx].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                _2064 = mem[_1954]
                                s = 0
                                while s < _2064:
                                    mem[s + _1940 + 164] = mem[s + _1954 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_2064) > _2064:
                                    mem[_2064 + _1940 + 164] = 0
                                call rewards[idx].field_0.mem[_1940 + 164 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_1940 + 168 len _2064 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_1940 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_1940 + 168] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _1940 + 232] = mem[idx + _1940 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_1940 + 232]
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    userStates[address(msg.sender)][idx].field_256 = 0
                                    mem[_1940 + 164] = idx
                                    mem[_1940 + 196] = msg.sender
                                    mem[_1940 + 228] = userStates[address(msg.sender)][idx].field_0
                                    mem[_1940 + 260] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                else:
                                    mem[64] = _1940 + ceil32(return_data.size) + 165
                                    mem[_1940 + 164] = return_data.size
                                    mem[_1940 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_1940 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_1940 + ceil32(return_data.size) + 169] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _1940 + ceil32(return_data.size) + 233] = mem[idx + _1940 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_1940 + ceil32(return_data.size) + 233]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_1940 + 196] == bool(mem[_1940 + 196])
                                        if not mem[_1940 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    userStates[address(msg.sender)][idx].field_256 = 0
                                    mem[_1940 + ceil32(return_data.size) + 165] = idx
                                    mem[_1940 + ceil32(return_data.size) + 197] = msg.sender
                                    mem[_1940 + ceil32(return_data.size) + 229] = userStates[address(msg.sender)][idx].field_0
                                    mem[_1940 + ceil32(return_data.size) + 261] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                    else:
                        userStates[address(msg.sender)][idx].field_0 = 1000000000000000000 * 10^18
                        if rewards[idx].field_1024 < userStates[address(msg.sender)][idx].field_0:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 103
                        if rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0 and userStaked[address(msg.sender)] > -1 / rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0:
                            revert with 'NH{q', 17
                        if userStates[address(msg.sender)][idx].field_256 > !((rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18):
                            revert with 'NH{q', 17
                        userStates[address(msg.sender)][idx].field_256 += (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                        userStates[address(msg.sender)][idx].field_0 = rewards[idx].field_1024
                        if not userStates[address(msg.sender)][idx].field_256:
                            mem[mem[64]] = idx
                            mem[mem[64] + 32] = msg.sender
                            mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                            mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                        else:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(rewards[idx].field_0)
                            staticcall rewards[idx].field_0.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1877 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_1877] <= userStates[address(msg.sender)][idx].field_256:
                                mem[mem[64]] = idx
                                mem[mem[64] + 32] = msg.sender
                                mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                            else:
                                _1956 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = userStates[address(msg.sender)][idx].field_256
                                _1967 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_1967 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1967 + 36 len 28]
                                mem[64] = _1956 + 164
                                mem[_1956 + 100] = 32
                                mem[_1956 + 132] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(rewards[idx].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                _2089 = mem[_1967]
                                s = 0
                                while s < _2089:
                                    mem[s + _1956 + 164] = mem[s + _1967 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_2089) > _2089:
                                    mem[_2089 + _1956 + 164] = 0
                                call rewards[idx].field_0.mem[_1956 + 164 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_1956 + 168 len _2089 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_1956 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_1956 + 168] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _1956 + 232] = mem[idx + _1956 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_1956 + 232]
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    userStates[address(msg.sender)][idx].field_256 = 0
                                    mem[_1956 + 164] = idx
                                    mem[_1956 + 196] = msg.sender
                                    mem[_1956 + 228] = userStates[address(msg.sender)][idx].field_0
                                    mem[_1956 + 260] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                else:
                                    mem[64] = _1956 + ceil32(return_data.size) + 165
                                    mem[_1956 + 164] = return_data.size
                                    mem[_1956 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_1956 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_1956 + ceil32(return_data.size) + 169] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _1956 + ceil32(return_data.size) + 233] = mem[idx + _1956 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_1956 + ceil32(return_data.size) + 233]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_1956 + 196] == bool(mem[_1956 + 196])
                                        if not mem[_1956 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    userStates[address(msg.sender)][idx].field_256 = 0
                                    mem[_1956 + ceil32(return_data.size) + 165] = idx
                                    mem[_1956 + ceil32(return_data.size) + 197] = msg.sender
                                    mem[_1956 + ceil32(return_data.size) + 229] = userStates[address(msg.sender)][idx].field_0
                                    mem[_1956 + ceil32(return_data.size) + 261] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
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
                            if userStates[address(msg.sender)][idx].field_256 > !((rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18):
                                revert with 'NH{q', 17
                            userStates[address(msg.sender)][idx].field_256 += (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                            userStates[address(msg.sender)][idx].field_0 = rewards[idx].field_1024
                            if not userStates[address(msg.sender)][idx].field_256:
                                mem[mem[64]] = idx
                                mem[mem[64] + 32] = msg.sender
                                mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                            else:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(rewards[idx].field_0)
                                staticcall rewards[idx].field_0.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1909 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_1909] <= userStates[address(msg.sender)][idx].field_256:
                                    mem[mem[64]] = idx
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                    mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                else:
                                    _2011 = mem[64]
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = userStates[address(msg.sender)][idx].field_256
                                    _2027 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_2027 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_2027 + 36 len 28]
                                    mem[64] = _2011 + 164
                                    mem[_2011 + 100] = 32
                                    mem[_2011 + 132] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(rewards[idx].field_0):
                                        revert with 0, 'Address: call to non-contract'
                                    _2180 = mem[_2027]
                                    s = 0
                                    while s < _2180:
                                        mem[s + _2011 + 164] = mem[s + _2027 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_2180) > _2180:
                                        mem[_2180 + _2011 + 164] = 0
                                    call rewards[idx].field_0.mem[_2011 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_2011 + 168 len _2180 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_2011 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_2011 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _2011 + 232] = mem[idx + _2011 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_2011 + 232]
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        userStates[address(msg.sender)][idx].field_256 = 0
                                        mem[_2011 + 164] = idx
                                        mem[_2011 + 196] = msg.sender
                                        mem[_2011 + 228] = userStates[address(msg.sender)][idx].field_0
                                        mem[_2011 + 260] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                    else:
                                        mem[64] = _2011 + ceil32(return_data.size) + 165
                                        mem[_2011 + 164] = return_data.size
                                        mem[_2011 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_2011 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_2011 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _2011 + ceil32(return_data.size) + 233] = mem[idx + _2011 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_2011 + ceil32(return_data.size) + 233]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_2011 + 196] == bool(mem[_2011 + 196])
                                            if not mem[_2011 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        userStates[address(msg.sender)][idx].field_256 = 0
                                        mem[_2011 + ceil32(return_data.size) + 165] = idx
                                        mem[_2011 + ceil32(return_data.size) + 197] = msg.sender
                                        mem[_2011 + ceil32(return_data.size) + 229] = userStates[address(msg.sender)][idx].field_0
                                        mem[_2011 + ceil32(return_data.size) + 261] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                        else:
                            if rewards[idx].field_1024 < 1000000000000000000 * 10^18:
                                if rewards[idx].field_1024 < userStates[address(msg.sender)][idx].field_0:
                                    revert with 'NH{q', 17
                                mem[0] = msg.sender
                                mem[32] = 103
                                if rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0 and userStaked[address(msg.sender)] > -1 / rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0:
                                    revert with 'NH{q', 17
                                if userStates[address(msg.sender)][idx].field_256 > !((rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18):
                                    revert with 'NH{q', 17
                                userStates[address(msg.sender)][idx].field_256 += (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                userStates[address(msg.sender)][idx].field_0 = rewards[idx].field_1024
                                if not userStates[address(msg.sender)][idx].field_256:
                                    mem[mem[64]] = idx
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                    mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                else:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(rewards[idx].field_0)
                                    staticcall rewards[idx].field_0.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1931 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_1931] <= userStates[address(msg.sender)][idx].field_256:
                                        mem[mem[64]] = idx
                                        mem[mem[64] + 32] = msg.sender
                                        mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                        mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                    else:
                                        _2029 = mem[64]
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = userStates[address(msg.sender)][idx].field_256
                                        _2057 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_2057 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_2057 + 36 len 28]
                                        mem[64] = _2029 + 164
                                        mem[_2029 + 100] = 32
                                        mem[_2029 + 132] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(rewards[idx].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        _2207 = mem[_2057]
                                        s = 0
                                        while s < _2207:
                                            mem[s + _2029 + 164] = mem[s + _2057 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_2207) > _2207:
                                            mem[_2207 + _2029 + 164] = 0
                                        call rewards[idx].field_0.mem[_2029 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_2029 + 168 len _2207 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_2029 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_2029 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _2029 + 232] = mem[idx + _2029 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_2029 + 232]
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            userStates[address(msg.sender)][idx].field_256 = 0
                                            mem[_2029 + 164] = idx
                                            mem[_2029 + 196] = msg.sender
                                            mem[_2029 + 228] = userStates[address(msg.sender)][idx].field_0
                                            mem[_2029 + 260] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                        else:
                                            mem[64] = _2029 + ceil32(return_data.size) + 165
                                            mem[_2029 + 164] = return_data.size
                                            mem[_2029 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_2029 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_2029 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _2029 + ceil32(return_data.size) + 233] = mem[idx + _2029 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_2029 + ceil32(return_data.size) + 233]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_2029 + 196] == bool(mem[_2029 + 196])
                                                if not mem[_2029 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            userStates[address(msg.sender)][idx].field_256 = 0
                                            mem[_2029 + ceil32(return_data.size) + 165] = idx
                                            mem[_2029 + ceil32(return_data.size) + 197] = msg.sender
                                            mem[_2029 + ceil32(return_data.size) + 229] = userStates[address(msg.sender)][idx].field_0
                                            mem[_2029 + ceil32(return_data.size) + 261] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                            else:
                                userStates[address(msg.sender)][idx].field_0 = 1000000000000000000 * 10^18
                                if rewards[idx].field_1024 < userStates[address(msg.sender)][idx].field_0:
                                    revert with 'NH{q', 17
                                mem[0] = msg.sender
                                mem[32] = 103
                                if rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0 and userStaked[address(msg.sender)] > -1 / rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0:
                                    revert with 'NH{q', 17
                                if userStates[address(msg.sender)][idx].field_256 > !((rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18):
                                    revert with 'NH{q', 17
                                userStates[address(msg.sender)][idx].field_256 += (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                userStates[address(msg.sender)][idx].field_0 = rewards[idx].field_1024
                                if not userStates[address(msg.sender)][idx].field_256:
                                    mem[mem[64]] = idx
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                    mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                else:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(rewards[idx].field_0)
                                    staticcall rewards[idx].field_0.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1949 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_1949] <= userStates[address(msg.sender)][idx].field_256:
                                        mem[mem[64]] = idx
                                        mem[mem[64] + 32] = msg.sender
                                        mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                        mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                    else:
                                        _2059 = mem[64]
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = userStates[address(msg.sender)][idx].field_256
                                        _2084 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_2084 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_2084 + 36 len 28]
                                        mem[64] = _2059 + 164
                                        mem[_2059 + 100] = 32
                                        mem[_2059 + 132] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(rewards[idx].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        _2236 = mem[_2084]
                                        s = 0
                                        while s < _2236:
                                            mem[s + _2059 + 164] = mem[s + _2084 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_2236) > _2236:
                                            mem[_2236 + _2059 + 164] = 0
                                        call rewards[idx].field_0.mem[_2059 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_2059 + 168 len _2236 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_2059 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_2059 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _2059 + 232] = mem[idx + _2059 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_2059 + 232]
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            userStates[address(msg.sender)][idx].field_256 = 0
                                            mem[_2059 + 164] = idx
                                            mem[_2059 + 196] = msg.sender
                                            mem[_2059 + 228] = userStates[address(msg.sender)][idx].field_0
                                            mem[_2059 + 260] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                        else:
                                            mem[64] = _2059 + ceil32(return_data.size) + 165
                                            mem[_2059 + 164] = return_data.size
                                            mem[_2059 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_2059 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_2059 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _2059 + ceil32(return_data.size) + 233] = mem[idx + _2059 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_2059 + ceil32(return_data.size) + 233]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_2059 + 196] == bool(mem[_2059 + 196])
                                                if not mem[_2059 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            userStates[address(msg.sender)][idx].field_256 = 0
                                            mem[_2059 + ceil32(return_data.size) + 165] = idx
                                            mem[_2059 + ceil32(return_data.size) + 197] = msg.sender
                                            mem[_2059 + ceil32(return_data.size) + 229] = userStates[address(msg.sender)][idx].field_0
                                            mem[_2059 + ceil32(return_data.size) + 261] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                    else:
                        if block.number - rewards[idx].field_1280 and rewards[idx].field_256 > -1 / block.number - rewards[idx].field_1280:
                            revert with 'NH{q', 17
                        if (block.number * rewards[idx].field_256) - (rewards[idx].field_1280 * rewards[idx].field_256) and 1000000000000000000 * 10^18 > -1 / (block.number * rewards[idx].field_256) - (rewards[idx].field_1280 * rewards[idx].field_256):
                            revert with 'NH{q', 17
                        if not totalStaked:
                            revert with 'NH{q', 18
                        if rewards[idx].field_1024 > !((1000000000000000000 * 10^18 * block.number * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked):
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
                            if userStates[address(msg.sender)][idx].field_256 > !((rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18):
                                revert with 'NH{q', 17
                            userStates[address(msg.sender)][idx].field_256 += (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                            userStates[address(msg.sender)][idx].field_0 = rewards[idx].field_1024
                            if not userStates[address(msg.sender)][idx].field_256:
                                mem[mem[64]] = idx
                                mem[mem[64] + 32] = msg.sender
                                mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                            else:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(rewards[idx].field_0)
                                staticcall rewards[idx].field_0.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2152 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_2152] <= userStates[address(msg.sender)][idx].field_256:
                                    mem[mem[64]] = idx
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                    mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                else:
                                    _2299 = mem[64]
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = userStates[address(msg.sender)][idx].field_256
                                    _2335 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_2335 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_2335 + 36 len 28]
                                    mem[64] = _2299 + 164
                                    mem[_2299 + 100] = 32
                                    mem[_2299 + 132] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(rewards[idx].field_0):
                                        revert with 0, 'Address: call to non-contract'
                                    _2555 = mem[_2335]
                                    s = 0
                                    while s < _2555:
                                        mem[s + _2299 + 164] = mem[s + _2335 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_2555) > _2555:
                                        mem[_2555 + _2299 + 164] = 0
                                    call rewards[idx].field_0.mem[_2299 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_2299 + 168 len _2555 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_2299 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_2299 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _2299 + 232] = mem[idx + _2299 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_2299 + 232]
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        userStates[address(msg.sender)][idx].field_256 = 0
                                        mem[_2299 + 164] = idx
                                        mem[_2299 + 196] = msg.sender
                                        mem[_2299 + 228] = userStates[address(msg.sender)][idx].field_0
                                        mem[_2299 + 260] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                    else:
                                        mem[64] = _2299 + ceil32(return_data.size) + 165
                                        mem[_2299 + 164] = return_data.size
                                        mem[_2299 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_2299 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_2299 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _2299 + ceil32(return_data.size) + 233] = mem[idx + _2299 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_2299 + ceil32(return_data.size) + 233]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_2299 + 196] == bool(mem[_2299 + 196])
                                            if not mem[_2299 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        userStates[address(msg.sender)][idx].field_256 = 0
                                        mem[_2299 + ceil32(return_data.size) + 165] = idx
                                        mem[_2299 + ceil32(return_data.size) + 197] = msg.sender
                                        mem[_2299 + ceil32(return_data.size) + 229] = userStates[address(msg.sender)][idx].field_0
                                        mem[_2299 + ceil32(return_data.size) + 261] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                        else:
                            if rewards[idx].field_1024 < 1000000000000000000 * 10^18:
                                if rewards[idx].field_1024 < userStates[address(msg.sender)][idx].field_0:
                                    revert with 'NH{q', 17
                                mem[0] = msg.sender
                                mem[32] = 103
                                if rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0 and userStaked[address(msg.sender)] > -1 / rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0:
                                    revert with 'NH{q', 17
                                if userStates[address(msg.sender)][idx].field_256 > !((rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18):
                                    revert with 'NH{q', 17
                                userStates[address(msg.sender)][idx].field_256 += (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                userStates[address(msg.sender)][idx].field_0 = rewards[idx].field_1024
                                if not userStates[address(msg.sender)][idx].field_256:
                                    mem[mem[64]] = idx
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                    mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                else:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(rewards[idx].field_0)
                                    staticcall rewards[idx].field_0.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2177 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_2177] <= userStates[address(msg.sender)][idx].field_256:
                                        mem[mem[64]] = idx
                                        mem[mem[64] + 32] = msg.sender
                                        mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                        mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                    else:
                                        _2337 = mem[64]
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = userStates[address(msg.sender)][idx].field_256
                                        _2378 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_2378 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_2378 + 36 len 28]
                                        mem[64] = _2337 + 164
                                        mem[_2337 + 100] = 32
                                        mem[_2337 + 132] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(rewards[idx].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        _2635 = mem[_2378]
                                        s = 0
                                        while s < _2635:
                                            mem[s + _2337 + 164] = mem[s + _2378 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_2635) > _2635:
                                            mem[_2635 + _2337 + 164] = 0
                                        call rewards[idx].field_0.mem[_2337 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_2337 + 168 len _2635 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_2337 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_2337 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _2337 + 232] = mem[idx + _2337 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_2337 + 232]
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            userStates[address(msg.sender)][idx].field_256 = 0
                                            mem[_2337 + 164] = idx
                                            mem[_2337 + 196] = msg.sender
                                            mem[_2337 + 228] = userStates[address(msg.sender)][idx].field_0
                                            mem[_2337 + 260] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                        else:
                                            mem[64] = _2337 + ceil32(return_data.size) + 165
                                            mem[_2337 + 164] = return_data.size
                                            mem[_2337 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_2337 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_2337 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _2337 + ceil32(return_data.size) + 233] = mem[idx + _2337 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_2337 + ceil32(return_data.size) + 233]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_2337 + 196] == bool(mem[_2337 + 196])
                                                if not mem[_2337 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            userStates[address(msg.sender)][idx].field_256 = 0
                                            mem[_2337 + ceil32(return_data.size) + 165] = idx
                                            mem[_2337 + ceil32(return_data.size) + 197] = msg.sender
                                            mem[_2337 + ceil32(return_data.size) + 229] = userStates[address(msg.sender)][idx].field_0
                                            mem[_2337 + ceil32(return_data.size) + 261] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                            else:
                                userStates[address(msg.sender)][idx].field_0 = 1000000000000000000 * 10^18
                                if rewards[idx].field_1024 < userStates[address(msg.sender)][idx].field_0:
                                    revert with 'NH{q', 17
                                mem[0] = msg.sender
                                mem[32] = 103
                                if rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0 and userStaked[address(msg.sender)] > -1 / rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0:
                                    revert with 'NH{q', 17
                                if userStates[address(msg.sender)][idx].field_256 > !((rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18):
                                    revert with 'NH{q', 17
                                userStates[address(msg.sender)][idx].field_256 += (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                userStates[address(msg.sender)][idx].field_0 = rewards[idx].field_1024
                                if not userStates[address(msg.sender)][idx].field_256:
                                    mem[mem[64]] = idx
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                    mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                else:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(rewards[idx].field_0)
                                    staticcall rewards[idx].field_0.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2206 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_2206] <= userStates[address(msg.sender)][idx].field_256:
                                        mem[mem[64]] = idx
                                        mem[mem[64] + 32] = msg.sender
                                        mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                        mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                    else:
                                        _2380 = mem[64]
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = userStates[address(msg.sender)][idx].field_256
                                        _2410 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_2410 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_2410 + 36 len 28]
                                        mem[64] = _2380 + 164
                                        mem[_2380 + 100] = 32
                                        mem[_2380 + 132] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(rewards[idx].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        _2709 = mem[_2410]
                                        s = 0
                                        while s < _2709:
                                            mem[s + _2380 + 164] = mem[s + _2410 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_2709) > _2709:
                                            mem[_2709 + _2380 + 164] = 0
                                        call rewards[idx].field_0.mem[_2380 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_2380 + 168 len _2709 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_2380 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_2380 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _2380 + 232] = mem[idx + _2380 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_2380 + 232]
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            userStates[address(msg.sender)][idx].field_256 = 0
                                            mem[_2380 + 164] = idx
                                            mem[_2380 + 196] = msg.sender
                                            mem[_2380 + 228] = userStates[address(msg.sender)][idx].field_0
                                            mem[_2380 + 260] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                        else:
                                            mem[64] = _2380 + ceil32(return_data.size) + 165
                                            mem[_2380 + 164] = return_data.size
                                            mem[_2380 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_2380 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_2380 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _2380 + ceil32(return_data.size) + 233] = mem[idx + _2380 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_2380 + ceil32(return_data.size) + 233]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_2380 + 196] == bool(mem[_2380 + 196])
                                                if not mem[_2380 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            userStates[address(msg.sender)][idx].field_256 = 0
                                            mem[_2380 + ceil32(return_data.size) + 165] = idx
                                            mem[_2380 + ceil32(return_data.size) + 197] = msg.sender
                                            mem[_2380 + ceil32(return_data.size) + 229] = userStates[address(msg.sender)][idx].field_0
                                            mem[_2380 + ceil32(return_data.size) + 261] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
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
                            if userStates[address(msg.sender)][idx].field_256 > !((rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18):
                                revert with 'NH{q', 17
                            userStates[address(msg.sender)][idx].field_256 += (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                            userStates[address(msg.sender)][idx].field_0 = rewards[idx].field_1024
                            if not userStates[address(msg.sender)][idx].field_256:
                                mem[mem[64]] = idx
                                mem[mem[64] + 32] = msg.sender
                                mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                            else:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(rewards[idx].field_0)
                                staticcall rewards[idx].field_0.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1915 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_1915] <= userStates[address(msg.sender)][idx].field_256:
                                    mem[mem[64]] = idx
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                    mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                else:
                                    _2014 = mem[64]
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = userStates[address(msg.sender)][idx].field_256
                                    _2032 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_2032 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_2032 + 36 len 28]
                                    mem[64] = _2014 + 164
                                    mem[_2014 + 100] = 32
                                    mem[_2014 + 132] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(rewards[idx].field_0):
                                        revert with 0, 'Address: call to non-contract'
                                    _2189 = mem[_2032]
                                    s = 0
                                    while s < _2189:
                                        mem[s + _2014 + 164] = mem[s + _2032 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_2189) > _2189:
                                        mem[_2189 + _2014 + 164] = 0
                                    call rewards[idx].field_0.mem[_2014 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_2014 + 168 len _2189 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_2014 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_2014 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _2014 + 232] = mem[idx + _2014 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_2014 + 232]
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        userStates[address(msg.sender)][idx].field_256 = 0
                                        mem[_2014 + 164] = idx
                                        mem[_2014 + 196] = msg.sender
                                        mem[_2014 + 228] = userStates[address(msg.sender)][idx].field_0
                                        mem[_2014 + 260] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                    else:
                                        mem[64] = _2014 + ceil32(return_data.size) + 165
                                        mem[_2014 + 164] = return_data.size
                                        mem[_2014 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_2014 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_2014 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _2014 + ceil32(return_data.size) + 233] = mem[idx + _2014 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_2014 + ceil32(return_data.size) + 233]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_2014 + 196] == bool(mem[_2014 + 196])
                                            if not mem[_2014 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        userStates[address(msg.sender)][idx].field_256 = 0
                                        mem[_2014 + ceil32(return_data.size) + 165] = idx
                                        mem[_2014 + ceil32(return_data.size) + 197] = msg.sender
                                        mem[_2014 + ceil32(return_data.size) + 229] = userStates[address(msg.sender)][idx].field_0
                                        mem[_2014 + ceil32(return_data.size) + 261] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                        else:
                            if rewards[idx].field_1024 < 1000000000000000000 * 10^18:
                                if rewards[idx].field_1024 < userStates[address(msg.sender)][idx].field_0:
                                    revert with 'NH{q', 17
                                mem[0] = msg.sender
                                mem[32] = 103
                                if rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0 and userStaked[address(msg.sender)] > -1 / rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0:
                                    revert with 'NH{q', 17
                                if userStates[address(msg.sender)][idx].field_256 > !((rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18):
                                    revert with 'NH{q', 17
                                userStates[address(msg.sender)][idx].field_256 += (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                userStates[address(msg.sender)][idx].field_0 = rewards[idx].field_1024
                                if not userStates[address(msg.sender)][idx].field_256:
                                    mem[mem[64]] = idx
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                    mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                else:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(rewards[idx].field_0)
                                    staticcall rewards[idx].field_0.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1935 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_1935] <= userStates[address(msg.sender)][idx].field_256:
                                        mem[mem[64]] = idx
                                        mem[mem[64] + 32] = msg.sender
                                        mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                        mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                    else:
                                        _2034 = mem[64]
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = userStates[address(msg.sender)][idx].field_256
                                        _2061 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_2061 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_2061 + 36 len 28]
                                        mem[64] = _2034 + 164
                                        mem[_2034 + 100] = 32
                                        mem[_2034 + 132] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(rewards[idx].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        _2214 = mem[_2061]
                                        s = 0
                                        while s < _2214:
                                            mem[s + _2034 + 164] = mem[s + _2061 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_2214) > _2214:
                                            mem[_2214 + _2034 + 164] = 0
                                        call rewards[idx].field_0.mem[_2034 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_2034 + 168 len _2214 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_2034 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_2034 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _2034 + 232] = mem[idx + _2034 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_2034 + 232]
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            userStates[address(msg.sender)][idx].field_256 = 0
                                            mem[_2034 + 164] = idx
                                            mem[_2034 + 196] = msg.sender
                                            mem[_2034 + 228] = userStates[address(msg.sender)][idx].field_0
                                            mem[_2034 + 260] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                        else:
                                            mem[64] = _2034 + ceil32(return_data.size) + 165
                                            mem[_2034 + 164] = return_data.size
                                            mem[_2034 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_2034 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_2034 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _2034 + ceil32(return_data.size) + 233] = mem[idx + _2034 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_2034 + ceil32(return_data.size) + 233]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_2034 + 196] == bool(mem[_2034 + 196])
                                                if not mem[_2034 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            userStates[address(msg.sender)][idx].field_256 = 0
                                            mem[_2034 + ceil32(return_data.size) + 165] = idx
                                            mem[_2034 + ceil32(return_data.size) + 197] = msg.sender
                                            mem[_2034 + ceil32(return_data.size) + 229] = userStates[address(msg.sender)][idx].field_0
                                            mem[_2034 + ceil32(return_data.size) + 261] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                            else:
                                userStates[address(msg.sender)][idx].field_0 = 1000000000000000000 * 10^18
                                if rewards[idx].field_1024 < userStates[address(msg.sender)][idx].field_0:
                                    revert with 'NH{q', 17
                                mem[0] = msg.sender
                                mem[32] = 103
                                if rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0 and userStaked[address(msg.sender)] > -1 / rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0:
                                    revert with 'NH{q', 17
                                if userStates[address(msg.sender)][idx].field_256 > !((rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18):
                                    revert with 'NH{q', 17
                                userStates[address(msg.sender)][idx].field_256 += (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                userStates[address(msg.sender)][idx].field_0 = rewards[idx].field_1024
                                if not userStates[address(msg.sender)][idx].field_256:
                                    mem[mem[64]] = idx
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                    mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                else:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(rewards[idx].field_0)
                                    staticcall rewards[idx].field_0.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1952 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_1952] <= userStates[address(msg.sender)][idx].field_256:
                                        mem[mem[64]] = idx
                                        mem[mem[64] + 32] = msg.sender
                                        mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                        mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                    else:
                                        _2063 = mem[64]
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = userStates[address(msg.sender)][idx].field_256
                                        _2087 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_2087 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_2087 + 36 len 28]
                                        mem[64] = _2063 + 164
                                        mem[_2063 + 100] = 32
                                        mem[_2063 + 132] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(rewards[idx].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        _2239 = mem[_2087]
                                        s = 0
                                        while s < _2239:
                                            mem[s + _2063 + 164] = mem[s + _2087 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_2239) > _2239:
                                            mem[_2239 + _2063 + 164] = 0
                                        call rewards[idx].field_0.mem[_2063 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_2063 + 168 len _2239 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_2063 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_2063 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _2063 + 232] = mem[idx + _2063 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_2063 + 232]
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            userStates[address(msg.sender)][idx].field_256 = 0
                                            mem[_2063 + 164] = idx
                                            mem[_2063 + 196] = msg.sender
                                            mem[_2063 + 228] = userStates[address(msg.sender)][idx].field_0
                                            mem[_2063 + 260] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                        else:
                                            mem[64] = _2063 + ceil32(return_data.size) + 165
                                            mem[_2063 + 164] = return_data.size
                                            mem[_2063 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_2063 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_2063 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _2063 + ceil32(return_data.size) + 233] = mem[idx + _2063 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_2063 + ceil32(return_data.size) + 233]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_2063 + 196] == bool(mem[_2063 + 196])
                                                if not mem[_2063 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            userStates[address(msg.sender)][idx].field_256 = 0
                                            mem[_2063 + ceil32(return_data.size) + 165] = idx
                                            mem[_2063 + ceil32(return_data.size) + 197] = msg.sender
                                            mem[_2063 + ceil32(return_data.size) + 229] = userStates[address(msg.sender)][idx].field_0
                                            mem[_2063 + ceil32(return_data.size) + 261] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                    else:
                        if rewards[idx].field_768 - rewards[idx].field_1280 and rewards[idx].field_256 > -1 / rewards[idx].field_768 - rewards[idx].field_1280:
                            revert with 'NH{q', 17
                        if (rewards[idx].field_768 * rewards[idx].field_256) - (rewards[idx].field_1280 * rewards[idx].field_256) and 1000000000000000000 * 10^18 > -1 / (rewards[idx].field_768 * rewards[idx].field_256) - (rewards[idx].field_1280 * rewards[idx].field_256):
                            revert with 'NH{q', 17
                        if not totalStaked:
                            revert with 'NH{q', 18
                        if rewards[idx].field_1024 > !((1000000000000000000 * 10^18 * rewards[idx].field_768 * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked):
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
                            if userStates[address(msg.sender)][idx].field_256 > !((rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18):
                                revert with 'NH{q', 17
                            userStates[address(msg.sender)][idx].field_256 += (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                            userStates[address(msg.sender)][idx].field_0 = rewards[idx].field_1024
                            if not userStates[address(msg.sender)][idx].field_256:
                                mem[mem[64]] = idx
                                mem[mem[64] + 32] = msg.sender
                                mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                            else:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(rewards[idx].field_0)
                                staticcall rewards[idx].field_0.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2161 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_2161] <= userStates[address(msg.sender)][idx].field_256:
                                    mem[mem[64]] = idx
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                    mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                else:
                                    _2303 = mem[64]
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = userStates[address(msg.sender)][idx].field_256
                                    _2342 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_2342 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_2342 + 36 len 28]
                                    mem[64] = _2303 + 164
                                    mem[_2303 + 100] = 32
                                    mem[_2303 + 132] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(rewards[idx].field_0):
                                        revert with 0, 'Address: call to non-contract'
                                    _2577 = mem[_2342]
                                    s = 0
                                    while s < _2577:
                                        mem[s + _2303 + 164] = mem[s + _2342 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_2577) > _2577:
                                        mem[_2577 + _2303 + 164] = 0
                                    call rewards[idx].field_0.mem[_2303 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_2303 + 168 len _2577 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_2303 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_2303 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _2303 + 232] = mem[idx + _2303 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_2303 + 232]
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        userStates[address(msg.sender)][idx].field_256 = 0
                                        mem[_2303 + 164] = idx
                                        mem[_2303 + 196] = msg.sender
                                        mem[_2303 + 228] = userStates[address(msg.sender)][idx].field_0
                                        mem[_2303 + 260] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                    else:
                                        mem[64] = _2303 + ceil32(return_data.size) + 165
                                        mem[_2303 + 164] = return_data.size
                                        mem[_2303 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_2303 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_2303 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _2303 + ceil32(return_data.size) + 233] = mem[idx + _2303 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_2303 + ceil32(return_data.size) + 233]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_2303 + 196] == bool(mem[_2303 + 196])
                                            if not mem[_2303 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        userStates[address(msg.sender)][idx].field_256 = 0
                                        mem[_2303 + ceil32(return_data.size) + 165] = idx
                                        mem[_2303 + ceil32(return_data.size) + 197] = msg.sender
                                        mem[_2303 + ceil32(return_data.size) + 229] = userStates[address(msg.sender)][idx].field_0
                                        mem[_2303 + ceil32(return_data.size) + 261] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                        else:
                            if rewards[idx].field_1024 < 1000000000000000000 * 10^18:
                                if rewards[idx].field_1024 < userStates[address(msg.sender)][idx].field_0:
                                    revert with 'NH{q', 17
                                mem[0] = msg.sender
                                mem[32] = 103
                                if rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0 and userStaked[address(msg.sender)] > -1 / rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0:
                                    revert with 'NH{q', 17
                                if userStates[address(msg.sender)][idx].field_256 > !((rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18):
                                    revert with 'NH{q', 17
                                userStates[address(msg.sender)][idx].field_256 += (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                userStates[address(msg.sender)][idx].field_0 = rewards[idx].field_1024
                                if not userStates[address(msg.sender)][idx].field_256:
                                    mem[mem[64]] = idx
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                    mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                else:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(rewards[idx].field_0)
                                    staticcall rewards[idx].field_0.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2186 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_2186] <= userStates[address(msg.sender)][idx].field_256:
                                        mem[mem[64]] = idx
                                        mem[mem[64] + 32] = msg.sender
                                        mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                        mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                    else:
                                        _2344 = mem[64]
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = userStates[address(msg.sender)][idx].field_256
                                        _2386 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_2386 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_2386 + 36 len 28]
                                        mem[64] = _2344 + 164
                                        mem[_2344 + 100] = 32
                                        mem[_2344 + 132] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(rewards[idx].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        _2652 = mem[_2386]
                                        s = 0
                                        while s < _2652:
                                            mem[s + _2344 + 164] = mem[s + _2386 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_2652) > _2652:
                                            mem[_2652 + _2344 + 164] = 0
                                        call rewards[idx].field_0.mem[_2344 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_2344 + 168 len _2652 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_2344 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_2344 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _2344 + 232] = mem[idx + _2344 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_2344 + 232]
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            userStates[address(msg.sender)][idx].field_256 = 0
                                            mem[_2344 + 164] = idx
                                            mem[_2344 + 196] = msg.sender
                                            mem[_2344 + 228] = userStates[address(msg.sender)][idx].field_0
                                            mem[_2344 + 260] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                        else:
                                            mem[64] = _2344 + ceil32(return_data.size) + 165
                                            mem[_2344 + 164] = return_data.size
                                            mem[_2344 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_2344 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_2344 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _2344 + ceil32(return_data.size) + 233] = mem[idx + _2344 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_2344 + ceil32(return_data.size) + 233]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_2344 + 196] == bool(mem[_2344 + 196])
                                                if not mem[_2344 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            userStates[address(msg.sender)][idx].field_256 = 0
                                            mem[_2344 + ceil32(return_data.size) + 165] = idx
                                            mem[_2344 + ceil32(return_data.size) + 197] = msg.sender
                                            mem[_2344 + ceil32(return_data.size) + 229] = userStates[address(msg.sender)][idx].field_0
                                            mem[_2344 + ceil32(return_data.size) + 261] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                            else:
                                userStates[address(msg.sender)][idx].field_0 = 1000000000000000000 * 10^18
                                if rewards[idx].field_1024 < userStates[address(msg.sender)][idx].field_0:
                                    revert with 'NH{q', 17
                                mem[0] = msg.sender
                                mem[32] = 103
                                if rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0 and userStaked[address(msg.sender)] > -1 / rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0:
                                    revert with 'NH{q', 17
                                if userStates[address(msg.sender)][idx].field_256 > !((rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18):
                                    revert with 'NH{q', 17
                                userStates[address(msg.sender)][idx].field_256 += (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                userStates[address(msg.sender)][idx].field_0 = rewards[idx].field_1024
                                if not userStates[address(msg.sender)][idx].field_256:
                                    mem[mem[64]] = idx
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                    mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                else:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(rewards[idx].field_0)
                                    staticcall rewards[idx].field_0.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2213 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_2213] <= userStates[address(msg.sender)][idx].field_256:
                                        mem[mem[64]] = idx
                                        mem[mem[64] + 32] = msg.sender
                                        mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                        mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                    else:
                                        _2388 = mem[64]
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = userStates[address(msg.sender)][idx].field_256
                                        _2417 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_2417 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_2417 + 36 len 28]
                                        mem[64] = _2388 + 164
                                        mem[_2388 + 100] = 32
                                        mem[_2388 + 132] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(rewards[idx].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        _2715 = mem[_2417]
                                        s = 0
                                        while s < _2715:
                                            mem[s + _2388 + 164] = mem[s + _2417 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_2715) > _2715:
                                            mem[_2715 + _2388 + 164] = 0
                                        call rewards[idx].field_0.mem[_2388 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_2388 + 168 len _2715 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_2388 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_2388 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _2388 + 232] = mem[idx + _2388 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_2388 + 232]
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            userStates[address(msg.sender)][idx].field_256 = 0
                                            mem[_2388 + 164] = idx
                                            mem[_2388 + 196] = msg.sender
                                            mem[_2388 + 228] = userStates[address(msg.sender)][idx].field_0
                                            mem[_2388 + 260] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                        else:
                                            mem[64] = _2388 + ceil32(return_data.size) + 165
                                            mem[_2388 + 164] = return_data.size
                                            mem[_2388 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_2388 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_2388 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _2388 + ceil32(return_data.size) + 233] = mem[idx + _2388 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_2388 + ceil32(return_data.size) + 233]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_2388 + 196] == bool(mem[_2388 + 196])
                                                if not mem[_2388 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            userStates[address(msg.sender)][idx].field_256 = 0
                                            mem[_2388 + ceil32(return_data.size) + 165] = idx
                                            mem[_2388 + ceil32(return_data.size) + 197] = msg.sender
                                            mem[_2388 + ceil32(return_data.size) + 229] = userStates[address(msg.sender)][idx].field_0
                                            mem[_2388 + ceil32(return_data.size) + 261] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
        emit 0x6c649450: idx, msg.sender, userStates[address(msg.sender)][idx].field_0, (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[0] = msg.sender
    mem[32] = 103
    if arg1 <= userStaked[msg.sender]:
        mem[mem[64] + 4] = this.address
        require ext_code.size(stakeTokenAddress)
        staticcall stakeTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1785 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_1785] < arg1:
            revert with 0, 'Insufficient balance'
        mem[0] = msg.sender
        mem[32] = 103
        if userStaked[msg.sender] < arg1:
            revert with 'NH{q', 17
        userStaked[msg.sender] -= arg1
        if totalStaked < arg1:
            revert with 'NH{q', 17
        totalStaked -= arg1
        _1813 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = arg1
        _1814 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = transfer(address rg1, uint256 rg2)
        mem[64] = mem[64] + 164
        mem[_1813 + 100] = 32
        mem[_1813 + 132] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(stakeTokenAddress):
            revert with 0, 'Address: call to non-contract'
        _1840 = mem[_1814]
        mem[_1813 + 164 len ceil32(mem[_1814])] = mem[_1814 + 32 len ceil32(mem[_1814])]
        if ceil32(_1840) > _1840:
            mem[_1840 + _1813 + 164] = 0
        call stakeTokenAddress with:
             gas gas_remaining wei
            args mem[_1813 + 168 len _1840 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            if mem[96]:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[_1813 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[_1813 + 196] == bool(mem[_1813 + 196])
                if not mem[_1813 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit Withdraw(msg.sender, arg1, block.number);
    else:
        mem[0] = msg.sender
        mem[32] = 103
        mem[mem[64] + 4] = this.address
        require ext_code.size(stakeTokenAddress)
        staticcall stakeTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1786 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_1786] < userStaked[msg.sender]:
            revert with 0, 'Insufficient balance'
        mem[0] = msg.sender
        mem[32] = 103
        if userStaked[msg.sender] < userStaked[msg.sender]:
            revert with 'NH{q', 17
        userStaked[msg.sender] = 0
        if totalStaked < userStaked[msg.sender]:
            revert with 'NH{q', 17
        totalStaked -= userStaked[msg.sender]
        _1816 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = userStaked[msg.sender]
        _1818 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = transfer(address rg1, uint256 rg2)
        mem[64] = mem[64] + 164
        mem[_1816 + 100] = 32
        mem[_1816 + 132] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(stakeTokenAddress):
            revert with 0, 'Address: call to non-contract'
        _1854 = mem[_1818]
        mem[_1816 + 164 len ceil32(mem[_1818])] = mem[_1818 + 32 len ceil32(mem[_1818])]
        if ceil32(_1854) > _1854:
            mem[_1854 + _1816 + 164] = 0
        call stakeTokenAddress with:
             gas gas_remaining wei
            args mem[_1816 + 168 len _1854 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            if mem[96]:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[_1816 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[_1816 + 196] == bool(mem[_1816 + 196])
                if not mem[_1816 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit Withdraw(msg.sender, userStaked[msg.sender], block.number);
}



}
