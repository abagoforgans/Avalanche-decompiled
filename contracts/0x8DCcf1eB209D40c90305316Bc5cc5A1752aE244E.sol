contract main {




// =====================  Runtime code  =====================


#
#  - harvest(uint256 arg1, address arg2)
#  - addRewardForPool(uint256 arg1, uint256 arg2, bool arg3)
#  - withdraw(uint256 arg1, uint256 arg2)
#  - sub_5d710ad7(?)
#  - deposit(uint256 arg1, uint256 arg2)
#
const ZERO = 0

const RATIO_BASE = 1000


address owner;
address tokenAddress;
array of struct poolInfo;
mapping of struct userInfo;

function poolLength() {
    return poolInfo.length
}

function poolInfo(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, 
           poolInfo[arg1].field_256,
           poolInfo[arg1].field_512,
           poolInfo[arg1].field_768,
           poolInfo[arg1].field_1024,
           poolInfo[arg1].field_1280,
           poolInfo[arg1].field_1536,
           poolInfo[arg1].field_1792
}

function owner() {
    return owner
}

function userInfo(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function getMultiplier(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 <= arg1:
        return 0
    if arg1 > arg2:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if arg2 < arg1:
        revert with 'NH{q', 17
    return (arg2 - arg1)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_da2488cd(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == address(arg2)
    if arg1 >= poolInfo.length:
        revert with 0, 'Pool does not exist'
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= poolInfo.length:
        revert with 'NH{q', 50
    poolInfo[arg1].field_1536 = block.number
    if address(arg2):
        emit 0x52fc7597: arg1, address(arg2)
    else:
        emit 0x52fc7597: arg1, msg.sender
}

function updatePool(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= poolInfo.length:
        revert with 0, 'Pool does not exist'
    if block.number > poolInfo[arg1].field_768:
        if block.number >= poolInfo[arg1].field_1280:
            if poolInfo[arg1].field_768 < poolInfo[arg1].field_1536:
                if poolInfo[arg1].field_768 < poolInfo[arg1].field_1280:
                    poolInfo[arg1].field_768 = poolInfo[arg1].field_1280
                if block.number <= poolInfo[arg1].field_1536:
                    if block.number <= poolInfo[arg1].field_768:
                        poolInfo[arg1].field_768 = block.number
                    else:
                        if poolInfo[arg1].field_768 > block.number:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if block.number < poolInfo[arg1].field_768:
                            revert with 'NH{q', 17
                        poolInfo[arg1].field_768 = block.number
                        if poolInfo[arg1].field_256 > 0:
                            if block.number - poolInfo[arg1].field_768:
                                if block.number - poolInfo[arg1].field_768 and poolInfo[arg1].field_512 > -1 / block.number - poolInfo[arg1].field_768:
                                    revert with 'NH{q', 17
                                if not block.number - poolInfo[arg1].field_768:
                                    revert with 'NH{q', 18
                                if (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / block.number - poolInfo[arg1].field_768 != poolInfo[arg1].field_512:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) > 0:
                                    if not (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512):
                                        if poolInfo[arg1].field_256 <= 0:
                                            revert with 0, 'SafeMath: division by zero', 0
                                        if not poolInfo[arg1].field_256:
                                            revert with 'NH{q', 18
                                        if poolInfo[arg1].field_1024 > -(0 / poolInfo[arg1].field_256) - 1:
                                            revert with 'NH{q', 17
                                        if poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_1024 += 0 / poolInfo[arg1].field_256
                                    else:
                                        if (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) and 10^18 > -1 / (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512):
                                            revert with 'NH{q', 17
                                        if not (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512):
                                            revert with 'NH{q', 18
                                        if (10^18 * block.number * poolInfo[arg1].field_512) - (10^18 * poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) != 10^18:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if poolInfo[arg1].field_256 <= 0:
                                            revert with 0, 'SafeMath: division by zero', 0
                                        if not poolInfo[arg1].field_256:
                                            revert with 'NH{q', 18
                                        if poolInfo[arg1].field_1024 > -((10^18 * block.number * poolInfo[arg1].field_512) - (10^18 * poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / poolInfo[arg1].field_256) - 1:
                                            revert with 'NH{q', 17
                                        if poolInfo[arg1].field_1024 + ((10^18 * block.number * poolInfo[arg1].field_512) - (10^18 * poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_1024 += (10^18 * block.number * poolInfo[arg1].field_512) - (10^18 * poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / poolInfo[arg1].field_256
                else:
                    if poolInfo[arg1].field_1536 <= poolInfo[arg1].field_768:
                        poolInfo[arg1].field_768 = poolInfo[arg1].field_1536
                    else:
                        if poolInfo[arg1].field_768 > poolInfo[arg1].field_1536:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if poolInfo[arg1].field_1536 < poolInfo[arg1].field_768:
                            revert with 'NH{q', 17
                        poolInfo[arg1].field_768 = poolInfo[arg1].field_1536
                        if poolInfo[arg1].field_256 > 0:
                            if poolInfo[arg1].field_1536 - poolInfo[arg1].field_768:
                                if poolInfo[arg1].field_1536 - poolInfo[arg1].field_768 and poolInfo[arg1].field_512 > -1 / poolInfo[arg1].field_1536 - poolInfo[arg1].field_768:
                                    revert with 'NH{q', 17
                                if not poolInfo[arg1].field_1536 - poolInfo[arg1].field_768:
                                    revert with 'NH{q', 18
                                if (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / poolInfo[arg1].field_1536 - poolInfo[arg1].field_768 != poolInfo[arg1].field_512:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) > 0:
                                    if not (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512):
                                        if poolInfo[arg1].field_256 <= 0:
                                            revert with 0, 'SafeMath: division by zero', 0
                                        if not poolInfo[arg1].field_256:
                                            revert with 'NH{q', 18
                                        if poolInfo[arg1].field_1024 > -(0 / poolInfo[arg1].field_256) - 1:
                                            revert with 'NH{q', 17
                                        if poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_1024 += 0 / poolInfo[arg1].field_256
                                    else:
                                        if (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) and 10^18 > -1 / (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512):
                                            revert with 'NH{q', 17
                                        if not (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512):
                                            revert with 'NH{q', 18
                                        if (10^18 * poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (10^18 * poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) != 10^18:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if poolInfo[arg1].field_256 <= 0:
                                            revert with 0, 'SafeMath: division by zero', 0
                                        if not poolInfo[arg1].field_256:
                                            revert with 'NH{q', 18
                                        if poolInfo[arg1].field_1024 > -((10^18 * poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (10^18 * poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / poolInfo[arg1].field_256) - 1:
                                            revert with 'NH{q', 17
                                        if poolInfo[arg1].field_1024 + ((10^18 * poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (10^18 * poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_1024 += (10^18 * poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (10^18 * poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / poolInfo[arg1].field_256
}

function emergencyStop(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg1:
        if ext_call.return_data[0] <= 0:
            idx = 0
            while idx < poolInfo.length:
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if idx >= poolInfo.length:
                    revert with 'NH{q', 50
                mem[0] = 2
                poolInfo[idx].field_1536 = block.number
                mem[ceil32(return_data.size) + 96] = idx
                if arg1:
                    mem[ceil32(return_data.size) + 128] = arg1
                    emit 0x52fc7597: idx, arg1
                else:
                    mem[ceil32(return_data.size) + 128] = msg.sender
                    emit 0x52fc7597: idx, msg.sender
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
        else:
            mem[ceil32(return_data.size) + 132] = arg1
            mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
            mem[ceil32(return_data.size) + 96] = 68
            mem[ceil32(return_data.size) + 132 len 28] = address(arg1) << 64
            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[ceil32(return_data.size) + 196] = 32
            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(tokenAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0], 0
            mem[ceil32(return_data.size) + 328] = 0
            call tokenAddress with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0], 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0], 0) << 288)
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
                idx = 0
                while idx < poolInfo.length:
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if idx >= poolInfo.length:
                        revert with 'NH{q', 50
                    mem[0] = 2
                    poolInfo[idx].field_1536 = block.number
                    mem[ceil32(return_data.size) + 260] = idx
                    if arg1:
                        mem[ceil32(return_data.size) + 292] = arg1
                        emit 0x52fc7597: idx, arg1
                    else:
                        mem[ceil32(return_data.size) + 292] = msg.sender
                        emit 0x52fc7597: idx, msg.sender
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
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
                idx = 0
                while idx < poolInfo.length:
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if idx >= poolInfo.length:
                        revert with 'NH{q', 50
                    mem[0] = 2
                    poolInfo[idx].field_1536 = block.number
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = idx
                    if arg1:
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 293] = arg1
                        emit 0x52fc7597: idx, arg1
                    else:
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 293] = msg.sender
                        emit 0x52fc7597: idx, msg.sender
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
        emit EmergencyStop(arg1, msg.sender);
    else:
        if ext_call.return_data[0] <= 0:
            idx = 0
            while idx < poolInfo.length:
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if idx >= poolInfo.length:
                    revert with 'NH{q', 50
                mem[0] = 2
                poolInfo[idx].field_1536 = block.number
                mem[ceil32(return_data.size) + 96] = idx
                mem[ceil32(return_data.size) + 128] = msg.sender
                emit 0x52fc7597: idx, msg.sender
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
        else:
            mem[ceil32(return_data.size) + 132] = msg.sender
            mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
            mem[ceil32(return_data.size) + 96] = 68
            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[ceil32(return_data.size) + 196] = 32
            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(tokenAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0
            mem[ceil32(return_data.size) + 328] = 0
            call tokenAddress with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) << 288)
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
                idx = 0
                while idx < poolInfo.length:
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if idx >= poolInfo.length:
                        revert with 'NH{q', 50
                    mem[0] = 2
                    poolInfo[idx].field_1536 = block.number
                    mem[ceil32(return_data.size) + 260] = idx
                    mem[ceil32(return_data.size) + 292] = msg.sender
                    emit 0x52fc7597: idx, msg.sender
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
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
                idx = 0
                while idx < poolInfo.length:
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if idx >= poolInfo.length:
                        revert with 'NH{q', 50
                    mem[0] = 2
                    poolInfo[idx].field_1536 = block.number
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = idx
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 293] = msg.sender
                    emit 0x52fc7597: idx, msg.sender
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
        emit EmergencyStop(msg.sender, msg.sender);
}

function massUpdatePools() payable {
    mem[64] = 96
    require not msg.value
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 2
        if block.number <= poolInfo[idx].field_768:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if block.number < poolInfo[idx].field_1280:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if poolInfo[idx].field_768 >= poolInfo[idx].field_1536:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if poolInfo[idx].field_768 >= poolInfo[idx].field_1280:
            if block.number <= poolInfo[idx].field_1536:
                if block.number <= poolInfo[idx].field_768:
                    poolInfo[idx].field_768 = block.number
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _107 = mem[64]
                mem[64] = mem[64] + 64
                mem[_107] = 30
                mem[_107 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_768 > block.number:
                    _111 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_111 + idx + 68] = mem[_107 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_111 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _111 + -mem[64] + 100
                if block.number < poolInfo[idx].field_768:
                    revert with 'NH{q', 17
                poolInfo[idx].field_768 = block.number
                if poolInfo[idx].field_256 <= 0:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not block.number - poolInfo[idx].field_768:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if block.number - poolInfo[idx].field_768 and poolInfo[idx].field_512 > -1 / block.number - poolInfo[idx].field_768:
                    revert with 'NH{q', 17
                if not block.number - poolInfo[idx].field_768:
                    revert with 'NH{q', 18
                if (block.number * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512) / block.number - poolInfo[idx].field_768 != poolInfo[idx].field_512:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (block.number * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512) <= 0:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not (block.number * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512):
                    _135 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_135] = 26
                    mem[_135 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_256 > 0:
                        if not poolInfo[idx].field_256:
                            revert with 'NH{q', 18
                        if poolInfo[idx].field_1024 > -(0 / poolInfo[idx].field_256) - 1:
                            revert with 'NH{q', 17
                        if poolInfo[idx].field_1024 + (0 / poolInfo[idx].field_256) < poolInfo[idx].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_256
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    _143 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_143 + idx + 68] = mem[_135 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_143 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _143 + -mem[64] + 100
                if (block.number * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512) and 10^18 > -1 / (block.number * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512):
                    revert with 'NH{q', 17
                if not (block.number * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512):
                    revert with 'NH{q', 18
                if (10^18 * block.number * poolInfo[idx].field_512) - (10^18 * poolInfo[idx].field_768 * poolInfo[idx].field_512) / (block.number * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512) != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                _159 = mem[64]
                mem[64] = mem[64] + 64
                mem[_159] = 26
                mem[_159 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_256 > 0:
                    if not poolInfo[idx].field_256:
                        revert with 'NH{q', 18
                    if poolInfo[idx].field_1024 > -((10^18 * block.number * poolInfo[idx].field_512) - (10^18 * poolInfo[idx].field_768 * poolInfo[idx].field_512) / poolInfo[idx].field_256) - 1:
                        revert with 'NH{q', 17
                    if poolInfo[idx].field_1024 + ((10^18 * block.number * poolInfo[idx].field_512) - (10^18 * poolInfo[idx].field_768 * poolInfo[idx].field_512) / poolInfo[idx].field_256) < poolInfo[idx].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1024 += (10^18 * block.number * poolInfo[idx].field_512) - (10^18 * poolInfo[idx].field_768 * poolInfo[idx].field_512) / poolInfo[idx].field_256
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _163 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_163 + idx + 68] = mem[_159 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_163 + 94] = 0
                revert with memory
                  from mem[64]
                   len _163 + -mem[64] + 100
            if poolInfo[idx].field_1536 <= poolInfo[idx].field_768:
                poolInfo[idx].field_768 = poolInfo[idx].field_1536
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _108 = mem[64]
            mem[64] = mem[64] + 64
            mem[_108] = 30
            mem[_108 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_768 > poolInfo[idx].field_1536:
                _112 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_112 + idx + 68] = mem[_108 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_112 + 98] = 0
                revert with memory
                  from mem[64]
                   len _112 + -mem[64] + 100
            if poolInfo[idx].field_1536 < poolInfo[idx].field_768:
                revert with 'NH{q', 17
            poolInfo[idx].field_768 = poolInfo[idx].field_1536
            if poolInfo[idx].field_256 <= 0:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if not poolInfo[idx].field_1536 - poolInfo[idx].field_768:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if poolInfo[idx].field_1536 - poolInfo[idx].field_768 and poolInfo[idx].field_512 > -1 / poolInfo[idx].field_1536 - poolInfo[idx].field_768:
                revert with 'NH{q', 17
            if not poolInfo[idx].field_1536 - poolInfo[idx].field_768:
                revert with 'NH{q', 18
            if (poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512) / poolInfo[idx].field_1536 - poolInfo[idx].field_768 != poolInfo[idx].field_512:
                revert with 0, 'SafeMath: multiplication overflow'
            if (poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512) <= 0:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if not (poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512):
                _137 = mem[64]
                mem[64] = mem[64] + 64
                mem[_137] = 26
                mem[_137 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_256 > 0:
                    if not poolInfo[idx].field_256:
                        revert with 'NH{q', 18
                    if poolInfo[idx].field_1024 > -(0 / poolInfo[idx].field_256) - 1:
                        revert with 'NH{q', 17
                    if poolInfo[idx].field_1024 + (0 / poolInfo[idx].field_256) < poolInfo[idx].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_256
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _144 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_144 + idx + 68] = mem[_137 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_144 + 94] = 0
                revert with memory
                  from mem[64]
                   len _144 + -mem[64] + 100
            if (poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512) and 10^18 > -1 / (poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512):
                revert with 'NH{q', 17
            if not (poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512):
                revert with 'NH{q', 18
            if (10^18 * poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (10^18 * poolInfo[idx].field_768 * poolInfo[idx].field_512) / (poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512) != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            _160 = mem[64]
            mem[64] = mem[64] + 64
            mem[_160] = 26
            mem[_160 + 32] = 'SafeMath: division by zero'
            if poolInfo[idx].field_256 > 0:
                if not poolInfo[idx].field_256:
                    revert with 'NH{q', 18
                if poolInfo[idx].field_1024 > -((10^18 * poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (10^18 * poolInfo[idx].field_768 * poolInfo[idx].field_512) / poolInfo[idx].field_256) - 1:
                    revert with 'NH{q', 17
                if poolInfo[idx].field_1024 + ((10^18 * poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (10^18 * poolInfo[idx].field_768 * poolInfo[idx].field_512) / poolInfo[idx].field_256) < poolInfo[idx].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_1024 += (10^18 * poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (10^18 * poolInfo[idx].field_768 * poolInfo[idx].field_512) / poolInfo[idx].field_256
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _165 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_165 + idx + 68] = mem[_160 + idx + 32]
                idx = idx + 32
                continue 
            mem[_165 + 94] = 0
            revert with memory
              from mem[64]
               len _165 + -mem[64] + 100
        poolInfo[idx].field_768 = poolInfo[idx].field_1280
        if block.number <= poolInfo[idx].field_1536:
            if block.number <= poolInfo[idx].field_768:
                poolInfo[idx].field_768 = block.number
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _109 = mem[64]
            mem[64] = mem[64] + 64
            mem[_109] = 30
            mem[_109 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_768 > block.number:
                _113 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_113 + idx + 68] = mem[_109 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_113 + 98] = 0
                revert with memory
                  from mem[64]
                   len _113 + -mem[64] + 100
            if block.number < poolInfo[idx].field_768:
                revert with 'NH{q', 17
            poolInfo[idx].field_768 = block.number
            if poolInfo[idx].field_256 <= 0:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if not block.number - poolInfo[idx].field_768:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if block.number - poolInfo[idx].field_768 and poolInfo[idx].field_512 > -1 / block.number - poolInfo[idx].field_768:
                revert with 'NH{q', 17
            if not block.number - poolInfo[idx].field_768:
                revert with 'NH{q', 18
            if (block.number * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512) / block.number - poolInfo[idx].field_768 != poolInfo[idx].field_512:
                revert with 0, 'SafeMath: multiplication overflow'
            if (block.number * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512) <= 0:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if not (block.number * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512):
                _139 = mem[64]
                mem[64] = mem[64] + 64
                mem[_139] = 26
                mem[_139 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_256 > 0:
                    if not poolInfo[idx].field_256:
                        revert with 'NH{q', 18
                    if poolInfo[idx].field_1024 > -(0 / poolInfo[idx].field_256) - 1:
                        revert with 'NH{q', 17
                    if poolInfo[idx].field_1024 + (0 / poolInfo[idx].field_256) < poolInfo[idx].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_256
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _145 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_145 + idx + 68] = mem[_139 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_145 + 94] = 0
                revert with memory
                  from mem[64]
                   len _145 + -mem[64] + 100
            if (block.number * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512) and 10^18 > -1 / (block.number * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512):
                revert with 'NH{q', 17
            if not (block.number * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512):
                revert with 'NH{q', 18
            if (10^18 * block.number * poolInfo[idx].field_512) - (10^18 * poolInfo[idx].field_768 * poolInfo[idx].field_512) / (block.number * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512) != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            _161 = mem[64]
            mem[64] = mem[64] + 64
            mem[_161] = 26
            mem[_161 + 32] = 'SafeMath: division by zero'
            if poolInfo[idx].field_256 > 0:
                if not poolInfo[idx].field_256:
                    revert with 'NH{q', 18
                if poolInfo[idx].field_1024 > -((10^18 * block.number * poolInfo[idx].field_512) - (10^18 * poolInfo[idx].field_768 * poolInfo[idx].field_512) / poolInfo[idx].field_256) - 1:
                    revert with 'NH{q', 17
                if poolInfo[idx].field_1024 + ((10^18 * block.number * poolInfo[idx].field_512) - (10^18 * poolInfo[idx].field_768 * poolInfo[idx].field_512) / poolInfo[idx].field_256) < poolInfo[idx].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_1024 += (10^18 * block.number * poolInfo[idx].field_512) - (10^18 * poolInfo[idx].field_768 * poolInfo[idx].field_512) / poolInfo[idx].field_256
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _169 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_169 + idx + 68] = mem[_161 + idx + 32]
                idx = idx + 32
                continue 
            mem[_169 + 94] = 0
            revert with memory
              from mem[64]
               len _169 + -mem[64] + 100
        if poolInfo[idx].field_1536 <= poolInfo[idx].field_768:
            poolInfo[idx].field_768 = poolInfo[idx].field_1536
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _110 = mem[64]
        mem[64] = mem[64] + 64
        mem[_110] = 30
        mem[_110 + 32] = 'SafeMath: subtraction overflow'
        if poolInfo[idx].field_768 > poolInfo[idx].field_1536:
            _114 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_114 + idx + 68] = mem[_110 + idx + 32]
                idx = idx + 32
                continue 
            mem[_114 + 98] = 0
            revert with memory
              from mem[64]
               len _114 + -mem[64] + 100
        if poolInfo[idx].field_1536 < poolInfo[idx].field_768:
            revert with 'NH{q', 17
        poolInfo[idx].field_768 = poolInfo[idx].field_1536
        if poolInfo[idx].field_256 <= 0:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if not poolInfo[idx].field_1536 - poolInfo[idx].field_768:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if poolInfo[idx].field_1536 - poolInfo[idx].field_768 and poolInfo[idx].field_512 > -1 / poolInfo[idx].field_1536 - poolInfo[idx].field_768:
            revert with 'NH{q', 17
        if not poolInfo[idx].field_1536 - poolInfo[idx].field_768:
            revert with 'NH{q', 18
        if (poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512) / poolInfo[idx].field_1536 - poolInfo[idx].field_768 != poolInfo[idx].field_512:
            revert with 0, 'SafeMath: multiplication overflow'
        if (poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512) <= 0:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if not (poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512):
            _141 = mem[64]
            mem[64] = mem[64] + 64
            mem[_141] = 26
            mem[_141 + 32] = 'SafeMath: division by zero'
            if poolInfo[idx].field_256 > 0:
                if not poolInfo[idx].field_256:
                    revert with 'NH{q', 18
                if poolInfo[idx].field_1024 > -(0 / poolInfo[idx].field_256) - 1:
                    revert with 'NH{q', 17
                if poolInfo[idx].field_1024 + (0 / poolInfo[idx].field_256) < poolInfo[idx].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_256
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _146 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_146 + idx + 68] = mem[_141 + idx + 32]
                idx = idx + 32
                continue 
            mem[_146 + 94] = 0
            revert with memory
              from mem[64]
               len _146 + -mem[64] + 100
        if (poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512) and 10^18 > -1 / (poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512):
            revert with 'NH{q', 17
        if not (poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512):
            revert with 'NH{q', 18
        if (10^18 * poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (10^18 * poolInfo[idx].field_768 * poolInfo[idx].field_512) / (poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512) != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        _162 = mem[64]
        mem[64] = mem[64] + 64
        mem[_162] = 26
        mem[_162 + 32] = 'SafeMath: division by zero'
        if poolInfo[idx].field_256 > 0:
            if not poolInfo[idx].field_256:
                revert with 'NH{q', 18
            if poolInfo[idx].field_1024 > -((10^18 * poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (10^18 * poolInfo[idx].field_768 * poolInfo[idx].field_512) / poolInfo[idx].field_256) - 1:
                revert with 'NH{q', 17
            if poolInfo[idx].field_1024 + ((10^18 * poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (10^18 * poolInfo[idx].field_768 * poolInfo[idx].field_512) / poolInfo[idx].field_256) < poolInfo[idx].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[idx].field_1024 += (10^18 * poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (10^18 * poolInfo[idx].field_768 * poolInfo[idx].field_512) / poolInfo[idx].field_256
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _171 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[_171 + idx + 68] = mem[_162 + idx + 32]
            idx = idx + 32
            continue 
        mem[_171 + 94] = 0
        revert with memory
          from mem[64]
           len _171 + -mem[64] + 100
}

function sub_df275e23(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == bool(arg3)
    require arg4 == arg4
    require arg5 == arg5
    if arg1 >= poolInfo.length:
        revert with 0, 'Pool does not exist'
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg3:
        if arg1 >= poolInfo.length:
            revert with 'NH{q', 50
        if arg4 > 0:
            if arg5 <= 0:
                if arg4 >= poolInfo[arg1].field_1536:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'start block must less than end block!'
            else:
                if arg4 >= arg5:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'start block must less than end block!'
            poolInfo[arg1].field_1280 = arg4
        if arg5 > 0:
            if arg4 <= 0:
                if poolInfo[arg1].field_1280 >= arg5:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'start block must less than end block!'
            poolInfo[arg1].field_1536 = arg5
    else:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 2
            if block.number <= poolInfo[idx].field_768:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if block.number < poolInfo[idx].field_1280:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if poolInfo[idx].field_768 >= poolInfo[idx].field_1536:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if poolInfo[idx].field_768 >= poolInfo[idx].field_1280:
                if block.number <= poolInfo[idx].field_1536:
                    if block.number <= poolInfo[idx].field_768:
                        poolInfo[idx].field_768 = block.number
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    _221 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_221] = 30
                    mem[_221 + 32] = 'SafeMath: subtraction overflow'
                    if poolInfo[idx].field_768 > block.number:
                        _229 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_229 + idx + 68] = mem[_221 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_229 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _229 + -mem[64] + 100
                    if block.number < poolInfo[idx].field_768:
                        revert with 'NH{q', 17
                    poolInfo[idx].field_768 = block.number
                    if poolInfo[idx].field_256 <= 0:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    if not block.number - poolInfo[idx].field_768:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    if block.number - poolInfo[idx].field_768 and poolInfo[idx].field_512 > -1 / block.number - poolInfo[idx].field_768:
                        revert with 'NH{q', 17
                    if not block.number - poolInfo[idx].field_768:
                        revert with 'NH{q', 18
                    if (block.number * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512) / block.number - poolInfo[idx].field_768 != poolInfo[idx].field_512:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (block.number * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512) <= 0:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    if not (block.number * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512):
                        _280 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_280] = 26
                        mem[_280 + 32] = 'SafeMath: division by zero'
                        if poolInfo[idx].field_256 > 0:
                            if not poolInfo[idx].field_256:
                                revert with 'NH{q', 18
                            if poolInfo[idx].field_1024 > -(0 / poolInfo[idx].field_256) - 1:
                                revert with 'NH{q', 17
                            if poolInfo[idx].field_1024 + (0 / poolInfo[idx].field_256) < poolInfo[idx].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_256
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                        _288 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_288 + idx + 68] = mem[_280 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_288 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _288 + -mem[64] + 100
                    if (block.number * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512) and 10^18 > -1 / (block.number * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512):
                        revert with 'NH{q', 17
                    if not (block.number * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512):
                        revert with 'NH{q', 18
                    if (10^18 * block.number * poolInfo[idx].field_512) - (10^18 * poolInfo[idx].field_768 * poolInfo[idx].field_512) / (block.number * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512) != 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _304 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_304] = 26
                    mem[_304 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_256 > 0:
                        if not poolInfo[idx].field_256:
                            revert with 'NH{q', 18
                        if poolInfo[idx].field_1024 > -((10^18 * block.number * poolInfo[idx].field_512) - (10^18 * poolInfo[idx].field_768 * poolInfo[idx].field_512) / poolInfo[idx].field_256) - 1:
                            revert with 'NH{q', 17
                        if poolInfo[idx].field_1024 + ((10^18 * block.number * poolInfo[idx].field_512) - (10^18 * poolInfo[idx].field_768 * poolInfo[idx].field_512) / poolInfo[idx].field_256) < poolInfo[idx].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_1024 += (10^18 * block.number * poolInfo[idx].field_512) - (10^18 * poolInfo[idx].field_768 * poolInfo[idx].field_512) / poolInfo[idx].field_256
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    _308 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_308 + idx + 68] = mem[_304 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_308 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _308 + -mem[64] + 100
                if poolInfo[idx].field_1536 <= poolInfo[idx].field_768:
                    poolInfo[idx].field_768 = poolInfo[idx].field_1536
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _222 = mem[64]
                mem[64] = mem[64] + 64
                mem[_222] = 30
                mem[_222 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_768 > poolInfo[idx].field_1536:
                    _230 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_230 + idx + 68] = mem[_222 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_230 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _230 + -mem[64] + 100
                if poolInfo[idx].field_1536 < poolInfo[idx].field_768:
                    revert with 'NH{q', 17
                poolInfo[idx].field_768 = poolInfo[idx].field_1536
                if poolInfo[idx].field_256 <= 0:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not poolInfo[idx].field_1536 - poolInfo[idx].field_768:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if poolInfo[idx].field_1536 - poolInfo[idx].field_768 and poolInfo[idx].field_512 > -1 / poolInfo[idx].field_1536 - poolInfo[idx].field_768:
                    revert with 'NH{q', 17
                if not poolInfo[idx].field_1536 - poolInfo[idx].field_768:
                    revert with 'NH{q', 18
                if (poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512) / poolInfo[idx].field_1536 - poolInfo[idx].field_768 != poolInfo[idx].field_512:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512) <= 0:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not (poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512):
                    _282 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_282] = 26
                    mem[_282 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_256 > 0:
                        if not poolInfo[idx].field_256:
                            revert with 'NH{q', 18
                        if poolInfo[idx].field_1024 > -(0 / poolInfo[idx].field_256) - 1:
                            revert with 'NH{q', 17
                        if poolInfo[idx].field_1024 + (0 / poolInfo[idx].field_256) < poolInfo[idx].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_256
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    _289 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_289 + idx + 68] = mem[_282 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_289 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _289 + -mem[64] + 100
                if (poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512) and 10^18 > -1 / (poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512):
                    revert with 'NH{q', 17
                if not (poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512):
                    revert with 'NH{q', 18
                if (10^18 * poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (10^18 * poolInfo[idx].field_768 * poolInfo[idx].field_512) / (poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512) != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                _305 = mem[64]
                mem[64] = mem[64] + 64
                mem[_305] = 26
                mem[_305 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_256 > 0:
                    if not poolInfo[idx].field_256:
                        revert with 'NH{q', 18
                    if poolInfo[idx].field_1024 > -((10^18 * poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (10^18 * poolInfo[idx].field_768 * poolInfo[idx].field_512) / poolInfo[idx].field_256) - 1:
                        revert with 'NH{q', 17
                    if poolInfo[idx].field_1024 + ((10^18 * poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (10^18 * poolInfo[idx].field_768 * poolInfo[idx].field_512) / poolInfo[idx].field_256) < poolInfo[idx].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1024 += (10^18 * poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (10^18 * poolInfo[idx].field_768 * poolInfo[idx].field_512) / poolInfo[idx].field_256
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _310 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_310 + idx + 68] = mem[_305 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_310 + 94] = 0
                revert with memory
                  from mem[64]
                   len _310 + -mem[64] + 100
            poolInfo[idx].field_768 = poolInfo[idx].field_1280
            if block.number <= poolInfo[idx].field_1536:
                if block.number <= poolInfo[idx].field_768:
                    poolInfo[idx].field_768 = block.number
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _225 = mem[64]
                mem[64] = mem[64] + 64
                mem[_225] = 30
                mem[_225 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_768 > block.number:
                    _235 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_235 + idx + 68] = mem[_225 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_235 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _235 + -mem[64] + 100
                if block.number < poolInfo[idx].field_768:
                    revert with 'NH{q', 17
                poolInfo[idx].field_768 = block.number
                if poolInfo[idx].field_256 <= 0:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not block.number - poolInfo[idx].field_768:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if block.number - poolInfo[idx].field_768 and poolInfo[idx].field_512 > -1 / block.number - poolInfo[idx].field_768:
                    revert with 'NH{q', 17
                if not block.number - poolInfo[idx].field_768:
                    revert with 'NH{q', 18
                if (block.number * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512) / block.number - poolInfo[idx].field_768 != poolInfo[idx].field_512:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (block.number * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512) <= 0:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not (block.number * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512):
                    _284 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_284] = 26
                    mem[_284 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_256 > 0:
                        if not poolInfo[idx].field_256:
                            revert with 'NH{q', 18
                        if poolInfo[idx].field_1024 > -(0 / poolInfo[idx].field_256) - 1:
                            revert with 'NH{q', 17
                        if poolInfo[idx].field_1024 + (0 / poolInfo[idx].field_256) < poolInfo[idx].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_256
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    _290 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_290 + idx + 68] = mem[_284 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_290 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _290 + -mem[64] + 100
                if (block.number * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512) and 10^18 > -1 / (block.number * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512):
                    revert with 'NH{q', 17
                if not (block.number * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512):
                    revert with 'NH{q', 18
                if (10^18 * block.number * poolInfo[idx].field_512) - (10^18 * poolInfo[idx].field_768 * poolInfo[idx].field_512) / (block.number * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512) != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                _306 = mem[64]
                mem[64] = mem[64] + 64
                mem[_306] = 26
                mem[_306 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_256 > 0:
                    if not poolInfo[idx].field_256:
                        revert with 'NH{q', 18
                    if poolInfo[idx].field_1024 > -((10^18 * block.number * poolInfo[idx].field_512) - (10^18 * poolInfo[idx].field_768 * poolInfo[idx].field_512) / poolInfo[idx].field_256) - 1:
                        revert with 'NH{q', 17
                    if poolInfo[idx].field_1024 + ((10^18 * block.number * poolInfo[idx].field_512) - (10^18 * poolInfo[idx].field_768 * poolInfo[idx].field_512) / poolInfo[idx].field_256) < poolInfo[idx].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1024 += (10^18 * block.number * poolInfo[idx].field_512) - (10^18 * poolInfo[idx].field_768 * poolInfo[idx].field_512) / poolInfo[idx].field_256
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _314 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_314 + idx + 68] = mem[_306 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_314 + 94] = 0
                revert with memory
                  from mem[64]
                   len _314 + -mem[64] + 100
            if poolInfo[idx].field_1536 <= poolInfo[idx].field_768:
                poolInfo[idx].field_768 = poolInfo[idx].field_1536
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _226 = mem[64]
            mem[64] = mem[64] + 64
            mem[_226] = 30
            mem[_226 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_768 > poolInfo[idx].field_1536:
                _236 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_236 + idx + 68] = mem[_226 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_236 + 98] = 0
                revert with memory
                  from mem[64]
                   len _236 + -mem[64] + 100
            if poolInfo[idx].field_1536 < poolInfo[idx].field_768:
                revert with 'NH{q', 17
            poolInfo[idx].field_768 = poolInfo[idx].field_1536
            if poolInfo[idx].field_256 <= 0:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if not poolInfo[idx].field_1536 - poolInfo[idx].field_768:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if poolInfo[idx].field_1536 - poolInfo[idx].field_768 and poolInfo[idx].field_512 > -1 / poolInfo[idx].field_1536 - poolInfo[idx].field_768:
                revert with 'NH{q', 17
            if not poolInfo[idx].field_1536 - poolInfo[idx].field_768:
                revert with 'NH{q', 18
            if (poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512) / poolInfo[idx].field_1536 - poolInfo[idx].field_768 != poolInfo[idx].field_512:
                revert with 0, 'SafeMath: multiplication overflow'
            if (poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512) <= 0:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if not (poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512):
                _286 = mem[64]
                mem[64] = mem[64] + 64
                mem[_286] = 26
                mem[_286 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_256 > 0:
                    if not poolInfo[idx].field_256:
                        revert with 'NH{q', 18
                    if poolInfo[idx].field_1024 > -(0 / poolInfo[idx].field_256) - 1:
                        revert with 'NH{q', 17
                    if poolInfo[idx].field_1024 + (0 / poolInfo[idx].field_256) < poolInfo[idx].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_256
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _291 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_291 + idx + 68] = mem[_286 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_291 + 94] = 0
                revert with memory
                  from mem[64]
                   len _291 + -mem[64] + 100
            if (poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512) and 10^18 > -1 / (poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512):
                revert with 'NH{q', 17
            if not (poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512):
                revert with 'NH{q', 18
            if (10^18 * poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (10^18 * poolInfo[idx].field_768 * poolInfo[idx].field_512) / (poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512) != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            _307 = mem[64]
            mem[64] = mem[64] + 64
            mem[_307] = 26
            mem[_307 + 32] = 'SafeMath: division by zero'
            if poolInfo[idx].field_256 > 0:
                if not poolInfo[idx].field_256:
                    revert with 'NH{q', 18
                if poolInfo[idx].field_1024 > -((10^18 * poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (10^18 * poolInfo[idx].field_768 * poolInfo[idx].field_512) / poolInfo[idx].field_256) - 1:
                    revert with 'NH{q', 17
                if poolInfo[idx].field_1024 + ((10^18 * poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (10^18 * poolInfo[idx].field_768 * poolInfo[idx].field_512) / poolInfo[idx].field_256) < poolInfo[idx].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_1024 += (10^18 * poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (10^18 * poolInfo[idx].field_768 * poolInfo[idx].field_512) / poolInfo[idx].field_256
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _316 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_316 + idx + 68] = mem[_307 + idx + 32]
                idx = idx + 32
                continue 
            mem[_316 + 94] = 0
            revert with memory
              from mem[64]
               len _316 + -mem[64] + 100
        if arg1 >= poolInfo.length:
            revert with 'NH{q', 50
        if arg4 > 0:
            if arg5 <= 0:
                if arg4 >= poolInfo[arg1].field_1536:
                    revert with 0, 'start block must less than end block!'
            else:
                if arg4 >= arg5:
                    revert with 0, 'start block must less than end block!'
            poolInfo[arg1].field_1280 = arg4
        if arg5 > 0:
            if arg4 <= 0:
                if poolInfo[arg1].field_1280 >= arg5:
                    revert with 0, 'start block must less than end block!'
            poolInfo[arg1].field_1536 = arg5
    if arg2 > 0:
        poolInfo[arg1].field_512 = arg2
    emit 0xb246292f: arg1, arg2, bool(arg3), arg4, arg5
}

function pendingReward(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 >= poolInfo.length:
        revert with 0, 'Pool does not exist'
    if arg2:
        if poolInfo[arg1].field_768 >= poolInfo[arg1].field_1280:
            if block.number <= poolInfo[arg1].field_768:
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < userInfo[arg1][address(arg2)].field_256:
                        revert with 'NH{q', 17
                    return -userInfo[arg1][address(arg2)].field_256
                if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_1024 > -1 / userInfo[arg1][address(arg2)].field_0:
                    revert with 'NH{q', 17
                if not userInfo[arg1][address(arg2)].field_0:
                    revert with 'NH{q', 18
                if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_1024 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_1024 / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_1024 / 10^18 < userInfo[arg1][address(arg2)].field_256:
                    revert with 'NH{q', 17
                return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_1024 / 10^18) - userInfo[arg1][address(arg2)].field_256)
            if block.number < poolInfo[arg1].field_1280:
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < userInfo[arg1][address(arg2)].field_256:
                        revert with 'NH{q', 17
                    return -userInfo[arg1][address(arg2)].field_256
                if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_1024 > -1 / userInfo[arg1][address(arg2)].field_0:
                    revert with 'NH{q', 17
                if not userInfo[arg1][address(arg2)].field_0:
                    revert with 'NH{q', 18
                if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_1024 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_1024 / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_1024 / 10^18 < userInfo[arg1][address(arg2)].field_256:
                    revert with 'NH{q', 17
                return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_1024 / 10^18) - userInfo[arg1][address(arg2)].field_256)
            if poolInfo[arg1].field_768 >= poolInfo[arg1].field_1536:
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < userInfo[arg1][address(arg2)].field_256:
                        revert with 'NH{q', 17
                    return -userInfo[arg1][address(arg2)].field_256
                if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_1024 > -1 / userInfo[arg1][address(arg2)].field_0:
                    revert with 'NH{q', 17
                if not userInfo[arg1][address(arg2)].field_0:
                    revert with 'NH{q', 18
                if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_1024 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_1024 / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_1024 / 10^18 < userInfo[arg1][address(arg2)].field_256:
                    revert with 'NH{q', 17
                return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_1024 / 10^18) - userInfo[arg1][address(arg2)].field_256)
            if poolInfo[arg1].field_256 <= 0:
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < userInfo[arg1][address(arg2)].field_256:
                        revert with 'NH{q', 17
                    return -userInfo[arg1][address(arg2)].field_256
                if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_1024 > -1 / userInfo[arg1][address(arg2)].field_0:
                    revert with 'NH{q', 17
                if not userInfo[arg1][address(arg2)].field_0:
                    revert with 'NH{q', 18
                if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_1024 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_1024 / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_1024 / 10^18 < userInfo[arg1][address(arg2)].field_256:
                    revert with 'NH{q', 17
                return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_1024 / 10^18) - userInfo[arg1][address(arg2)].field_256)
            if block.number <= poolInfo[arg1].field_1536:
                if block.number <= poolInfo[arg1].field_768:
                    if poolInfo[arg1].field_256 <= 0:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not poolInfo[arg1].field_256:
                        revert with 'NH{q', 18
                    if poolInfo[arg1].field_1024 > -(0 / poolInfo[arg1].field_256) - 1:
                        revert with 'NH{q', 17
                    if poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    if not userInfo[arg1][address(arg2)].field_0:
                        if userInfo[arg1][address(arg2)].field_256 > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < userInfo[arg1][address(arg2)].field_256:
                            revert with 'NH{q', 17
                        return -userInfo[arg1][address(arg2)].field_256
                    if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) > -1 / userInfo[arg1][address(arg2)].field_0:
                        revert with 'NH{q', 17
                    if not userInfo[arg1][address(arg2)].field_0:
                        revert with 'NH{q', 18
                    if (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256):
                        revert with 0, 'SafeMath: multiplication overflow'
                    if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(arg2)].field_0) / 10^18 < userInfo[arg1][address(arg2)].field_256:
                        revert with 'NH{q', 17
                    return (((poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
                if poolInfo[arg1].field_768 > block.number:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if block.number < poolInfo[arg1].field_768:
                    revert with 'NH{q', 17
                if not block.number - poolInfo[arg1].field_768:
                    if poolInfo[arg1].field_256 <= 0:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not poolInfo[arg1].field_256:
                        revert with 'NH{q', 18
                    if poolInfo[arg1].field_1024 > -(0 / poolInfo[arg1].field_256) - 1:
                        revert with 'NH{q', 17
                    if poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    if not userInfo[arg1][address(arg2)].field_0:
                        if userInfo[arg1][address(arg2)].field_256 > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < userInfo[arg1][address(arg2)].field_256:
                            revert with 'NH{q', 17
                        return -userInfo[arg1][address(arg2)].field_256
                    if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) > -1 / userInfo[arg1][address(arg2)].field_0:
                        revert with 'NH{q', 17
                    if not userInfo[arg1][address(arg2)].field_0:
                        revert with 'NH{q', 18
                    if (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256):
                        revert with 0, 'SafeMath: multiplication overflow'
                    if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(arg2)].field_0) / 10^18 < userInfo[arg1][address(arg2)].field_256:
                        revert with 'NH{q', 17
                    return (((poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
                if block.number - poolInfo[arg1].field_768 and poolInfo[arg1].field_512 > -1 / block.number - poolInfo[arg1].field_768:
                    revert with 'NH{q', 17
                if not block.number - poolInfo[arg1].field_768:
                    revert with 'NH{q', 18
                if (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / block.number - poolInfo[arg1].field_768 != poolInfo[arg1].field_512:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000:
                    if poolInfo[arg1].field_256 <= 0:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not poolInfo[arg1].field_256:
                        revert with 'NH{q', 18
                    if poolInfo[arg1].field_1024 > -(0 / poolInfo[arg1].field_256) - 1:
                        revert with 'NH{q', 17
                    if poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    if not userInfo[arg1][address(arg2)].field_0:
                        if userInfo[arg1][address(arg2)].field_256 > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < userInfo[arg1][address(arg2)].field_256:
                            revert with 'NH{q', 17
                        return -userInfo[arg1][address(arg2)].field_256
                    if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) > -1 / userInfo[arg1][address(arg2)].field_0:
                        revert with 'NH{q', 17
                    if not userInfo[arg1][address(arg2)].field_0:
                        revert with 'NH{q', 18
                    if (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256):
                        revert with 0, 'SafeMath: multiplication overflow'
                    if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(arg2)].field_0) / 10^18 < userInfo[arg1][address(arg2)].field_256:
                        revert with 'NH{q', 17
                    return (((poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
                if (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 and 10^18 > -1 / (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000:
                    revert with 'NH{q', 17
                if not (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000:
                    revert with 'NH{q', 18
                if 10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if poolInfo[arg1].field_256 <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not poolInfo[arg1].field_256:
                    revert with 'NH{q', 18
                if poolInfo[arg1].field_1024 > -(10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256) - 1:
                    revert with 'NH{q', 17
                if poolInfo[arg1].field_1024 + (10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < userInfo[arg1][address(arg2)].field_256:
                        revert with 'NH{q', 17
                    return -userInfo[arg1][address(arg2)].field_256
                if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_1024 + (10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256) > -1 / userInfo[arg1][address(arg2)].field_0:
                    revert with 'NH{q', 17
                if not userInfo[arg1][address(arg2)].field_0:
                    revert with 'NH{q', 18
                if (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024 + (10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256):
                    revert with 0, 'SafeMath: multiplication overflow'
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * userInfo[arg1][address(arg2)].field_0) / 10^18 < userInfo[arg1][address(arg2)].field_256:
                    revert with 'NH{q', 17
                return (((poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
            if poolInfo[arg1].field_1536 <= poolInfo[arg1].field_768:
                if poolInfo[arg1].field_256 <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not poolInfo[arg1].field_256:
                    revert with 'NH{q', 18
                if poolInfo[arg1].field_1024 > -(0 / poolInfo[arg1].field_256) - 1:
                    revert with 'NH{q', 17
                if poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < userInfo[arg1][address(arg2)].field_256:
                        revert with 'NH{q', 17
                    return -userInfo[arg1][address(arg2)].field_256
                if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) > -1 / userInfo[arg1][address(arg2)].field_0:
                    revert with 'NH{q', 17
                if not userInfo[arg1][address(arg2)].field_0:
                    revert with 'NH{q', 18
                if (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256):
                    revert with 0, 'SafeMath: multiplication overflow'
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(arg2)].field_0) / 10^18 < userInfo[arg1][address(arg2)].field_256:
                    revert with 'NH{q', 17
                return (((poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
            if poolInfo[arg1].field_768 > poolInfo[arg1].field_1536:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if poolInfo[arg1].field_1536 < poolInfo[arg1].field_768:
                revert with 'NH{q', 17
            if not poolInfo[arg1].field_1536 - poolInfo[arg1].field_768:
                if poolInfo[arg1].field_256 <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not poolInfo[arg1].field_256:
                    revert with 'NH{q', 18
                if poolInfo[arg1].field_1024 > -(0 / poolInfo[arg1].field_256) - 1:
                    revert with 'NH{q', 17
                if poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < userInfo[arg1][address(arg2)].field_256:
                        revert with 'NH{q', 17
                    return -userInfo[arg1][address(arg2)].field_256
                if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) > -1 / userInfo[arg1][address(arg2)].field_0:
                    revert with 'NH{q', 17
                if not userInfo[arg1][address(arg2)].field_0:
                    revert with 'NH{q', 18
                if (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256):
                    revert with 0, 'SafeMath: multiplication overflow'
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(arg2)].field_0) / 10^18 < userInfo[arg1][address(arg2)].field_256:
                    revert with 'NH{q', 17
                return (((poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
            if poolInfo[arg1].field_1536 - poolInfo[arg1].field_768 and poolInfo[arg1].field_512 > -1 / poolInfo[arg1].field_1536 - poolInfo[arg1].field_768:
                revert with 'NH{q', 17
            if not poolInfo[arg1].field_1536 - poolInfo[arg1].field_768:
                revert with 'NH{q', 18
            if (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / poolInfo[arg1].field_1536 - poolInfo[arg1].field_768 != poolInfo[arg1].field_512:
                revert with 0, 'SafeMath: multiplication overflow'
            if not (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000:
                if poolInfo[arg1].field_256 <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not poolInfo[arg1].field_256:
                    revert with 'NH{q', 18
                if poolInfo[arg1].field_1024 > -(0 / poolInfo[arg1].field_256) - 1:
                    revert with 'NH{q', 17
                if poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < userInfo[arg1][address(arg2)].field_256:
                        revert with 'NH{q', 17
                    return -userInfo[arg1][address(arg2)].field_256
                if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) > -1 / userInfo[arg1][address(arg2)].field_0:
                    revert with 'NH{q', 17
                if not userInfo[arg1][address(arg2)].field_0:
                    revert with 'NH{q', 18
                if (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256):
                    revert with 0, 'SafeMath: multiplication overflow'
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(arg2)].field_0) / 10^18 < userInfo[arg1][address(arg2)].field_256:
                    revert with 'NH{q', 17
                return (((poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
            if (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 and 10^18 > -1 / (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000:
                revert with 'NH{q', 17
            if not (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000:
                revert with 'NH{q', 18
            if 10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            if poolInfo[arg1].field_256 <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not poolInfo[arg1].field_256:
                revert with 'NH{q', 18
            if poolInfo[arg1].field_1024 > -(10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256) - 1:
                revert with 'NH{q', 17
            if poolInfo[arg1].field_1024 + (10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < userInfo[arg1][address(arg2)].field_256:
                    revert with 'NH{q', 17
                return -userInfo[arg1][address(arg2)].field_256
            if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_1024 + (10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256) > -1 / userInfo[arg1][address(arg2)].field_0:
                revert with 'NH{q', 17
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 'NH{q', 18
            if (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024 + (10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * userInfo[arg1][address(arg2)].field_0) / 10^18 < userInfo[arg1][address(arg2)].field_256:
                revert with 'NH{q', 17
            return (((poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        if block.number <= poolInfo[arg1].field_1280:
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < userInfo[arg1][address(arg2)].field_256:
                    revert with 'NH{q', 17
                return -userInfo[arg1][address(arg2)].field_256
            if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_1024 > -1 / userInfo[arg1][address(arg2)].field_0:
                revert with 'NH{q', 17
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 'NH{q', 18
            if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_1024 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_1024 / 10^18:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_1024 / 10^18 < userInfo[arg1][address(arg2)].field_256:
                revert with 'NH{q', 17
            return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_1024 / 10^18) - userInfo[arg1][address(arg2)].field_256)
        if block.number < poolInfo[arg1].field_1280:
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < userInfo[arg1][address(arg2)].field_256:
                    revert with 'NH{q', 17
                return -userInfo[arg1][address(arg2)].field_256
            if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_1024 > -1 / userInfo[arg1][address(arg2)].field_0:
                revert with 'NH{q', 17
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 'NH{q', 18
            if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_1024 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_1024 / 10^18:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_1024 / 10^18 < userInfo[arg1][address(arg2)].field_256:
                revert with 'NH{q', 17
            return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_1024 / 10^18) - userInfo[arg1][address(arg2)].field_256)
        if poolInfo[arg1].field_1280 >= poolInfo[arg1].field_1536:
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < userInfo[arg1][address(arg2)].field_256:
                    revert with 'NH{q', 17
                return -userInfo[arg1][address(arg2)].field_256
            if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_1024 > -1 / userInfo[arg1][address(arg2)].field_0:
                revert with 'NH{q', 17
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 'NH{q', 18
            if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_1024 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_1024 / 10^18:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_1024 / 10^18 < userInfo[arg1][address(arg2)].field_256:
                revert with 'NH{q', 17
            return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_1024 / 10^18) - userInfo[arg1][address(arg2)].field_256)
        if poolInfo[arg1].field_256 <= 0:
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < userInfo[arg1][address(arg2)].field_256:
                    revert with 'NH{q', 17
                return -userInfo[arg1][address(arg2)].field_256
            if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_1024 > -1 / userInfo[arg1][address(arg2)].field_0:
                revert with 'NH{q', 17
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 'NH{q', 18
            if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_1024 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_1024 / 10^18:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_1024 / 10^18 < userInfo[arg1][address(arg2)].field_256:
                revert with 'NH{q', 17
            return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_1024 / 10^18) - userInfo[arg1][address(arg2)].field_256)
        if block.number <= poolInfo[arg1].field_1536:
            if block.number <= poolInfo[arg1].field_1280:
                if poolInfo[arg1].field_256 <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not poolInfo[arg1].field_256:
                    revert with 'NH{q', 18
                if poolInfo[arg1].field_1024 > -(0 / poolInfo[arg1].field_256) - 1:
                    revert with 'NH{q', 17
                if poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < userInfo[arg1][address(arg2)].field_256:
                        revert with 'NH{q', 17
                    return -userInfo[arg1][address(arg2)].field_256
                if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) > -1 / userInfo[arg1][address(arg2)].field_0:
                    revert with 'NH{q', 17
                if not userInfo[arg1][address(arg2)].field_0:
                    revert with 'NH{q', 18
                if (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256):
                    revert with 0, 'SafeMath: multiplication overflow'
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(arg2)].field_0) / 10^18 < userInfo[arg1][address(arg2)].field_256:
                    revert with 'NH{q', 17
                return (((poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
            if poolInfo[arg1].field_1280 > block.number:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if block.number < poolInfo[arg1].field_1280:
                revert with 'NH{q', 17
            if not block.number - poolInfo[arg1].field_1280:
                if poolInfo[arg1].field_256 <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not poolInfo[arg1].field_256:
                    revert with 'NH{q', 18
                if poolInfo[arg1].field_1024 > -(0 / poolInfo[arg1].field_256) - 1:
                    revert with 'NH{q', 17
                if poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < userInfo[arg1][address(arg2)].field_256:
                        revert with 'NH{q', 17
                    return -userInfo[arg1][address(arg2)].field_256
                if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) > -1 / userInfo[arg1][address(arg2)].field_0:
                    revert with 'NH{q', 17
                if not userInfo[arg1][address(arg2)].field_0:
                    revert with 'NH{q', 18
                if (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256):
                    revert with 0, 'SafeMath: multiplication overflow'
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(arg2)].field_0) / 10^18 < userInfo[arg1][address(arg2)].field_256:
                    revert with 'NH{q', 17
                return (((poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
            if block.number - poolInfo[arg1].field_1280 and poolInfo[arg1].field_512 > -1 / block.number - poolInfo[arg1].field_1280:
                revert with 'NH{q', 17
            if not block.number - poolInfo[arg1].field_1280:
                revert with 'NH{q', 18
            if (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / block.number - poolInfo[arg1].field_1280 != poolInfo[arg1].field_512:
                revert with 0, 'SafeMath: multiplication overflow'
            if not (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000:
                if poolInfo[arg1].field_256 <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not poolInfo[arg1].field_256:
                    revert with 'NH{q', 18
                if poolInfo[arg1].field_1024 > -(0 / poolInfo[arg1].field_256) - 1:
                    revert with 'NH{q', 17
                if poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < userInfo[arg1][address(arg2)].field_256:
                        revert with 'NH{q', 17
                    return -userInfo[arg1][address(arg2)].field_256
                if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) > -1 / userInfo[arg1][address(arg2)].field_0:
                    revert with 'NH{q', 17
                if not userInfo[arg1][address(arg2)].field_0:
                    revert with 'NH{q', 18
                if (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256):
                    revert with 0, 'SafeMath: multiplication overflow'
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(arg2)].field_0) / 10^18 < userInfo[arg1][address(arg2)].field_256:
                    revert with 'NH{q', 17
                return (((poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
            if (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 and 10^18 > -1 / (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000:
                revert with 'NH{q', 17
            if not (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000:
                revert with 'NH{q', 18
            if 10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            if poolInfo[arg1].field_256 <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not poolInfo[arg1].field_256:
                revert with 'NH{q', 18
            if poolInfo[arg1].field_1024 > -(10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256) - 1:
                revert with 'NH{q', 17
            if poolInfo[arg1].field_1024 + (10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < userInfo[arg1][address(arg2)].field_256:
                    revert with 'NH{q', 17
                return -userInfo[arg1][address(arg2)].field_256
            if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_1024 + (10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256) > -1 / userInfo[arg1][address(arg2)].field_0:
                revert with 'NH{q', 17
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 'NH{q', 18
            if (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024 + (10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * userInfo[arg1][address(arg2)].field_0) / 10^18 < userInfo[arg1][address(arg2)].field_256:
                revert with 'NH{q', 17
            return (((poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        if poolInfo[arg1].field_1536 <= poolInfo[arg1].field_1280:
            if poolInfo[arg1].field_256 <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not poolInfo[arg1].field_256:
                revert with 'NH{q', 18
            if poolInfo[arg1].field_1024 > -(0 / poolInfo[arg1].field_256) - 1:
                revert with 'NH{q', 17
            if poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < userInfo[arg1][address(arg2)].field_256:
                    revert with 'NH{q', 17
                return -userInfo[arg1][address(arg2)].field_256
            if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) > -1 / userInfo[arg1][address(arg2)].field_0:
                revert with 'NH{q', 17
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 'NH{q', 18
            if (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(arg2)].field_0) / 10^18 < userInfo[arg1][address(arg2)].field_256:
                revert with 'NH{q', 17
            return (((poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        if poolInfo[arg1].field_1280 > poolInfo[arg1].field_1536:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if poolInfo[arg1].field_1536 < poolInfo[arg1].field_1280:
            revert with 'NH{q', 17
        if not poolInfo[arg1].field_1536 - poolInfo[arg1].field_1280:
            if poolInfo[arg1].field_256 <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not poolInfo[arg1].field_256:
                revert with 'NH{q', 18
            if poolInfo[arg1].field_1024 > -(0 / poolInfo[arg1].field_256) - 1:
                revert with 'NH{q', 17
            if poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < userInfo[arg1][address(arg2)].field_256:
                    revert with 'NH{q', 17
                return -userInfo[arg1][address(arg2)].field_256
            if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) > -1 / userInfo[arg1][address(arg2)].field_0:
                revert with 'NH{q', 17
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 'NH{q', 18
            if (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(arg2)].field_0) / 10^18 < userInfo[arg1][address(arg2)].field_256:
                revert with 'NH{q', 17
            return (((poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        if poolInfo[arg1].field_1536 - poolInfo[arg1].field_1280 and poolInfo[arg1].field_512 > -1 / poolInfo[arg1].field_1536 - poolInfo[arg1].field_1280:
            revert with 'NH{q', 17
        if not poolInfo[arg1].field_1536 - poolInfo[arg1].field_1280:
            revert with 'NH{q', 18
        if (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / poolInfo[arg1].field_1536 - poolInfo[arg1].field_1280 != poolInfo[arg1].field_512:
            revert with 0, 'SafeMath: multiplication overflow'
        if not (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000:
            if poolInfo[arg1].field_256 <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not poolInfo[arg1].field_256:
                revert with 'NH{q', 18
            if poolInfo[arg1].field_1024 > -(0 / poolInfo[arg1].field_256) - 1:
                revert with 'NH{q', 17
            if poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < userInfo[arg1][address(arg2)].field_256:
                    revert with 'NH{q', 17
                return -userInfo[arg1][address(arg2)].field_256
            if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) > -1 / userInfo[arg1][address(arg2)].field_0:
                revert with 'NH{q', 17
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 'NH{q', 18
            if (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(arg2)].field_0) / 10^18 < userInfo[arg1][address(arg2)].field_256:
                revert with 'NH{q', 17
            return (((poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        if (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 and 10^18 > -1 / (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000:
            revert with 'NH{q', 17
        if not (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000:
            revert with 'NH{q', 18
        if 10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        if poolInfo[arg1].field_256 <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not poolInfo[arg1].field_256:
            revert with 'NH{q', 18
        if poolInfo[arg1].field_1024 > -(10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256) - 1:
            revert with 'NH{q', 17
        if poolInfo[arg1].field_1024 + (10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < userInfo[arg1][address(arg2)].field_256:
                revert with 'NH{q', 17
            return -userInfo[arg1][address(arg2)].field_256
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_1024 + (10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256) > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 'NH{q', 17
        if not userInfo[arg1][address(arg2)].field_0:
            revert with 'NH{q', 18
        if (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024 + (10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256):
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * userInfo[arg1][address(arg2)].field_0) / 10^18 < userInfo[arg1][address(arg2)].field_256:
            revert with 'NH{q', 17
        return (((poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if poolInfo[arg1].field_768 >= poolInfo[arg1].field_1280:
        if block.number <= poolInfo[arg1].field_768:
            if not userInfo[arg1][address(msg.sender)].field_0:
                if userInfo[arg1][address(msg.sender)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < userInfo[arg1][address(msg.sender)].field_256:
                    revert with 'NH{q', 17
                return -userInfo[arg1][address(msg.sender)].field_256
            if userInfo[arg1][address(msg.sender)].field_0 and poolInfo[arg1].field_1024 > -1 / userInfo[arg1][address(msg.sender)].field_0:
                revert with 'NH{q', 17
            if not userInfo[arg1][address(msg.sender)].field_0:
                revert with 'NH{q', 18
            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1024 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_1024:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1024 / 10^18:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1024 / 10^18 < userInfo[arg1][address(msg.sender)].field_256:
                revert with 'NH{q', 17
            return ((userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1024 / 10^18) - userInfo[arg1][address(msg.sender)].field_256)
        if block.number < poolInfo[arg1].field_1280:
            if not userInfo[arg1][address(msg.sender)].field_0:
                if userInfo[arg1][address(msg.sender)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < userInfo[arg1][address(msg.sender)].field_256:
                    revert with 'NH{q', 17
                return -userInfo[arg1][address(msg.sender)].field_256
            if userInfo[arg1][address(msg.sender)].field_0 and poolInfo[arg1].field_1024 > -1 / userInfo[arg1][address(msg.sender)].field_0:
                revert with 'NH{q', 17
            if not userInfo[arg1][address(msg.sender)].field_0:
                revert with 'NH{q', 18
            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1024 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_1024:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1024 / 10^18:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1024 / 10^18 < userInfo[arg1][address(msg.sender)].field_256:
                revert with 'NH{q', 17
            return ((userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1024 / 10^18) - userInfo[arg1][address(msg.sender)].field_256)
        if poolInfo[arg1].field_768 >= poolInfo[arg1].field_1536:
            if not userInfo[arg1][address(msg.sender)].field_0:
                if userInfo[arg1][address(msg.sender)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < userInfo[arg1][address(msg.sender)].field_256:
                    revert with 'NH{q', 17
                return -userInfo[arg1][address(msg.sender)].field_256
            if userInfo[arg1][address(msg.sender)].field_0 and poolInfo[arg1].field_1024 > -1 / userInfo[arg1][address(msg.sender)].field_0:
                revert with 'NH{q', 17
            if not userInfo[arg1][address(msg.sender)].field_0:
                revert with 'NH{q', 18
            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1024 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_1024:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1024 / 10^18:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1024 / 10^18 < userInfo[arg1][address(msg.sender)].field_256:
                revert with 'NH{q', 17
            return ((userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1024 / 10^18) - userInfo[arg1][address(msg.sender)].field_256)
        if poolInfo[arg1].field_256 <= 0:
            if not userInfo[arg1][address(msg.sender)].field_0:
                if userInfo[arg1][address(msg.sender)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < userInfo[arg1][address(msg.sender)].field_256:
                    revert with 'NH{q', 17
                return -userInfo[arg1][address(msg.sender)].field_256
            if userInfo[arg1][address(msg.sender)].field_0 and poolInfo[arg1].field_1024 > -1 / userInfo[arg1][address(msg.sender)].field_0:
                revert with 'NH{q', 17
            if not userInfo[arg1][address(msg.sender)].field_0:
                revert with 'NH{q', 18
            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1024 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_1024:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1024 / 10^18:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1024 / 10^18 < userInfo[arg1][address(msg.sender)].field_256:
                revert with 'NH{q', 17
            return ((userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1024 / 10^18) - userInfo[arg1][address(msg.sender)].field_256)
        if block.number <= poolInfo[arg1].field_1536:
            if block.number <= poolInfo[arg1].field_768:
                if poolInfo[arg1].field_256 <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not poolInfo[arg1].field_256:
                    revert with 'NH{q', 18
                if poolInfo[arg1].field_1024 > -(0 / poolInfo[arg1].field_256) - 1:
                    revert with 'NH{q', 17
                if poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(msg.sender)].field_0:
                    if userInfo[arg1][address(msg.sender)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < userInfo[arg1][address(msg.sender)].field_256:
                        revert with 'NH{q', 17
                    return -userInfo[arg1][address(msg.sender)].field_256
                if userInfo[arg1][address(msg.sender)].field_0 and poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) > -1 / userInfo[arg1][address(msg.sender)].field_0:
                    revert with 'NH{q', 17
                if not userInfo[arg1][address(msg.sender)].field_0:
                    revert with 'NH{q', 18
                if (poolInfo[arg1].field_1024 * userInfo[arg1][address(msg.sender)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(msg.sender)].field_0) / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256):
                    revert with 0, 'SafeMath: multiplication overflow'
                if userInfo[arg1][address(msg.sender)].field_256 > (poolInfo[arg1].field_1024 * userInfo[arg1][address(msg.sender)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(msg.sender)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (poolInfo[arg1].field_1024 * userInfo[arg1][address(msg.sender)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(msg.sender)].field_0) / 10^18 < userInfo[arg1][address(msg.sender)].field_256:
                    revert with 'NH{q', 17
                return (((poolInfo[arg1].field_1024 * userInfo[arg1][address(msg.sender)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(msg.sender)].field_0) / 10^18) - userInfo[arg1][address(msg.sender)].field_256)
            if poolInfo[arg1].field_768 > block.number:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if block.number < poolInfo[arg1].field_768:
                revert with 'NH{q', 17
            if not block.number - poolInfo[arg1].field_768:
                if poolInfo[arg1].field_256 <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not poolInfo[arg1].field_256:
                    revert with 'NH{q', 18
                if poolInfo[arg1].field_1024 > -(0 / poolInfo[arg1].field_256) - 1:
                    revert with 'NH{q', 17
                if poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(msg.sender)].field_0:
                    if userInfo[arg1][address(msg.sender)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < userInfo[arg1][address(msg.sender)].field_256:
                        revert with 'NH{q', 17
                    return -userInfo[arg1][address(msg.sender)].field_256
                if userInfo[arg1][address(msg.sender)].field_0 and poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) > -1 / userInfo[arg1][address(msg.sender)].field_0:
                    revert with 'NH{q', 17
                if not userInfo[arg1][address(msg.sender)].field_0:
                    revert with 'NH{q', 18
                if (poolInfo[arg1].field_1024 * userInfo[arg1][address(msg.sender)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(msg.sender)].field_0) / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256):
                    revert with 0, 'SafeMath: multiplication overflow'
                if userInfo[arg1][address(msg.sender)].field_256 > (poolInfo[arg1].field_1024 * userInfo[arg1][address(msg.sender)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(msg.sender)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (poolInfo[arg1].field_1024 * userInfo[arg1][address(msg.sender)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(msg.sender)].field_0) / 10^18 < userInfo[arg1][address(msg.sender)].field_256:
                    revert with 'NH{q', 17
                return (((poolInfo[arg1].field_1024 * userInfo[arg1][address(msg.sender)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(msg.sender)].field_0) / 10^18) - userInfo[arg1][address(msg.sender)].field_256)
            if block.number - poolInfo[arg1].field_768 and poolInfo[arg1].field_512 > -1 / block.number - poolInfo[arg1].field_768:
                revert with 'NH{q', 17
            if not block.number - poolInfo[arg1].field_768:
                revert with 'NH{q', 18
            if (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / block.number - poolInfo[arg1].field_768 != poolInfo[arg1].field_512:
                revert with 0, 'SafeMath: multiplication overflow'
            if not (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000:
                if poolInfo[arg1].field_256 <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not poolInfo[arg1].field_256:
                    revert with 'NH{q', 18
                if poolInfo[arg1].field_1024 > -(0 / poolInfo[arg1].field_256) - 1:
                    revert with 'NH{q', 17
                if poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(msg.sender)].field_0:
                    if userInfo[arg1][address(msg.sender)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < userInfo[arg1][address(msg.sender)].field_256:
                        revert with 'NH{q', 17
                    return -userInfo[arg1][address(msg.sender)].field_256
                if userInfo[arg1][address(msg.sender)].field_0 and poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) > -1 / userInfo[arg1][address(msg.sender)].field_0:
                    revert with 'NH{q', 17
                if not userInfo[arg1][address(msg.sender)].field_0:
                    revert with 'NH{q', 18
                if (poolInfo[arg1].field_1024 * userInfo[arg1][address(msg.sender)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(msg.sender)].field_0) / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256):
                    revert with 0, 'SafeMath: multiplication overflow'
                if userInfo[arg1][address(msg.sender)].field_256 > (poolInfo[arg1].field_1024 * userInfo[arg1][address(msg.sender)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(msg.sender)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (poolInfo[arg1].field_1024 * userInfo[arg1][address(msg.sender)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(msg.sender)].field_0) / 10^18 < userInfo[arg1][address(msg.sender)].field_256:
                    revert with 'NH{q', 17
                return (((poolInfo[arg1].field_1024 * userInfo[arg1][address(msg.sender)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(msg.sender)].field_0) / 10^18) - userInfo[arg1][address(msg.sender)].field_256)
            if (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 and 10^18 > -1 / (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000:
                revert with 'NH{q', 17
            if not (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000:
                revert with 'NH{q', 18
            if 10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            if poolInfo[arg1].field_256 <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not poolInfo[arg1].field_256:
                revert with 'NH{q', 18
            if poolInfo[arg1].field_1024 > -(10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256) - 1:
                revert with 'NH{q', 17
            if poolInfo[arg1].field_1024 + (10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(msg.sender)].field_0:
                if userInfo[arg1][address(msg.sender)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < userInfo[arg1][address(msg.sender)].field_256:
                    revert with 'NH{q', 17
                return -userInfo[arg1][address(msg.sender)].field_256
            if userInfo[arg1][address(msg.sender)].field_0 and poolInfo[arg1].field_1024 + (10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256) > -1 / userInfo[arg1][address(msg.sender)].field_0:
                revert with 'NH{q', 17
            if not userInfo[arg1][address(msg.sender)].field_0:
                revert with 'NH{q', 18
            if (poolInfo[arg1].field_1024 * userInfo[arg1][address(msg.sender)].field_0) + (10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * userInfo[arg1][address(msg.sender)].field_0) / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_1024 + (10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(msg.sender)].field_256 > (poolInfo[arg1].field_1024 * userInfo[arg1][address(msg.sender)].field_0) + (10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * userInfo[arg1][address(msg.sender)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (poolInfo[arg1].field_1024 * userInfo[arg1][address(msg.sender)].field_0) + (10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * userInfo[arg1][address(msg.sender)].field_0) / 10^18 < userInfo[arg1][address(msg.sender)].field_256:
                revert with 'NH{q', 17
            return (((poolInfo[arg1].field_1024 * userInfo[arg1][address(msg.sender)].field_0) + (10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * userInfo[arg1][address(msg.sender)].field_0) / 10^18) - userInfo[arg1][address(msg.sender)].field_256)
        if poolInfo[arg1].field_1536 <= poolInfo[arg1].field_768:
            if poolInfo[arg1].field_256 <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not poolInfo[arg1].field_256:
                revert with 'NH{q', 18
            if poolInfo[arg1].field_1024 > -(0 / poolInfo[arg1].field_256) - 1:
                revert with 'NH{q', 17
            if poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(msg.sender)].field_0:
                if userInfo[arg1][address(msg.sender)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < userInfo[arg1][address(msg.sender)].field_256:
                    revert with 'NH{q', 17
                return -userInfo[arg1][address(msg.sender)].field_256
            if userInfo[arg1][address(msg.sender)].field_0 and poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) > -1 / userInfo[arg1][address(msg.sender)].field_0:
                revert with 'NH{q', 17
            if not userInfo[arg1][address(msg.sender)].field_0:
                revert with 'NH{q', 18
            if (poolInfo[arg1].field_1024 * userInfo[arg1][address(msg.sender)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(msg.sender)].field_0) / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(msg.sender)].field_256 > (poolInfo[arg1].field_1024 * userInfo[arg1][address(msg.sender)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(msg.sender)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (poolInfo[arg1].field_1024 * userInfo[arg1][address(msg.sender)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(msg.sender)].field_0) / 10^18 < userInfo[arg1][address(msg.sender)].field_256:
                revert with 'NH{q', 17
            return (((poolInfo[arg1].field_1024 * userInfo[arg1][address(msg.sender)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(msg.sender)].field_0) / 10^18) - userInfo[arg1][address(msg.sender)].field_256)
        if poolInfo[arg1].field_768 > poolInfo[arg1].field_1536:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if poolInfo[arg1].field_1536 < poolInfo[arg1].field_768:
            revert with 'NH{q', 17
        if not poolInfo[arg1].field_1536 - poolInfo[arg1].field_768:
            if poolInfo[arg1].field_256 <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not poolInfo[arg1].field_256:
                revert with 'NH{q', 18
            if poolInfo[arg1].field_1024 > -(0 / poolInfo[arg1].field_256) - 1:
                revert with 'NH{q', 17
            if poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(msg.sender)].field_0:
                if userInfo[arg1][address(msg.sender)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < userInfo[arg1][address(msg.sender)].field_256:
                    revert with 'NH{q', 17
                return -userInfo[arg1][address(msg.sender)].field_256
            if userInfo[arg1][address(msg.sender)].field_0 and poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) > -1 / userInfo[arg1][address(msg.sender)].field_0:
                revert with 'NH{q', 17
            if not userInfo[arg1][address(msg.sender)].field_0:
                revert with 'NH{q', 18
            if (poolInfo[arg1].field_1024 * userInfo[arg1][address(msg.sender)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(msg.sender)].field_0) / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(msg.sender)].field_256 > (poolInfo[arg1].field_1024 * userInfo[arg1][address(msg.sender)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(msg.sender)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (poolInfo[arg1].field_1024 * userInfo[arg1][address(msg.sender)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(msg.sender)].field_0) / 10^18 < userInfo[arg1][address(msg.sender)].field_256:
                revert with 'NH{q', 17
            return (((poolInfo[arg1].field_1024 * userInfo[arg1][address(msg.sender)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(msg.sender)].field_0) / 10^18) - userInfo[arg1][address(msg.sender)].field_256)
        if poolInfo[arg1].field_1536 - poolInfo[arg1].field_768 and poolInfo[arg1].field_512 > -1 / poolInfo[arg1].field_1536 - poolInfo[arg1].field_768:
            revert with 'NH{q', 17
        if not poolInfo[arg1].field_1536 - poolInfo[arg1].field_768:
            revert with 'NH{q', 18
        if (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / poolInfo[arg1].field_1536 - poolInfo[arg1].field_768 != poolInfo[arg1].field_512:
            revert with 0, 'SafeMath: multiplication overflow'
        if not (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000:
            if poolInfo[arg1].field_256 <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not poolInfo[arg1].field_256:
                revert with 'NH{q', 18
            if poolInfo[arg1].field_1024 > -(0 / poolInfo[arg1].field_256) - 1:
                revert with 'NH{q', 17
            if poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(msg.sender)].field_0:
                if userInfo[arg1][address(msg.sender)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < userInfo[arg1][address(msg.sender)].field_256:
                    revert with 'NH{q', 17
                return -userInfo[arg1][address(msg.sender)].field_256
            if userInfo[arg1][address(msg.sender)].field_0 and poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) > -1 / userInfo[arg1][address(msg.sender)].field_0:
                revert with 'NH{q', 17
            if not userInfo[arg1][address(msg.sender)].field_0:
                revert with 'NH{q', 18
            if (poolInfo[arg1].field_1024 * userInfo[arg1][address(msg.sender)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(msg.sender)].field_0) / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(msg.sender)].field_256 > (poolInfo[arg1].field_1024 * userInfo[arg1][address(msg.sender)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(msg.sender)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (poolInfo[arg1].field_1024 * userInfo[arg1][address(msg.sender)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(msg.sender)].field_0) / 10^18 < userInfo[arg1][address(msg.sender)].field_256:
                revert with 'NH{q', 17
            return (((poolInfo[arg1].field_1024 * userInfo[arg1][address(msg.sender)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(msg.sender)].field_0) / 10^18) - userInfo[arg1][address(msg.sender)].field_256)
        if (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 and 10^18 > -1 / (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000:
            revert with 'NH{q', 17
        if not (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000:
            revert with 'NH{q', 18
        if 10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        if poolInfo[arg1].field_256 <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not poolInfo[arg1].field_256:
            revert with 'NH{q', 18
        if poolInfo[arg1].field_1024 > -(10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256) - 1:
            revert with 'NH{q', 17
        if poolInfo[arg1].field_1024 + (10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(msg.sender)].field_0:
            if userInfo[arg1][address(msg.sender)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < userInfo[arg1][address(msg.sender)].field_256:
                revert with 'NH{q', 17
            return -userInfo[arg1][address(msg.sender)].field_256
        if userInfo[arg1][address(msg.sender)].field_0 and poolInfo[arg1].field_1024 + (10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256) > -1 / userInfo[arg1][address(msg.sender)].field_0:
            revert with 'NH{q', 17
        if not userInfo[arg1][address(msg.sender)].field_0:
            revert with 'NH{q', 18
        if (poolInfo[arg1].field_1024 * userInfo[arg1][address(msg.sender)].field_0) + (10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * userInfo[arg1][address(msg.sender)].field_0) / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_1024 + (10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256):
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(msg.sender)].field_256 > (poolInfo[arg1].field_1024 * userInfo[arg1][address(msg.sender)].field_0) + (10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * userInfo[arg1][address(msg.sender)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (poolInfo[arg1].field_1024 * userInfo[arg1][address(msg.sender)].field_0) + (10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * userInfo[arg1][address(msg.sender)].field_0) / 10^18 < userInfo[arg1][address(msg.sender)].field_256:
            revert with 'NH{q', 17
        return (((poolInfo[arg1].field_1024 * userInfo[arg1][address(msg.sender)].field_0) + (10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * userInfo[arg1][address(msg.sender)].field_0) / 10^18) - userInfo[arg1][address(msg.sender)].field_256)
    if block.number <= poolInfo[arg1].field_1280:
        if not userInfo[arg1][address(msg.sender)].field_0:
            if userInfo[arg1][address(msg.sender)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < userInfo[arg1][address(msg.sender)].field_256:
                revert with 'NH{q', 17
            return -userInfo[arg1][address(msg.sender)].field_256
        if userInfo[arg1][address(msg.sender)].field_0 and poolInfo[arg1].field_1024 > -1 / userInfo[arg1][address(msg.sender)].field_0:
            revert with 'NH{q', 17
        if not userInfo[arg1][address(msg.sender)].field_0:
            revert with 'NH{q', 18
        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1024 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_1024:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1024 / 10^18:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1024 / 10^18 < userInfo[arg1][address(msg.sender)].field_256:
            revert with 'NH{q', 17
        return ((userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1024 / 10^18) - userInfo[arg1][address(msg.sender)].field_256)
    if block.number < poolInfo[arg1].field_1280:
        if not userInfo[arg1][address(msg.sender)].field_0:
            if userInfo[arg1][address(msg.sender)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < userInfo[arg1][address(msg.sender)].field_256:
                revert with 'NH{q', 17
            return -userInfo[arg1][address(msg.sender)].field_256
        if userInfo[arg1][address(msg.sender)].field_0 and poolInfo[arg1].field_1024 > -1 / userInfo[arg1][address(msg.sender)].field_0:
            revert with 'NH{q', 17
        if not userInfo[arg1][address(msg.sender)].field_0:
            revert with 'NH{q', 18
        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1024 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_1024:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1024 / 10^18:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1024 / 10^18 < userInfo[arg1][address(msg.sender)].field_256:
            revert with 'NH{q', 17
        return ((userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1024 / 10^18) - userInfo[arg1][address(msg.sender)].field_256)
    if poolInfo[arg1].field_1280 >= poolInfo[arg1].field_1536:
        if not userInfo[arg1][address(msg.sender)].field_0:
            if userInfo[arg1][address(msg.sender)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < userInfo[arg1][address(msg.sender)].field_256:
                revert with 'NH{q', 17
            return -userInfo[arg1][address(msg.sender)].field_256
        if userInfo[arg1][address(msg.sender)].field_0 and poolInfo[arg1].field_1024 > -1 / userInfo[arg1][address(msg.sender)].field_0:
            revert with 'NH{q', 17
        if not userInfo[arg1][address(msg.sender)].field_0:
            revert with 'NH{q', 18
        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1024 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_1024:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1024 / 10^18:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1024 / 10^18 < userInfo[arg1][address(msg.sender)].field_256:
            revert with 'NH{q', 17
        return ((userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1024 / 10^18) - userInfo[arg1][address(msg.sender)].field_256)
    if poolInfo[arg1].field_256 <= 0:
        if not userInfo[arg1][address(msg.sender)].field_0:
            if userInfo[arg1][address(msg.sender)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < userInfo[arg1][address(msg.sender)].field_256:
                revert with 'NH{q', 17
            return -userInfo[arg1][address(msg.sender)].field_256
        if userInfo[arg1][address(msg.sender)].field_0 and poolInfo[arg1].field_1024 > -1 / userInfo[arg1][address(msg.sender)].field_0:
            revert with 'NH{q', 17
        if not userInfo[arg1][address(msg.sender)].field_0:
            revert with 'NH{q', 18
        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1024 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_1024:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1024 / 10^18:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1024 / 10^18 < userInfo[arg1][address(msg.sender)].field_256:
            revert with 'NH{q', 17
        return ((userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1024 / 10^18) - userInfo[arg1][address(msg.sender)].field_256)
    if block.number <= poolInfo[arg1].field_1536:
        if block.number <= poolInfo[arg1].field_1280:
            if poolInfo[arg1].field_256 <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not poolInfo[arg1].field_256:
                revert with 'NH{q', 18
            if poolInfo[arg1].field_1024 > -(0 / poolInfo[arg1].field_256) - 1:
                revert with 'NH{q', 17
            if poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(msg.sender)].field_0:
                if userInfo[arg1][address(msg.sender)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < userInfo[arg1][address(msg.sender)].field_256:
                    revert with 'NH{q', 17
                return -userInfo[arg1][address(msg.sender)].field_256
            if userInfo[arg1][address(msg.sender)].field_0 and poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) > -1 / userInfo[arg1][address(msg.sender)].field_0:
                revert with 'NH{q', 17
            if not userInfo[arg1][address(msg.sender)].field_0:
                revert with 'NH{q', 18
            if (poolInfo[arg1].field_1024 * userInfo[arg1][address(msg.sender)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(msg.sender)].field_0) / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(msg.sender)].field_256 > (poolInfo[arg1].field_1024 * userInfo[arg1][address(msg.sender)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(msg.sender)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (poolInfo[arg1].field_1024 * userInfo[arg1][address(msg.sender)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(msg.sender)].field_0) / 10^18 < userInfo[arg1][address(msg.sender)].field_256:
                revert with 'NH{q', 17
            return (((poolInfo[arg1].field_1024 * userInfo[arg1][address(msg.sender)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(msg.sender)].field_0) / 10^18) - userInfo[arg1][address(msg.sender)].field_256)
        if poolInfo[arg1].field_1280 > block.number:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if block.number < poolInfo[arg1].field_1280:
            revert with 'NH{q', 17
        if not block.number - poolInfo[arg1].field_1280:
            if poolInfo[arg1].field_256 <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not poolInfo[arg1].field_256:
                revert with 'NH{q', 18
            if poolInfo[arg1].field_1024 > -(0 / poolInfo[arg1].field_256) - 1:
                revert with 'NH{q', 17
            if poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(msg.sender)].field_0:
                if userInfo[arg1][address(msg.sender)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < userInfo[arg1][address(msg.sender)].field_256:
                    revert with 'NH{q', 17
                return -userInfo[arg1][address(msg.sender)].field_256
            if userInfo[arg1][address(msg.sender)].field_0 and poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) > -1 / userInfo[arg1][address(msg.sender)].field_0:
                revert with 'NH{q', 17
            if not userInfo[arg1][address(msg.sender)].field_0:
                revert with 'NH{q', 18
            if (poolInfo[arg1].field_1024 * userInfo[arg1][address(msg.sender)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(msg.sender)].field_0) / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(msg.sender)].field_256 > (poolInfo[arg1].field_1024 * userInfo[arg1][address(msg.sender)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(msg.sender)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (poolInfo[arg1].field_1024 * userInfo[arg1][address(msg.sender)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(msg.sender)].field_0) / 10^18 < userInfo[arg1][address(msg.sender)].field_256:
                revert with 'NH{q', 17
            return (((poolInfo[arg1].field_1024 * userInfo[arg1][address(msg.sender)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(msg.sender)].field_0) / 10^18) - userInfo[arg1][address(msg.sender)].field_256)
        if block.number - poolInfo[arg1].field_1280 and poolInfo[arg1].field_512 > -1 / block.number - poolInfo[arg1].field_1280:
            revert with 'NH{q', 17
        if not block.number - poolInfo[arg1].field_1280:
            revert with 'NH{q', 18
        if (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / block.number - poolInfo[arg1].field_1280 != poolInfo[arg1].field_512:
            revert with 0, 'SafeMath: multiplication overflow'
        if not (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000:
            if poolInfo[arg1].field_256 <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not poolInfo[arg1].field_256:
                revert with 'NH{q', 18
            if poolInfo[arg1].field_1024 > -(0 / poolInfo[arg1].field_256) - 1:
                revert with 'NH{q', 17
            if poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(msg.sender)].field_0:
                if userInfo[arg1][address(msg.sender)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < userInfo[arg1][address(msg.sender)].field_256:
                    revert with 'NH{q', 17
                return -userInfo[arg1][address(msg.sender)].field_256
            if userInfo[arg1][address(msg.sender)].field_0 and poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) > -1 / userInfo[arg1][address(msg.sender)].field_0:
                revert with 'NH{q', 17
            if not userInfo[arg1][address(msg.sender)].field_0:
                revert with 'NH{q', 18
            if (poolInfo[arg1].field_1024 * userInfo[arg1][address(msg.sender)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(msg.sender)].field_0) / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(msg.sender)].field_256 > (poolInfo[arg1].field_1024 * userInfo[arg1][address(msg.sender)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(msg.sender)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (poolInfo[arg1].field_1024 * userInfo[arg1][address(msg.sender)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(msg.sender)].field_0) / 10^18 < userInfo[arg1][address(msg.sender)].field_256:
                revert with 'NH{q', 17
            return (((poolInfo[arg1].field_1024 * userInfo[arg1][address(msg.sender)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(msg.sender)].field_0) / 10^18) - userInfo[arg1][address(msg.sender)].field_256)
        if (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 and 10^18 > -1 / (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000:
            revert with 'NH{q', 17
        if not (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000:
            revert with 'NH{q', 18
        if 10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        if poolInfo[arg1].field_256 <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not poolInfo[arg1].field_256:
            revert with 'NH{q', 18
        if poolInfo[arg1].field_1024 > -(10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256) - 1:
            revert with 'NH{q', 17
        if poolInfo[arg1].field_1024 + (10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(msg.sender)].field_0:
            if userInfo[arg1][address(msg.sender)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < userInfo[arg1][address(msg.sender)].field_256:
                revert with 'NH{q', 17
            return -userInfo[arg1][address(msg.sender)].field_256
        if userInfo[arg1][address(msg.sender)].field_0 and poolInfo[arg1].field_1024 + (10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256) > -1 / userInfo[arg1][address(msg.sender)].field_0:
            revert with 'NH{q', 17
        if not userInfo[arg1][address(msg.sender)].field_0:
            revert with 'NH{q', 18
        if (poolInfo[arg1].field_1024 * userInfo[arg1][address(msg.sender)].field_0) + (10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * userInfo[arg1][address(msg.sender)].field_0) / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_1024 + (10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256):
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(msg.sender)].field_256 > (poolInfo[arg1].field_1024 * userInfo[arg1][address(msg.sender)].field_0) + (10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * userInfo[arg1][address(msg.sender)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (poolInfo[arg1].field_1024 * userInfo[arg1][address(msg.sender)].field_0) + (10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * userInfo[arg1][address(msg.sender)].field_0) / 10^18 < userInfo[arg1][address(msg.sender)].field_256:
            revert with 'NH{q', 17
        return (((poolInfo[arg1].field_1024 * userInfo[arg1][address(msg.sender)].field_0) + (10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * userInfo[arg1][address(msg.sender)].field_0) / 10^18) - userInfo[arg1][address(msg.sender)].field_256)
    if poolInfo[arg1].field_1536 <= poolInfo[arg1].field_1280:
        if poolInfo[arg1].field_256 <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not poolInfo[arg1].field_256:
            revert with 'NH{q', 18
        if poolInfo[arg1].field_1024 > -(0 / poolInfo[arg1].field_256) - 1:
            revert with 'NH{q', 17
        if poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(msg.sender)].field_0:
            if userInfo[arg1][address(msg.sender)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < userInfo[arg1][address(msg.sender)].field_256:
                revert with 'NH{q', 17
            return -userInfo[arg1][address(msg.sender)].field_256
        if userInfo[arg1][address(msg.sender)].field_0 and poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) > -1 / userInfo[arg1][address(msg.sender)].field_0:
            revert with 'NH{q', 17
        if not userInfo[arg1][address(msg.sender)].field_0:
            revert with 'NH{q', 18
        if (poolInfo[arg1].field_1024 * userInfo[arg1][address(msg.sender)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(msg.sender)].field_0) / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256):
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(msg.sender)].field_256 > (poolInfo[arg1].field_1024 * userInfo[arg1][address(msg.sender)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(msg.sender)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (poolInfo[arg1].field_1024 * userInfo[arg1][address(msg.sender)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(msg.sender)].field_0) / 10^18 < userInfo[arg1][address(msg.sender)].field_256:
            revert with 'NH{q', 17
        return (((poolInfo[arg1].field_1024 * userInfo[arg1][address(msg.sender)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(msg.sender)].field_0) / 10^18) - userInfo[arg1][address(msg.sender)].field_256)
    if poolInfo[arg1].field_1280 > poolInfo[arg1].field_1536:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if poolInfo[arg1].field_1536 < poolInfo[arg1].field_1280:
        revert with 'NH{q', 17
    if not poolInfo[arg1].field_1536 - poolInfo[arg1].field_1280:
        if poolInfo[arg1].field_256 <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not poolInfo[arg1].field_256:
            revert with 'NH{q', 18
        if poolInfo[arg1].field_1024 > -(0 / poolInfo[arg1].field_256) - 1:
            revert with 'NH{q', 17
        if poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(msg.sender)].field_0:
            if userInfo[arg1][address(msg.sender)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < userInfo[arg1][address(msg.sender)].field_256:
                revert with 'NH{q', 17
            return -userInfo[arg1][address(msg.sender)].field_256
        if userInfo[arg1][address(msg.sender)].field_0 and poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) > -1 / userInfo[arg1][address(msg.sender)].field_0:
            revert with 'NH{q', 17
        if not userInfo[arg1][address(msg.sender)].field_0:
            revert with 'NH{q', 18
        if (poolInfo[arg1].field_1024 * userInfo[arg1][address(msg.sender)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(msg.sender)].field_0) / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256):
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(msg.sender)].field_256 > (poolInfo[arg1].field_1024 * userInfo[arg1][address(msg.sender)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(msg.sender)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (poolInfo[arg1].field_1024 * userInfo[arg1][address(msg.sender)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(msg.sender)].field_0) / 10^18 < userInfo[arg1][address(msg.sender)].field_256:
            revert with 'NH{q', 17
        return (((poolInfo[arg1].field_1024 * userInfo[arg1][address(msg.sender)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(msg.sender)].field_0) / 10^18) - userInfo[arg1][address(msg.sender)].field_256)
    if poolInfo[arg1].field_1536 - poolInfo[arg1].field_1280 and poolInfo[arg1].field_512 > -1 / poolInfo[arg1].field_1536 - poolInfo[arg1].field_1280:
        revert with 'NH{q', 17
    if not poolInfo[arg1].field_1536 - poolInfo[arg1].field_1280:
        revert with 'NH{q', 18
    if (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / poolInfo[arg1].field_1536 - poolInfo[arg1].field_1280 != poolInfo[arg1].field_512:
        revert with 0, 'SafeMath: multiplication overflow'
    if not (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000:
        if poolInfo[arg1].field_256 <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not poolInfo[arg1].field_256:
            revert with 'NH{q', 18
        if poolInfo[arg1].field_1024 > -(0 / poolInfo[arg1].field_256) - 1:
            revert with 'NH{q', 17
        if poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(msg.sender)].field_0:
            if userInfo[arg1][address(msg.sender)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < userInfo[arg1][address(msg.sender)].field_256:
                revert with 'NH{q', 17
            return -userInfo[arg1][address(msg.sender)].field_256
        if userInfo[arg1][address(msg.sender)].field_0 and poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) > -1 / userInfo[arg1][address(msg.sender)].field_0:
            revert with 'NH{q', 17
        if not userInfo[arg1][address(msg.sender)].field_0:
            revert with 'NH{q', 18
        if (poolInfo[arg1].field_1024 * userInfo[arg1][address(msg.sender)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(msg.sender)].field_0) / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256):
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(msg.sender)].field_256 > (poolInfo[arg1].field_1024 * userInfo[arg1][address(msg.sender)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(msg.sender)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (poolInfo[arg1].field_1024 * userInfo[arg1][address(msg.sender)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(msg.sender)].field_0) / 10^18 < userInfo[arg1][address(msg.sender)].field_256:
            revert with 'NH{q', 17
        return (((poolInfo[arg1].field_1024 * userInfo[arg1][address(msg.sender)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[arg1][address(msg.sender)].field_0) / 10^18) - userInfo[arg1][address(msg.sender)].field_256)
    if (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 and 10^18 > -1 / (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000:
        revert with 'NH{q', 17
    if not (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000:
        revert with 'NH{q', 18
    if 10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 != 10^18:
        revert with 0, 'SafeMath: multiplication overflow'
    if poolInfo[arg1].field_256 <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not poolInfo[arg1].field_256:
        revert with 'NH{q', 18
    if poolInfo[arg1].field_1024 > -(10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256) - 1:
        revert with 'NH{q', 17
    if poolInfo[arg1].field_1024 + (10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(msg.sender)].field_0:
        if userInfo[arg1][address(msg.sender)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if 0 < userInfo[arg1][address(msg.sender)].field_256:
            revert with 'NH{q', 17
        return -userInfo[arg1][address(msg.sender)].field_256
    if userInfo[arg1][address(msg.sender)].field_0 and poolInfo[arg1].field_1024 + (10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256) > -1 / userInfo[arg1][address(msg.sender)].field_0:
        revert with 'NH{q', 17
    if not userInfo[arg1][address(msg.sender)].field_0:
        revert with 'NH{q', 18
    if (poolInfo[arg1].field_1024 * userInfo[arg1][address(msg.sender)].field_0) + (10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * userInfo[arg1][address(msg.sender)].field_0) / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_1024 + (10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256):
        revert with 0, 'SafeMath: multiplication overflow'
    if userInfo[arg1][address(msg.sender)].field_256 > (poolInfo[arg1].field_1024 * userInfo[arg1][address(msg.sender)].field_0) + (10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * userInfo[arg1][address(msg.sender)].field_0) / 10^18:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if (poolInfo[arg1].field_1024 * userInfo[arg1][address(msg.sender)].field_0) + (10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * userInfo[arg1][address(msg.sender)].field_0) / 10^18 < userInfo[arg1][address(msg.sender)].field_256:
        revert with 'NH{q', 17
    return (((poolInfo[arg1].field_1024 * userInfo[arg1][address(msg.sender)].field_0) + (10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * userInfo[arg1][address(msg.sender)].field_0) / 10^18) - userInfo[arg1][address(msg.sender)].field_256)
}



}
