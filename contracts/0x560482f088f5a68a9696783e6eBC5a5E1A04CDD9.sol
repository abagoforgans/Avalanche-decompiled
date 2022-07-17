contract main {




// =====================  Runtime code  =====================


#
#  - addRewardForPool(uint256 arg1, uint256 arg2, bool arg3)
#  - withdraw(uint256 arg1, uint256 arg2)
#  - sub_5d710ad7(?)
#  - sub_7d841c53(?)
#  - withdrawMultiple(uint256 arg1, uint256 arg2)
#  - sub_d6595f3a(?)
#  - deposit(uint256 arg1, uint256 arg2)
#  - harvest(uint256 arg1, uint256 arg2)
#  - _fallback()
#
const ZERO = 0

const RATIO_BASE = 1000


address owner;
array of struct sub_8254a57e;
address tokenAddress;
array of struct poolInfo;
mapping of struct sub_dfa2eec0;

function poolLength() {
    return poolInfo.length
}

function poolInfo(uint256 arg1) {
    require calldata.size - 4 >= 32
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

function sub_8254a57e(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    return sub_8254a57e[arg1][address(arg2)].field_256
}

function owner() {
    return owner
}

function userInfo(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(sub_8254a57e[arg1][arg2].field_0)
}

function sub_dfa2eec0(?) {
    require calldata.size - 4 >= 64
    return sub_dfa2eec0[arg1][arg2].field_0, sub_dfa2eec0[arg1][arg2].field_256, sub_dfa2eec0[arg1][arg2].field_512
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

function getMultiplier(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 <= arg1:
        return 0
    if arg1 > arg2:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if arg2 < arg1:
        revert with 0, 17
    return (arg2 - arg1)
}

function withdraw() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function closePool(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= poolInfo.length:
        revert with 0, 'Pool does not exist'
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= poolInfo.length:
        revert with 0, 50
    poolInfo[arg1].field_1536 = block.number
    emit ClosePool(arg1);
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

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    emit Received()
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function sub_0df48e1f(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if sub_8254a57e[arg1][address(arg2)].field_256:
        mem[128] = sub_8254a57e[arg1][address(arg2)][1].field_0
        idx = 128
        s = 0
        while (32 * sub_8254a57e[arg1][address(arg2)].field_256) + 96 > idx:
            mem[idx + 32] = sub_8254a57e[arg1][address(arg2)][s + 1].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=sub_8254a57e[arg1][address(arg2)].field_256, data=mem[128 len 32 * sub_8254a57e[arg1][address(arg2)].field_256]), 
    mem[(32 * sub_8254a57e[arg1][address(arg2)].field_256) + 128] = 32
    mem[(32 * sub_8254a57e[arg1][address(arg2)].field_256) + 160] = sub_8254a57e[arg1][address(arg2)].field_256
    mem[(32 * sub_8254a57e[arg1][address(arg2)].field_256) + 192 len 32 * sub_8254a57e[arg1][address(arg2)].field_256] = mem[128 len 32 * sub_8254a57e[arg1][address(arg2)].field_256]
    return memory
      from (32 * sub_8254a57e[arg1][address(arg2)].field_256) + 128
       len (96 * sub_8254a57e[arg1][address(arg2)].field_256) + 64
}

function updatePool(uint256 arg1) {
    require calldata.size - 4 >= 32
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
                            revert with 0, 17
                        poolInfo[arg1].field_768 = block.number
                        if poolInfo[arg1].field_256:
                            if -block.number + poolInfo[arg1].field_768:
                                if block.number - poolInfo[arg1].field_768 and poolInfo[arg1].field_512 > -1 / block.number - poolInfo[arg1].field_768:
                                    revert with 0, 17
                                if not block.number - poolInfo[arg1].field_768:
                                    revert with 0, 18
                                if (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / block.number - poolInfo[arg1].field_768 != poolInfo[arg1].field_512:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512):
                                    if not (-1 * block.number * poolInfo[arg1].field_512) + (poolInfo[arg1].field_768 * poolInfo[arg1].field_512):
                                        if not poolInfo[arg1].field_256:
                                            revert with 0, 'SafeMath: division by zero', 0
                                        if poolInfo[arg1].field_1024 > !(0 / poolInfo[arg1].field_256):
                                            revert with 0, 17
                                        if poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_1024 += 0 / poolInfo[arg1].field_256
                                    else:
                                        if (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) and 10^18 > -1 / (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512):
                                            revert with 0, 17
                                        if not (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512):
                                            revert with 0, 18
                                        if (10^18 * block.number * poolInfo[arg1].field_512) - (10^18 * poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) != 10^18:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if not poolInfo[arg1].field_256:
                                            revert with 0, 'SafeMath: division by zero', 0
                                        if poolInfo[arg1].field_1024 > !((10^18 * block.number * poolInfo[arg1].field_512) - (10^18 * poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / poolInfo[arg1].field_256):
                                            revert with 0, 17
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
                            revert with 0, 17
                        poolInfo[arg1].field_768 = poolInfo[arg1].field_1536
                        if poolInfo[arg1].field_256:
                            if -poolInfo[arg1].field_1536 + poolInfo[arg1].field_768:
                                if poolInfo[arg1].field_1536 - poolInfo[arg1].field_768 and poolInfo[arg1].field_512 > -1 / poolInfo[arg1].field_1536 - poolInfo[arg1].field_768:
                                    revert with 0, 17
                                if not poolInfo[arg1].field_1536 - poolInfo[arg1].field_768:
                                    revert with 0, 18
                                if (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / poolInfo[arg1].field_1536 - poolInfo[arg1].field_768 != poolInfo[arg1].field_512:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512):
                                    if not (-1 * poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) + (poolInfo[arg1].field_768 * poolInfo[arg1].field_512):
                                        if not poolInfo[arg1].field_256:
                                            revert with 0, 'SafeMath: division by zero', 0
                                        if poolInfo[arg1].field_1024 > !(0 / poolInfo[arg1].field_256):
                                            revert with 0, 17
                                        if poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_1024 += 0 / poolInfo[arg1].field_256
                                    else:
                                        if (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) and 10^18 > -1 / (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512):
                                            revert with 0, 17
                                        if not (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512):
                                            revert with 0, 18
                                        if (10^18 * poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (10^18 * poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) != 10^18:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if not poolInfo[arg1].field_256:
                                            revert with 0, 'SafeMath: division by zero', 0
                                        if poolInfo[arg1].field_1024 > !((10^18 * poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (10^18 * poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / poolInfo[arg1].field_256):
                                            revert with 0, 17
                                        if poolInfo[arg1].field_1024 + ((10^18 * poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (10^18 * poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_1024 += (10^18 * poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (10^18 * poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / poolInfo[arg1].field_256
}

function massUpdatePools() payable {
    mem[64] = 96
    require not msg.value
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 4
        if block.number <= poolInfo[idx].field_768:
            if not idx + 1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if block.number < poolInfo[idx].field_1280:
            if not idx + 1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if poolInfo[idx].field_768 >= poolInfo[idx].field_1536:
            if not idx + 1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if poolInfo[idx].field_768 >= poolInfo[idx].field_1280:
            if block.number <= poolInfo[idx].field_1536:
                if block.number <= poolInfo[idx].field_768:
                    poolInfo[idx].field_768 = block.number
                    if not idx + 1:
                        revert with 0, 17
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
                        mem[idx + _111 + 68] = mem[idx + _107 + 32]
                        idx = idx + 32
                        continue 
                    mem[_111 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _111 + -mem[64] + 100
                if block.number < poolInfo[idx].field_768:
                    revert with 0, 17
                poolInfo[idx].field_768 = block.number
                if not poolInfo[idx].field_256:
                    if not idx + 1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if not -block.number + poolInfo[idx].field_768:
                    if not idx + 1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if block.number - poolInfo[idx].field_768 and poolInfo[idx].field_512 > -1 / block.number - poolInfo[idx].field_768:
                    revert with 0, 17
                if not block.number - poolInfo[idx].field_768:
                    revert with 0, 18
                if (block.number * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512) / block.number - poolInfo[idx].field_768 != poolInfo[idx].field_512:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (block.number * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512):
                    if not idx + 1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if not (-1 * block.number * poolInfo[idx].field_512) + (poolInfo[idx].field_768 * poolInfo[idx].field_512):
                    _139 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_139] = 26
                    mem[_139 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_256:
                        if poolInfo[idx].field_1024 > !(0 / poolInfo[idx].field_256):
                            revert with 0, 17
                        if poolInfo[idx].field_1024 + (0 / poolInfo[idx].field_256) < poolInfo[idx].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_256
                        if not idx + 1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _143 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _143 + 68] = mem[idx + _139 + 32]
                        idx = idx + 32
                        continue 
                    mem[_143 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _143 + -mem[64] + 100
                if (block.number * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512) and 10^18 > -1 / (block.number * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512):
                    revert with 0, 17
                if not (block.number * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512):
                    revert with 0, 18
                if (10^18 * block.number * poolInfo[idx].field_512) - (10^18 * poolInfo[idx].field_768 * poolInfo[idx].field_512) / (block.number * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512) != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                _157 = mem[64]
                mem[64] = mem[64] + 64
                mem[_157] = 26
                mem[_157 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_256:
                    if poolInfo[idx].field_1024 > !((10^18 * block.number * poolInfo[idx].field_512) - (10^18 * poolInfo[idx].field_768 * poolInfo[idx].field_512) / poolInfo[idx].field_256):
                        revert with 0, 17
                    if poolInfo[idx].field_1024 + ((10^18 * block.number * poolInfo[idx].field_512) - (10^18 * poolInfo[idx].field_768 * poolInfo[idx].field_512) / poolInfo[idx].field_256) < poolInfo[idx].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1024 += (10^18 * block.number * poolInfo[idx].field_512) - (10^18 * poolInfo[idx].field_768 * poolInfo[idx].field_512) / poolInfo[idx].field_256
                    if not idx + 1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _167 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _167 + 68] = mem[idx + _157 + 32]
                    idx = idx + 32
                    continue 
                mem[_167 + 94] = 0
                revert with memory
                  from mem[64]
                   len _167 + -mem[64] + 100
            if poolInfo[idx].field_1536 <= poolInfo[idx].field_768:
                poolInfo[idx].field_768 = poolInfo[idx].field_1536
                if not idx + 1:
                    revert with 0, 17
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
                    mem[idx + _112 + 68] = mem[idx + _108 + 32]
                    idx = idx + 32
                    continue 
                mem[_112 + 98] = 0
                revert with memory
                  from mem[64]
                   len _112 + -mem[64] + 100
            if poolInfo[idx].field_1536 < poolInfo[idx].field_768:
                revert with 0, 17
            poolInfo[idx].field_768 = poolInfo[idx].field_1536
            if not poolInfo[idx].field_256:
                if not idx + 1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if not -poolInfo[idx].field_1536 + poolInfo[idx].field_768:
                if not idx + 1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if poolInfo[idx].field_1536 - poolInfo[idx].field_768 and poolInfo[idx].field_512 > -1 / poolInfo[idx].field_1536 - poolInfo[idx].field_768:
                revert with 0, 17
            if not poolInfo[idx].field_1536 - poolInfo[idx].field_768:
                revert with 0, 18
            if (poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512) / poolInfo[idx].field_1536 - poolInfo[idx].field_768 != poolInfo[idx].field_512:
                revert with 0, 'SafeMath: multiplication overflow'
            if not (poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512):
                if not idx + 1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if not (-1 * poolInfo[idx].field_1536 * poolInfo[idx].field_512) + (poolInfo[idx].field_768 * poolInfo[idx].field_512):
                _140 = mem[64]
                mem[64] = mem[64] + 64
                mem[_140] = 26
                mem[_140 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_256:
                    if poolInfo[idx].field_1024 > !(0 / poolInfo[idx].field_256):
                        revert with 0, 17
                    if poolInfo[idx].field_1024 + (0 / poolInfo[idx].field_256) < poolInfo[idx].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_256
                    if not idx + 1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _144 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _144 + 68] = mem[idx + _140 + 32]
                    idx = idx + 32
                    continue 
                mem[_144 + 94] = 0
                revert with memory
                  from mem[64]
                   len _144 + -mem[64] + 100
            if (poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512) and 10^18 > -1 / (poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512):
                revert with 0, 17
            if not (poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512):
                revert with 0, 18
            if (10^18 * poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (10^18 * poolInfo[idx].field_768 * poolInfo[idx].field_512) / (poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512) != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            _159 = mem[64]
            mem[64] = mem[64] + 64
            mem[_159] = 26
            mem[_159 + 32] = 'SafeMath: division by zero'
            if poolInfo[idx].field_256:
                if poolInfo[idx].field_1024 > !((10^18 * poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (10^18 * poolInfo[idx].field_768 * poolInfo[idx].field_512) / poolInfo[idx].field_256):
                    revert with 0, 17
                if poolInfo[idx].field_1024 + ((10^18 * poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (10^18 * poolInfo[idx].field_768 * poolInfo[idx].field_512) / poolInfo[idx].field_256) < poolInfo[idx].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_1024 += (10^18 * poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (10^18 * poolInfo[idx].field_768 * poolInfo[idx].field_512) / poolInfo[idx].field_256
                if not idx + 1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _168 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _168 + 68] = mem[idx + _159 + 32]
                idx = idx + 32
                continue 
            mem[_168 + 94] = 0
            revert with memory
              from mem[64]
               len _168 + -mem[64] + 100
        poolInfo[idx].field_768 = poolInfo[idx].field_1280
        if block.number <= poolInfo[idx].field_1536:
            if block.number <= poolInfo[idx].field_768:
                poolInfo[idx].field_768 = block.number
                if not idx + 1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _109 = mem[64]
            mem[64] = mem[64] + 64
            mem[_109] = 30
            mem[_109 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_768 > block.number:
                _115 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _115 + 68] = mem[idx + _109 + 32]
                    idx = idx + 32
                    continue 
                mem[_115 + 98] = 0
                revert with memory
                  from mem[64]
                   len _115 + -mem[64] + 100
            if block.number < poolInfo[idx].field_768:
                revert with 0, 17
            poolInfo[idx].field_768 = block.number
            if not poolInfo[idx].field_256:
                if not idx + 1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if not -block.number + poolInfo[idx].field_768:
                if not idx + 1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if block.number - poolInfo[idx].field_768 and poolInfo[idx].field_512 > -1 / block.number - poolInfo[idx].field_768:
                revert with 0, 17
            if not block.number - poolInfo[idx].field_768:
                revert with 0, 18
            if (block.number * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512) / block.number - poolInfo[idx].field_768 != poolInfo[idx].field_512:
                revert with 0, 'SafeMath: multiplication overflow'
            if not (block.number * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512):
                if not idx + 1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if not (-1 * block.number * poolInfo[idx].field_512) + (poolInfo[idx].field_768 * poolInfo[idx].field_512):
                _141 = mem[64]
                mem[64] = mem[64] + 64
                mem[_141] = 26
                mem[_141 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_256:
                    if poolInfo[idx].field_1024 > !(0 / poolInfo[idx].field_256):
                        revert with 0, 17
                    if poolInfo[idx].field_1024 + (0 / poolInfo[idx].field_256) < poolInfo[idx].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_256
                    if not idx + 1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _147 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _147 + 68] = mem[idx + _141 + 32]
                    idx = idx + 32
                    continue 
                mem[_147 + 94] = 0
                revert with memory
                  from mem[64]
                   len _147 + -mem[64] + 100
            if (block.number * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512) and 10^18 > -1 / (block.number * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512):
                revert with 0, 17
            if not (block.number * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512):
                revert with 0, 18
            if (10^18 * block.number * poolInfo[idx].field_512) - (10^18 * poolInfo[idx].field_768 * poolInfo[idx].field_512) / (block.number * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512) != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            _163 = mem[64]
            mem[64] = mem[64] + 64
            mem[_163] = 26
            mem[_163 + 32] = 'SafeMath: division by zero'
            if poolInfo[idx].field_256:
                if poolInfo[idx].field_1024 > !((10^18 * block.number * poolInfo[idx].field_512) - (10^18 * poolInfo[idx].field_768 * poolInfo[idx].field_512) / poolInfo[idx].field_256):
                    revert with 0, 17
                if poolInfo[idx].field_1024 + ((10^18 * block.number * poolInfo[idx].field_512) - (10^18 * poolInfo[idx].field_768 * poolInfo[idx].field_512) / poolInfo[idx].field_256) < poolInfo[idx].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_1024 += (10^18 * block.number * poolInfo[idx].field_512) - (10^18 * poolInfo[idx].field_768 * poolInfo[idx].field_512) / poolInfo[idx].field_256
                if not idx + 1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _175 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _175 + 68] = mem[idx + _163 + 32]
                idx = idx + 32
                continue 
            mem[_175 + 94] = 0
            revert with memory
              from mem[64]
               len _175 + -mem[64] + 100
        if poolInfo[idx].field_1536 <= poolInfo[idx].field_768:
            poolInfo[idx].field_768 = poolInfo[idx].field_1536
            if not idx + 1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _110 = mem[64]
        mem[64] = mem[64] + 64
        mem[_110] = 30
        mem[_110 + 32] = 'SafeMath: subtraction overflow'
        if poolInfo[idx].field_768 > poolInfo[idx].field_1536:
            _116 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _116 + 68] = mem[idx + _110 + 32]
                idx = idx + 32
                continue 
            mem[_116 + 98] = 0
            revert with memory
              from mem[64]
               len _116 + -mem[64] + 100
        if poolInfo[idx].field_1536 < poolInfo[idx].field_768:
            revert with 0, 17
        poolInfo[idx].field_768 = poolInfo[idx].field_1536
        if not poolInfo[idx].field_256:
            if not idx + 1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if not -poolInfo[idx].field_1536 + poolInfo[idx].field_768:
            if not idx + 1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if poolInfo[idx].field_1536 - poolInfo[idx].field_768 and poolInfo[idx].field_512 > -1 / poolInfo[idx].field_1536 - poolInfo[idx].field_768:
            revert with 0, 17
        if not poolInfo[idx].field_1536 - poolInfo[idx].field_768:
            revert with 0, 18
        if (poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512) / poolInfo[idx].field_1536 - poolInfo[idx].field_768 != poolInfo[idx].field_512:
            revert with 0, 'SafeMath: multiplication overflow'
        if not (poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512):
            if not idx + 1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if not (-1 * poolInfo[idx].field_1536 * poolInfo[idx].field_512) + (poolInfo[idx].field_768 * poolInfo[idx].field_512):
            _142 = mem[64]
            mem[64] = mem[64] + 64
            mem[_142] = 26
            mem[_142 + 32] = 'SafeMath: division by zero'
            if poolInfo[idx].field_256:
                if poolInfo[idx].field_1024 > !(0 / poolInfo[idx].field_256):
                    revert with 0, 17
                if poolInfo[idx].field_1024 + (0 / poolInfo[idx].field_256) < poolInfo[idx].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_256
                if not idx + 1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _148 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _148 + 68] = mem[idx + _142 + 32]
                idx = idx + 32
                continue 
            mem[_148 + 94] = 0
            revert with memory
              from mem[64]
               len _148 + -mem[64] + 100
        if (poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512) and 10^18 > -1 / (poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512):
            revert with 0, 17
        if not (poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512):
            revert with 0, 18
        if (10^18 * poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (10^18 * poolInfo[idx].field_768 * poolInfo[idx].field_512) / (poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512) != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        _165 = mem[64]
        mem[64] = mem[64] + 64
        mem[_165] = 26
        mem[_165 + 32] = 'SafeMath: division by zero'
        if poolInfo[idx].field_256:
            if poolInfo[idx].field_1024 > !((10^18 * poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (10^18 * poolInfo[idx].field_768 * poolInfo[idx].field_512) / poolInfo[idx].field_256):
                revert with 0, 17
            if poolInfo[idx].field_1024 + ((10^18 * poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (10^18 * poolInfo[idx].field_768 * poolInfo[idx].field_512) / poolInfo[idx].field_256) < poolInfo[idx].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[idx].field_1024 += (10^18 * poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (10^18 * poolInfo[idx].field_768 * poolInfo[idx].field_512) / poolInfo[idx].field_256
            if not idx + 1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _176 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[idx + _176 + 68] = mem[idx + _165 + 32]
            idx = idx + 32
            continue 
        mem[_176 + 94] = 0
        revert with memory
          from mem[64]
           len _176 + -mem[64] + 100
}

function sub_9622b61c(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 128
    require arg4 == bool(arg4)
    if arg1 >= poolInfo.length:
        revert with 0, 'Pool does not exist'
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg4:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 4
            if block.number <= poolInfo[idx].field_768:
                if not idx + 1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if block.number < poolInfo[idx].field_1280:
                if not idx + 1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if poolInfo[idx].field_768 >= poolInfo[idx].field_1536:
                if not idx + 1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if poolInfo[idx].field_768 >= poolInfo[idx].field_1280:
                if block.number <= poolInfo[idx].field_1536:
                    if block.number <= poolInfo[idx].field_768:
                        poolInfo[idx].field_768 = block.number
                        if not idx + 1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _4039 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4039] = 30
                    mem[_4039 + 32] = 'SafeMath: subtraction overflow'
                    if poolInfo[idx].field_768 > block.number:
                        _4045 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4045 + 68] = mem[idx + _4039 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4045 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4045 + -mem[64] + 100
                    if block.number < poolInfo[idx].field_768:
                        revert with 0, 17
                    poolInfo[idx].field_768 = block.number
                    if not poolInfo[idx].field_256:
                        if not idx + 1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if not -block.number + poolInfo[idx].field_768:
                        if not idx + 1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if block.number - poolInfo[idx].field_768 and poolInfo[idx].field_512 > -1 / block.number - poolInfo[idx].field_768:
                        revert with 0, 17
                    if not block.number - poolInfo[idx].field_768:
                        revert with 0, 18
                    if (block.number * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512) / block.number - poolInfo[idx].field_768 != poolInfo[idx].field_512:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (block.number * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512):
                        if not idx + 1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if not (-1 * block.number * poolInfo[idx].field_512) + (poolInfo[idx].field_768 * poolInfo[idx].field_512):
                        _4123 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4123] = 26
                        mem[_4123 + 32] = 'SafeMath: division by zero'
                        if poolInfo[idx].field_256:
                            if poolInfo[idx].field_1024 > !(0 / poolInfo[idx].field_256):
                                revert with 0, 17
                            if poolInfo[idx].field_1024 + (0 / poolInfo[idx].field_256) < poolInfo[idx].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_256
                            if not idx + 1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        _4129 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _4129 + 68] = mem[idx + _4123 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4129 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _4129 + -mem[64] + 100
                    if (block.number * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512) and 10^18 > -1 / (block.number * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512):
                        revert with 0, 17
                    if not (block.number * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512):
                        revert with 0, 18
                    if (10^18 * block.number * poolInfo[idx].field_512) - (10^18 * poolInfo[idx].field_768 * poolInfo[idx].field_512) / (block.number * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512) != 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _4159 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4159] = 26
                    mem[_4159 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_256:
                        if poolInfo[idx].field_1024 > !((10^18 * block.number * poolInfo[idx].field_512) - (10^18 * poolInfo[idx].field_768 * poolInfo[idx].field_512) / poolInfo[idx].field_256):
                            revert with 0, 17
                        if poolInfo[idx].field_1024 + ((10^18 * block.number * poolInfo[idx].field_512) - (10^18 * poolInfo[idx].field_768 * poolInfo[idx].field_512) / poolInfo[idx].field_256) < poolInfo[idx].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_1024 += (10^18 * block.number * poolInfo[idx].field_512) - (10^18 * poolInfo[idx].field_768 * poolInfo[idx].field_512) / poolInfo[idx].field_256
                        if not idx + 1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _4169 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _4169 + 68] = mem[idx + _4159 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4169 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _4169 + -mem[64] + 100
                if poolInfo[idx].field_1536 <= poolInfo[idx].field_768:
                    poolInfo[idx].field_768 = poolInfo[idx].field_1536
                    if not idx + 1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _4040 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4040] = 30
                mem[_4040 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_768 > poolInfo[idx].field_1536:
                    _4046 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4046 + 68] = mem[idx + _4040 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4046 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _4046 + -mem[64] + 100
                if poolInfo[idx].field_1536 < poolInfo[idx].field_768:
                    revert with 0, 17
                poolInfo[idx].field_768 = poolInfo[idx].field_1536
                if not poolInfo[idx].field_256:
                    if not idx + 1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if not -poolInfo[idx].field_1536 + poolInfo[idx].field_768:
                    if not idx + 1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if poolInfo[idx].field_1536 - poolInfo[idx].field_768 and poolInfo[idx].field_512 > -1 / poolInfo[idx].field_1536 - poolInfo[idx].field_768:
                    revert with 0, 17
                if not poolInfo[idx].field_1536 - poolInfo[idx].field_768:
                    revert with 0, 18
                if (poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512) / poolInfo[idx].field_1536 - poolInfo[idx].field_768 != poolInfo[idx].field_512:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512):
                    if not idx + 1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if not (-1 * poolInfo[idx].field_1536 * poolInfo[idx].field_512) + (poolInfo[idx].field_768 * poolInfo[idx].field_512):
                    _4124 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4124] = 26
                    mem[_4124 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_256:
                        if poolInfo[idx].field_1024 > !(0 / poolInfo[idx].field_256):
                            revert with 0, 17
                        if poolInfo[idx].field_1024 + (0 / poolInfo[idx].field_256) < poolInfo[idx].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_256
                        if not idx + 1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _4130 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _4130 + 68] = mem[idx + _4124 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4130 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _4130 + -mem[64] + 100
                if (poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512) and 10^18 > -1 / (poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512):
                    revert with 0, 17
                if not (poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512):
                    revert with 0, 18
                if (10^18 * poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (10^18 * poolInfo[idx].field_768 * poolInfo[idx].field_512) / (poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512) != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                _4161 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4161] = 26
                mem[_4161 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_256:
                    if poolInfo[idx].field_1024 > !((10^18 * poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (10^18 * poolInfo[idx].field_768 * poolInfo[idx].field_512) / poolInfo[idx].field_256):
                        revert with 0, 17
                    if poolInfo[idx].field_1024 + ((10^18 * poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (10^18 * poolInfo[idx].field_768 * poolInfo[idx].field_512) / poolInfo[idx].field_256) < poolInfo[idx].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1024 += (10^18 * poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (10^18 * poolInfo[idx].field_768 * poolInfo[idx].field_512) / poolInfo[idx].field_256
                    if not idx + 1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _4170 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _4170 + 68] = mem[idx + _4161 + 32]
                    idx = idx + 32
                    continue 
                mem[_4170 + 94] = 0
                revert with memory
                  from mem[64]
                   len _4170 + -mem[64] + 100
            poolInfo[idx].field_768 = poolInfo[idx].field_1280
            if block.number <= poolInfo[idx].field_1536:
                if block.number <= poolInfo[idx].field_768:
                    poolInfo[idx].field_768 = block.number
                    if not idx + 1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _4043 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4043] = 30
                mem[_4043 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_768 > block.number:
                    _4049 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4049 + 68] = mem[idx + _4043 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4049 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _4049 + -mem[64] + 100
                if block.number < poolInfo[idx].field_768:
                    revert with 0, 17
                poolInfo[idx].field_768 = block.number
                if not poolInfo[idx].field_256:
                    if not idx + 1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if not -block.number + poolInfo[idx].field_768:
                    if not idx + 1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if block.number - poolInfo[idx].field_768 and poolInfo[idx].field_512 > -1 / block.number - poolInfo[idx].field_768:
                    revert with 0, 17
                if not block.number - poolInfo[idx].field_768:
                    revert with 0, 18
                if (block.number * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512) / block.number - poolInfo[idx].field_768 != poolInfo[idx].field_512:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (block.number * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512):
                    if not idx + 1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if not (-1 * block.number * poolInfo[idx].field_512) + (poolInfo[idx].field_768 * poolInfo[idx].field_512):
                    _4125 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4125] = 26
                    mem[_4125 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_256:
                        if poolInfo[idx].field_1024 > !(0 / poolInfo[idx].field_256):
                            revert with 0, 17
                        if poolInfo[idx].field_1024 + (0 / poolInfo[idx].field_256) < poolInfo[idx].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_256
                        if not idx + 1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _4141 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _4141 + 68] = mem[idx + _4125 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4141 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _4141 + -mem[64] + 100
                if (block.number * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512) and 10^18 > -1 / (block.number * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512):
                    revert with 0, 17
                if not (block.number * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512):
                    revert with 0, 18
                if (10^18 * block.number * poolInfo[idx].field_512) - (10^18 * poolInfo[idx].field_768 * poolInfo[idx].field_512) / (block.number * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512) != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                _4165 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4165] = 26
                mem[_4165 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_256:
                    if poolInfo[idx].field_1024 > !((10^18 * block.number * poolInfo[idx].field_512) - (10^18 * poolInfo[idx].field_768 * poolInfo[idx].field_512) / poolInfo[idx].field_256):
                        revert with 0, 17
                    if poolInfo[idx].field_1024 + ((10^18 * block.number * poolInfo[idx].field_512) - (10^18 * poolInfo[idx].field_768 * poolInfo[idx].field_512) / poolInfo[idx].field_256) < poolInfo[idx].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1024 += (10^18 * block.number * poolInfo[idx].field_512) - (10^18 * poolInfo[idx].field_768 * poolInfo[idx].field_512) / poolInfo[idx].field_256
                    if not idx + 1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _4183 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _4183 + 68] = mem[idx + _4165 + 32]
                    idx = idx + 32
                    continue 
                mem[_4183 + 94] = 0
                revert with memory
                  from mem[64]
                   len _4183 + -mem[64] + 100
            if poolInfo[idx].field_1536 <= poolInfo[idx].field_768:
                poolInfo[idx].field_768 = poolInfo[idx].field_1536
                if not idx + 1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _4044 = mem[64]
            mem[64] = mem[64] + 64
            mem[_4044] = 30
            mem[_4044 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_768 > poolInfo[idx].field_1536:
                _4050 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _4050 + 68] = mem[idx + _4044 + 32]
                    idx = idx + 32
                    continue 
                mem[_4050 + 98] = 0
                revert with memory
                  from mem[64]
                   len _4050 + -mem[64] + 100
            if poolInfo[idx].field_1536 < poolInfo[idx].field_768:
                revert with 0, 17
            poolInfo[idx].field_768 = poolInfo[idx].field_1536
            if not poolInfo[idx].field_256:
                if not idx + 1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if not -poolInfo[idx].field_1536 + poolInfo[idx].field_768:
                if not idx + 1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if poolInfo[idx].field_1536 - poolInfo[idx].field_768 and poolInfo[idx].field_512 > -1 / poolInfo[idx].field_1536 - poolInfo[idx].field_768:
                revert with 0, 17
            if not poolInfo[idx].field_1536 - poolInfo[idx].field_768:
                revert with 0, 18
            if (poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512) / poolInfo[idx].field_1536 - poolInfo[idx].field_768 != poolInfo[idx].field_512:
                revert with 0, 'SafeMath: multiplication overflow'
            if not (poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512):
                if not idx + 1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if not (-1 * poolInfo[idx].field_1536 * poolInfo[idx].field_512) + (poolInfo[idx].field_768 * poolInfo[idx].field_512):
                _4126 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4126] = 26
                mem[_4126 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_256:
                    if poolInfo[idx].field_1024 > !(0 / poolInfo[idx].field_256):
                        revert with 0, 17
                    if poolInfo[idx].field_1024 + (0 / poolInfo[idx].field_256) < poolInfo[idx].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_256
                    if not idx + 1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _4142 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _4142 + 68] = mem[idx + _4126 + 32]
                    idx = idx + 32
                    continue 
                mem[_4142 + 94] = 0
                revert with memory
                  from mem[64]
                   len _4142 + -mem[64] + 100
            if (poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512) and 10^18 > -1 / (poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512):
                revert with 0, 17
            if not (poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512):
                revert with 0, 18
            if (10^18 * poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (10^18 * poolInfo[idx].field_768 * poolInfo[idx].field_512) / (poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512) != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            _4167 = mem[64]
            mem[64] = mem[64] + 64
            mem[_4167] = 26
            mem[_4167 + 32] = 'SafeMath: division by zero'
            if poolInfo[idx].field_256:
                if poolInfo[idx].field_1024 > !((10^18 * poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (10^18 * poolInfo[idx].field_768 * poolInfo[idx].field_512) / poolInfo[idx].field_256):
                    revert with 0, 17
                if poolInfo[idx].field_1024 + ((10^18 * poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (10^18 * poolInfo[idx].field_768 * poolInfo[idx].field_512) / poolInfo[idx].field_256) < poolInfo[idx].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_1024 += (10^18 * poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (10^18 * poolInfo[idx].field_768 * poolInfo[idx].field_512) / poolInfo[idx].field_256
                if not idx + 1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _4184 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _4184 + 68] = mem[idx + _4167 + 32]
                idx = idx + 32
                continue 
            mem[_4184 + 94] = 0
            revert with memory
              from mem[64]
               len _4184 + -mem[64] + 100
    else:
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
                                revert with 0, 17
                            poolInfo[arg1].field_768 = block.number
                            if poolInfo[arg1].field_256:
                                if -block.number + poolInfo[arg1].field_768:
                                    if block.number - poolInfo[arg1].field_768 and poolInfo[arg1].field_512 > -1 / block.number - poolInfo[arg1].field_768:
                                        revert with 0, 17
                                    if not block.number - poolInfo[arg1].field_768:
                                        revert with 0, 18
                                    if (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / block.number - poolInfo[arg1].field_768 != poolInfo[arg1].field_512:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512):
                                        if not (-1 * block.number * poolInfo[arg1].field_512) + (poolInfo[arg1].field_768 * poolInfo[arg1].field_512):
                                            if not poolInfo[arg1].field_256:
                                                revert with 0, 'SafeMath: division by zero', 0
                                            if poolInfo[arg1].field_1024 > !(0 / poolInfo[arg1].field_256):
                                                revert with 0, 17
                                            if poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_1024 += 0 / poolInfo[arg1].field_256
                                        else:
                                            if (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) and 10^18 > -1 / (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512):
                                                revert with 0, 17
                                            if not (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512):
                                                revert with 0, 18
                                            if (10^18 * block.number * poolInfo[arg1].field_512) - (10^18 * poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) != 10^18:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if not poolInfo[arg1].field_256:
                                                revert with 0, 'SafeMath: division by zero', 0
                                            if poolInfo[arg1].field_1024 > !((10^18 * block.number * poolInfo[arg1].field_512) - (10^18 * poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / poolInfo[arg1].field_256):
                                                revert with 0, 17
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
                                revert with 0, 17
                            poolInfo[arg1].field_768 = poolInfo[arg1].field_1536
                            if poolInfo[arg1].field_256:
                                if -poolInfo[arg1].field_1536 + poolInfo[arg1].field_768:
                                    if poolInfo[arg1].field_1536 - poolInfo[arg1].field_768 and poolInfo[arg1].field_512 > -1 / poolInfo[arg1].field_1536 - poolInfo[arg1].field_768:
                                        revert with 0, 17
                                    if not poolInfo[arg1].field_1536 - poolInfo[arg1].field_768:
                                        revert with 0, 18
                                    if (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / poolInfo[arg1].field_1536 - poolInfo[arg1].field_768 != poolInfo[arg1].field_512:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512):
                                        if not (-1 * poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) + (poolInfo[arg1].field_768 * poolInfo[arg1].field_512):
                                            if not poolInfo[arg1].field_256:
                                                revert with 0, 'SafeMath: division by zero', 0
                                            if poolInfo[arg1].field_1024 > !(0 / poolInfo[arg1].field_256):
                                                revert with 0, 17
                                            if poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_1024 += 0 / poolInfo[arg1].field_256
                                        else:
                                            if (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) and 10^18 > -1 / (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512):
                                                revert with 0, 17
                                            if not (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512):
                                                revert with 0, 18
                                            if (10^18 * poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (10^18 * poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) != 10^18:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if not poolInfo[arg1].field_256:
                                                revert with 0, 'SafeMath: division by zero', 0
                                            if poolInfo[arg1].field_1024 > !((10^18 * poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (10^18 * poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / poolInfo[arg1].field_256):
                                                revert with 0, 17
                                            if poolInfo[arg1].field_1024 + ((10^18 * poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (10^18 * poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_1024 += (10^18 * poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (10^18 * poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / poolInfo[arg1].field_256
    if arg1 >= poolInfo.length:
        revert with 0, 50
    require poolInfo[arg1].field_1536 > block.timestamp
    if block.number >= poolInfo[arg1].field_1280:
        if block.number > poolInfo[arg1].field_1536:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if poolInfo[arg1].field_1536 < block.number:
            revert with 0, 17
        if not -poolInfo[arg1].field_512:
            if block.number > arg3:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg3 < block.number:
                revert with 0, 17
            if 0 > !arg2:
                revert with 0, 17
            if arg2 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not arg3 - block.number:
                revert with 0, 'SafeMath: division by zero', 0
            if arg3:
                require arg3 >= block.timestamp
                poolInfo[arg1].field_1536 = arg3
            poolInfo[arg1].field_512 = arg2 / arg3 - block.number
            emit 0x10c7b61d: arg1, arg2 / arg3 - block.number, bool(arg4), arg3
        else:
            if poolInfo[arg1].field_512 and poolInfo[arg1].field_1536 - block.number > -1 / poolInfo[arg1].field_512:
                revert with 0, 17
            if not poolInfo[arg1].field_512:
                revert with 0, 18
            if (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (block.number * poolInfo[arg1].field_512) / poolInfo[arg1].field_512 != poolInfo[arg1].field_1536 - block.number:
                revert with 0, 'SafeMath: multiplication overflow'
            if block.number > arg3:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg3 < block.number:
                revert with 0, 17
            if (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (block.number * poolInfo[arg1].field_512) > !arg2:
                revert with 0, 17
            if arg2 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not arg3 - block.number:
                revert with 0, 'SafeMath: division by zero', 0
            if arg3:
                require arg3 >= block.timestamp
                poolInfo[arg1].field_1536 = arg3
            poolInfo[arg1].field_512 = (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (block.number * poolInfo[arg1].field_512) + arg2 / arg3 - block.number
            emit 0x10c7b61d: arg1, (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (block.number * poolInfo[arg1].field_512) + arg2 / arg3 - block.number, bool(arg4), arg3
    else:
        if poolInfo[arg1].field_1280 > poolInfo[arg1].field_1536:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if poolInfo[arg1].field_1536 < poolInfo[arg1].field_1280:
            revert with 0, 17
        if not -poolInfo[arg1].field_512:
            if poolInfo[arg1].field_1280 > arg3:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg3 < poolInfo[arg1].field_1280:
                revert with 0, 17
            if 0 > !arg2:
                revert with 0, 17
            if arg2 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not arg3 - poolInfo[arg1].field_1280:
                revert with 0, 'SafeMath: division by zero', 0
            if arg3:
                require arg3 >= block.timestamp
                poolInfo[arg1].field_1536 = arg3
            poolInfo[arg1].field_512 = arg2 / arg3 - poolInfo[arg1].field_1280
            emit 0x10c7b61d: arg1, arg2 / arg3 - poolInfo[arg1].field_1280, bool(arg4), arg3
        else:
            if poolInfo[arg1].field_512 and poolInfo[arg1].field_1536 - poolInfo[arg1].field_1280 > -1 / poolInfo[arg1].field_512:
                revert with 0, 17
            if not poolInfo[arg1].field_512:
                revert with 0, 18
            if (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / poolInfo[arg1].field_512 != poolInfo[arg1].field_1536 - poolInfo[arg1].field_1280:
                revert with 0, 'SafeMath: multiplication overflow'
            if poolInfo[arg1].field_1280 > arg3:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg3 < poolInfo[arg1].field_1280:
                revert with 0, 17
            if (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) > !arg2:
                revert with 0, 17
            if arg2 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not arg3 - poolInfo[arg1].field_1280:
                revert with 0, 'SafeMath: division by zero', 0
            if arg3:
                require arg3 >= block.timestamp
                poolInfo[arg1].field_1536 = arg3
            poolInfo[arg1].field_512 = (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) + arg2 / arg3 - poolInfo[arg1].field_1280
            emit 0x10c7b61d: arg1, (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) + arg2 / arg3 - poolInfo[arg1].field_1280, bool(arg4), arg3
}

function pendingReward(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg1 >= poolInfo.length:
        revert with 0, 'Pool does not exist'
    if poolInfo[arg1].field_768 >= poolInfo[arg1].field_1280:
        if block.number <= poolInfo[arg1].field_768:
            if not -sub_dfa2eec0[arg1][arg2].field_0:
                if sub_dfa2eec0[arg1][arg2].field_512 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < sub_dfa2eec0[arg1][arg2].field_512:
                    revert with 0, 17
                return -sub_dfa2eec0[arg1][arg2].field_512
            if sub_dfa2eec0[arg1][arg2].field_0 and poolInfo[arg1].field_1024 > -1 / sub_dfa2eec0[arg1][arg2].field_0:
                revert with 0, 17
            if not sub_dfa2eec0[arg1][arg2].field_0:
                revert with 0, 18
            if sub_dfa2eec0[arg1][arg2].field_0 * poolInfo[arg1].field_1024 / sub_dfa2eec0[arg1][arg2].field_0 != poolInfo[arg1].field_1024:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if sub_dfa2eec0[arg1][arg2].field_512 > sub_dfa2eec0[arg1][arg2].field_0 * poolInfo[arg1].field_1024 / 10^18:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if sub_dfa2eec0[arg1][arg2].field_0 * poolInfo[arg1].field_1024 / 10^18 < sub_dfa2eec0[arg1][arg2].field_512:
                revert with 0, 17
            return ((sub_dfa2eec0[arg1][arg2].field_0 * poolInfo[arg1].field_1024 / 10^18) - sub_dfa2eec0[arg1][arg2].field_512)
        if block.number < poolInfo[arg1].field_1280:
            if not -sub_dfa2eec0[arg1][arg2].field_0:
                if sub_dfa2eec0[arg1][arg2].field_512 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < sub_dfa2eec0[arg1][arg2].field_512:
                    revert with 0, 17
                return -sub_dfa2eec0[arg1][arg2].field_512
            if sub_dfa2eec0[arg1][arg2].field_0 and poolInfo[arg1].field_1024 > -1 / sub_dfa2eec0[arg1][arg2].field_0:
                revert with 0, 17
            if not sub_dfa2eec0[arg1][arg2].field_0:
                revert with 0, 18
            if sub_dfa2eec0[arg1][arg2].field_0 * poolInfo[arg1].field_1024 / sub_dfa2eec0[arg1][arg2].field_0 != poolInfo[arg1].field_1024:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if sub_dfa2eec0[arg1][arg2].field_512 > sub_dfa2eec0[arg1][arg2].field_0 * poolInfo[arg1].field_1024 / 10^18:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if sub_dfa2eec0[arg1][arg2].field_0 * poolInfo[arg1].field_1024 / 10^18 < sub_dfa2eec0[arg1][arg2].field_512:
                revert with 0, 17
            return ((sub_dfa2eec0[arg1][arg2].field_0 * poolInfo[arg1].field_1024 / 10^18) - sub_dfa2eec0[arg1][arg2].field_512)
        if poolInfo[arg1].field_768 >= poolInfo[arg1].field_1536:
            if not -sub_dfa2eec0[arg1][arg2].field_0:
                if sub_dfa2eec0[arg1][arg2].field_512 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < sub_dfa2eec0[arg1][arg2].field_512:
                    revert with 0, 17
                return -sub_dfa2eec0[arg1][arg2].field_512
            if sub_dfa2eec0[arg1][arg2].field_0 and poolInfo[arg1].field_1024 > -1 / sub_dfa2eec0[arg1][arg2].field_0:
                revert with 0, 17
            if not sub_dfa2eec0[arg1][arg2].field_0:
                revert with 0, 18
            if sub_dfa2eec0[arg1][arg2].field_0 * poolInfo[arg1].field_1024 / sub_dfa2eec0[arg1][arg2].field_0 != poolInfo[arg1].field_1024:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if sub_dfa2eec0[arg1][arg2].field_512 > sub_dfa2eec0[arg1][arg2].field_0 * poolInfo[arg1].field_1024 / 10^18:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if sub_dfa2eec0[arg1][arg2].field_0 * poolInfo[arg1].field_1024 / 10^18 < sub_dfa2eec0[arg1][arg2].field_512:
                revert with 0, 17
            return ((sub_dfa2eec0[arg1][arg2].field_0 * poolInfo[arg1].field_1024 / 10^18) - sub_dfa2eec0[arg1][arg2].field_512)
        if not poolInfo[arg1].field_256:
            if not -sub_dfa2eec0[arg1][arg2].field_0:
                if sub_dfa2eec0[arg1][arg2].field_512 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < sub_dfa2eec0[arg1][arg2].field_512:
                    revert with 0, 17
                return -sub_dfa2eec0[arg1][arg2].field_512
            if sub_dfa2eec0[arg1][arg2].field_0 and poolInfo[arg1].field_1024 > -1 / sub_dfa2eec0[arg1][arg2].field_0:
                revert with 0, 17
            if not sub_dfa2eec0[arg1][arg2].field_0:
                revert with 0, 18
            if sub_dfa2eec0[arg1][arg2].field_0 * poolInfo[arg1].field_1024 / sub_dfa2eec0[arg1][arg2].field_0 != poolInfo[arg1].field_1024:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if sub_dfa2eec0[arg1][arg2].field_512 > sub_dfa2eec0[arg1][arg2].field_0 * poolInfo[arg1].field_1024 / 10^18:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if sub_dfa2eec0[arg1][arg2].field_0 * poolInfo[arg1].field_1024 / 10^18 < sub_dfa2eec0[arg1][arg2].field_512:
                revert with 0, 17
            return ((sub_dfa2eec0[arg1][arg2].field_0 * poolInfo[arg1].field_1024 / 10^18) - sub_dfa2eec0[arg1][arg2].field_512)
        if block.number <= poolInfo[arg1].field_1536:
            if block.number <= poolInfo[arg1].field_768:
                if not poolInfo[arg1].field_256:
                    revert with 0, 'SafeMath: division by zero', 0
                if poolInfo[arg1].field_1024 > !(0 / poolInfo[arg1].field_256):
                    revert with 0, 17
                if poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                if not -sub_dfa2eec0[arg1][arg2].field_0:
                    if sub_dfa2eec0[arg1][arg2].field_512 > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < sub_dfa2eec0[arg1][arg2].field_512:
                        revert with 0, 17
                    return -sub_dfa2eec0[arg1][arg2].field_512
                if sub_dfa2eec0[arg1][arg2].field_0 and poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) > -1 / sub_dfa2eec0[arg1][arg2].field_0:
                    revert with 0, 17
                if not sub_dfa2eec0[arg1][arg2].field_0:
                    revert with 0, 18
                if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / sub_dfa2eec0[arg1][arg2].field_0 != poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256):
                    revert with 0, 'SafeMath: multiplication overflow'
                if sub_dfa2eec0[arg1][arg2].field_512 > (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18 < sub_dfa2eec0[arg1][arg2].field_512:
                    revert with 0, 17
                return (((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18) - sub_dfa2eec0[arg1][arg2].field_512)
            if poolInfo[arg1].field_768 > block.number:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if block.number < poolInfo[arg1].field_768:
                revert with 0, 17
            if not -block.number + poolInfo[arg1].field_768:
                if not poolInfo[arg1].field_256:
                    revert with 0, 'SafeMath: division by zero', 0
                if poolInfo[arg1].field_1024 > !(0 / poolInfo[arg1].field_256):
                    revert with 0, 17
                if poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                if not -sub_dfa2eec0[arg1][arg2].field_0:
                    if sub_dfa2eec0[arg1][arg2].field_512 > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < sub_dfa2eec0[arg1][arg2].field_512:
                        revert with 0, 17
                    return -sub_dfa2eec0[arg1][arg2].field_512
                if sub_dfa2eec0[arg1][arg2].field_0 and poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) > -1 / sub_dfa2eec0[arg1][arg2].field_0:
                    revert with 0, 17
                if not sub_dfa2eec0[arg1][arg2].field_0:
                    revert with 0, 18
                if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / sub_dfa2eec0[arg1][arg2].field_0 != poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256):
                    revert with 0, 'SafeMath: multiplication overflow'
                if sub_dfa2eec0[arg1][arg2].field_512 > (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18 < sub_dfa2eec0[arg1][arg2].field_512:
                    revert with 0, 17
                return (((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18) - sub_dfa2eec0[arg1][arg2].field_512)
            if block.number - poolInfo[arg1].field_768 and poolInfo[arg1].field_512 > -1 / block.number - poolInfo[arg1].field_768:
                revert with 0, 17
            if not block.number - poolInfo[arg1].field_768:
                revert with 0, 18
            if (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / block.number - poolInfo[arg1].field_768 != poolInfo[arg1].field_512:
                revert with 0, 'SafeMath: multiplication overflow'
            if not -(block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000:
                if not poolInfo[arg1].field_256:
                    revert with 0, 'SafeMath: division by zero', 0
                if poolInfo[arg1].field_1024 > !(0 / poolInfo[arg1].field_256):
                    revert with 0, 17
                if poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                if not -sub_dfa2eec0[arg1][arg2].field_0:
                    if sub_dfa2eec0[arg1][arg2].field_512 > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < sub_dfa2eec0[arg1][arg2].field_512:
                        revert with 0, 17
                    return -sub_dfa2eec0[arg1][arg2].field_512
                if sub_dfa2eec0[arg1][arg2].field_0 and poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) > -1 / sub_dfa2eec0[arg1][arg2].field_0:
                    revert with 0, 17
                if not sub_dfa2eec0[arg1][arg2].field_0:
                    revert with 0, 18
                if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / sub_dfa2eec0[arg1][arg2].field_0 != poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256):
                    revert with 0, 'SafeMath: multiplication overflow'
                if sub_dfa2eec0[arg1][arg2].field_512 > (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18 < sub_dfa2eec0[arg1][arg2].field_512:
                    revert with 0, 17
                return (((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18) - sub_dfa2eec0[arg1][arg2].field_512)
            if (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 and 10^18 > -1 / (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000:
                revert with 0, 17
            if not (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000:
                revert with 0, 18
            if 10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            if not poolInfo[arg1].field_256:
                revert with 0, 'SafeMath: division by zero', 0
            if poolInfo[arg1].field_1024 > !(10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256):
                revert with 0, 17
            if poolInfo[arg1].field_1024 + (10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            if not -sub_dfa2eec0[arg1][arg2].field_0:
                if sub_dfa2eec0[arg1][arg2].field_512 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < sub_dfa2eec0[arg1][arg2].field_512:
                    revert with 0, 17
                return -sub_dfa2eec0[arg1][arg2].field_512
            if sub_dfa2eec0[arg1][arg2].field_0 and poolInfo[arg1].field_1024 + (10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256) > -1 / sub_dfa2eec0[arg1][arg2].field_0:
                revert with 0, 17
            if not sub_dfa2eec0[arg1][arg2].field_0:
                revert with 0, 18
            if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / sub_dfa2eec0[arg1][arg2].field_0 != poolInfo[arg1].field_1024 + (10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256):
                revert with 0, 'SafeMath: multiplication overflow'
            if sub_dfa2eec0[arg1][arg2].field_512 > (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18 < sub_dfa2eec0[arg1][arg2].field_512:
                revert with 0, 17
            return (((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18) - sub_dfa2eec0[arg1][arg2].field_512)
        if poolInfo[arg1].field_1536 <= poolInfo[arg1].field_768:
            if not poolInfo[arg1].field_256:
                revert with 0, 'SafeMath: division by zero', 0
            if poolInfo[arg1].field_1024 > !(0 / poolInfo[arg1].field_256):
                revert with 0, 17
            if poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            if not -sub_dfa2eec0[arg1][arg2].field_0:
                if sub_dfa2eec0[arg1][arg2].field_512 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < sub_dfa2eec0[arg1][arg2].field_512:
                    revert with 0, 17
                return -sub_dfa2eec0[arg1][arg2].field_512
            if sub_dfa2eec0[arg1][arg2].field_0 and poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) > -1 / sub_dfa2eec0[arg1][arg2].field_0:
                revert with 0, 17
            if not sub_dfa2eec0[arg1][arg2].field_0:
                revert with 0, 18
            if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / sub_dfa2eec0[arg1][arg2].field_0 != poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256):
                revert with 0, 'SafeMath: multiplication overflow'
            if sub_dfa2eec0[arg1][arg2].field_512 > (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18 < sub_dfa2eec0[arg1][arg2].field_512:
                revert with 0, 17
            return (((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18) - sub_dfa2eec0[arg1][arg2].field_512)
        if poolInfo[arg1].field_768 > poolInfo[arg1].field_1536:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if poolInfo[arg1].field_1536 < poolInfo[arg1].field_768:
            revert with 0, 17
        if not -poolInfo[arg1].field_1536 + poolInfo[arg1].field_768:
            if not poolInfo[arg1].field_256:
                revert with 0, 'SafeMath: division by zero', 0
            if poolInfo[arg1].field_1024 > !(0 / poolInfo[arg1].field_256):
                revert with 0, 17
            if poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            if not -sub_dfa2eec0[arg1][arg2].field_0:
                if sub_dfa2eec0[arg1][arg2].field_512 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < sub_dfa2eec0[arg1][arg2].field_512:
                    revert with 0, 17
                return -sub_dfa2eec0[arg1][arg2].field_512
            if sub_dfa2eec0[arg1][arg2].field_0 and poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) > -1 / sub_dfa2eec0[arg1][arg2].field_0:
                revert with 0, 17
            if not sub_dfa2eec0[arg1][arg2].field_0:
                revert with 0, 18
            if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / sub_dfa2eec0[arg1][arg2].field_0 != poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256):
                revert with 0, 'SafeMath: multiplication overflow'
            if sub_dfa2eec0[arg1][arg2].field_512 > (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18 < sub_dfa2eec0[arg1][arg2].field_512:
                revert with 0, 17
            return (((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18) - sub_dfa2eec0[arg1][arg2].field_512)
        if poolInfo[arg1].field_1536 - poolInfo[arg1].field_768 and poolInfo[arg1].field_512 > -1 / poolInfo[arg1].field_1536 - poolInfo[arg1].field_768:
            revert with 0, 17
        if not poolInfo[arg1].field_1536 - poolInfo[arg1].field_768:
            revert with 0, 18
        if (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / poolInfo[arg1].field_1536 - poolInfo[arg1].field_768 != poolInfo[arg1].field_512:
            revert with 0, 'SafeMath: multiplication overflow'
        if not -(poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000:
            if not poolInfo[arg1].field_256:
                revert with 0, 'SafeMath: division by zero', 0
            if poolInfo[arg1].field_1024 > !(0 / poolInfo[arg1].field_256):
                revert with 0, 17
            if poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            if not -sub_dfa2eec0[arg1][arg2].field_0:
                if sub_dfa2eec0[arg1][arg2].field_512 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < sub_dfa2eec0[arg1][arg2].field_512:
                    revert with 0, 17
                return -sub_dfa2eec0[arg1][arg2].field_512
            if sub_dfa2eec0[arg1][arg2].field_0 and poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) > -1 / sub_dfa2eec0[arg1][arg2].field_0:
                revert with 0, 17
            if not sub_dfa2eec0[arg1][arg2].field_0:
                revert with 0, 18
            if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / sub_dfa2eec0[arg1][arg2].field_0 != poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256):
                revert with 0, 'SafeMath: multiplication overflow'
            if sub_dfa2eec0[arg1][arg2].field_512 > (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18 < sub_dfa2eec0[arg1][arg2].field_512:
                revert with 0, 17
            return (((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18) - sub_dfa2eec0[arg1][arg2].field_512)
        if (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 and 10^18 > -1 / (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000:
            revert with 0, 17
        if not (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000:
            revert with 0, 18
        if 10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        if not poolInfo[arg1].field_256:
            revert with 0, 'SafeMath: division by zero', 0
        if poolInfo[arg1].field_1024 > !(10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256):
            revert with 0, 17
        if poolInfo[arg1].field_1024 + (10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
            revert with 0, 'SafeMath: addition overflow'
        if not -sub_dfa2eec0[arg1][arg2].field_0:
            if sub_dfa2eec0[arg1][arg2].field_512 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < sub_dfa2eec0[arg1][arg2].field_512:
                revert with 0, 17
            return -sub_dfa2eec0[arg1][arg2].field_512
        if sub_dfa2eec0[arg1][arg2].field_0 and poolInfo[arg1].field_1024 + (10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256) > -1 / sub_dfa2eec0[arg1][arg2].field_0:
            revert with 0, 17
        if not sub_dfa2eec0[arg1][arg2].field_0:
            revert with 0, 18
        if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / sub_dfa2eec0[arg1][arg2].field_0 != poolInfo[arg1].field_1024 + (10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256):
            revert with 0, 'SafeMath: multiplication overflow'
        if sub_dfa2eec0[arg1][arg2].field_512 > (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18 < sub_dfa2eec0[arg1][arg2].field_512:
            revert with 0, 17
        return (((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18) - sub_dfa2eec0[arg1][arg2].field_512)
    if block.number <= poolInfo[arg1].field_1280:
        if not -sub_dfa2eec0[arg1][arg2].field_0:
            if sub_dfa2eec0[arg1][arg2].field_512 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < sub_dfa2eec0[arg1][arg2].field_512:
                revert with 0, 17
            return -sub_dfa2eec0[arg1][arg2].field_512
        if sub_dfa2eec0[arg1][arg2].field_0 and poolInfo[arg1].field_1024 > -1 / sub_dfa2eec0[arg1][arg2].field_0:
            revert with 0, 17
        if not sub_dfa2eec0[arg1][arg2].field_0:
            revert with 0, 18
        if sub_dfa2eec0[arg1][arg2].field_0 * poolInfo[arg1].field_1024 / sub_dfa2eec0[arg1][arg2].field_0 != poolInfo[arg1].field_1024:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if sub_dfa2eec0[arg1][arg2].field_512 > sub_dfa2eec0[arg1][arg2].field_0 * poolInfo[arg1].field_1024 / 10^18:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if sub_dfa2eec0[arg1][arg2].field_0 * poolInfo[arg1].field_1024 / 10^18 < sub_dfa2eec0[arg1][arg2].field_512:
            revert with 0, 17
        return ((sub_dfa2eec0[arg1][arg2].field_0 * poolInfo[arg1].field_1024 / 10^18) - sub_dfa2eec0[arg1][arg2].field_512)
    if block.number < poolInfo[arg1].field_1280:
        if not -sub_dfa2eec0[arg1][arg2].field_0:
            if sub_dfa2eec0[arg1][arg2].field_512 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < sub_dfa2eec0[arg1][arg2].field_512:
                revert with 0, 17
            return -sub_dfa2eec0[arg1][arg2].field_512
        if sub_dfa2eec0[arg1][arg2].field_0 and poolInfo[arg1].field_1024 > -1 / sub_dfa2eec0[arg1][arg2].field_0:
            revert with 0, 17
        if not sub_dfa2eec0[arg1][arg2].field_0:
            revert with 0, 18
        if sub_dfa2eec0[arg1][arg2].field_0 * poolInfo[arg1].field_1024 / sub_dfa2eec0[arg1][arg2].field_0 != poolInfo[arg1].field_1024:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if sub_dfa2eec0[arg1][arg2].field_512 > sub_dfa2eec0[arg1][arg2].field_0 * poolInfo[arg1].field_1024 / 10^18:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if sub_dfa2eec0[arg1][arg2].field_0 * poolInfo[arg1].field_1024 / 10^18 < sub_dfa2eec0[arg1][arg2].field_512:
            revert with 0, 17
        return ((sub_dfa2eec0[arg1][arg2].field_0 * poolInfo[arg1].field_1024 / 10^18) - sub_dfa2eec0[arg1][arg2].field_512)
    if poolInfo[arg1].field_1280 >= poolInfo[arg1].field_1536:
        if not -sub_dfa2eec0[arg1][arg2].field_0:
            if sub_dfa2eec0[arg1][arg2].field_512 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < sub_dfa2eec0[arg1][arg2].field_512:
                revert with 0, 17
            return -sub_dfa2eec0[arg1][arg2].field_512
        if sub_dfa2eec0[arg1][arg2].field_0 and poolInfo[arg1].field_1024 > -1 / sub_dfa2eec0[arg1][arg2].field_0:
            revert with 0, 17
        if not sub_dfa2eec0[arg1][arg2].field_0:
            revert with 0, 18
        if sub_dfa2eec0[arg1][arg2].field_0 * poolInfo[arg1].field_1024 / sub_dfa2eec0[arg1][arg2].field_0 != poolInfo[arg1].field_1024:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if sub_dfa2eec0[arg1][arg2].field_512 > sub_dfa2eec0[arg1][arg2].field_0 * poolInfo[arg1].field_1024 / 10^18:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if sub_dfa2eec0[arg1][arg2].field_0 * poolInfo[arg1].field_1024 / 10^18 < sub_dfa2eec0[arg1][arg2].field_512:
            revert with 0, 17
        return ((sub_dfa2eec0[arg1][arg2].field_0 * poolInfo[arg1].field_1024 / 10^18) - sub_dfa2eec0[arg1][arg2].field_512)
    if not poolInfo[arg1].field_256:
        if not -sub_dfa2eec0[arg1][arg2].field_0:
            if sub_dfa2eec0[arg1][arg2].field_512 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < sub_dfa2eec0[arg1][arg2].field_512:
                revert with 0, 17
            return -sub_dfa2eec0[arg1][arg2].field_512
        if sub_dfa2eec0[arg1][arg2].field_0 and poolInfo[arg1].field_1024 > -1 / sub_dfa2eec0[arg1][arg2].field_0:
            revert with 0, 17
        if not sub_dfa2eec0[arg1][arg2].field_0:
            revert with 0, 18
        if sub_dfa2eec0[arg1][arg2].field_0 * poolInfo[arg1].field_1024 / sub_dfa2eec0[arg1][arg2].field_0 != poolInfo[arg1].field_1024:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if sub_dfa2eec0[arg1][arg2].field_512 > sub_dfa2eec0[arg1][arg2].field_0 * poolInfo[arg1].field_1024 / 10^18:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if sub_dfa2eec0[arg1][arg2].field_0 * poolInfo[arg1].field_1024 / 10^18 < sub_dfa2eec0[arg1][arg2].field_512:
            revert with 0, 17
        return ((sub_dfa2eec0[arg1][arg2].field_0 * poolInfo[arg1].field_1024 / 10^18) - sub_dfa2eec0[arg1][arg2].field_512)
    if block.number <= poolInfo[arg1].field_1536:
        if block.number <= poolInfo[arg1].field_1280:
            if not poolInfo[arg1].field_256:
                revert with 0, 'SafeMath: division by zero', 0
            if poolInfo[arg1].field_1024 > !(0 / poolInfo[arg1].field_256):
                revert with 0, 17
            if poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            if not -sub_dfa2eec0[arg1][arg2].field_0:
                if sub_dfa2eec0[arg1][arg2].field_512 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < sub_dfa2eec0[arg1][arg2].field_512:
                    revert with 0, 17
                return -sub_dfa2eec0[arg1][arg2].field_512
            if sub_dfa2eec0[arg1][arg2].field_0 and poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) > -1 / sub_dfa2eec0[arg1][arg2].field_0:
                revert with 0, 17
            if not sub_dfa2eec0[arg1][arg2].field_0:
                revert with 0, 18
            if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / sub_dfa2eec0[arg1][arg2].field_0 != poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256):
                revert with 0, 'SafeMath: multiplication overflow'
            if sub_dfa2eec0[arg1][arg2].field_512 > (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18 < sub_dfa2eec0[arg1][arg2].field_512:
                revert with 0, 17
            return (((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18) - sub_dfa2eec0[arg1][arg2].field_512)
        if poolInfo[arg1].field_1280 > block.number:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if block.number < poolInfo[arg1].field_1280:
            revert with 0, 17
        if not -block.number + poolInfo[arg1].field_1280:
            if not poolInfo[arg1].field_256:
                revert with 0, 'SafeMath: division by zero', 0
            if poolInfo[arg1].field_1024 > !(0 / poolInfo[arg1].field_256):
                revert with 0, 17
            if poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            if not -sub_dfa2eec0[arg1][arg2].field_0:
                if sub_dfa2eec0[arg1][arg2].field_512 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < sub_dfa2eec0[arg1][arg2].field_512:
                    revert with 0, 17
                return -sub_dfa2eec0[arg1][arg2].field_512
            if sub_dfa2eec0[arg1][arg2].field_0 and poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) > -1 / sub_dfa2eec0[arg1][arg2].field_0:
                revert with 0, 17
            if not sub_dfa2eec0[arg1][arg2].field_0:
                revert with 0, 18
            if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / sub_dfa2eec0[arg1][arg2].field_0 != poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256):
                revert with 0, 'SafeMath: multiplication overflow'
            if sub_dfa2eec0[arg1][arg2].field_512 > (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18 < sub_dfa2eec0[arg1][arg2].field_512:
                revert with 0, 17
            return (((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18) - sub_dfa2eec0[arg1][arg2].field_512)
        if block.number - poolInfo[arg1].field_1280 and poolInfo[arg1].field_512 > -1 / block.number - poolInfo[arg1].field_1280:
            revert with 0, 17
        if not block.number - poolInfo[arg1].field_1280:
            revert with 0, 18
        if (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / block.number - poolInfo[arg1].field_1280 != poolInfo[arg1].field_512:
            revert with 0, 'SafeMath: multiplication overflow'
        if not -(block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000:
            if not poolInfo[arg1].field_256:
                revert with 0, 'SafeMath: division by zero', 0
            if poolInfo[arg1].field_1024 > !(0 / poolInfo[arg1].field_256):
                revert with 0, 17
            if poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            if not -sub_dfa2eec0[arg1][arg2].field_0:
                if sub_dfa2eec0[arg1][arg2].field_512 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < sub_dfa2eec0[arg1][arg2].field_512:
                    revert with 0, 17
                return -sub_dfa2eec0[arg1][arg2].field_512
            if sub_dfa2eec0[arg1][arg2].field_0 and poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) > -1 / sub_dfa2eec0[arg1][arg2].field_0:
                revert with 0, 17
            if not sub_dfa2eec0[arg1][arg2].field_0:
                revert with 0, 18
            if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / sub_dfa2eec0[arg1][arg2].field_0 != poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256):
                revert with 0, 'SafeMath: multiplication overflow'
            if sub_dfa2eec0[arg1][arg2].field_512 > (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18 < sub_dfa2eec0[arg1][arg2].field_512:
                revert with 0, 17
            return (((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18) - sub_dfa2eec0[arg1][arg2].field_512)
        if (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 and 10^18 > -1 / (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000:
            revert with 0, 17
        if not (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000:
            revert with 0, 18
        if 10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        if not poolInfo[arg1].field_256:
            revert with 0, 'SafeMath: division by zero', 0
        if poolInfo[arg1].field_1024 > !(10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256):
            revert with 0, 17
        if poolInfo[arg1].field_1024 + (10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
            revert with 0, 'SafeMath: addition overflow'
        if not -sub_dfa2eec0[arg1][arg2].field_0:
            if sub_dfa2eec0[arg1][arg2].field_512 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < sub_dfa2eec0[arg1][arg2].field_512:
                revert with 0, 17
            return -sub_dfa2eec0[arg1][arg2].field_512
        if sub_dfa2eec0[arg1][arg2].field_0 and poolInfo[arg1].field_1024 + (10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256) > -1 / sub_dfa2eec0[arg1][arg2].field_0:
            revert with 0, 17
        if not sub_dfa2eec0[arg1][arg2].field_0:
            revert with 0, 18
        if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / sub_dfa2eec0[arg1][arg2].field_0 != poolInfo[arg1].field_1024 + (10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256):
            revert with 0, 'SafeMath: multiplication overflow'
        if sub_dfa2eec0[arg1][arg2].field_512 > (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18 < sub_dfa2eec0[arg1][arg2].field_512:
            revert with 0, 17
        return (((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18) - sub_dfa2eec0[arg1][arg2].field_512)
    if poolInfo[arg1].field_1536 <= poolInfo[arg1].field_1280:
        if not poolInfo[arg1].field_256:
            revert with 0, 'SafeMath: division by zero', 0
        if poolInfo[arg1].field_1024 > !(0 / poolInfo[arg1].field_256):
            revert with 0, 17
        if poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
            revert with 0, 'SafeMath: addition overflow'
        if not -sub_dfa2eec0[arg1][arg2].field_0:
            if sub_dfa2eec0[arg1][arg2].field_512 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < sub_dfa2eec0[arg1][arg2].field_512:
                revert with 0, 17
            return -sub_dfa2eec0[arg1][arg2].field_512
        if sub_dfa2eec0[arg1][arg2].field_0 and poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) > -1 / sub_dfa2eec0[arg1][arg2].field_0:
            revert with 0, 17
        if not sub_dfa2eec0[arg1][arg2].field_0:
            revert with 0, 18
        if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / sub_dfa2eec0[arg1][arg2].field_0 != poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256):
            revert with 0, 'SafeMath: multiplication overflow'
        if sub_dfa2eec0[arg1][arg2].field_512 > (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18 < sub_dfa2eec0[arg1][arg2].field_512:
            revert with 0, 17
        return (((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18) - sub_dfa2eec0[arg1][arg2].field_512)
    if poolInfo[arg1].field_1280 > poolInfo[arg1].field_1536:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if poolInfo[arg1].field_1536 < poolInfo[arg1].field_1280:
        revert with 0, 17
    if not -poolInfo[arg1].field_1536 + poolInfo[arg1].field_1280:
        if not poolInfo[arg1].field_256:
            revert with 0, 'SafeMath: division by zero', 0
        if poolInfo[arg1].field_1024 > !(0 / poolInfo[arg1].field_256):
            revert with 0, 17
        if poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
            revert with 0, 'SafeMath: addition overflow'
        if not -sub_dfa2eec0[arg1][arg2].field_0:
            if sub_dfa2eec0[arg1][arg2].field_512 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < sub_dfa2eec0[arg1][arg2].field_512:
                revert with 0, 17
            return -sub_dfa2eec0[arg1][arg2].field_512
        if sub_dfa2eec0[arg1][arg2].field_0 and poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) > -1 / sub_dfa2eec0[arg1][arg2].field_0:
            revert with 0, 17
        if not sub_dfa2eec0[arg1][arg2].field_0:
            revert with 0, 18
        if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / sub_dfa2eec0[arg1][arg2].field_0 != poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256):
            revert with 0, 'SafeMath: multiplication overflow'
        if sub_dfa2eec0[arg1][arg2].field_512 > (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18 < sub_dfa2eec0[arg1][arg2].field_512:
            revert with 0, 17
        return (((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18) - sub_dfa2eec0[arg1][arg2].field_512)
    if poolInfo[arg1].field_1536 - poolInfo[arg1].field_1280 and poolInfo[arg1].field_512 > -1 / poolInfo[arg1].field_1536 - poolInfo[arg1].field_1280:
        revert with 0, 17
    if not poolInfo[arg1].field_1536 - poolInfo[arg1].field_1280:
        revert with 0, 18
    if (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / poolInfo[arg1].field_1536 - poolInfo[arg1].field_1280 != poolInfo[arg1].field_512:
        revert with 0, 'SafeMath: multiplication overflow'
    if not -(poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000:
        if not poolInfo[arg1].field_256:
            revert with 0, 'SafeMath: division by zero', 0
        if poolInfo[arg1].field_1024 > !(0 / poolInfo[arg1].field_256):
            revert with 0, 17
        if poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
            revert with 0, 'SafeMath: addition overflow'
        if not -sub_dfa2eec0[arg1][arg2].field_0:
            if sub_dfa2eec0[arg1][arg2].field_512 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < sub_dfa2eec0[arg1][arg2].field_512:
                revert with 0, 17
            return -sub_dfa2eec0[arg1][arg2].field_512
        if sub_dfa2eec0[arg1][arg2].field_0 and poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) > -1 / sub_dfa2eec0[arg1][arg2].field_0:
            revert with 0, 17
        if not sub_dfa2eec0[arg1][arg2].field_0:
            revert with 0, 18
        if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / sub_dfa2eec0[arg1][arg2].field_0 != poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256):
            revert with 0, 'SafeMath: multiplication overflow'
        if sub_dfa2eec0[arg1][arg2].field_512 > (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18 < sub_dfa2eec0[arg1][arg2].field_512:
            revert with 0, 17
        return (((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18) - sub_dfa2eec0[arg1][arg2].field_512)
    if (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 and 10^18 > -1 / (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000:
        revert with 0, 17
    if not (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000:
        revert with 0, 18
    if 10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 != 10^18:
        revert with 0, 'SafeMath: multiplication overflow'
    if not poolInfo[arg1].field_256:
        revert with 0, 'SafeMath: division by zero', 0
    if poolInfo[arg1].field_1024 > !(10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256):
        revert with 0, 17
    if poolInfo[arg1].field_1024 + (10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
        revert with 0, 'SafeMath: addition overflow'
    if not -sub_dfa2eec0[arg1][arg2].field_0:
        if sub_dfa2eec0[arg1][arg2].field_512 > 0:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if 0 < sub_dfa2eec0[arg1][arg2].field_512:
            revert with 0, 17
        return -sub_dfa2eec0[arg1][arg2].field_512
    if sub_dfa2eec0[arg1][arg2].field_0 and poolInfo[arg1].field_1024 + (10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256) > -1 / sub_dfa2eec0[arg1][arg2].field_0:
        revert with 0, 17
    if not sub_dfa2eec0[arg1][arg2].field_0:
        revert with 0, 18
    if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / sub_dfa2eec0[arg1][arg2].field_0 != poolInfo[arg1].field_1024 + (10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256):
        revert with 0, 'SafeMath: multiplication overflow'
    if sub_dfa2eec0[arg1][arg2].field_512 > (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18 < sub_dfa2eec0[arg1][arg2].field_512:
        revert with 0, 17
    return (((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18) - sub_dfa2eec0[arg1][arg2].field_512)
}

function sub_12931122(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if arg1 >= poolInfo.length:
        revert with 0, 'Pool does not exist'
    mem[0] = address(arg2)
    mem[32] = sha3(arg1, 1)
    idx = 0
    s = 0
    while idx < sub_8254a57e[arg1][address(arg2)].field_256:
        if idx >= sub_8254a57e[arg1][address(arg2)].field_256:
            revert with 0, 50
        if arg1 >= poolInfo.length:
            revert with 0, 'Pool does not exist'
        mem[0] = sub_8254a57e[arg1][address(arg2)][idx + 1].field_0
        mem[32] = sha3(arg1, 5)
        if poolInfo[arg1].field_768 >= poolInfo[arg1].field_1280:
            if block.number <= poolInfo[arg1].field_768:
                if not -sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                    _591 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_591] = 26
                    mem[_591 + 32] = 'SafeMath: division by zero'
                    _626 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_626] = 30
                    mem[_626 + 32] = 'SafeMath: subtraction overflow'
                    if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= 0:
                        if 0 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                            revert with 0, 17
                        if s > !-sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                            revert with 0, 17
                        if not idx + 1:
                            revert with 0, 17
                        mem[0] = address(arg2)
                        mem[32] = sha3(arg1, 1)
                        idx = idx + 1
                        s = s - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                        continue 
                    _645 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _645 + 68] = mem[idx + _626 + 32]
                        mem[0] = address(arg2)
                        mem[32] = sha3(arg1, 1)
                        idx = idx + 32
                        continue 
                    mem[_645 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _645 + -mem[64] + 100
                if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 and poolInfo[arg1].field_1024 > -1 / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                    revert with 0, 17
                if not sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                    revert with 0, 18
                if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 * poolInfo[arg1].field_1024 / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 != poolInfo[arg1].field_1024:
                    revert with 0, 'SafeMath: multiplication overflow'
                _613 = mem[64]
                mem[64] = mem[64] + 64
                mem[_613] = 26
                mem[_613 + 32] = 'SafeMath: division by zero'
                _671 = mem[64]
                mem[64] = mem[64] + 64
                mem[_671] = 30
                mem[_671 + 32] = 'SafeMath: subtraction overflow'
                if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 * poolInfo[arg1].field_1024 / 10^18:
                    if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 * poolInfo[arg1].field_1024 / 10^18 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                        revert with 0, 17
                    if s > !((sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 * poolInfo[arg1].field_1024 / 10^18) - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512):
                        revert with 0, 17
                    if not idx + 1:
                        revert with 0, 17
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 1
                    s = s + (sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 * poolInfo[arg1].field_1024 / 10^18) - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                    continue 
                _681 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _681 + 68] = mem[idx + _671 + 32]
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 32
                    continue 
                mem[_681 + 98] = 0
                revert with memory
                  from mem[64]
                   len _681 + -mem[64] + 100
            if block.number < poolInfo[arg1].field_1280:
                if not -sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                    _592 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_592] = 26
                    mem[_592 + 32] = 'SafeMath: division by zero'
                    _636 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_636] = 30
                    mem[_636 + 32] = 'SafeMath: subtraction overflow'
                    if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= 0:
                        if 0 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                            revert with 0, 17
                        if s > !-sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                            revert with 0, 17
                        if not idx + 1:
                            revert with 0, 17
                        mem[0] = address(arg2)
                        mem[32] = sha3(arg1, 1)
                        idx = idx + 1
                        s = s - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                        continue 
                    _650 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _650 + 68] = mem[idx + _636 + 32]
                        mem[0] = address(arg2)
                        mem[32] = sha3(arg1, 1)
                        idx = idx + 32
                        continue 
                    mem[_650 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _650 + -mem[64] + 100
                if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 and poolInfo[arg1].field_1024 > -1 / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                    revert with 0, 17
                if not sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                    revert with 0, 18
                if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 * poolInfo[arg1].field_1024 / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 != poolInfo[arg1].field_1024:
                    revert with 0, 'SafeMath: multiplication overflow'
                _620 = mem[64]
                mem[64] = mem[64] + 64
                mem[_620] = 26
                mem[_620 + 32] = 'SafeMath: division by zero'
                _676 = mem[64]
                mem[64] = mem[64] + 64
                mem[_676] = 30
                mem[_676 + 32] = 'SafeMath: subtraction overflow'
                if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 * poolInfo[arg1].field_1024 / 10^18:
                    if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 * poolInfo[arg1].field_1024 / 10^18 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                        revert with 0, 17
                    if s > !((sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 * poolInfo[arg1].field_1024 / 10^18) - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512):
                        revert with 0, 17
                    if not idx + 1:
                        revert with 0, 17
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 1
                    s = s + (sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 * poolInfo[arg1].field_1024 / 10^18) - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                    continue 
                _689 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _689 + 68] = mem[idx + _676 + 32]
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 32
                    continue 
                mem[_689 + 98] = 0
                revert with memory
                  from mem[64]
                   len _689 + -mem[64] + 100
            if poolInfo[arg1].field_768 >= poolInfo[arg1].field_1536:
                if not -sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                    _594 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_594] = 26
                    mem[_594 + 32] = 'SafeMath: division by zero'
                    _646 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_646] = 30
                    mem[_646 + 32] = 'SafeMath: subtraction overflow'
                    if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= 0:
                        if 0 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                            revert with 0, 17
                        if s > !-sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                            revert with 0, 17
                        if not idx + 1:
                            revert with 0, 17
                        mem[0] = address(arg2)
                        mem[32] = sha3(arg1, 1)
                        idx = idx + 1
                        s = s - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                        continue 
                    _659 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _659 + 68] = mem[idx + _646 + 32]
                        mem[0] = address(arg2)
                        mem[32] = sha3(arg1, 1)
                        idx = idx + 32
                        continue 
                    mem[_659 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _659 + -mem[64] + 100
                if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 and poolInfo[arg1].field_1024 > -1 / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                    revert with 0, 17
                if not sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                    revert with 0, 18
                if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 * poolInfo[arg1].field_1024 / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 != poolInfo[arg1].field_1024:
                    revert with 0, 'SafeMath: multiplication overflow'
                _627 = mem[64]
                mem[64] = mem[64] + 64
                mem[_627] = 26
                mem[_627 + 32] = 'SafeMath: division by zero'
                _682 = mem[64]
                mem[64] = mem[64] + 64
                mem[_682] = 30
                mem[_682 + 32] = 'SafeMath: subtraction overflow'
                if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 * poolInfo[arg1].field_1024 / 10^18:
                    if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 * poolInfo[arg1].field_1024 / 10^18 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                        revert with 0, 17
                    if s > !((sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 * poolInfo[arg1].field_1024 / 10^18) - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512):
                        revert with 0, 17
                    if not idx + 1:
                        revert with 0, 17
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 1
                    s = s + (sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 * poolInfo[arg1].field_1024 / 10^18) - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                    continue 
                _700 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _700 + 68] = mem[idx + _682 + 32]
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 32
                    continue 
                mem[_700 + 98] = 0
                revert with memory
                  from mem[64]
                   len _700 + -mem[64] + 100
            if not poolInfo[arg1].field_256:
                if not -sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                    _598 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_598] = 26
                    mem[_598 + 32] = 'SafeMath: division by zero'
                    _651 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_651] = 30
                    mem[_651 + 32] = 'SafeMath: subtraction overflow'
                    if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= 0:
                        if 0 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                            revert with 0, 17
                        if s > !-sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                            revert with 0, 17
                        if not idx + 1:
                            revert with 0, 17
                        mem[0] = address(arg2)
                        mem[32] = sha3(arg1, 1)
                        idx = idx + 1
                        s = s - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                        continue 
                    _668 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _668 + 68] = mem[idx + _651 + 32]
                        mem[0] = address(arg2)
                        mem[32] = sha3(arg1, 1)
                        idx = idx + 32
                        continue 
                    mem[_668 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _668 + -mem[64] + 100
                if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 and poolInfo[arg1].field_1024 > -1 / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                    revert with 0, 17
                if not sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                    revert with 0, 18
                if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 * poolInfo[arg1].field_1024 / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 != poolInfo[arg1].field_1024:
                    revert with 0, 'SafeMath: multiplication overflow'
                _637 = mem[64]
                mem[64] = mem[64] + 64
                mem[_637] = 26
                mem[_637 + 32] = 'SafeMath: division by zero'
                _690 = mem[64]
                mem[64] = mem[64] + 64
                mem[_690] = 30
                mem[_690 + 32] = 'SafeMath: subtraction overflow'
                if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 * poolInfo[arg1].field_1024 / 10^18:
                    if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 * poolInfo[arg1].field_1024 / 10^18 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                        revert with 0, 17
                    if s > !((sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 * poolInfo[arg1].field_1024 / 10^18) - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512):
                        revert with 0, 17
                    if not idx + 1:
                        revert with 0, 17
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 1
                    s = s + (sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 * poolInfo[arg1].field_1024 / 10^18) - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                    continue 
                _712 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _712 + 68] = mem[idx + _690 + 32]
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 32
                    continue 
                mem[_712 + 98] = 0
                revert with memory
                  from mem[64]
                   len _712 + -mem[64] + 100
            if block.number <= poolInfo[arg1].field_1536:
                if block.number <= poolInfo[arg1].field_768:
                    _629 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_629] = 26
                    mem[_629 + 32] = 'SafeMath: division by zero'
                    _721 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_721] = 26
                    mem[_721 + 32] = 'SafeMath: division by zero'
                    if not poolInfo[arg1].field_256:
                        _737 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _737 + 68] = mem[idx + _721 + 32]
                            mem[0] = address(arg2)
                            mem[32] = sha3(arg1, 1)
                            idx = idx + 32
                            continue 
                        mem[_737 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _737 + -mem[64] + 100
                    if poolInfo[arg1].field_1024 > !(0 / poolInfo[arg1].field_256):
                        revert with 0, 17
                    if poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    if not -sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                        _825 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_825] = 26
                        mem[_825 + 32] = 'SafeMath: division by zero'
                        _887 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_887] = 30
                        mem[_887 + 32] = 'SafeMath: subtraction overflow'
                        if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= 0:
                            if 0 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                                revert with 0, 17
                            if s > !-sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                                revert with 0, 17
                            if not idx + 1:
                                revert with 0, 17
                            mem[0] = address(arg2)
                            mem[32] = sha3(arg1, 1)
                            idx = idx + 1
                            s = s - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                            continue 
                        _903 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _903 + 68] = mem[idx + _887 + 32]
                            mem[0] = address(arg2)
                            mem[32] = sha3(arg1, 1)
                            idx = idx + 32
                            continue 
                        mem[_903 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _903 + -mem[64] + 100
                    if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 and poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) > -1 / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                        revert with 0, 17
                    if not sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                        revert with 0, 18
                    if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 != poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256):
                        revert with 0, 'SafeMath: multiplication overflow'
                    _875 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_875] = 26
                    mem[_875 + 32] = 'SafeMath: division by zero'
                    _925 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_925] = 30
                    mem[_925 + 32] = 'SafeMath: subtraction overflow'
                    if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18:
                        if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                            revert with 0, 17
                        if s > !(((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18) - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512):
                            revert with 0, 17
                        if not idx + 1:
                            revert with 0, 17
                        mem[0] = address(arg2)
                        mem[32] = sha3(arg1, 1)
                        idx = idx + 1
                        s = s + ((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18) - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                        continue 
                    _949 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _949 + 68] = mem[idx + _925 + 32]
                        mem[0] = address(arg2)
                        mem[32] = sha3(arg1, 1)
                        idx = idx + 32
                        continue 
                    mem[_949 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _949 + -mem[64] + 100
                _595 = mem[64]
                mem[64] = mem[64] + 64
                mem[_595] = 30
                mem[_595 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[arg1].field_768 > block.number:
                    _603 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _603 + 68] = mem[idx + _595 + 32]
                        mem[0] = address(arg2)
                        mem[32] = sha3(arg1, 1)
                        idx = idx + 32
                        continue 
                    mem[_603 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _603 + -mem[64] + 100
                if block.number < poolInfo[arg1].field_768:
                    revert with 0, 17
                if not -block.number + poolInfo[arg1].field_768:
                    _692 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_692] = 26
                    mem[_692 + 32] = 'SafeMath: division by zero'
                    _781 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_781] = 26
                    mem[_781 + 32] = 'SafeMath: division by zero'
                    if not poolInfo[arg1].field_256:
                        _791 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _791 + 68] = mem[idx + _781 + 32]
                            mem[0] = address(arg2)
                            mem[32] = sha3(arg1, 1)
                            idx = idx + 32
                            continue 
                        mem[_791 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _791 + -mem[64] + 100
                    if poolInfo[arg1].field_1024 > !(0 / poolInfo[arg1].field_256):
                        revert with 0, 17
                    if poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    if not -sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                        _894 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_894] = 26
                        mem[_894 + 32] = 'SafeMath: division by zero'
                        _960 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_960] = 30
                        mem[_960 + 32] = 'SafeMath: subtraction overflow'
                        if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= 0:
                            if 0 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                                revert with 0, 17
                            if s > !-sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                                revert with 0, 17
                            if not idx + 1:
                                revert with 0, 17
                            mem[0] = address(arg2)
                            mem[32] = sha3(arg1, 1)
                            idx = idx + 1
                            s = s - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                            continue 
                        _976 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _976 + 68] = mem[idx + _960 + 32]
                            mem[0] = address(arg2)
                            mem[32] = sha3(arg1, 1)
                            idx = idx + 32
                            continue 
                        mem[_976 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _976 + -mem[64] + 100
                    if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 and poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) > -1 / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                        revert with 0, 17
                    if not sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                        revert with 0, 18
                    if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 != poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256):
                        revert with 0, 'SafeMath: multiplication overflow'
                    _937 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_937] = 26
                    mem[_937 + 32] = 'SafeMath: division by zero'
                    _1006 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1006] = 30
                    mem[_1006 + 32] = 'SafeMath: subtraction overflow'
                    if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18:
                        if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                            revert with 0, 17
                        if s > !(((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18) - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512):
                            revert with 0, 17
                        if not idx + 1:
                            revert with 0, 17
                        mem[0] = address(arg2)
                        mem[32] = sha3(arg1, 1)
                        idx = idx + 1
                        s = s + ((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18) - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                        continue 
                    _1025 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1025 + 68] = mem[idx + _1006 + 32]
                        mem[0] = address(arg2)
                        mem[32] = sha3(arg1, 1)
                        idx = idx + 32
                        continue 
                    mem[_1025 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _1025 + -mem[64] + 100
                if block.number - poolInfo[arg1].field_768 and poolInfo[arg1].field_512 > -1 / block.number - poolInfo[arg1].field_768:
                    revert with 0, 17
                if not block.number - poolInfo[arg1].field_768:
                    revert with 0, 18
                if (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / block.number - poolInfo[arg1].field_768 != poolInfo[arg1].field_512:
                    revert with 0, 'SafeMath: multiplication overflow'
                _748 = mem[64]
                mem[64] = mem[64] + 64
                mem[_748] = 26
                mem[_748 + 32] = 'SafeMath: division by zero'
                if not -(block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000:
                    _807 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_807] = 26
                    mem[_807 + 32] = 'SafeMath: division by zero'
                    if not poolInfo[arg1].field_256:
                        _815 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _815 + 68] = mem[idx + _807 + 32]
                            mem[0] = address(arg2)
                            mem[32] = sha3(arg1, 1)
                            idx = idx + 32
                            continue 
                        mem[_815 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _815 + -mem[64] + 100
                    if poolInfo[arg1].field_1024 > !(0 / poolInfo[arg1].field_256):
                        revert with 0, 17
                    if poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    if not -sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                        _936 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_936] = 26
                        mem[_936 + 32] = 'SafeMath: division by zero'
                        _1005 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1005] = 30
                        mem[_1005 + 32] = 'SafeMath: subtraction overflow'
                        if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= 0:
                            if 0 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                                revert with 0, 17
                            if s > !-sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                                revert with 0, 17
                            if not idx + 1:
                                revert with 0, 17
                            mem[0] = address(arg2)
                            mem[32] = sha3(arg1, 1)
                            idx = idx + 1
                            s = s - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                            continue 
                        _1024 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1024 + 68] = mem[idx + _1005 + 32]
                            mem[0] = address(arg2)
                            mem[32] = sha3(arg1, 1)
                            idx = idx + 32
                            continue 
                        mem[_1024 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1024 + -mem[64] + 100
                    if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 and poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) > -1 / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                        revert with 0, 17
                    if not sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                        revert with 0, 18
                    if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 != poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256):
                        revert with 0, 'SafeMath: multiplication overflow'
                    _990 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_990] = 26
                    mem[_990 + 32] = 'SafeMath: division by zero'
                    _1060 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1060] = 30
                    mem[_1060 + 32] = 'SafeMath: subtraction overflow'
                    if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18:
                        if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                            revert with 0, 17
                        if s > !(((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18) - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512):
                            revert with 0, 17
                        if not idx + 1:
                            revert with 0, 17
                        mem[0] = address(arg2)
                        mem[32] = sha3(arg1, 1)
                        idx = idx + 1
                        s = s + ((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18) - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                        continue 
                    _1076 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1076 + 68] = mem[idx + _1060 + 32]
                        mem[0] = address(arg2)
                        mem[32] = sha3(arg1, 1)
                        idx = idx + 32
                        continue 
                    mem[_1076 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _1076 + -mem[64] + 100
                if (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 and 10^18 > -1 / (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000:
                    revert with 0, 17
                if not (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000:
                    revert with 0, 18
                if 10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                _841 = mem[64]
                mem[64] = mem[64] + 64
                mem[_841] = 26
                mem[_841 + 32] = 'SafeMath: division by zero'
                if not poolInfo[arg1].field_256:
                    _858 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _858 + 68] = mem[idx + _841 + 32]
                        mem[0] = address(arg2)
                        mem[32] = sha3(arg1, 1)
                        idx = idx + 32
                        continue 
                    mem[_858 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _858 + -mem[64] + 100
                if poolInfo[arg1].field_1024 > !(10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256):
                    revert with 0, 17
                if poolInfo[arg1].field_1024 + (10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                if not -sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                    _989 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_989] = 26
                    mem[_989 + 32] = 'SafeMath: division by zero'
                    _1059 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1059] = 30
                    mem[_1059 + 32] = 'SafeMath: subtraction overflow'
                    if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= 0:
                        if 0 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                            revert with 0, 17
                        if s > !-sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                            revert with 0, 17
                        if not idx + 1:
                            revert with 0, 17
                        mem[0] = address(arg2)
                        mem[32] = sha3(arg1, 1)
                        idx = idx + 1
                        s = s - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                        continue 
                    _1075 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1075 + 68] = mem[idx + _1059 + 32]
                        mem[0] = address(arg2)
                        mem[32] = sha3(arg1, 1)
                        idx = idx + 32
                        continue 
                    mem[_1075 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _1075 + -mem[64] + 100
                if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 and poolInfo[arg1].field_1024 + (10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256) > -1 / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                    revert with 0, 17
                if not sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                    revert with 0, 18
                if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 != poolInfo[arg1].field_1024 + (10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256):
                    revert with 0, 'SafeMath: multiplication overflow'
                _1045 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1045] = 26
                mem[_1045 + 32] = 'SafeMath: division by zero'
                _1107 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1107] = 30
                mem[_1107 + 32] = 'SafeMath: subtraction overflow'
                if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18:
                    if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                        revert with 0, 17
                    if s > !(((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18) - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512):
                        revert with 0, 17
                    if not idx + 1:
                        revert with 0, 17
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 1
                    s = s + ((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18) - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                    continue 
                _1119 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _1119 + 68] = mem[idx + _1107 + 32]
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 32
                    continue 
                mem[_1119 + 98] = 0
                revert with memory
                  from mem[64]
                   len _1119 + -mem[64] + 100
            if poolInfo[arg1].field_1536 <= poolInfo[arg1].field_768:
                _631 = mem[64]
                mem[64] = mem[64] + 64
                mem[_631] = 26
                mem[_631 + 32] = 'SafeMath: division by zero'
                _722 = mem[64]
                mem[64] = mem[64] + 64
                mem[_722] = 26
                mem[_722 + 32] = 'SafeMath: division by zero'
                if not poolInfo[arg1].field_256:
                    _739 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _739 + 68] = mem[idx + _722 + 32]
                        mem[0] = address(arg2)
                        mem[32] = sha3(arg1, 1)
                        idx = idx + 32
                        continue 
                    mem[_739 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _739 + -mem[64] + 100
                if poolInfo[arg1].field_1024 > !(0 / poolInfo[arg1].field_256):
                    revert with 0, 17
                if poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                if not -sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                    _827 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_827] = 26
                    mem[_827 + 32] = 'SafeMath: division by zero'
                    _890 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_890] = 30
                    mem[_890 + 32] = 'SafeMath: subtraction overflow'
                    if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= 0:
                        if 0 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                            revert with 0, 17
                        if s > !-sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                            revert with 0, 17
                        if not idx + 1:
                            revert with 0, 17
                        mem[0] = address(arg2)
                        mem[32] = sha3(arg1, 1)
                        idx = idx + 1
                        s = s - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                        continue 
                    _904 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _904 + 68] = mem[idx + _890 + 32]
                        mem[0] = address(arg2)
                        mem[32] = sha3(arg1, 1)
                        idx = idx + 32
                        continue 
                    mem[_904 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _904 + -mem[64] + 100
                if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 and poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) > -1 / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                    revert with 0, 17
                if not sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                    revert with 0, 18
                if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 != poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256):
                    revert with 0, 'SafeMath: multiplication overflow'
                _876 = mem[64]
                mem[64] = mem[64] + 64
                mem[_876] = 26
                mem[_876 + 32] = 'SafeMath: division by zero'
                _929 = mem[64]
                mem[64] = mem[64] + 64
                mem[_929] = 30
                mem[_929 + 32] = 'SafeMath: subtraction overflow'
                if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18:
                    if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                        revert with 0, 17
                    if s > !(((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18) - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512):
                        revert with 0, 17
                    if not idx + 1:
                        revert with 0, 17
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 1
                    s = s + ((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18) - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                    continue 
                _950 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _950 + 68] = mem[idx + _929 + 32]
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 32
                    continue 
                mem[_950 + 98] = 0
                revert with memory
                  from mem[64]
                   len _950 + -mem[64] + 100
            _596 = mem[64]
            mem[64] = mem[64] + 64
            mem[_596] = 30
            mem[_596 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[arg1].field_768 > poolInfo[arg1].field_1536:
                _604 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _604 + 68] = mem[idx + _596 + 32]
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 32
                    continue 
                mem[_604 + 98] = 0
                revert with memory
                  from mem[64]
                   len _604 + -mem[64] + 100
            if poolInfo[arg1].field_1536 < poolInfo[arg1].field_768:
                revert with 0, 17
            if not -poolInfo[arg1].field_1536 + poolInfo[arg1].field_768:
                _693 = mem[64]
                mem[64] = mem[64] + 64
                mem[_693] = 26
                mem[_693 + 32] = 'SafeMath: division by zero'
                _784 = mem[64]
                mem[64] = mem[64] + 64
                mem[_784] = 26
                mem[_784 + 32] = 'SafeMath: division by zero'
                if not poolInfo[arg1].field_256:
                    _792 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _792 + 68] = mem[idx + _784 + 32]
                        mem[0] = address(arg2)
                        mem[32] = sha3(arg1, 1)
                        idx = idx + 32
                        continue 
                    mem[_792 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _792 + -mem[64] + 100
                if poolInfo[arg1].field_1024 > !(0 / poolInfo[arg1].field_256):
                    revert with 0, 17
                if poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                if not -sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                    _896 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_896] = 26
                    mem[_896 + 32] = 'SafeMath: division by zero'
                    _964 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_964] = 30
                    mem[_964 + 32] = 'SafeMath: subtraction overflow'
                    if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= 0:
                        if 0 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                            revert with 0, 17
                        if s > !-sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                            revert with 0, 17
                        if not idx + 1:
                            revert with 0, 17
                        mem[0] = address(arg2)
                        mem[32] = sha3(arg1, 1)
                        idx = idx + 1
                        s = s - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                        continue 
                    _978 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _978 + 68] = mem[idx + _964 + 32]
                        mem[0] = address(arg2)
                        mem[32] = sha3(arg1, 1)
                        idx = idx + 32
                        continue 
                    mem[_978 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _978 + -mem[64] + 100
                if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 and poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) > -1 / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                    revert with 0, 17
                if not sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                    revert with 0, 18
                if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 != poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256):
                    revert with 0, 'SafeMath: multiplication overflow'
                _940 = mem[64]
                mem[64] = mem[64] + 64
                mem[_940] = 26
                mem[_940 + 32] = 'SafeMath: division by zero'
                _1011 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1011] = 30
                mem[_1011 + 32] = 'SafeMath: subtraction overflow'
                if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18:
                    if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                        revert with 0, 17
                    if s > !(((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18) - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512):
                        revert with 0, 17
                    if not idx + 1:
                        revert with 0, 17
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 1
                    s = s + ((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18) - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                    continue 
                _1028 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _1028 + 68] = mem[idx + _1011 + 32]
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 32
                    continue 
                mem[_1028 + 98] = 0
                revert with memory
                  from mem[64]
                   len _1028 + -mem[64] + 100
            if poolInfo[arg1].field_1536 - poolInfo[arg1].field_768 and poolInfo[arg1].field_512 > -1 / poolInfo[arg1].field_1536 - poolInfo[arg1].field_768:
                revert with 0, 17
            if not poolInfo[arg1].field_1536 - poolInfo[arg1].field_768:
                revert with 0, 18
            if (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / poolInfo[arg1].field_1536 - poolInfo[arg1].field_768 != poolInfo[arg1].field_512:
                revert with 0, 'SafeMath: multiplication overflow'
            _750 = mem[64]
            mem[64] = mem[64] + 64
            mem[_750] = 26
            mem[_750 + 32] = 'SafeMath: division by zero'
            if not -(poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000:
                _809 = mem[64]
                mem[64] = mem[64] + 64
                mem[_809] = 26
                mem[_809 + 32] = 'SafeMath: division by zero'
                if not poolInfo[arg1].field_256:
                    _816 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _816 + 68] = mem[idx + _809 + 32]
                        mem[0] = address(arg2)
                        mem[32] = sha3(arg1, 1)
                        idx = idx + 32
                        continue 
                    mem[_816 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _816 + -mem[64] + 100
                if poolInfo[arg1].field_1024 > !(0 / poolInfo[arg1].field_256):
                    revert with 0, 17
                if poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                if not -sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                    _939 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_939] = 26
                    mem[_939 + 32] = 'SafeMath: division by zero'
                    _1010 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1010] = 30
                    mem[_1010 + 32] = 'SafeMath: subtraction overflow'
                    if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= 0:
                        if 0 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                            revert with 0, 17
                        if s > !-sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                            revert with 0, 17
                        if not idx + 1:
                            revert with 0, 17
                        mem[0] = address(arg2)
                        mem[32] = sha3(arg1, 1)
                        idx = idx + 1
                        s = s - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                        continue 
                    _1027 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1027 + 68] = mem[idx + _1010 + 32]
                        mem[0] = address(arg2)
                        mem[32] = sha3(arg1, 1)
                        idx = idx + 32
                        continue 
                    mem[_1027 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _1027 + -mem[64] + 100
                if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 and poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) > -1 / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                    revert with 0, 17
                if not sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                    revert with 0, 18
                if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 != poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256):
                    revert with 0, 'SafeMath: multiplication overflow'
                _992 = mem[64]
                mem[64] = mem[64] + 64
                mem[_992] = 26
                mem[_992 + 32] = 'SafeMath: division by zero'
                _1064 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1064] = 30
                mem[_1064 + 32] = 'SafeMath: subtraction overflow'
                if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18:
                    if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                        revert with 0, 17
                    if s > !(((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18) - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512):
                        revert with 0, 17
                    if not idx + 1:
                        revert with 0, 17
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 1
                    s = s + ((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18) - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                    continue 
                _1078 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _1078 + 68] = mem[idx + _1064 + 32]
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 32
                    continue 
                mem[_1078 + 98] = 0
                revert with memory
                  from mem[64]
                   len _1078 + -mem[64] + 100
            if (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 and 10^18 > -1 / (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000:
                revert with 0, 17
            if not (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000:
                revert with 0, 18
            if 10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            _844 = mem[64]
            mem[64] = mem[64] + 64
            mem[_844] = 26
            mem[_844 + 32] = 'SafeMath: division by zero'
            if not poolInfo[arg1].field_256:
                _860 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _860 + 68] = mem[idx + _844 + 32]
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 32
                    continue 
                mem[_860 + 94] = 0
                revert with memory
                  from mem[64]
                   len _860 + -mem[64] + 100
            if poolInfo[arg1].field_1024 > !(10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256):
                revert with 0, 17
            if poolInfo[arg1].field_1024 + (10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            if not -sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                _991 = mem[64]
                mem[64] = mem[64] + 64
                mem[_991] = 26
                mem[_991 + 32] = 'SafeMath: division by zero'
                _1063 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1063] = 30
                mem[_1063 + 32] = 'SafeMath: subtraction overflow'
                if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= 0:
                    if 0 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                        revert with 0, 17
                    if s > !-sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                        revert with 0, 17
                    if not idx + 1:
                        revert with 0, 17
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 1
                    s = s - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                    continue 
                _1077 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _1077 + 68] = mem[idx + _1063 + 32]
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 32
                    continue 
                mem[_1077 + 98] = 0
                revert with memory
                  from mem[64]
                   len _1077 + -mem[64] + 100
            if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 and poolInfo[arg1].field_1024 + (10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256) > -1 / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                revert with 0, 17
            if not sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                revert with 0, 18
            if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 != poolInfo[arg1].field_1024 + (10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256):
                revert with 0, 'SafeMath: multiplication overflow'
            _1046 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1046] = 26
            mem[_1046 + 32] = 'SafeMath: division by zero'
            _1110 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1110] = 30
            mem[_1110 + 32] = 'SafeMath: subtraction overflow'
            if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18:
                if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                    revert with 0, 17
                if s > !(((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18) - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512):
                    revert with 0, 17
                if not idx + 1:
                    revert with 0, 17
                mem[0] = address(arg2)
                mem[32] = sha3(arg1, 1)
                idx = idx + 1
                s = s + ((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18) - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                continue 
            _1120 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _1120 + 68] = mem[idx + _1110 + 32]
                mem[0] = address(arg2)
                mem[32] = sha3(arg1, 1)
                idx = idx + 32
                continue 
            mem[_1120 + 98] = 0
            revert with memory
              from mem[64]
               len _1120 + -mem[64] + 100
        if block.number <= poolInfo[arg1].field_1280:
            if not -sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                _593 = mem[64]
                mem[64] = mem[64] + 64
                mem[_593] = 26
                mem[_593 + 32] = 'SafeMath: division by zero'
                _638 = mem[64]
                mem[64] = mem[64] + 64
                mem[_638] = 30
                mem[_638 + 32] = 'SafeMath: subtraction overflow'
                if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= 0:
                    if 0 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                        revert with 0, 17
                    if s > !-sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                        revert with 0, 17
                    if not idx + 1:
                        revert with 0, 17
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 1
                    s = s - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                    continue 
                _656 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _656 + 68] = mem[idx + _638 + 32]
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 32
                    continue 
                mem[_656 + 98] = 0
                revert with memory
                  from mem[64]
                   len _656 + -mem[64] + 100
            if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 and poolInfo[arg1].field_1024 > -1 / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                revert with 0, 17
            if not sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                revert with 0, 18
            if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 * poolInfo[arg1].field_1024 / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 != poolInfo[arg1].field_1024:
                revert with 0, 'SafeMath: multiplication overflow'
            _623 = mem[64]
            mem[64] = mem[64] + 64
            mem[_623] = 26
            mem[_623 + 32] = 'SafeMath: division by zero'
            _678 = mem[64]
            mem[64] = mem[64] + 64
            mem[_678] = 30
            mem[_678 + 32] = 'SafeMath: subtraction overflow'
            if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 * poolInfo[arg1].field_1024 / 10^18:
                if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 * poolInfo[arg1].field_1024 / 10^18 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                    revert with 0, 17
                if s > !((sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 * poolInfo[arg1].field_1024 / 10^18) - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512):
                    revert with 0, 17
                if not idx + 1:
                    revert with 0, 17
                mem[0] = address(arg2)
                mem[32] = sha3(arg1, 1)
                idx = idx + 1
                s = s + (sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 * poolInfo[arg1].field_1024 / 10^18) - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                continue 
            _694 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _694 + 68] = mem[idx + _678 + 32]
                mem[0] = address(arg2)
                mem[32] = sha3(arg1, 1)
                idx = idx + 32
                continue 
            mem[_694 + 98] = 0
            revert with memory
              from mem[64]
               len _694 + -mem[64] + 100
        if block.number < poolInfo[arg1].field_1280:
            if not -sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                _597 = mem[64]
                mem[64] = mem[64] + 64
                mem[_597] = 26
                mem[_597 + 32] = 'SafeMath: division by zero'
                _647 = mem[64]
                mem[64] = mem[64] + 64
                mem[_647] = 30
                mem[_647 + 32] = 'SafeMath: subtraction overflow'
                if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= 0:
                    if 0 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                        revert with 0, 17
                    if s > !-sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                        revert with 0, 17
                    if not idx + 1:
                        revert with 0, 17
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 1
                    s = s - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                    continue 
                _661 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _661 + 68] = mem[idx + _647 + 32]
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 32
                    continue 
                mem[_661 + 98] = 0
                revert with memory
                  from mem[64]
                   len _661 + -mem[64] + 100
            if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 and poolInfo[arg1].field_1024 > -1 / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                revert with 0, 17
            if not sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                revert with 0, 18
            if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 * poolInfo[arg1].field_1024 / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 != poolInfo[arg1].field_1024:
                revert with 0, 'SafeMath: multiplication overflow'
            _633 = mem[64]
            mem[64] = mem[64] + 64
            mem[_633] = 26
            mem[_633 + 32] = 'SafeMath: division by zero'
            _684 = mem[64]
            mem[64] = mem[64] + 64
            mem[_684] = 30
            mem[_684 + 32] = 'SafeMath: subtraction overflow'
            if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 * poolInfo[arg1].field_1024 / 10^18:
                if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 * poolInfo[arg1].field_1024 / 10^18 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                    revert with 0, 17
                if s > !((sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 * poolInfo[arg1].field_1024 / 10^18) - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512):
                    revert with 0, 17
                if not idx + 1:
                    revert with 0, 17
                mem[0] = address(arg2)
                mem[32] = sha3(arg1, 1)
                idx = idx + 1
                s = s + (sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 * poolInfo[arg1].field_1024 / 10^18) - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                continue 
            _704 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _704 + 68] = mem[idx + _684 + 32]
                mem[0] = address(arg2)
                mem[32] = sha3(arg1, 1)
                idx = idx + 32
                continue 
            mem[_704 + 98] = 0
            revert with memory
              from mem[64]
               len _704 + -mem[64] + 100
        if poolInfo[arg1].field_1280 >= poolInfo[arg1].field_1536:
            if not -sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                _599 = mem[64]
                mem[64] = mem[64] + 64
                mem[_599] = 26
                mem[_599 + 32] = 'SafeMath: division by zero'
                _657 = mem[64]
                mem[64] = mem[64] + 64
                mem[_657] = 30
                mem[_657 + 32] = 'SafeMath: subtraction overflow'
                if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= 0:
                    if 0 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                        revert with 0, 17
                    if s > !-sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                        revert with 0, 17
                    if not idx + 1:
                        revert with 0, 17
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 1
                    s = s - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                    continue 
                _670 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _670 + 68] = mem[idx + _657 + 32]
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 32
                    continue 
                mem[_670 + 98] = 0
                revert with memory
                  from mem[64]
                   len _670 + -mem[64] + 100
            if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 and poolInfo[arg1].field_1024 > -1 / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                revert with 0, 17
            if not sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                revert with 0, 18
            if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 * poolInfo[arg1].field_1024 / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 != poolInfo[arg1].field_1024:
                revert with 0, 'SafeMath: multiplication overflow'
            _639 = mem[64]
            mem[64] = mem[64] + 64
            mem[_639] = 26
            mem[_639 + 32] = 'SafeMath: division by zero'
            _695 = mem[64]
            mem[64] = mem[64] + 64
            mem[_695] = 30
            mem[_695 + 32] = 'SafeMath: subtraction overflow'
            if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 * poolInfo[arg1].field_1024 / 10^18:
                if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 * poolInfo[arg1].field_1024 / 10^18 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                    revert with 0, 17
                if s > !((sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 * poolInfo[arg1].field_1024 / 10^18) - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512):
                    revert with 0, 17
                if not idx + 1:
                    revert with 0, 17
                mem[0] = address(arg2)
                mem[32] = sha3(arg1, 1)
                idx = idx + 1
                s = s + (sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 * poolInfo[arg1].field_1024 / 10^18) - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                continue 
            _716 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _716 + 68] = mem[idx + _695 + 32]
                mem[0] = address(arg2)
                mem[32] = sha3(arg1, 1)
                idx = idx + 32
                continue 
            mem[_716 + 98] = 0
            revert with memory
              from mem[64]
               len _716 + -mem[64] + 100
        if not poolInfo[arg1].field_256:
            if not -sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                _605 = mem[64]
                mem[64] = mem[64] + 64
                mem[_605] = 26
                mem[_605 + 32] = 'SafeMath: division by zero'
                _662 = mem[64]
                mem[64] = mem[64] + 64
                mem[_662] = 30
                mem[_662 + 32] = 'SafeMath: subtraction overflow'
                if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= 0:
                    if 0 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                        revert with 0, 17
                    if s > !-sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                        revert with 0, 17
                    if not idx + 1:
                        revert with 0, 17
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 1
                    s = s - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                    continue 
                _675 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _675 + 68] = mem[idx + _662 + 32]
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 32
                    continue 
                mem[_675 + 98] = 0
                revert with memory
                  from mem[64]
                   len _675 + -mem[64] + 100
            if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 and poolInfo[arg1].field_1024 > -1 / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                revert with 0, 17
            if not sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                revert with 0, 18
            if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 * poolInfo[arg1].field_1024 / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 != poolInfo[arg1].field_1024:
                revert with 0, 'SafeMath: multiplication overflow'
            _648 = mem[64]
            mem[64] = mem[64] + 64
            mem[_648] = 26
            mem[_648 + 32] = 'SafeMath: division by zero'
            _705 = mem[64]
            mem[64] = mem[64] + 64
            mem[_705] = 30
            mem[_705 + 32] = 'SafeMath: subtraction overflow'
            if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 * poolInfo[arg1].field_1024 / 10^18:
                if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 * poolInfo[arg1].field_1024 / 10^18 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                    revert with 0, 17
                if s > !((sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 * poolInfo[arg1].field_1024 / 10^18) - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512):
                    revert with 0, 17
                if not idx + 1:
                    revert with 0, 17
                mem[0] = address(arg2)
                mem[32] = sha3(arg1, 1)
                idx = idx + 1
                s = s + (sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 * poolInfo[arg1].field_1024 / 10^18) - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                continue 
            _726 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _726 + 68] = mem[idx + _705 + 32]
                mem[0] = address(arg2)
                mem[32] = sha3(arg1, 1)
                idx = idx + 32
                continue 
            mem[_726 + 98] = 0
            revert with memory
              from mem[64]
               len _726 + -mem[64] + 100
        if block.number <= poolInfo[arg1].field_1536:
            if block.number <= poolInfo[arg1].field_1280:
                _641 = mem[64]
                mem[64] = mem[64] + 64
                mem[_641] = 26
                mem[_641 + 32] = 'SafeMath: division by zero'
                _734 = mem[64]
                mem[64] = mem[64] + 64
                mem[_734] = 26
                mem[_734 + 32] = 'SafeMath: division by zero'
                if not poolInfo[arg1].field_256:
                    _752 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _752 + 68] = mem[idx + _734 + 32]
                        mem[0] = address(arg2)
                        mem[32] = sha3(arg1, 1)
                        idx = idx + 32
                        continue 
                    mem[_752 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _752 + -mem[64] + 100
                if poolInfo[arg1].field_1024 > !(0 / poolInfo[arg1].field_256):
                    revert with 0, 17
                if poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                if not -sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                    _837 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_837] = 26
                    mem[_837 + 32] = 'SafeMath: division by zero'
                    _897 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_897] = 30
                    mem[_897 + 32] = 'SafeMath: subtraction overflow'
                    if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= 0:
                        if 0 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                            revert with 0, 17
                        if s > !-sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                            revert with 0, 17
                        if not idx + 1:
                            revert with 0, 17
                        mem[0] = address(arg2)
                        mem[32] = sha3(arg1, 1)
                        idx = idx + 1
                        s = s - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                        continue 
                    _915 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _915 + 68] = mem[idx + _897 + 32]
                        mem[0] = address(arg2)
                        mem[32] = sha3(arg1, 1)
                        idx = idx + 32
                        continue 
                    mem[_915 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _915 + -mem[64] + 100
                if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 and poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) > -1 / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                    revert with 0, 17
                if not sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                    revert with 0, 18
                if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 != poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256):
                    revert with 0, 'SafeMath: multiplication overflow'
                _885 = mem[64]
                mem[64] = mem[64] + 64
                mem[_885] = 26
                mem[_885 + 32] = 'SafeMath: division by zero'
                _941 = mem[64]
                mem[64] = mem[64] + 64
                mem[_941] = 30
                mem[_941 + 32] = 'SafeMath: subtraction overflow'
                if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18:
                    if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                        revert with 0, 17
                    if s > !(((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18) - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512):
                        revert with 0, 17
                    if not idx + 1:
                        revert with 0, 17
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 1
                    s = s + ((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18) - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                    continue 
                _965 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _965 + 68] = mem[idx + _941 + 32]
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 32
                    continue 
                mem[_965 + 98] = 0
                revert with memory
                  from mem[64]
                   len _965 + -mem[64] + 100
            _600 = mem[64]
            mem[64] = mem[64] + 64
            mem[_600] = 30
            mem[_600 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[arg1].field_1280 > block.number:
                _611 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _611 + 68] = mem[idx + _600 + 32]
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 32
                    continue 
                mem[_611 + 98] = 0
                revert with memory
                  from mem[64]
                   len _611 + -mem[64] + 100
            if block.number < poolInfo[arg1].field_1280:
                revert with 0, 17
            if not -block.number + poolInfo[arg1].field_1280:
                _707 = mem[64]
                mem[64] = mem[64] + 64
                mem[_707] = 26
                mem[_707 + 32] = 'SafeMath: division by zero'
                _787 = mem[64]
                mem[64] = mem[64] + 64
                mem[_787] = 26
                mem[_787 + 32] = 'SafeMath: division by zero'
                if not poolInfo[arg1].field_256:
                    _797 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _797 + 68] = mem[idx + _787 + 32]
                        mem[0] = address(arg2)
                        mem[32] = sha3(arg1, 1)
                        idx = idx + 32
                        continue 
                    mem[_797 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _797 + -mem[64] + 100
                if poolInfo[arg1].field_1024 > !(0 / poolInfo[arg1].field_256):
                    revert with 0, 17
                if poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                if not -sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                    _906 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_906] = 26
                    mem[_906 + 32] = 'SafeMath: division by zero'
                    _970 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_970] = 30
                    mem[_970 + 32] = 'SafeMath: subtraction overflow'
                    if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= 0:
                        if 0 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                            revert with 0, 17
                        if s > !-sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                            revert with 0, 17
                        if not idx + 1:
                            revert with 0, 17
                        mem[0] = address(arg2)
                        mem[32] = sha3(arg1, 1)
                        idx = idx + 1
                        s = s - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                        continue 
                    _986 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _986 + 68] = mem[idx + _970 + 32]
                        mem[0] = address(arg2)
                        mem[32] = sha3(arg1, 1)
                        idx = idx + 32
                        continue 
                    mem[_986 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _986 + -mem[64] + 100
                if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 and poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) > -1 / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                    revert with 0, 17
                if not sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                    revert with 0, 18
                if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 != poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256):
                    revert with 0, 'SafeMath: multiplication overflow'
                _953 = mem[64]
                mem[64] = mem[64] + 64
                mem[_953] = 26
                mem[_953 + 32] = 'SafeMath: division by zero'
                _1016 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1016] = 30
                mem[_1016 + 32] = 'SafeMath: subtraction overflow'
                if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18:
                    if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                        revert with 0, 17
                    if s > !(((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18) - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512):
                        revert with 0, 17
                    if not idx + 1:
                        revert with 0, 17
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 1
                    s = s + ((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18) - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                    continue 
                _1041 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _1041 + 68] = mem[idx + _1016 + 32]
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 32
                    continue 
                mem[_1041 + 98] = 0
                revert with memory
                  from mem[64]
                   len _1041 + -mem[64] + 100
            if block.number - poolInfo[arg1].field_1280 and poolInfo[arg1].field_512 > -1 / block.number - poolInfo[arg1].field_1280:
                revert with 0, 17
            if not block.number - poolInfo[arg1].field_1280:
                revert with 0, 18
            if (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / block.number - poolInfo[arg1].field_1280 != poolInfo[arg1].field_512:
                revert with 0, 'SafeMath: multiplication overflow'
            _762 = mem[64]
            mem[64] = mem[64] + 64
            mem[_762] = 26
            mem[_762 + 32] = 'SafeMath: division by zero'
            if not -(block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000:
                _811 = mem[64]
                mem[64] = mem[64] + 64
                mem[_811] = 26
                mem[_811 + 32] = 'SafeMath: division by zero'
                if not poolInfo[arg1].field_256:
                    _823 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _823 + 68] = mem[idx + _811 + 32]
                        mem[0] = address(arg2)
                        mem[32] = sha3(arg1, 1)
                        idx = idx + 32
                        continue 
                    mem[_823 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _823 + -mem[64] + 100
                if poolInfo[arg1].field_1024 > !(0 / poolInfo[arg1].field_256):
                    revert with 0, 17
                if poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                if not -sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                    _952 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_952] = 26
                    mem[_952 + 32] = 'SafeMath: division by zero'
                    _1015 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1015] = 30
                    mem[_1015 + 32] = 'SafeMath: subtraction overflow'
                    if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= 0:
                        if 0 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                            revert with 0, 17
                        if s > !-sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                            revert with 0, 17
                        if not idx + 1:
                            revert with 0, 17
                        mem[0] = address(arg2)
                        mem[32] = sha3(arg1, 1)
                        idx = idx + 1
                        s = s - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                        continue 
                    _1040 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1040 + 68] = mem[idx + _1015 + 32]
                        mem[0] = address(arg2)
                        mem[32] = sha3(arg1, 1)
                        idx = idx + 32
                        continue 
                    mem[_1040 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _1040 + -mem[64] + 100
                if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 and poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) > -1 / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                    revert with 0, 17
                if not sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                    revert with 0, 18
                if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 != poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256):
                    revert with 0, 'SafeMath: multiplication overflow'
                _1000 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1000] = 26
                mem[_1000 + 32] = 'SafeMath: division by zero'
                _1068 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1068] = 30
                mem[_1068 + 32] = 'SafeMath: subtraction overflow'
                if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18:
                    if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                        revert with 0, 17
                    if s > !(((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18) - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512):
                        revert with 0, 17
                    if not idx + 1:
                        revert with 0, 17
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 1
                    s = s + ((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18) - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                    continue 
                _1092 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _1092 + 68] = mem[idx + _1068 + 32]
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 32
                    continue 
                mem[_1092 + 98] = 0
                revert with memory
                  from mem[64]
                   len _1092 + -mem[64] + 100
            if (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 and 10^18 > -1 / (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000:
                revert with 0, 17
            if not (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000:
                revert with 0, 18
            if 10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            _851 = mem[64]
            mem[64] = mem[64] + 64
            mem[_851] = 26
            mem[_851 + 32] = 'SafeMath: division by zero'
            if not poolInfo[arg1].field_256:
                _872 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _872 + 68] = mem[idx + _851 + 32]
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 32
                    continue 
                mem[_872 + 94] = 0
                revert with memory
                  from mem[64]
                   len _872 + -mem[64] + 100
            if poolInfo[arg1].field_1024 > !(10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256):
                revert with 0, 17
            if poolInfo[arg1].field_1024 + (10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            if not -sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                _999 = mem[64]
                mem[64] = mem[64] + 64
                mem[_999] = 26
                mem[_999 + 32] = 'SafeMath: division by zero'
                _1067 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1067] = 30
                mem[_1067 + 32] = 'SafeMath: subtraction overflow'
                if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= 0:
                    if 0 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                        revert with 0, 17
                    if s > !-sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                        revert with 0, 17
                    if not idx + 1:
                        revert with 0, 17
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 1
                    s = s - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                    continue 
                _1091 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _1091 + 68] = mem[idx + _1067 + 32]
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 32
                    continue 
                mem[_1091 + 98] = 0
                revert with memory
                  from mem[64]
                   len _1091 + -mem[64] + 100
            if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 and poolInfo[arg1].field_1024 + (10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256) > -1 / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                revert with 0, 17
            if not sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                revert with 0, 18
            if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 != poolInfo[arg1].field_1024 + (10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256):
                revert with 0, 'SafeMath: multiplication overflow'
            _1057 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1057] = 26
            mem[_1057 + 32] = 'SafeMath: division by zero'
            _1113 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1113] = 30
            mem[_1113 + 32] = 'SafeMath: subtraction overflow'
            if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18:
                if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                    revert with 0, 17
                if s > !(((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18) - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512):
                    revert with 0, 17
                if not idx + 1:
                    revert with 0, 17
                mem[0] = address(arg2)
                mem[32] = sha3(arg1, 1)
                idx = idx + 1
                s = s + ((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18) - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                continue 
            _1131 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _1131 + 68] = mem[idx + _1113 + 32]
                mem[0] = address(arg2)
                mem[32] = sha3(arg1, 1)
                idx = idx + 32
                continue 
            mem[_1131 + 98] = 0
            revert with memory
              from mem[64]
               len _1131 + -mem[64] + 100
        if poolInfo[arg1].field_1536 <= poolInfo[arg1].field_1280:
            _643 = mem[64]
            mem[64] = mem[64] + 64
            mem[_643] = 26
            mem[_643 + 32] = 'SafeMath: division by zero'
            _735 = mem[64]
            mem[64] = mem[64] + 64
            mem[_735] = 26
            mem[_735 + 32] = 'SafeMath: division by zero'
            if not poolInfo[arg1].field_256:
                _754 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _754 + 68] = mem[idx + _735 + 32]
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 32
                    continue 
                mem[_754 + 94] = 0
                revert with memory
                  from mem[64]
                   len _754 + -mem[64] + 100
            if poolInfo[arg1].field_1024 > !(0 / poolInfo[arg1].field_256):
                revert with 0, 17
            if poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            if not -sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                _839 = mem[64]
                mem[64] = mem[64] + 64
                mem[_839] = 26
                mem[_839 + 32] = 'SafeMath: division by zero'
                _900 = mem[64]
                mem[64] = mem[64] + 64
                mem[_900] = 30
                mem[_900 + 32] = 'SafeMath: subtraction overflow'
                if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= 0:
                    if 0 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                        revert with 0, 17
                    if s > !-sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                        revert with 0, 17
                    if not idx + 1:
                        revert with 0, 17
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 1
                    s = s - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                    continue 
                _916 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _916 + 68] = mem[idx + _900 + 32]
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 32
                    continue 
                mem[_916 + 98] = 0
                revert with memory
                  from mem[64]
                   len _916 + -mem[64] + 100
            if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 and poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) > -1 / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                revert with 0, 17
            if not sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                revert with 0, 18
            if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 != poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256):
                revert with 0, 'SafeMath: multiplication overflow'
            _886 = mem[64]
            mem[64] = mem[64] + 64
            mem[_886] = 26
            mem[_886 + 32] = 'SafeMath: division by zero'
            _945 = mem[64]
            mem[64] = mem[64] + 64
            mem[_945] = 30
            mem[_945 + 32] = 'SafeMath: subtraction overflow'
            if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18:
                if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                    revert with 0, 17
                if s > !(((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18) - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512):
                    revert with 0, 17
                if not idx + 1:
                    revert with 0, 17
                mem[0] = address(arg2)
                mem[32] = sha3(arg1, 1)
                idx = idx + 1
                s = s + ((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18) - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                continue 
            _966 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _966 + 68] = mem[idx + _945 + 32]
                mem[0] = address(arg2)
                mem[32] = sha3(arg1, 1)
                idx = idx + 32
                continue 
            mem[_966 + 98] = 0
            revert with memory
              from mem[64]
               len _966 + -mem[64] + 100
        _601 = mem[64]
        mem[64] = mem[64] + 64
        mem[_601] = 30
        mem[_601 + 32] = 'SafeMath: subtraction overflow'
        if poolInfo[arg1].field_1280 > poolInfo[arg1].field_1536:
            _612 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _612 + 68] = mem[idx + _601 + 32]
                mem[0] = address(arg2)
                mem[32] = sha3(arg1, 1)
                idx = idx + 32
                continue 
            mem[_612 + 98] = 0
            revert with memory
              from mem[64]
               len _612 + -mem[64] + 100
        if poolInfo[arg1].field_1536 < poolInfo[arg1].field_1280:
            revert with 0, 17
        if not -poolInfo[arg1].field_1536 + poolInfo[arg1].field_1280:
            _708 = mem[64]
            mem[64] = mem[64] + 64
            mem[_708] = 26
            mem[_708 + 32] = 'SafeMath: division by zero'
            _790 = mem[64]
            mem[64] = mem[64] + 64
            mem[_790] = 26
            mem[_790 + 32] = 'SafeMath: division by zero'
            if not poolInfo[arg1].field_256:
                _798 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _798 + 68] = mem[idx + _790 + 32]
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 32
                    continue 
                mem[_798 + 94] = 0
                revert with memory
                  from mem[64]
                   len _798 + -mem[64] + 100
            if poolInfo[arg1].field_1024 > !(0 / poolInfo[arg1].field_256):
                revert with 0, 17
            if poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            if not -sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                _908 = mem[64]
                mem[64] = mem[64] + 64
                mem[_908] = 26
                mem[_908 + 32] = 'SafeMath: division by zero'
                _974 = mem[64]
                mem[64] = mem[64] + 64
                mem[_974] = 30
                mem[_974 + 32] = 'SafeMath: subtraction overflow'
                if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= 0:
                    if 0 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                        revert with 0, 17
                    if s > !-sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                        revert with 0, 17
                    if not idx + 1:
                        revert with 0, 17
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 1
                    s = s - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                    continue 
                _988 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _988 + 68] = mem[idx + _974 + 32]
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 32
                    continue 
                mem[_988 + 98] = 0
                revert with memory
                  from mem[64]
                   len _988 + -mem[64] + 100
            if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 and poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) > -1 / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                revert with 0, 17
            if not sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                revert with 0, 18
            if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 != poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256):
                revert with 0, 'SafeMath: multiplication overflow'
            _956 = mem[64]
            mem[64] = mem[64] + 64
            mem[_956] = 26
            mem[_956 + 32] = 'SafeMath: division by zero'
            _1021 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1021] = 30
            mem[_1021 + 32] = 'SafeMath: subtraction overflow'
            if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18:
                if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                    revert with 0, 17
                if s > !(((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18) - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512):
                    revert with 0, 17
                if not idx + 1:
                    revert with 0, 17
                mem[0] = address(arg2)
                mem[32] = sha3(arg1, 1)
                idx = idx + 1
                s = s + ((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18) - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                continue 
            _1044 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _1044 + 68] = mem[idx + _1021 + 32]
                mem[0] = address(arg2)
                mem[32] = sha3(arg1, 1)
                idx = idx + 32
                continue 
            mem[_1044 + 98] = 0
            revert with memory
              from mem[64]
               len _1044 + -mem[64] + 100
        if poolInfo[arg1].field_1536 - poolInfo[arg1].field_1280 and poolInfo[arg1].field_512 > -1 / poolInfo[arg1].field_1536 - poolInfo[arg1].field_1280:
            revert with 0, 17
        if not poolInfo[arg1].field_1536 - poolInfo[arg1].field_1280:
            revert with 0, 18
        if (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / poolInfo[arg1].field_1536 - poolInfo[arg1].field_1280 != poolInfo[arg1].field_512:
            revert with 0, 'SafeMath: multiplication overflow'
        _764 = mem[64]
        mem[64] = mem[64] + 64
        mem[_764] = 26
        mem[_764 + 32] = 'SafeMath: division by zero'
        if not -(poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000:
            _813 = mem[64]
            mem[64] = mem[64] + 64
            mem[_813] = 26
            mem[_813 + 32] = 'SafeMath: division by zero'
            if not poolInfo[arg1].field_256:
                _824 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _824 + 68] = mem[idx + _813 + 32]
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 32
                    continue 
                mem[_824 + 94] = 0
                revert with memory
                  from mem[64]
                   len _824 + -mem[64] + 100
            if poolInfo[arg1].field_1024 > !(0 / poolInfo[arg1].field_256):
                revert with 0, 17
            if poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            if not -sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                _955 = mem[64]
                mem[64] = mem[64] + 64
                mem[_955] = 26
                mem[_955 + 32] = 'SafeMath: division by zero'
                _1020 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1020] = 30
                mem[_1020 + 32] = 'SafeMath: subtraction overflow'
                if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= 0:
                    if 0 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                        revert with 0, 17
                    if s > !-sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                        revert with 0, 17
                    if not idx + 1:
                        revert with 0, 17
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 1
                    s = s - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                    continue 
                _1043 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _1043 + 68] = mem[idx + _1020 + 32]
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 32
                    continue 
                mem[_1043 + 98] = 0
                revert with memory
                  from mem[64]
                   len _1043 + -mem[64] + 100
            if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 and poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) > -1 / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                revert with 0, 17
            if not sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                revert with 0, 18
            if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 != poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256):
                revert with 0, 'SafeMath: multiplication overflow'
            _1002 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1002] = 26
            mem[_1002 + 32] = 'SafeMath: division by zero'
            _1072 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1072] = 30
            mem[_1072 + 32] = 'SafeMath: subtraction overflow'
            if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18:
                if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                    revert with 0, 17
                if s > !(((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18) - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512):
                    revert with 0, 17
                if not idx + 1:
                    revert with 0, 17
                mem[0] = address(arg2)
                mem[32] = sha3(arg1, 1)
                idx = idx + 1
                s = s + ((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18) - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                continue 
            _1094 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _1094 + 68] = mem[idx + _1072 + 32]
                mem[0] = address(arg2)
                mem[32] = sha3(arg1, 1)
                idx = idx + 32
                continue 
            mem[_1094 + 98] = 0
            revert with memory
              from mem[64]
               len _1094 + -mem[64] + 100
        if (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 and 10^18 > -1 / (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000:
            revert with 0, 17
        if not (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000:
            revert with 0, 18
        if 10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        _854 = mem[64]
        mem[64] = mem[64] + 64
        mem[_854] = 26
        mem[_854 + 32] = 'SafeMath: division by zero'
        if not poolInfo[arg1].field_256:
            _874 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _874 + 68] = mem[idx + _854 + 32]
                mem[0] = address(arg2)
                mem[32] = sha3(arg1, 1)
                idx = idx + 32
                continue 
            mem[_874 + 94] = 0
            revert with memory
              from mem[64]
               len _874 + -mem[64] + 100
        if poolInfo[arg1].field_1024 > !(10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256):
            revert with 0, 17
        if poolInfo[arg1].field_1024 + (10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
            revert with 0, 'SafeMath: addition overflow'
        if not -sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
            _1001 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1001] = 26
            mem[_1001 + 32] = 'SafeMath: division by zero'
            _1071 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1071] = 30
            mem[_1071 + 32] = 'SafeMath: subtraction overflow'
            if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= 0:
                if 0 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                    revert with 0, 17
                if s > !-sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                    revert with 0, 17
                if not idx + 1:
                    revert with 0, 17
                mem[0] = address(arg2)
                mem[32] = sha3(arg1, 1)
                idx = idx + 1
                s = s - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                continue 
            _1093 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _1093 + 68] = mem[idx + _1071 + 32]
                mem[0] = address(arg2)
                mem[32] = sha3(arg1, 1)
                idx = idx + 32
                continue 
            mem[_1093 + 98] = 0
            revert with memory
              from mem[64]
               len _1093 + -mem[64] + 100
        if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 and poolInfo[arg1].field_1024 + (10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256) > -1 / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
            revert with 0, 17
        if not sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
            revert with 0, 18
        if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 != poolInfo[arg1].field_1024 + (10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256):
            revert with 0, 'SafeMath: multiplication overflow'
        _1058 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1058] = 26
        mem[_1058 + 32] = 'SafeMath: division by zero'
        _1116 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1116] = 30
        mem[_1116 + 32] = 'SafeMath: subtraction overflow'
        if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18:
            if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                revert with 0, 17
            if s > !(((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18) - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512):
                revert with 0, 17
            if not idx + 1:
                revert with 0, 17
            mem[0] = address(arg2)
            mem[32] = sha3(arg1, 1)
            idx = idx + 1
            s = s + ((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18) - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
            continue 
        _1132 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[idx + _1132 + 68] = mem[idx + _1116 + 32]
            mem[0] = address(arg2)
            mem[32] = sha3(arg1, 1)
            idx = idx + 32
            continue 
        mem[_1132 + 98] = 0
        revert with memory
          from mem[64]
           len _1132 + -mem[64] + 100
    return s
}



}
