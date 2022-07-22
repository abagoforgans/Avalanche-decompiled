contract main {




// =====================  Runtime code  =====================


#
#  - sub_12931122(?)
#  - addRewardForPool(uint256 arg1, uint256 arg2, bool arg3)
#  - withdraw(uint256 arg1, uint256 arg2)
#  - sub_5d710ad7(?)
#  - sub_7d841c53(?)
#  - withdrawMultiple(uint256 arg1, uint256 arg2)
#  - sub_d6595f3a(?)
#  - deposit(uint256 arg1, uint256 arg2)
#  - harvest(uint256 arg1, uint256 arg2)
#
const ZERO = 0

const RATIO_BASE = 1000


address owner;
mapping of struct sub_8254a57e;
address tokenAddress;
array of struct poolInfo;
mapping of struct sub_dfa2eec0;

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

function sub_8254a57e(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == address(arg2)
    return sub_8254a57e[arg1][address(arg2)].field_256
}

function owner() {
    return owner
}

function userInfo(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(sub_8254a57e[arg1][arg2].field_0)
}

function sub_dfa2eec0(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return sub_dfa2eec0[arg1][arg2].field_0, sub_dfa2eec0[arg1][arg2].field_256, sub_dfa2eec0[arg1][arg2].field_512
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
    owner = 0
    emit OwnershipTransferred(owner, 0);
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

function closePool(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= poolInfo.length:
        revert with 0, 'Pool does not exist'
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= poolInfo.length:
        revert with 'NH{q', 50
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
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    emit Received()
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function sub_0df48e1f(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
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

function massUpdatePools() payable {
    mem[64] = 96
    require not msg.value
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 4
        if block.number <= poolInfo[idx].field_768:
            if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if block.number < poolInfo[idx].field_1280:
            if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if poolInfo[idx].field_768 >= poolInfo[idx].field_1536:
            if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if poolInfo[idx].field_768 >= poolInfo[idx].field_1280:
            if block.number <= poolInfo[idx].field_1536:
                if block.number <= poolInfo[idx].field_768:
                    poolInfo[idx].field_768 = block.number
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
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
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not block.number - poolInfo[idx].field_768:
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
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
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
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
                        if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
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
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
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
                if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
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
                if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if not poolInfo[idx].field_1536 - poolInfo[idx].field_768:
                if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
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
                if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
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
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
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
                if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
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
                if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
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
                if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if not block.number - poolInfo[idx].field_768:
                if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
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
                if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
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
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
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
                if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
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
            if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
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
            if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if not poolInfo[idx].field_1536 - poolInfo[idx].field_768:
            if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
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
            if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
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
                if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
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
            if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
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

function sub_9622b61c(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
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
                if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if block.number < poolInfo[idx].field_1280:
                if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if poolInfo[idx].field_768 >= poolInfo[idx].field_1536:
                if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if poolInfo[idx].field_768 >= poolInfo[idx].field_1280:
                if block.number <= poolInfo[idx].field_1536:
                    if block.number <= poolInfo[idx].field_768:
                        poolInfo[idx].field_768 = block.number
                        if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    _4003 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4003] = 30
                    mem[_4003 + 32] = 'SafeMath: subtraction overflow'
                    if poolInfo[idx].field_768 > block.number:
                        _4007 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4007 + idx + 68] = mem[_4003 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4007 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4007 + -mem[64] + 100
                    if block.number < poolInfo[idx].field_768:
                        revert with 'NH{q', 17
                    poolInfo[idx].field_768 = block.number
                    if poolInfo[idx].field_256 <= 0:
                        if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    if not block.number - poolInfo[idx].field_768:
                        if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
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
                        if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    if not (block.number * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512):
                        _4087 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4087] = 26
                        mem[_4087 + 32] = 'SafeMath: division by zero'
                        if poolInfo[idx].field_256 > 0:
                            if not poolInfo[idx].field_256:
                                revert with 'NH{q', 18
                            if poolInfo[idx].field_1024 > -(0 / poolInfo[idx].field_256) - 1:
                                revert with 'NH{q', 17
                            if poolInfo[idx].field_1024 + (0 / poolInfo[idx].field_256) < poolInfo[idx].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_256
                            if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                        _4095 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_4095 + idx + 68] = mem[_4087 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4095 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _4095 + -mem[64] + 100
                    if (block.number * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512) and 10^18 > -1 / (block.number * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512):
                        revert with 'NH{q', 17
                    if not (block.number * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512):
                        revert with 'NH{q', 18
                    if (10^18 * block.number * poolInfo[idx].field_512) - (10^18 * poolInfo[idx].field_768 * poolInfo[idx].field_512) / (block.number * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512) != 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _4135 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4135] = 26
                    mem[_4135 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_256 > 0:
                        if not poolInfo[idx].field_256:
                            revert with 'NH{q', 18
                        if poolInfo[idx].field_1024 > -((10^18 * block.number * poolInfo[idx].field_512) - (10^18 * poolInfo[idx].field_768 * poolInfo[idx].field_512) / poolInfo[idx].field_256) - 1:
                            revert with 'NH{q', 17
                        if poolInfo[idx].field_1024 + ((10^18 * block.number * poolInfo[idx].field_512) - (10^18 * poolInfo[idx].field_768 * poolInfo[idx].field_512) / poolInfo[idx].field_256) < poolInfo[idx].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_1024 += (10^18 * block.number * poolInfo[idx].field_512) - (10^18 * poolInfo[idx].field_768 * poolInfo[idx].field_512) / poolInfo[idx].field_256
                        if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    _4139 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_4139 + idx + 68] = mem[_4135 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4139 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _4139 + -mem[64] + 100
                if poolInfo[idx].field_1536 <= poolInfo[idx].field_768:
                    poolInfo[idx].field_768 = poolInfo[idx].field_1536
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _4004 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4004] = 30
                mem[_4004 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_768 > poolInfo[idx].field_1536:
                    _4008 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4008 + idx + 68] = mem[_4004 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4008 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _4008 + -mem[64] + 100
                if poolInfo[idx].field_1536 < poolInfo[idx].field_768:
                    revert with 'NH{q', 17
                poolInfo[idx].field_768 = poolInfo[idx].field_1536
                if poolInfo[idx].field_256 <= 0:
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not poolInfo[idx].field_1536 - poolInfo[idx].field_768:
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
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
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not (poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512):
                    _4089 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4089] = 26
                    mem[_4089 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_256 > 0:
                        if not poolInfo[idx].field_256:
                            revert with 'NH{q', 18
                        if poolInfo[idx].field_1024 > -(0 / poolInfo[idx].field_256) - 1:
                            revert with 'NH{q', 17
                        if poolInfo[idx].field_1024 + (0 / poolInfo[idx].field_256) < poolInfo[idx].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_256
                        if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    _4096 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_4096 + idx + 68] = mem[_4089 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4096 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _4096 + -mem[64] + 100
                if (poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512) and 10^18 > -1 / (poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512):
                    revert with 'NH{q', 17
                if not (poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512):
                    revert with 'NH{q', 18
                if (10^18 * poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (10^18 * poolInfo[idx].field_768 * poolInfo[idx].field_512) / (poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512) != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                _4136 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4136] = 26
                mem[_4136 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_256 > 0:
                    if not poolInfo[idx].field_256:
                        revert with 'NH{q', 18
                    if poolInfo[idx].field_1024 > -((10^18 * poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (10^18 * poolInfo[idx].field_768 * poolInfo[idx].field_512) / poolInfo[idx].field_256) - 1:
                        revert with 'NH{q', 17
                    if poolInfo[idx].field_1024 + ((10^18 * poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (10^18 * poolInfo[idx].field_768 * poolInfo[idx].field_512) / poolInfo[idx].field_256) < poolInfo[idx].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1024 += (10^18 * poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (10^18 * poolInfo[idx].field_768 * poolInfo[idx].field_512) / poolInfo[idx].field_256
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _4141 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_4141 + idx + 68] = mem[_4136 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_4141 + 94] = 0
                revert with memory
                  from mem[64]
                   len _4141 + -mem[64] + 100
            poolInfo[idx].field_768 = poolInfo[idx].field_1280
            if block.number <= poolInfo[idx].field_1536:
                if block.number <= poolInfo[idx].field_768:
                    poolInfo[idx].field_768 = block.number
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _4005 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4005] = 30
                mem[_4005 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_768 > block.number:
                    _4009 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4009 + idx + 68] = mem[_4005 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4009 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _4009 + -mem[64] + 100
                if block.number < poolInfo[idx].field_768:
                    revert with 'NH{q', 17
                poolInfo[idx].field_768 = block.number
                if poolInfo[idx].field_256 <= 0:
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not block.number - poolInfo[idx].field_768:
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
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
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not (block.number * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512):
                    _4091 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4091] = 26
                    mem[_4091 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_256 > 0:
                        if not poolInfo[idx].field_256:
                            revert with 'NH{q', 18
                        if poolInfo[idx].field_1024 > -(0 / poolInfo[idx].field_256) - 1:
                            revert with 'NH{q', 17
                        if poolInfo[idx].field_1024 + (0 / poolInfo[idx].field_256) < poolInfo[idx].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_256
                        if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    _4099 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_4099 + idx + 68] = mem[_4091 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4099 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _4099 + -mem[64] + 100
                if (block.number * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512) and 10^18 > -1 / (block.number * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512):
                    revert with 'NH{q', 17
                if not (block.number * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512):
                    revert with 'NH{q', 18
                if (10^18 * block.number * poolInfo[idx].field_512) - (10^18 * poolInfo[idx].field_768 * poolInfo[idx].field_512) / (block.number * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512) != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                _4137 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4137] = 26
                mem[_4137 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_256 > 0:
                    if not poolInfo[idx].field_256:
                        revert with 'NH{q', 18
                    if poolInfo[idx].field_1024 > -((10^18 * block.number * poolInfo[idx].field_512) - (10^18 * poolInfo[idx].field_768 * poolInfo[idx].field_512) / poolInfo[idx].field_256) - 1:
                        revert with 'NH{q', 17
                    if poolInfo[idx].field_1024 + ((10^18 * block.number * poolInfo[idx].field_512) - (10^18 * poolInfo[idx].field_768 * poolInfo[idx].field_512) / poolInfo[idx].field_256) < poolInfo[idx].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1024 += (10^18 * block.number * poolInfo[idx].field_512) - (10^18 * poolInfo[idx].field_768 * poolInfo[idx].field_512) / poolInfo[idx].field_256
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _4145 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_4145 + idx + 68] = mem[_4137 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_4145 + 94] = 0
                revert with memory
                  from mem[64]
                   len _4145 + -mem[64] + 100
            if poolInfo[idx].field_1536 <= poolInfo[idx].field_768:
                poolInfo[idx].field_768 = poolInfo[idx].field_1536
                if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _4006 = mem[64]
            mem[64] = mem[64] + 64
            mem[_4006] = 30
            mem[_4006 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_768 > poolInfo[idx].field_1536:
                _4010 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_4010 + idx + 68] = mem[_4006 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_4010 + 98] = 0
                revert with memory
                  from mem[64]
                   len _4010 + -mem[64] + 100
            if poolInfo[idx].field_1536 < poolInfo[idx].field_768:
                revert with 'NH{q', 17
            poolInfo[idx].field_768 = poolInfo[idx].field_1536
            if poolInfo[idx].field_256 <= 0:
                if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if not poolInfo[idx].field_1536 - poolInfo[idx].field_768:
                if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
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
                if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if not (poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512):
                _4093 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4093] = 26
                mem[_4093 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_256 > 0:
                    if not poolInfo[idx].field_256:
                        revert with 'NH{q', 18
                    if poolInfo[idx].field_1024 > -(0 / poolInfo[idx].field_256) - 1:
                        revert with 'NH{q', 17
                    if poolInfo[idx].field_1024 + (0 / poolInfo[idx].field_256) < poolInfo[idx].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_256
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _4100 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_4100 + idx + 68] = mem[_4093 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_4100 + 94] = 0
                revert with memory
                  from mem[64]
                   len _4100 + -mem[64] + 100
            if (poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512) and 10^18 > -1 / (poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512):
                revert with 'NH{q', 17
            if not (poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512):
                revert with 'NH{q', 18
            if (10^18 * poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (10^18 * poolInfo[idx].field_768 * poolInfo[idx].field_512) / (poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * poolInfo[idx].field_512) != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            _4138 = mem[64]
            mem[64] = mem[64] + 64
            mem[_4138] = 26
            mem[_4138 + 32] = 'SafeMath: division by zero'
            if poolInfo[idx].field_256 > 0:
                if not poolInfo[idx].field_256:
                    revert with 'NH{q', 18
                if poolInfo[idx].field_1024 > -((10^18 * poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (10^18 * poolInfo[idx].field_768 * poolInfo[idx].field_512) / poolInfo[idx].field_256) - 1:
                    revert with 'NH{q', 17
                if poolInfo[idx].field_1024 + ((10^18 * poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (10^18 * poolInfo[idx].field_768 * poolInfo[idx].field_512) / poolInfo[idx].field_256) < poolInfo[idx].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_1024 += (10^18 * poolInfo[idx].field_1536 * poolInfo[idx].field_512) - (10^18 * poolInfo[idx].field_768 * poolInfo[idx].field_512) / poolInfo[idx].field_256
                if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _4147 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_4147 + idx + 68] = mem[_4138 + idx + 32]
                idx = idx + 32
                continue 
            mem[_4147 + 94] = 0
            revert with memory
              from mem[64]
               len _4147 + -mem[64] + 100
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
    if arg1 >= poolInfo.length:
        revert with 'NH{q', 50
    require poolInfo[arg1].field_1536 > block.number
    if block.number >= poolInfo[arg1].field_1280:
        if block.number > poolInfo[arg1].field_1536:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if poolInfo[arg1].field_1536 < block.number:
            revert with 'NH{q', 17
        if not poolInfo[arg1].field_512:
            if block.number > arg3:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg3 < block.number:
                revert with 'NH{q', 17
            if 0 > -arg2 - 1:
                revert with 'NH{q', 17
            if arg2 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if arg3 - block.number <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not arg3 - block.number:
                revert with 'NH{q', 18
            if arg3 > 0:
                require arg3 >= block.number
                poolInfo[arg1].field_1536 = arg3
            poolInfo[arg1].field_512 = arg2 / arg3 - block.number
            emit 0x10c7b61d: arg1, arg2 / arg3 - block.number, bool(arg4), arg3
        else:
            if poolInfo[arg1].field_512 and poolInfo[arg1].field_1536 - block.number > -1 / poolInfo[arg1].field_512:
                revert with 'NH{q', 17
            if not poolInfo[arg1].field_512:
                revert with 'NH{q', 18
            if (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (block.number * poolInfo[arg1].field_512) / poolInfo[arg1].field_512 != poolInfo[arg1].field_1536 - block.number:
                revert with 0, 'SafeMath: multiplication overflow'
            if block.number > arg3:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg3 < block.number:
                revert with 'NH{q', 17
            if (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (block.number * poolInfo[arg1].field_512) > -arg2 - 1:
                revert with 'NH{q', 17
            if arg2 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if arg3 - block.number <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not arg3 - block.number:
                revert with 'NH{q', 18
            if arg3 > 0:
                require arg3 >= block.number
                poolInfo[arg1].field_1536 = arg3
            poolInfo[arg1].field_512 = (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (block.number * poolInfo[arg1].field_512) + arg2 / arg3 - block.number
            emit 0x10c7b61d: arg1, (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (block.number * poolInfo[arg1].field_512) + arg2 / arg3 - block.number, bool(arg4), arg3
    else:
        if poolInfo[arg1].field_1280 > poolInfo[arg1].field_1536:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if poolInfo[arg1].field_1536 < poolInfo[arg1].field_1280:
            revert with 'NH{q', 17
        if not poolInfo[arg1].field_512:
            if poolInfo[arg1].field_1280 > arg3:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg3 < poolInfo[arg1].field_1280:
                revert with 'NH{q', 17
            if 0 > -arg2 - 1:
                revert with 'NH{q', 17
            if arg2 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if arg3 - poolInfo[arg1].field_1280 <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not arg3 - poolInfo[arg1].field_1280:
                revert with 'NH{q', 18
            if arg3 > 0:
                require arg3 >= block.number
                poolInfo[arg1].field_1536 = arg3
            poolInfo[arg1].field_512 = arg2 / arg3 - poolInfo[arg1].field_1280
            emit 0x10c7b61d: arg1, arg2 / arg3 - poolInfo[arg1].field_1280, bool(arg4), arg3
        else:
            if poolInfo[arg1].field_512 and poolInfo[arg1].field_1536 - poolInfo[arg1].field_1280 > -1 / poolInfo[arg1].field_512:
                revert with 'NH{q', 17
            if not poolInfo[arg1].field_512:
                revert with 'NH{q', 18
            if (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / poolInfo[arg1].field_512 != poolInfo[arg1].field_1536 - poolInfo[arg1].field_1280:
                revert with 0, 'SafeMath: multiplication overflow'
            if poolInfo[arg1].field_1280 > arg3:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg3 < poolInfo[arg1].field_1280:
                revert with 'NH{q', 17
            if (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) > -arg2 - 1:
                revert with 'NH{q', 17
            if arg2 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if arg3 - poolInfo[arg1].field_1280 <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not arg3 - poolInfo[arg1].field_1280:
                revert with 'NH{q', 18
            if arg3 > 0:
                require arg3 >= block.number
                poolInfo[arg1].field_1536 = arg3
            poolInfo[arg1].field_512 = (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) + arg2 / arg3 - poolInfo[arg1].field_1280
            emit 0x10c7b61d: arg1, (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) + arg2 / arg3 - poolInfo[arg1].field_1280, bool(arg4), arg3
}

function pendingReward(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 >= poolInfo.length:
        revert with 0, 'Pool does not exist'
    if poolInfo[arg1].field_768 >= poolInfo[arg1].field_1280:
        if block.number <= poolInfo[arg1].field_768:
            if not sub_dfa2eec0[arg1][arg2].field_0:
                if sub_dfa2eec0[arg1][arg2].field_512 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < sub_dfa2eec0[arg1][arg2].field_512:
                    revert with 'NH{q', 17
                return -sub_dfa2eec0[arg1][arg2].field_512
            if sub_dfa2eec0[arg1][arg2].field_0 and poolInfo[arg1].field_1024 > -1 / sub_dfa2eec0[arg1][arg2].field_0:
                revert with 'NH{q', 17
            if not sub_dfa2eec0[arg1][arg2].field_0:
                revert with 'NH{q', 18
            if sub_dfa2eec0[arg1][arg2].field_0 * poolInfo[arg1].field_1024 / sub_dfa2eec0[arg1][arg2].field_0 != poolInfo[arg1].field_1024:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if sub_dfa2eec0[arg1][arg2].field_512 > sub_dfa2eec0[arg1][arg2].field_0 * poolInfo[arg1].field_1024 / 10^18:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if sub_dfa2eec0[arg1][arg2].field_0 * poolInfo[arg1].field_1024 / 10^18 < sub_dfa2eec0[arg1][arg2].field_512:
                revert with 'NH{q', 17
            return ((sub_dfa2eec0[arg1][arg2].field_0 * poolInfo[arg1].field_1024 / 10^18) - sub_dfa2eec0[arg1][arg2].field_512)
        if block.number < poolInfo[arg1].field_1280:
            if not sub_dfa2eec0[arg1][arg2].field_0:
                if sub_dfa2eec0[arg1][arg2].field_512 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < sub_dfa2eec0[arg1][arg2].field_512:
                    revert with 'NH{q', 17
                return -sub_dfa2eec0[arg1][arg2].field_512
            if sub_dfa2eec0[arg1][arg2].field_0 and poolInfo[arg1].field_1024 > -1 / sub_dfa2eec0[arg1][arg2].field_0:
                revert with 'NH{q', 17
            if not sub_dfa2eec0[arg1][arg2].field_0:
                revert with 'NH{q', 18
            if sub_dfa2eec0[arg1][arg2].field_0 * poolInfo[arg1].field_1024 / sub_dfa2eec0[arg1][arg2].field_0 != poolInfo[arg1].field_1024:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if sub_dfa2eec0[arg1][arg2].field_512 > sub_dfa2eec0[arg1][arg2].field_0 * poolInfo[arg1].field_1024 / 10^18:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if sub_dfa2eec0[arg1][arg2].field_0 * poolInfo[arg1].field_1024 / 10^18 < sub_dfa2eec0[arg1][arg2].field_512:
                revert with 'NH{q', 17
            return ((sub_dfa2eec0[arg1][arg2].field_0 * poolInfo[arg1].field_1024 / 10^18) - sub_dfa2eec0[arg1][arg2].field_512)
        if poolInfo[arg1].field_768 >= poolInfo[arg1].field_1536:
            if not sub_dfa2eec0[arg1][arg2].field_0:
                if sub_dfa2eec0[arg1][arg2].field_512 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < sub_dfa2eec0[arg1][arg2].field_512:
                    revert with 'NH{q', 17
                return -sub_dfa2eec0[arg1][arg2].field_512
            if sub_dfa2eec0[arg1][arg2].field_0 and poolInfo[arg1].field_1024 > -1 / sub_dfa2eec0[arg1][arg2].field_0:
                revert with 'NH{q', 17
            if not sub_dfa2eec0[arg1][arg2].field_0:
                revert with 'NH{q', 18
            if sub_dfa2eec0[arg1][arg2].field_0 * poolInfo[arg1].field_1024 / sub_dfa2eec0[arg1][arg2].field_0 != poolInfo[arg1].field_1024:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if sub_dfa2eec0[arg1][arg2].field_512 > sub_dfa2eec0[arg1][arg2].field_0 * poolInfo[arg1].field_1024 / 10^18:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if sub_dfa2eec0[arg1][arg2].field_0 * poolInfo[arg1].field_1024 / 10^18 < sub_dfa2eec0[arg1][arg2].field_512:
                revert with 'NH{q', 17
            return ((sub_dfa2eec0[arg1][arg2].field_0 * poolInfo[arg1].field_1024 / 10^18) - sub_dfa2eec0[arg1][arg2].field_512)
        if poolInfo[arg1].field_256 <= 0:
            if not sub_dfa2eec0[arg1][arg2].field_0:
                if sub_dfa2eec0[arg1][arg2].field_512 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < sub_dfa2eec0[arg1][arg2].field_512:
                    revert with 'NH{q', 17
                return -sub_dfa2eec0[arg1][arg2].field_512
            if sub_dfa2eec0[arg1][arg2].field_0 and poolInfo[arg1].field_1024 > -1 / sub_dfa2eec0[arg1][arg2].field_0:
                revert with 'NH{q', 17
            if not sub_dfa2eec0[arg1][arg2].field_0:
                revert with 'NH{q', 18
            if sub_dfa2eec0[arg1][arg2].field_0 * poolInfo[arg1].field_1024 / sub_dfa2eec0[arg1][arg2].field_0 != poolInfo[arg1].field_1024:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if sub_dfa2eec0[arg1][arg2].field_512 > sub_dfa2eec0[arg1][arg2].field_0 * poolInfo[arg1].field_1024 / 10^18:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if sub_dfa2eec0[arg1][arg2].field_0 * poolInfo[arg1].field_1024 / 10^18 < sub_dfa2eec0[arg1][arg2].field_512:
                revert with 'NH{q', 17
            return ((sub_dfa2eec0[arg1][arg2].field_0 * poolInfo[arg1].field_1024 / 10^18) - sub_dfa2eec0[arg1][arg2].field_512)
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
                if not sub_dfa2eec0[arg1][arg2].field_0:
                    if sub_dfa2eec0[arg1][arg2].field_512 > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < sub_dfa2eec0[arg1][arg2].field_512:
                        revert with 'NH{q', 17
                    return -sub_dfa2eec0[arg1][arg2].field_512
                if sub_dfa2eec0[arg1][arg2].field_0 and poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) > -1 / sub_dfa2eec0[arg1][arg2].field_0:
                    revert with 'NH{q', 17
                if not sub_dfa2eec0[arg1][arg2].field_0:
                    revert with 'NH{q', 18
                if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / sub_dfa2eec0[arg1][arg2].field_0 != poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256):
                    revert with 0, 'SafeMath: multiplication overflow'
                if sub_dfa2eec0[arg1][arg2].field_512 > (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18 < sub_dfa2eec0[arg1][arg2].field_512:
                    revert with 'NH{q', 17
                return (((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18) - sub_dfa2eec0[arg1][arg2].field_512)
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
                if not sub_dfa2eec0[arg1][arg2].field_0:
                    if sub_dfa2eec0[arg1][arg2].field_512 > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < sub_dfa2eec0[arg1][arg2].field_512:
                        revert with 'NH{q', 17
                    return -sub_dfa2eec0[arg1][arg2].field_512
                if sub_dfa2eec0[arg1][arg2].field_0 and poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) > -1 / sub_dfa2eec0[arg1][arg2].field_0:
                    revert with 'NH{q', 17
                if not sub_dfa2eec0[arg1][arg2].field_0:
                    revert with 'NH{q', 18
                if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / sub_dfa2eec0[arg1][arg2].field_0 != poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256):
                    revert with 0, 'SafeMath: multiplication overflow'
                if sub_dfa2eec0[arg1][arg2].field_512 > (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18 < sub_dfa2eec0[arg1][arg2].field_512:
                    revert with 'NH{q', 17
                return (((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18) - sub_dfa2eec0[arg1][arg2].field_512)
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
                if not sub_dfa2eec0[arg1][arg2].field_0:
                    if sub_dfa2eec0[arg1][arg2].field_512 > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < sub_dfa2eec0[arg1][arg2].field_512:
                        revert with 'NH{q', 17
                    return -sub_dfa2eec0[arg1][arg2].field_512
                if sub_dfa2eec0[arg1][arg2].field_0 and poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) > -1 / sub_dfa2eec0[arg1][arg2].field_0:
                    revert with 'NH{q', 17
                if not sub_dfa2eec0[arg1][arg2].field_0:
                    revert with 'NH{q', 18
                if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / sub_dfa2eec0[arg1][arg2].field_0 != poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256):
                    revert with 0, 'SafeMath: multiplication overflow'
                if sub_dfa2eec0[arg1][arg2].field_512 > (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18 < sub_dfa2eec0[arg1][arg2].field_512:
                    revert with 'NH{q', 17
                return (((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18) - sub_dfa2eec0[arg1][arg2].field_512)
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
            if not sub_dfa2eec0[arg1][arg2].field_0:
                if sub_dfa2eec0[arg1][arg2].field_512 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < sub_dfa2eec0[arg1][arg2].field_512:
                    revert with 'NH{q', 17
                return -sub_dfa2eec0[arg1][arg2].field_512
            if sub_dfa2eec0[arg1][arg2].field_0 and poolInfo[arg1].field_1024 + (10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256) > -1 / sub_dfa2eec0[arg1][arg2].field_0:
                revert with 'NH{q', 17
            if not sub_dfa2eec0[arg1][arg2].field_0:
                revert with 'NH{q', 18
            if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / sub_dfa2eec0[arg1][arg2].field_0 != poolInfo[arg1].field_1024 + (10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256):
                revert with 0, 'SafeMath: multiplication overflow'
            if sub_dfa2eec0[arg1][arg2].field_512 > (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18 < sub_dfa2eec0[arg1][arg2].field_512:
                revert with 'NH{q', 17
            return (((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18) - sub_dfa2eec0[arg1][arg2].field_512)
        if poolInfo[arg1].field_1536 <= poolInfo[arg1].field_768:
            if poolInfo[arg1].field_256 <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not poolInfo[arg1].field_256:
                revert with 'NH{q', 18
            if poolInfo[arg1].field_1024 > -(0 / poolInfo[arg1].field_256) - 1:
                revert with 'NH{q', 17
            if poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            if not sub_dfa2eec0[arg1][arg2].field_0:
                if sub_dfa2eec0[arg1][arg2].field_512 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < sub_dfa2eec0[arg1][arg2].field_512:
                    revert with 'NH{q', 17
                return -sub_dfa2eec0[arg1][arg2].field_512
            if sub_dfa2eec0[arg1][arg2].field_0 and poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) > -1 / sub_dfa2eec0[arg1][arg2].field_0:
                revert with 'NH{q', 17
            if not sub_dfa2eec0[arg1][arg2].field_0:
                revert with 'NH{q', 18
            if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / sub_dfa2eec0[arg1][arg2].field_0 != poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256):
                revert with 0, 'SafeMath: multiplication overflow'
            if sub_dfa2eec0[arg1][arg2].field_512 > (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18 < sub_dfa2eec0[arg1][arg2].field_512:
                revert with 'NH{q', 17
            return (((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18) - sub_dfa2eec0[arg1][arg2].field_512)
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
            if not sub_dfa2eec0[arg1][arg2].field_0:
                if sub_dfa2eec0[arg1][arg2].field_512 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < sub_dfa2eec0[arg1][arg2].field_512:
                    revert with 'NH{q', 17
                return -sub_dfa2eec0[arg1][arg2].field_512
            if sub_dfa2eec0[arg1][arg2].field_0 and poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) > -1 / sub_dfa2eec0[arg1][arg2].field_0:
                revert with 'NH{q', 17
            if not sub_dfa2eec0[arg1][arg2].field_0:
                revert with 'NH{q', 18
            if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / sub_dfa2eec0[arg1][arg2].field_0 != poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256):
                revert with 0, 'SafeMath: multiplication overflow'
            if sub_dfa2eec0[arg1][arg2].field_512 > (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18 < sub_dfa2eec0[arg1][arg2].field_512:
                revert with 'NH{q', 17
            return (((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18) - sub_dfa2eec0[arg1][arg2].field_512)
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
            if not sub_dfa2eec0[arg1][arg2].field_0:
                if sub_dfa2eec0[arg1][arg2].field_512 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < sub_dfa2eec0[arg1][arg2].field_512:
                    revert with 'NH{q', 17
                return -sub_dfa2eec0[arg1][arg2].field_512
            if sub_dfa2eec0[arg1][arg2].field_0 and poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) > -1 / sub_dfa2eec0[arg1][arg2].field_0:
                revert with 'NH{q', 17
            if not sub_dfa2eec0[arg1][arg2].field_0:
                revert with 'NH{q', 18
            if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / sub_dfa2eec0[arg1][arg2].field_0 != poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256):
                revert with 0, 'SafeMath: multiplication overflow'
            if sub_dfa2eec0[arg1][arg2].field_512 > (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18 < sub_dfa2eec0[arg1][arg2].field_512:
                revert with 'NH{q', 17
            return (((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18) - sub_dfa2eec0[arg1][arg2].field_512)
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
        if not sub_dfa2eec0[arg1][arg2].field_0:
            if sub_dfa2eec0[arg1][arg2].field_512 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < sub_dfa2eec0[arg1][arg2].field_512:
                revert with 'NH{q', 17
            return -sub_dfa2eec0[arg1][arg2].field_512
        if sub_dfa2eec0[arg1][arg2].field_0 and poolInfo[arg1].field_1024 + (10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256) > -1 / sub_dfa2eec0[arg1][arg2].field_0:
            revert with 'NH{q', 17
        if not sub_dfa2eec0[arg1][arg2].field_0:
            revert with 'NH{q', 18
        if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / sub_dfa2eec0[arg1][arg2].field_0 != poolInfo[arg1].field_1024 + (10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256):
            revert with 0, 'SafeMath: multiplication overflow'
        if sub_dfa2eec0[arg1][arg2].field_512 > (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18 < sub_dfa2eec0[arg1][arg2].field_512:
            revert with 'NH{q', 17
        return (((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18) - sub_dfa2eec0[arg1][arg2].field_512)
    if block.number <= poolInfo[arg1].field_1280:
        if not sub_dfa2eec0[arg1][arg2].field_0:
            if sub_dfa2eec0[arg1][arg2].field_512 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < sub_dfa2eec0[arg1][arg2].field_512:
                revert with 'NH{q', 17
            return -sub_dfa2eec0[arg1][arg2].field_512
        if sub_dfa2eec0[arg1][arg2].field_0 and poolInfo[arg1].field_1024 > -1 / sub_dfa2eec0[arg1][arg2].field_0:
            revert with 'NH{q', 17
        if not sub_dfa2eec0[arg1][arg2].field_0:
            revert with 'NH{q', 18
        if sub_dfa2eec0[arg1][arg2].field_0 * poolInfo[arg1].field_1024 / sub_dfa2eec0[arg1][arg2].field_0 != poolInfo[arg1].field_1024:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if sub_dfa2eec0[arg1][arg2].field_512 > sub_dfa2eec0[arg1][arg2].field_0 * poolInfo[arg1].field_1024 / 10^18:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if sub_dfa2eec0[arg1][arg2].field_0 * poolInfo[arg1].field_1024 / 10^18 < sub_dfa2eec0[arg1][arg2].field_512:
            revert with 'NH{q', 17
        return ((sub_dfa2eec0[arg1][arg2].field_0 * poolInfo[arg1].field_1024 / 10^18) - sub_dfa2eec0[arg1][arg2].field_512)
    if block.number < poolInfo[arg1].field_1280:
        if not sub_dfa2eec0[arg1][arg2].field_0:
            if sub_dfa2eec0[arg1][arg2].field_512 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < sub_dfa2eec0[arg1][arg2].field_512:
                revert with 'NH{q', 17
            return -sub_dfa2eec0[arg1][arg2].field_512
        if sub_dfa2eec0[arg1][arg2].field_0 and poolInfo[arg1].field_1024 > -1 / sub_dfa2eec0[arg1][arg2].field_0:
            revert with 'NH{q', 17
        if not sub_dfa2eec0[arg1][arg2].field_0:
            revert with 'NH{q', 18
        if sub_dfa2eec0[arg1][arg2].field_0 * poolInfo[arg1].field_1024 / sub_dfa2eec0[arg1][arg2].field_0 != poolInfo[arg1].field_1024:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if sub_dfa2eec0[arg1][arg2].field_512 > sub_dfa2eec0[arg1][arg2].field_0 * poolInfo[arg1].field_1024 / 10^18:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if sub_dfa2eec0[arg1][arg2].field_0 * poolInfo[arg1].field_1024 / 10^18 < sub_dfa2eec0[arg1][arg2].field_512:
            revert with 'NH{q', 17
        return ((sub_dfa2eec0[arg1][arg2].field_0 * poolInfo[arg1].field_1024 / 10^18) - sub_dfa2eec0[arg1][arg2].field_512)
    if poolInfo[arg1].field_1280 >= poolInfo[arg1].field_1536:
        if not sub_dfa2eec0[arg1][arg2].field_0:
            if sub_dfa2eec0[arg1][arg2].field_512 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < sub_dfa2eec0[arg1][arg2].field_512:
                revert with 'NH{q', 17
            return -sub_dfa2eec0[arg1][arg2].field_512
        if sub_dfa2eec0[arg1][arg2].field_0 and poolInfo[arg1].field_1024 > -1 / sub_dfa2eec0[arg1][arg2].field_0:
            revert with 'NH{q', 17
        if not sub_dfa2eec0[arg1][arg2].field_0:
            revert with 'NH{q', 18
        if sub_dfa2eec0[arg1][arg2].field_0 * poolInfo[arg1].field_1024 / sub_dfa2eec0[arg1][arg2].field_0 != poolInfo[arg1].field_1024:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if sub_dfa2eec0[arg1][arg2].field_512 > sub_dfa2eec0[arg1][arg2].field_0 * poolInfo[arg1].field_1024 / 10^18:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if sub_dfa2eec0[arg1][arg2].field_0 * poolInfo[arg1].field_1024 / 10^18 < sub_dfa2eec0[arg1][arg2].field_512:
            revert with 'NH{q', 17
        return ((sub_dfa2eec0[arg1][arg2].field_0 * poolInfo[arg1].field_1024 / 10^18) - sub_dfa2eec0[arg1][arg2].field_512)
    if poolInfo[arg1].field_256 <= 0:
        if not sub_dfa2eec0[arg1][arg2].field_0:
            if sub_dfa2eec0[arg1][arg2].field_512 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < sub_dfa2eec0[arg1][arg2].field_512:
                revert with 'NH{q', 17
            return -sub_dfa2eec0[arg1][arg2].field_512
        if sub_dfa2eec0[arg1][arg2].field_0 and poolInfo[arg1].field_1024 > -1 / sub_dfa2eec0[arg1][arg2].field_0:
            revert with 'NH{q', 17
        if not sub_dfa2eec0[arg1][arg2].field_0:
            revert with 'NH{q', 18
        if sub_dfa2eec0[arg1][arg2].field_0 * poolInfo[arg1].field_1024 / sub_dfa2eec0[arg1][arg2].field_0 != poolInfo[arg1].field_1024:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if sub_dfa2eec0[arg1][arg2].field_512 > sub_dfa2eec0[arg1][arg2].field_0 * poolInfo[arg1].field_1024 / 10^18:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if sub_dfa2eec0[arg1][arg2].field_0 * poolInfo[arg1].field_1024 / 10^18 < sub_dfa2eec0[arg1][arg2].field_512:
            revert with 'NH{q', 17
        return ((sub_dfa2eec0[arg1][arg2].field_0 * poolInfo[arg1].field_1024 / 10^18) - sub_dfa2eec0[arg1][arg2].field_512)
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
            if not sub_dfa2eec0[arg1][arg2].field_0:
                if sub_dfa2eec0[arg1][arg2].field_512 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < sub_dfa2eec0[arg1][arg2].field_512:
                    revert with 'NH{q', 17
                return -sub_dfa2eec0[arg1][arg2].field_512
            if sub_dfa2eec0[arg1][arg2].field_0 and poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) > -1 / sub_dfa2eec0[arg1][arg2].field_0:
                revert with 'NH{q', 17
            if not sub_dfa2eec0[arg1][arg2].field_0:
                revert with 'NH{q', 18
            if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / sub_dfa2eec0[arg1][arg2].field_0 != poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256):
                revert with 0, 'SafeMath: multiplication overflow'
            if sub_dfa2eec0[arg1][arg2].field_512 > (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18 < sub_dfa2eec0[arg1][arg2].field_512:
                revert with 'NH{q', 17
            return (((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18) - sub_dfa2eec0[arg1][arg2].field_512)
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
            if not sub_dfa2eec0[arg1][arg2].field_0:
                if sub_dfa2eec0[arg1][arg2].field_512 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < sub_dfa2eec0[arg1][arg2].field_512:
                    revert with 'NH{q', 17
                return -sub_dfa2eec0[arg1][arg2].field_512
            if sub_dfa2eec0[arg1][arg2].field_0 and poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) > -1 / sub_dfa2eec0[arg1][arg2].field_0:
                revert with 'NH{q', 17
            if not sub_dfa2eec0[arg1][arg2].field_0:
                revert with 'NH{q', 18
            if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / sub_dfa2eec0[arg1][arg2].field_0 != poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256):
                revert with 0, 'SafeMath: multiplication overflow'
            if sub_dfa2eec0[arg1][arg2].field_512 > (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18 < sub_dfa2eec0[arg1][arg2].field_512:
                revert with 'NH{q', 17
            return (((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18) - sub_dfa2eec0[arg1][arg2].field_512)
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
            if not sub_dfa2eec0[arg1][arg2].field_0:
                if sub_dfa2eec0[arg1][arg2].field_512 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < sub_dfa2eec0[arg1][arg2].field_512:
                    revert with 'NH{q', 17
                return -sub_dfa2eec0[arg1][arg2].field_512
            if sub_dfa2eec0[arg1][arg2].field_0 and poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) > -1 / sub_dfa2eec0[arg1][arg2].field_0:
                revert with 'NH{q', 17
            if not sub_dfa2eec0[arg1][arg2].field_0:
                revert with 'NH{q', 18
            if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / sub_dfa2eec0[arg1][arg2].field_0 != poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256):
                revert with 0, 'SafeMath: multiplication overflow'
            if sub_dfa2eec0[arg1][arg2].field_512 > (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18 < sub_dfa2eec0[arg1][arg2].field_512:
                revert with 'NH{q', 17
            return (((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18) - sub_dfa2eec0[arg1][arg2].field_512)
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
        if not sub_dfa2eec0[arg1][arg2].field_0:
            if sub_dfa2eec0[arg1][arg2].field_512 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < sub_dfa2eec0[arg1][arg2].field_512:
                revert with 'NH{q', 17
            return -sub_dfa2eec0[arg1][arg2].field_512
        if sub_dfa2eec0[arg1][arg2].field_0 and poolInfo[arg1].field_1024 + (10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256) > -1 / sub_dfa2eec0[arg1][arg2].field_0:
            revert with 'NH{q', 17
        if not sub_dfa2eec0[arg1][arg2].field_0:
            revert with 'NH{q', 18
        if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / sub_dfa2eec0[arg1][arg2].field_0 != poolInfo[arg1].field_1024 + (10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256):
            revert with 0, 'SafeMath: multiplication overflow'
        if sub_dfa2eec0[arg1][arg2].field_512 > (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18 < sub_dfa2eec0[arg1][arg2].field_512:
            revert with 'NH{q', 17
        return (((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18) - sub_dfa2eec0[arg1][arg2].field_512)
    if poolInfo[arg1].field_1536 <= poolInfo[arg1].field_1280:
        if poolInfo[arg1].field_256 <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not poolInfo[arg1].field_256:
            revert with 'NH{q', 18
        if poolInfo[arg1].field_1024 > -(0 / poolInfo[arg1].field_256) - 1:
            revert with 'NH{q', 17
        if poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
            revert with 0, 'SafeMath: addition overflow'
        if not sub_dfa2eec0[arg1][arg2].field_0:
            if sub_dfa2eec0[arg1][arg2].field_512 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < sub_dfa2eec0[arg1][arg2].field_512:
                revert with 'NH{q', 17
            return -sub_dfa2eec0[arg1][arg2].field_512
        if sub_dfa2eec0[arg1][arg2].field_0 and poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) > -1 / sub_dfa2eec0[arg1][arg2].field_0:
            revert with 'NH{q', 17
        if not sub_dfa2eec0[arg1][arg2].field_0:
            revert with 'NH{q', 18
        if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / sub_dfa2eec0[arg1][arg2].field_0 != poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256):
            revert with 0, 'SafeMath: multiplication overflow'
        if sub_dfa2eec0[arg1][arg2].field_512 > (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18 < sub_dfa2eec0[arg1][arg2].field_512:
            revert with 'NH{q', 17
        return (((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18) - sub_dfa2eec0[arg1][arg2].field_512)
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
        if not sub_dfa2eec0[arg1][arg2].field_0:
            if sub_dfa2eec0[arg1][arg2].field_512 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < sub_dfa2eec0[arg1][arg2].field_512:
                revert with 'NH{q', 17
            return -sub_dfa2eec0[arg1][arg2].field_512
        if sub_dfa2eec0[arg1][arg2].field_0 and poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) > -1 / sub_dfa2eec0[arg1][arg2].field_0:
            revert with 'NH{q', 17
        if not sub_dfa2eec0[arg1][arg2].field_0:
            revert with 'NH{q', 18
        if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / sub_dfa2eec0[arg1][arg2].field_0 != poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256):
            revert with 0, 'SafeMath: multiplication overflow'
        if sub_dfa2eec0[arg1][arg2].field_512 > (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18 < sub_dfa2eec0[arg1][arg2].field_512:
            revert with 'NH{q', 17
        return (((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18) - sub_dfa2eec0[arg1][arg2].field_512)
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
        if not sub_dfa2eec0[arg1][arg2].field_0:
            if sub_dfa2eec0[arg1][arg2].field_512 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < sub_dfa2eec0[arg1][arg2].field_512:
                revert with 'NH{q', 17
            return -sub_dfa2eec0[arg1][arg2].field_512
        if sub_dfa2eec0[arg1][arg2].field_0 and poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) > -1 / sub_dfa2eec0[arg1][arg2].field_0:
            revert with 'NH{q', 17
        if not sub_dfa2eec0[arg1][arg2].field_0:
            revert with 'NH{q', 18
        if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / sub_dfa2eec0[arg1][arg2].field_0 != poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256):
            revert with 0, 'SafeMath: multiplication overflow'
        if sub_dfa2eec0[arg1][arg2].field_512 > (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18 < sub_dfa2eec0[arg1][arg2].field_512:
            revert with 'NH{q', 17
        return (((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18) - sub_dfa2eec0[arg1][arg2].field_512)
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
    if not sub_dfa2eec0[arg1][arg2].field_0:
        if sub_dfa2eec0[arg1][arg2].field_512 > 0:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if 0 < sub_dfa2eec0[arg1][arg2].field_512:
            revert with 'NH{q', 17
        return -sub_dfa2eec0[arg1][arg2].field_512
    if sub_dfa2eec0[arg1][arg2].field_0 and poolInfo[arg1].field_1024 + (10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256) > -1 / sub_dfa2eec0[arg1][arg2].field_0:
        revert with 'NH{q', 17
    if not sub_dfa2eec0[arg1][arg2].field_0:
        revert with 'NH{q', 18
    if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / sub_dfa2eec0[arg1][arg2].field_0 != poolInfo[arg1].field_1024 + (10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256):
        revert with 0, 'SafeMath: multiplication overflow'
    if sub_dfa2eec0[arg1][arg2].field_512 > (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18 < sub_dfa2eec0[arg1][arg2].field_512:
        revert with 'NH{q', 17
    return (((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][arg2].field_0) + (10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][arg2].field_0) / 10^18) - sub_dfa2eec0[arg1][arg2].field_512)
}



}
