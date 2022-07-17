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
                require arg3 >= block.timestamp
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
                require arg3 >= block.timestamp
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
                require arg3 >= block.timestamp
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
                require arg3 >= block.timestamp
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

function sub_12931122(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == address(arg2)
    if arg1 >= poolInfo.length:
        revert with 0, 'Pool does not exist'
    mem[0] = address(arg2)
    mem[32] = sha3(arg1, 1)
    idx = 0
    s = 0
    while idx < sub_8254a57e[arg1][address(arg2)].field_256:
        if idx >= sub_8254a57e[arg1][address(arg2)].field_256:
            revert with 'NH{q', 50
        if arg1 >= poolInfo.length:
            revert with 0, 'Pool does not exist'
        mem[0] = sub_8254a57e[arg1][address(arg2)][idx + 1].field_0
        mem[32] = sha3(arg1, 5)
        if poolInfo[arg1].field_768 >= poolInfo[arg1].field_1280:
            if block.number <= poolInfo[arg1].field_768:
                if not sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                    _591 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_591] = 26
                    mem[_591 + 32] = 'SafeMath: division by zero'
                    _616 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_616] = 30
                    mem[_616 + 32] = 'SafeMath: subtraction overflow'
                    if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= 0:
                        if 0 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                            revert with 'NH{q', 17
                        if s > sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 - 1:
                            revert with 'NH{q', 17
                        if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        mem[0] = address(arg2)
                        mem[32] = sha3(arg1, 1)
                        idx = idx + 1
                        s = s - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                        continue 
                    _623 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_623 + idx + 68] = mem[_616 + idx + 32]
                        mem[0] = address(arg2)
                        mem[32] = sha3(arg1, 1)
                        idx = idx + 32
                        continue 
                    mem[_623 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _623 + -mem[64] + 100
                if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 and poolInfo[arg1].field_1024 > -1 / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                    revert with 'NH{q', 17
                if not sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                    revert with 'NH{q', 18
                if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 * poolInfo[arg1].field_1024 / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 != poolInfo[arg1].field_1024:
                    revert with 0, 'SafeMath: multiplication overflow'
                _630 = mem[64]
                mem[64] = mem[64] + 64
                mem[_630] = 26
                mem[_630 + 32] = 'SafeMath: division by zero'
                _690 = mem[64]
                mem[64] = mem[64] + 64
                mem[_690] = 30
                mem[_690 + 32] = 'SafeMath: subtraction overflow'
                if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 * poolInfo[arg1].field_1024 / 10^18:
                    if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 * poolInfo[arg1].field_1024 / 10^18 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                        revert with 'NH{q', 17
                    if s > -(sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 * poolInfo[arg1].field_1024 / 10^18) + sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 - 1:
                        revert with 'NH{q', 17
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 1
                    s = s + (sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 * poolInfo[arg1].field_1024 / 10^18) - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                    continue 
                _698 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_698 + idx + 68] = mem[_690 + idx + 32]
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 32
                    continue 
                mem[_698 + 98] = 0
                revert with memory
                  from mem[64]
                   len _698 + -mem[64] + 100
            if block.number < poolInfo[arg1].field_1280:
                if not sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                    _592 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_592] = 26
                    mem[_592 + 32] = 'SafeMath: division by zero'
                    _618 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_618] = 30
                    mem[_618 + 32] = 'SafeMath: subtraction overflow'
                    if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= 0:
                        if 0 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                            revert with 'NH{q', 17
                        if s > sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 - 1:
                            revert with 'NH{q', 17
                        if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        mem[0] = address(arg2)
                        mem[32] = sha3(arg1, 1)
                        idx = idx + 1
                        s = s - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                        continue 
                    _631 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_631 + idx + 68] = mem[_618 + idx + 32]
                        mem[0] = address(arg2)
                        mem[32] = sha3(arg1, 1)
                        idx = idx + 32
                        continue 
                    mem[_631 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _631 + -mem[64] + 100
                if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 and poolInfo[arg1].field_1024 > -1 / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                    revert with 'NH{q', 17
                if not sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                    revert with 'NH{q', 18
                if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 * poolInfo[arg1].field_1024 / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 != poolInfo[arg1].field_1024:
                    revert with 0, 'SafeMath: multiplication overflow'
                _637 = mem[64]
                mem[64] = mem[64] + 64
                mem[_637] = 26
                mem[_637 + 32] = 'SafeMath: division by zero'
                _694 = mem[64]
                mem[64] = mem[64] + 64
                mem[_694] = 30
                mem[_694 + 32] = 'SafeMath: subtraction overflow'
                if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 * poolInfo[arg1].field_1024 / 10^18:
                    if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 * poolInfo[arg1].field_1024 / 10^18 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                        revert with 'NH{q', 17
                    if s > -(sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 * poolInfo[arg1].field_1024 / 10^18) + sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 - 1:
                        revert with 'NH{q', 17
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 1
                    s = s + (sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 * poolInfo[arg1].field_1024 / 10^18) - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                    continue 
                _703 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_703 + idx + 68] = mem[_694 + idx + 32]
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 32
                    continue 
                mem[_703 + 98] = 0
                revert with memory
                  from mem[64]
                   len _703 + -mem[64] + 100
            if poolInfo[arg1].field_768 >= poolInfo[arg1].field_1536:
                if not sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                    _594 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_594] = 26
                    mem[_594 + 32] = 'SafeMath: division by zero'
                    _625 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_625] = 30
                    mem[_625 + 32] = 'SafeMath: subtraction overflow'
                    if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= 0:
                        if 0 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                            revert with 'NH{q', 17
                        if s > sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 - 1:
                            revert with 'NH{q', 17
                        if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        mem[0] = address(arg2)
                        mem[32] = sha3(arg1, 1)
                        idx = idx + 1
                        s = s - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                        continue 
                    _638 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_638 + idx + 68] = mem[_625 + idx + 32]
                        mem[0] = address(arg2)
                        mem[32] = sha3(arg1, 1)
                        idx = idx + 32
                        continue 
                    mem[_638 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _638 + -mem[64] + 100
                if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 and poolInfo[arg1].field_1024 > -1 / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                    revert with 'NH{q', 17
                if not sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                    revert with 'NH{q', 18
                if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 * poolInfo[arg1].field_1024 / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 != poolInfo[arg1].field_1024:
                    revert with 0, 'SafeMath: multiplication overflow'
                _644 = mem[64]
                mem[64] = mem[64] + 64
                mem[_644] = 26
                mem[_644 + 32] = 'SafeMath: division by zero'
                _700 = mem[64]
                mem[64] = mem[64] + 64
                mem[_700] = 30
                mem[_700 + 32] = 'SafeMath: subtraction overflow'
                if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 * poolInfo[arg1].field_1024 / 10^18:
                    if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 * poolInfo[arg1].field_1024 / 10^18 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                        revert with 'NH{q', 17
                    if s > -(sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 * poolInfo[arg1].field_1024 / 10^18) + sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 - 1:
                        revert with 'NH{q', 17
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
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
                    mem[_712 + idx + 68] = mem[_700 + idx + 32]
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 32
                    continue 
                mem[_712 + 98] = 0
                revert with memory
                  from mem[64]
                   len _712 + -mem[64] + 100
            if poolInfo[arg1].field_256 <= 0:
                if not sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                    _598 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_598] = 26
                    mem[_598 + 32] = 'SafeMath: division by zero'
                    _633 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_633] = 30
                    mem[_633 + 32] = 'SafeMath: subtraction overflow'
                    if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= 0:
                        if 0 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                            revert with 'NH{q', 17
                        if s > sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 - 1:
                            revert with 'NH{q', 17
                        if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
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
                        mem[_645 + idx + 68] = mem[_633 + idx + 32]
                        mem[0] = address(arg2)
                        mem[32] = sha3(arg1, 1)
                        idx = idx + 32
                        continue 
                    mem[_645 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _645 + -mem[64] + 100
                if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 and poolInfo[arg1].field_1024 > -1 / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                    revert with 'NH{q', 17
                if not sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                    revert with 'NH{q', 18
                if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 * poolInfo[arg1].field_1024 / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 != poolInfo[arg1].field_1024:
                    revert with 0, 'SafeMath: multiplication overflow'
                _649 = mem[64]
                mem[64] = mem[64] + 64
                mem[_649] = 26
                mem[_649 + 32] = 'SafeMath: division by zero'
                _705 = mem[64]
                mem[64] = mem[64] + 64
                mem[_705] = 30
                mem[_705 + 32] = 'SafeMath: subtraction overflow'
                if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 * poolInfo[arg1].field_1024 / 10^18:
                    if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 * poolInfo[arg1].field_1024 / 10^18 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                        revert with 'NH{q', 17
                    if s > -(sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 * poolInfo[arg1].field_1024 / 10^18) + sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 - 1:
                        revert with 'NH{q', 17
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 1
                    s = s + (sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 * poolInfo[arg1].field_1024 / 10^18) - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                    continue 
                _722 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_722 + idx + 68] = mem[_705 + idx + 32]
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 32
                    continue 
                mem[_722 + 98] = 0
                revert with memory
                  from mem[64]
                   len _722 + -mem[64] + 100
            if block.number <= poolInfo[arg1].field_1536:
                if block.number <= poolInfo[arg1].field_768:
                    _611 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_611] = 26
                    mem[_611 + 32] = 'SafeMath: division by zero'
                    _683 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_683] = 26
                    mem[_683 + 32] = 'SafeMath: division by zero'
                    if poolInfo[arg1].field_256 <= 0:
                        _691 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_691 + idx + 68] = mem[_683 + idx + 32]
                            mem[0] = address(arg2)
                            mem[32] = sha3(arg1, 1)
                            idx = idx + 32
                            continue 
                        mem[_691 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _691 + -mem[64] + 100
                    if not poolInfo[arg1].field_256:
                        revert with 'NH{q', 18
                    if poolInfo[arg1].field_1024 > -(0 / poolInfo[arg1].field_256) - 1:
                        revert with 'NH{q', 17
                    if poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    if not sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                        _807 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_807] = 26
                        mem[_807 + 32] = 'SafeMath: division by zero'
                        _842 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_842] = 30
                        mem[_842 + 32] = 'SafeMath: subtraction overflow'
                        if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= 0:
                            if 0 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                                revert with 'NH{q', 17
                            if s > sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 - 1:
                                revert with 'NH{q', 17
                            if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            mem[0] = address(arg2)
                            mem[32] = sha3(arg1, 1)
                            idx = idx + 1
                            s = s - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                            continue 
                        _861 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_861 + idx + 68] = mem[_842 + idx + 32]
                            mem[0] = address(arg2)
                            mem[32] = sha3(arg1, 1)
                            idx = idx + 32
                            continue 
                        mem[_861 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _861 + -mem[64] + 100
                    if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 and poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) > -1 / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                        revert with 'NH{q', 17
                    if not sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                        revert with 'NH{q', 18
                    if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 != poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256):
                        revert with 0, 'SafeMath: multiplication overflow'
                    _865 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_865] = 26
                    mem[_865 + 32] = 'SafeMath: division by zero'
                    _923 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_923] = 30
                    mem[_923 + 32] = 'SafeMath: subtraction overflow'
                    if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18:
                        if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                            revert with 'NH{q', 17
                        if s > -((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18) + sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 - 1:
                            revert with 'NH{q', 17
                        if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        mem[0] = address(arg2)
                        mem[32] = sha3(arg1, 1)
                        idx = idx + 1
                        s = s + ((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18) - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                        continue 
                    _941 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_941 + idx + 68] = mem[_923 + idx + 32]
                        mem[0] = address(arg2)
                        mem[32] = sha3(arg1, 1)
                        idx = idx + 32
                        continue 
                    mem[_941 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _941 + -mem[64] + 100
                _595 = mem[64]
                mem[64] = mem[64] + 64
                mem[_595] = 30
                mem[_595 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[arg1].field_768 > block.number:
                    _602 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_602 + idx + 68] = mem[_595 + idx + 32]
                        mem[0] = address(arg2)
                        mem[32] = sha3(arg1, 1)
                        idx = idx + 32
                        continue 
                    mem[_602 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _602 + -mem[64] + 100
                if block.number < poolInfo[arg1].field_768:
                    revert with 'NH{q', 17
                if not block.number - poolInfo[arg1].field_768:
                    _666 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_666] = 26
                    mem[_666 + 32] = 'SafeMath: division by zero'
                    _747 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_747] = 26
                    mem[_747 + 32] = 'SafeMath: division by zero'
                    if poolInfo[arg1].field_256 <= 0:
                        _757 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_757 + idx + 68] = mem[_747 + idx + 32]
                            mem[0] = address(arg2)
                            mem[32] = sha3(arg1, 1)
                            idx = idx + 32
                            continue 
                        mem[_757 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _757 + -mem[64] + 100
                    if not poolInfo[arg1].field_256:
                        revert with 'NH{q', 18
                    if poolInfo[arg1].field_1024 > -(0 / poolInfo[arg1].field_256) - 1:
                        revert with 'NH{q', 17
                    if poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    if not sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                        _844 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_844] = 26
                        mem[_844 + 32] = 'SafeMath: division by zero'
                        _910 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_910] = 30
                        mem[_910 + 32] = 'SafeMath: subtraction overflow'
                        if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= 0:
                            if 0 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                                revert with 'NH{q', 17
                            if s > sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 - 1:
                                revert with 'NH{q', 17
                            if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            mem[0] = address(arg2)
                            mem[32] = sha3(arg1, 1)
                            idx = idx + 1
                            s = s - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                            continue 
                        _920 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_920 + idx + 68] = mem[_910 + idx + 32]
                            mem[0] = address(arg2)
                            mem[32] = sha3(arg1, 1)
                            idx = idx + 32
                            continue 
                        mem[_920 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _920 + -mem[64] + 100
                    if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 and poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) > -1 / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                        revert with 'NH{q', 17
                    if not sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                        revert with 'NH{q', 18
                    if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 != poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256):
                        revert with 0, 'SafeMath: multiplication overflow'
                    _925 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_925] = 26
                    mem[_925 + 32] = 'SafeMath: division by zero'
                    _987 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_987] = 30
                    mem[_987 + 32] = 'SafeMath: subtraction overflow'
                    if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18:
                        if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                            revert with 'NH{q', 17
                        if s > -((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18) + sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 - 1:
                            revert with 'NH{q', 17
                        if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        mem[0] = address(arg2)
                        mem[32] = sha3(arg1, 1)
                        idx = idx + 1
                        s = s + ((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18) - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                        continue 
                    _1000 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1000 + idx + 68] = mem[_987 + idx + 32]
                        mem[0] = address(arg2)
                        mem[32] = sha3(arg1, 1)
                        idx = idx + 32
                        continue 
                    mem[_1000 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _1000 + -mem[64] + 100
                if block.number - poolInfo[arg1].field_768 and poolInfo[arg1].field_512 > -1 / block.number - poolInfo[arg1].field_768:
                    revert with 'NH{q', 17
                if not block.number - poolInfo[arg1].field_768:
                    revert with 'NH{q', 18
                if (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / block.number - poolInfo[arg1].field_768 != poolInfo[arg1].field_512:
                    revert with 0, 'SafeMath: multiplication overflow'
                _743 = mem[64]
                mem[64] = mem[64] + 64
                mem[_743] = 26
                mem[_743 + 32] = 'SafeMath: division by zero'
                if not (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000:
                    _808 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_808] = 26
                    mem[_808 + 32] = 'SafeMath: division by zero'
                    if poolInfo[arg1].field_256 <= 0:
                        _817 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_817 + idx + 68] = mem[_808 + idx + 32]
                            mem[0] = address(arg2)
                            mem[32] = sha3(arg1, 1)
                            idx = idx + 32
                            continue 
                        mem[_817 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _817 + -mem[64] + 100
                    if not poolInfo[arg1].field_256:
                        revert with 'NH{q', 18
                    if poolInfo[arg1].field_1024 > -(0 / poolInfo[arg1].field_256) - 1:
                        revert with 'NH{q', 17
                    if poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    if not sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                        _924 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_924] = 26
                        mem[_924 + 32] = 'SafeMath: division by zero'
                        _986 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_986] = 30
                        mem[_986 + 32] = 'SafeMath: subtraction overflow'
                        if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= 0:
                            if 0 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                                revert with 'NH{q', 17
                            if s > sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 - 1:
                                revert with 'NH{q', 17
                            if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            mem[0] = address(arg2)
                            mem[32] = sha3(arg1, 1)
                            idx = idx + 1
                            s = s - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                            continue 
                        _999 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_999 + idx + 68] = mem[_986 + idx + 32]
                            mem[0] = address(arg2)
                            mem[32] = sha3(arg1, 1)
                            idx = idx + 32
                            continue 
                        mem[_999 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _999 + -mem[64] + 100
                    if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 and poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) > -1 / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                        revert with 'NH{q', 17
                    if not sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                        revert with 'NH{q', 18
                    if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 != poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256):
                        revert with 0, 'SafeMath: multiplication overflow'
                    _1006 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1006] = 26
                    mem[_1006 + 32] = 'SafeMath: division by zero'
                    _1057 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1057] = 30
                    mem[_1057 + 32] = 'SafeMath: subtraction overflow'
                    if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18:
                        if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                            revert with 'NH{q', 17
                        if s > -((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18) + sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 - 1:
                            revert with 'NH{q', 17
                        if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        mem[0] = address(arg2)
                        mem[32] = sha3(arg1, 1)
                        idx = idx + 1
                        s = s + ((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18) - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                        continue 
                    _1068 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1068 + idx + 68] = mem[_1057 + idx + 32]
                        mem[0] = address(arg2)
                        mem[32] = sha3(arg1, 1)
                        idx = idx + 32
                        continue 
                    mem[_1068 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _1068 + -mem[64] + 100
                if (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 and 10^18 > -1 / (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000:
                    revert with 'NH{q', 17
                if not (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000:
                    revert with 'NH{q', 18
                if 10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                _866 = mem[64]
                mem[64] = mem[64] + 64
                mem[_866] = 26
                mem[_866 + 32] = 'SafeMath: division by zero'
                if poolInfo[arg1].field_256 <= 0:
                    _876 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_876 + idx + 68] = mem[_866 + idx + 32]
                        mem[0] = address(arg2)
                        mem[32] = sha3(arg1, 1)
                        idx = idx + 32
                        continue 
                    mem[_876 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _876 + -mem[64] + 100
                if not poolInfo[arg1].field_256:
                    revert with 'NH{q', 18
                if poolInfo[arg1].field_1024 > -(10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256) - 1:
                    revert with 'NH{q', 17
                if poolInfo[arg1].field_1024 + (10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                if not sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                    _1005 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1005] = 26
                    mem[_1005 + 32] = 'SafeMath: division by zero'
                    _1056 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1056] = 30
                    mem[_1056 + 32] = 'SafeMath: subtraction overflow'
                    if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= 0:
                        if 0 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                            revert with 'NH{q', 17
                        if s > sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 - 1:
                            revert with 'NH{q', 17
                        if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        mem[0] = address(arg2)
                        mem[32] = sha3(arg1, 1)
                        idx = idx + 1
                        s = s - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                        continue 
                    _1067 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1067 + idx + 68] = mem[_1056 + idx + 32]
                        mem[0] = address(arg2)
                        mem[32] = sha3(arg1, 1)
                        idx = idx + 32
                        continue 
                    mem[_1067 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _1067 + -mem[64] + 100
                if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 and poolInfo[arg1].field_1024 + (10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256) > -1 / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                    revert with 'NH{q', 17
                if not sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                    revert with 'NH{q', 18
                if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 != poolInfo[arg1].field_1024 + (10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256):
                    revert with 0, 'SafeMath: multiplication overflow'
                _1075 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1075] = 26
                mem[_1075 + 32] = 'SafeMath: division by zero'
                _1115 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1115] = 30
                mem[_1115 + 32] = 'SafeMath: subtraction overflow'
                if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18:
                    if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                        revert with 'NH{q', 17
                    if s > -((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18) + sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 - 1:
                        revert with 'NH{q', 17
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
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
                    mem[_1119 + idx + 68] = mem[_1115 + idx + 32]
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 32
                    continue 
                mem[_1119 + 98] = 0
                revert with memory
                  from mem[64]
                   len _1119 + -mem[64] + 100
            if poolInfo[arg1].field_1536 <= poolInfo[arg1].field_768:
                _612 = mem[64]
                mem[64] = mem[64] + 64
                mem[_612] = 26
                mem[_612 + 32] = 'SafeMath: division by zero'
                _684 = mem[64]
                mem[64] = mem[64] + 64
                mem[_684] = 26
                mem[_684 + 32] = 'SafeMath: division by zero'
                if poolInfo[arg1].field_256 <= 0:
                    _692 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_692 + idx + 68] = mem[_684 + idx + 32]
                        mem[0] = address(arg2)
                        mem[32] = sha3(arg1, 1)
                        idx = idx + 32
                        continue 
                    mem[_692 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _692 + -mem[64] + 100
                if not poolInfo[arg1].field_256:
                    revert with 'NH{q', 18
                if poolInfo[arg1].field_1024 > -(0 / poolInfo[arg1].field_256) - 1:
                    revert with 'NH{q', 17
                if poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                if not sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                    _809 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_809] = 26
                    mem[_809 + 32] = 'SafeMath: division by zero'
                    _846 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_846] = 30
                    mem[_846 + 32] = 'SafeMath: subtraction overflow'
                    if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= 0:
                        if 0 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                            revert with 'NH{q', 17
                        if s > sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 - 1:
                            revert with 'NH{q', 17
                        if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        mem[0] = address(arg2)
                        mem[32] = sha3(arg1, 1)
                        idx = idx + 1
                        s = s - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                        continue 
                    _862 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_862 + idx + 68] = mem[_846 + idx + 32]
                        mem[0] = address(arg2)
                        mem[32] = sha3(arg1, 1)
                        idx = idx + 32
                        continue 
                    mem[_862 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _862 + -mem[64] + 100
                if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 and poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) > -1 / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                    revert with 'NH{q', 17
                if not sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                    revert with 'NH{q', 18
                if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 != poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256):
                    revert with 0, 'SafeMath: multiplication overflow'
                _867 = mem[64]
                mem[64] = mem[64] + 64
                mem[_867] = 26
                mem[_867 + 32] = 'SafeMath: division by zero'
                _926 = mem[64]
                mem[64] = mem[64] + 64
                mem[_926] = 30
                mem[_926 + 32] = 'SafeMath: subtraction overflow'
                if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18:
                    if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                        revert with 'NH{q', 17
                    if s > -((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18) + sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 - 1:
                        revert with 'NH{q', 17
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 1
                    s = s + ((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18) - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                    continue 
                _944 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_944 + idx + 68] = mem[_926 + idx + 32]
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 32
                    continue 
                mem[_944 + 98] = 0
                revert with memory
                  from mem[64]
                   len _944 + -mem[64] + 100
            _596 = mem[64]
            mem[64] = mem[64] + 64
            mem[_596] = 30
            mem[_596 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[arg1].field_768 > poolInfo[arg1].field_1536:
                _603 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_603 + idx + 68] = mem[_596 + idx + 32]
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 32
                    continue 
                mem[_603 + 98] = 0
                revert with memory
                  from mem[64]
                   len _603 + -mem[64] + 100
            if poolInfo[arg1].field_1536 < poolInfo[arg1].field_768:
                revert with 'NH{q', 17
            if not poolInfo[arg1].field_1536 - poolInfo[arg1].field_768:
                _667 = mem[64]
                mem[64] = mem[64] + 64
                mem[_667] = 26
                mem[_667 + 32] = 'SafeMath: division by zero'
                _748 = mem[64]
                mem[64] = mem[64] + 64
                mem[_748] = 26
                mem[_748 + 32] = 'SafeMath: division by zero'
                if poolInfo[arg1].field_256 <= 0:
                    _758 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_758 + idx + 68] = mem[_748 + idx + 32]
                        mem[0] = address(arg2)
                        mem[32] = sha3(arg1, 1)
                        idx = idx + 32
                        continue 
                    mem[_758 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _758 + -mem[64] + 100
                if not poolInfo[arg1].field_256:
                    revert with 'NH{q', 18
                if poolInfo[arg1].field_1024 > -(0 / poolInfo[arg1].field_256) - 1:
                    revert with 'NH{q', 17
                if poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                if not sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                    _848 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_848] = 26
                    mem[_848 + 32] = 'SafeMath: division by zero'
                    _912 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_912] = 30
                    mem[_912 + 32] = 'SafeMath: subtraction overflow'
                    if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= 0:
                        if 0 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                            revert with 'NH{q', 17
                        if s > sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 - 1:
                            revert with 'NH{q', 17
                        if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        mem[0] = address(arg2)
                        mem[32] = sha3(arg1, 1)
                        idx = idx + 1
                        s = s - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                        continue 
                    _922 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_922 + idx + 68] = mem[_912 + idx + 32]
                        mem[0] = address(arg2)
                        mem[32] = sha3(arg1, 1)
                        idx = idx + 32
                        continue 
                    mem[_922 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _922 + -mem[64] + 100
                if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 and poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) > -1 / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                    revert with 'NH{q', 17
                if not sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                    revert with 'NH{q', 18
                if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 != poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256):
                    revert with 0, 'SafeMath: multiplication overflow'
                _928 = mem[64]
                mem[64] = mem[64] + 64
                mem[_928] = 26
                mem[_928 + 32] = 'SafeMath: division by zero'
                _990 = mem[64]
                mem[64] = mem[64] + 64
                mem[_990] = 30
                mem[_990 + 32] = 'SafeMath: subtraction overflow'
                if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18:
                    if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                        revert with 'NH{q', 17
                    if s > -((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18) + sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 - 1:
                        revert with 'NH{q', 17
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 1
                    s = s + ((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18) - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                    continue 
                _1003 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1003 + idx + 68] = mem[_990 + idx + 32]
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 32
                    continue 
                mem[_1003 + 98] = 0
                revert with memory
                  from mem[64]
                   len _1003 + -mem[64] + 100
            if poolInfo[arg1].field_1536 - poolInfo[arg1].field_768 and poolInfo[arg1].field_512 > -1 / poolInfo[arg1].field_1536 - poolInfo[arg1].field_768:
                revert with 'NH{q', 17
            if not poolInfo[arg1].field_1536 - poolInfo[arg1].field_768:
                revert with 'NH{q', 18
            if (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / poolInfo[arg1].field_1536 - poolInfo[arg1].field_768 != poolInfo[arg1].field_512:
                revert with 0, 'SafeMath: multiplication overflow'
            _745 = mem[64]
            mem[64] = mem[64] + 64
            mem[_745] = 26
            mem[_745 + 32] = 'SafeMath: division by zero'
            if not (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000:
                _810 = mem[64]
                mem[64] = mem[64] + 64
                mem[_810] = 26
                mem[_810 + 32] = 'SafeMath: division by zero'
                if poolInfo[arg1].field_256 <= 0:
                    _819 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_819 + idx + 68] = mem[_810 + idx + 32]
                        mem[0] = address(arg2)
                        mem[32] = sha3(arg1, 1)
                        idx = idx + 32
                        continue 
                    mem[_819 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _819 + -mem[64] + 100
                if not poolInfo[arg1].field_256:
                    revert with 'NH{q', 18
                if poolInfo[arg1].field_1024 > -(0 / poolInfo[arg1].field_256) - 1:
                    revert with 'NH{q', 17
                if poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                if not sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                    _927 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_927] = 26
                    mem[_927 + 32] = 'SafeMath: division by zero'
                    _989 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_989] = 30
                    mem[_989 + 32] = 'SafeMath: subtraction overflow'
                    if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= 0:
                        if 0 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                            revert with 'NH{q', 17
                        if s > sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 - 1:
                            revert with 'NH{q', 17
                        if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        mem[0] = address(arg2)
                        mem[32] = sha3(arg1, 1)
                        idx = idx + 1
                        s = s - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                        continue 
                    _1002 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1002 + idx + 68] = mem[_989 + idx + 32]
                        mem[0] = address(arg2)
                        mem[32] = sha3(arg1, 1)
                        idx = idx + 32
                        continue 
                    mem[_1002 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _1002 + -mem[64] + 100
                if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 and poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) > -1 / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                    revert with 'NH{q', 17
                if not sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                    revert with 'NH{q', 18
                if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 != poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256):
                    revert with 0, 'SafeMath: multiplication overflow'
                _1009 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1009] = 26
                mem[_1009 + 32] = 'SafeMath: division by zero'
                _1060 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1060] = 30
                mem[_1060 + 32] = 'SafeMath: subtraction overflow'
                if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18:
                    if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                        revert with 'NH{q', 17
                    if s > -((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18) + sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 - 1:
                        revert with 'NH{q', 17
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 1
                    s = s + ((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18) - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                    continue 
                _1072 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1072 + idx + 68] = mem[_1060 + idx + 32]
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 32
                    continue 
                mem[_1072 + 98] = 0
                revert with memory
                  from mem[64]
                   len _1072 + -mem[64] + 100
            if (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 and 10^18 > -1 / (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000:
                revert with 'NH{q', 17
            if not (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000:
                revert with 'NH{q', 18
            if 10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            _868 = mem[64]
            mem[64] = mem[64] + 64
            mem[_868] = 26
            mem[_868 + 32] = 'SafeMath: division by zero'
            if poolInfo[arg1].field_256 <= 0:
                _879 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_879 + idx + 68] = mem[_868 + idx + 32]
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 32
                    continue 
                mem[_879 + 94] = 0
                revert with memory
                  from mem[64]
                   len _879 + -mem[64] + 100
            if not poolInfo[arg1].field_256:
                revert with 'NH{q', 18
            if poolInfo[arg1].field_1024 > -(10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256) - 1:
                revert with 'NH{q', 17
            if poolInfo[arg1].field_1024 + (10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            if not sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                _1008 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1008] = 26
                mem[_1008 + 32] = 'SafeMath: division by zero'
                _1059 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1059] = 30
                mem[_1059 + 32] = 'SafeMath: subtraction overflow'
                if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= 0:
                    if 0 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                        revert with 'NH{q', 17
                    if s > sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 - 1:
                        revert with 'NH{q', 17
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 1
                    s = s - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                    continue 
                _1071 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1071 + idx + 68] = mem[_1059 + idx + 32]
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 32
                    continue 
                mem[_1071 + 98] = 0
                revert with memory
                  from mem[64]
                   len _1071 + -mem[64] + 100
            if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 and poolInfo[arg1].field_1024 + (10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256) > -1 / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                revert with 'NH{q', 17
            if not sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                revert with 'NH{q', 18
            if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 != poolInfo[arg1].field_1024 + (10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256):
                revert with 0, 'SafeMath: multiplication overflow'
            _1078 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1078] = 26
            mem[_1078 + 32] = 'SafeMath: division by zero'
            _1116 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1116] = 30
            mem[_1116 + 32] = 'SafeMath: subtraction overflow'
            if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18:
                if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                    revert with 'NH{q', 17
                if s > -((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18) + sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 - 1:
                    revert with 'NH{q', 17
                if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                mem[0] = address(arg2)
                mem[32] = sha3(arg1, 1)
                idx = idx + 1
                s = s + ((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18) - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                continue 
            _1122 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_1122 + idx + 68] = mem[_1116 + idx + 32]
                mem[0] = address(arg2)
                mem[32] = sha3(arg1, 1)
                idx = idx + 32
                continue 
            mem[_1122 + 98] = 0
            revert with memory
              from mem[64]
               len _1122 + -mem[64] + 100
        if block.number <= poolInfo[arg1].field_1280:
            if not sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                _593 = mem[64]
                mem[64] = mem[64] + 64
                mem[_593] = 26
                mem[_593 + 32] = 'SafeMath: division by zero'
                _622 = mem[64]
                mem[64] = mem[64] + 64
                mem[_622] = 30
                mem[_622 + 32] = 'SafeMath: subtraction overflow'
                if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= 0:
                    if 0 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                        revert with 'NH{q', 17
                    if s > sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 - 1:
                        revert with 'NH{q', 17
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 1
                    s = s - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                    continue 
                _634 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_634 + idx + 68] = mem[_622 + idx + 32]
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 32
                    continue 
                mem[_634 + 98] = 0
                revert with memory
                  from mem[64]
                   len _634 + -mem[64] + 100
            if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 and poolInfo[arg1].field_1024 > -1 / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                revert with 'NH{q', 17
            if not sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                revert with 'NH{q', 18
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
                    revert with 'NH{q', 17
                if s > -(sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 * poolInfo[arg1].field_1024 / 10^18) + sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 - 1:
                    revert with 'NH{q', 17
                if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                mem[0] = address(arg2)
                mem[32] = sha3(arg1, 1)
                idx = idx + 1
                s = s + (sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 * poolInfo[arg1].field_1024 / 10^18) - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                continue 
            _708 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_708 + idx + 68] = mem[_695 + idx + 32]
                mem[0] = address(arg2)
                mem[32] = sha3(arg1, 1)
                idx = idx + 32
                continue 
            mem[_708 + 98] = 0
            revert with memory
              from mem[64]
               len _708 + -mem[64] + 100
        if block.number < poolInfo[arg1].field_1280:
            if not sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                _597 = mem[64]
                mem[64] = mem[64] + 64
                mem[_597] = 26
                mem[_597 + 32] = 'SafeMath: division by zero'
                _627 = mem[64]
                mem[64] = mem[64] + 64
                mem[_627] = 30
                mem[_627 + 32] = 'SafeMath: subtraction overflow'
                if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= 0:
                    if 0 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                        revert with 'NH{q', 17
                    if s > sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 - 1:
                        revert with 'NH{q', 17
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 1
                    s = s - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                    continue 
                _640 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_640 + idx + 68] = mem[_627 + idx + 32]
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 32
                    continue 
                mem[_640 + 98] = 0
                revert with memory
                  from mem[64]
                   len _640 + -mem[64] + 100
            if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 and poolInfo[arg1].field_1024 > -1 / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                revert with 'NH{q', 17
            if not sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                revert with 'NH{q', 18
            if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 * poolInfo[arg1].field_1024 / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 != poolInfo[arg1].field_1024:
                revert with 0, 'SafeMath: multiplication overflow'
            _646 = mem[64]
            mem[64] = mem[64] + 64
            mem[_646] = 26
            mem[_646 + 32] = 'SafeMath: division by zero'
            _701 = mem[64]
            mem[64] = mem[64] + 64
            mem[_701] = 30
            mem[_701 + 32] = 'SafeMath: subtraction overflow'
            if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 * poolInfo[arg1].field_1024 / 10^18:
                if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 * poolInfo[arg1].field_1024 / 10^18 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                    revert with 'NH{q', 17
                if s > -(sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 * poolInfo[arg1].field_1024 / 10^18) + sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 - 1:
                    revert with 'NH{q', 17
                if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                mem[0] = address(arg2)
                mem[32] = sha3(arg1, 1)
                idx = idx + 1
                s = s + (sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 * poolInfo[arg1].field_1024 / 10^18) - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                continue 
            _715 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_715 + idx + 68] = mem[_701 + idx + 32]
                mem[0] = address(arg2)
                mem[32] = sha3(arg1, 1)
                idx = idx + 32
                continue 
            mem[_715 + 98] = 0
            revert with memory
              from mem[64]
               len _715 + -mem[64] + 100
        if poolInfo[arg1].field_1280 >= poolInfo[arg1].field_1536:
            if not sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                _599 = mem[64]
                mem[64] = mem[64] + 64
                mem[_599] = 26
                mem[_599 + 32] = 'SafeMath: division by zero'
                _636 = mem[64]
                mem[64] = mem[64] + 64
                mem[_636] = 30
                mem[_636 + 32] = 'SafeMath: subtraction overflow'
                if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= 0:
                    if 0 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                        revert with 'NH{q', 17
                    if s > sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 - 1:
                        revert with 'NH{q', 17
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 1
                    s = s - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                    continue 
                _647 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_647 + idx + 68] = mem[_636 + idx + 32]
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 32
                    continue 
                mem[_647 + 98] = 0
                revert with memory
                  from mem[64]
                   len _647 + -mem[64] + 100
            if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 and poolInfo[arg1].field_1024 > -1 / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                revert with 'NH{q', 17
            if not sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                revert with 'NH{q', 18
            if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 * poolInfo[arg1].field_1024 / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 != poolInfo[arg1].field_1024:
                revert with 0, 'SafeMath: multiplication overflow'
            _651 = mem[64]
            mem[64] = mem[64] + 64
            mem[_651] = 26
            mem[_651 + 32] = 'SafeMath: division by zero'
            _710 = mem[64]
            mem[64] = mem[64] + 64
            mem[_710] = 30
            mem[_710 + 32] = 'SafeMath: subtraction overflow'
            if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 * poolInfo[arg1].field_1024 / 10^18:
                if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 * poolInfo[arg1].field_1024 / 10^18 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                    revert with 'NH{q', 17
                if s > -(sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 * poolInfo[arg1].field_1024 / 10^18) + sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 - 1:
                    revert with 'NH{q', 17
                if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                mem[0] = address(arg2)
                mem[32] = sha3(arg1, 1)
                idx = idx + 1
                s = s + (sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 * poolInfo[arg1].field_1024 / 10^18) - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                continue 
            _725 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_725 + idx + 68] = mem[_710 + idx + 32]
                mem[0] = address(arg2)
                mem[32] = sha3(arg1, 1)
                idx = idx + 32
                continue 
            mem[_725 + 98] = 0
            revert with memory
              from mem[64]
               len _725 + -mem[64] + 100
        if poolInfo[arg1].field_256 <= 0:
            if not sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                _604 = mem[64]
                mem[64] = mem[64] + 64
                mem[_604] = 26
                mem[_604 + 32] = 'SafeMath: division by zero'
                _642 = mem[64]
                mem[64] = mem[64] + 64
                mem[_642] = 30
                mem[_642 + 32] = 'SafeMath: subtraction overflow'
                if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= 0:
                    if 0 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                        revert with 'NH{q', 17
                    if s > sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 - 1:
                        revert with 'NH{q', 17
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 1
                    s = s - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                    continue 
                _652 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_652 + idx + 68] = mem[_642 + idx + 32]
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 32
                    continue 
                mem[_652 + 98] = 0
                revert with memory
                  from mem[64]
                   len _652 + -mem[64] + 100
            if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 and poolInfo[arg1].field_1024 > -1 / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                revert with 'NH{q', 17
            if not sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                revert with 'NH{q', 18
            if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 * poolInfo[arg1].field_1024 / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 != poolInfo[arg1].field_1024:
                revert with 0, 'SafeMath: multiplication overflow'
            _657 = mem[64]
            mem[64] = mem[64] + 64
            mem[_657] = 26
            mem[_657 + 32] = 'SafeMath: division by zero'
            _717 = mem[64]
            mem[64] = mem[64] + 64
            mem[_717] = 30
            mem[_717 + 32] = 'SafeMath: subtraction overflow'
            if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 * poolInfo[arg1].field_1024 / 10^18:
                if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 * poolInfo[arg1].field_1024 / 10^18 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                    revert with 'NH{q', 17
                if s > -(sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 * poolInfo[arg1].field_1024 / 10^18) + sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 - 1:
                    revert with 'NH{q', 17
                if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                mem[0] = address(arg2)
                mem[32] = sha3(arg1, 1)
                idx = idx + 1
                s = s + (sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 * poolInfo[arg1].field_1024 / 10^18) - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                continue 
            _733 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_733 + idx + 68] = mem[_717 + idx + 32]
                mem[0] = address(arg2)
                mem[32] = sha3(arg1, 1)
                idx = idx + 32
                continue 
            mem[_733 + 98] = 0
            revert with memory
              from mem[64]
               len _733 + -mem[64] + 100
        if block.number <= poolInfo[arg1].field_1536:
            if block.number <= poolInfo[arg1].field_1280:
                _613 = mem[64]
                mem[64] = mem[64] + 64
                mem[_613] = 26
                mem[_613 + 32] = 'SafeMath: division by zero'
                _688 = mem[64]
                mem[64] = mem[64] + 64
                mem[_688] = 26
                mem[_688 + 32] = 'SafeMath: division by zero'
                if poolInfo[arg1].field_256 <= 0:
                    _696 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_696 + idx + 68] = mem[_688 + idx + 32]
                        mem[0] = address(arg2)
                        mem[32] = sha3(arg1, 1)
                        idx = idx + 32
                        continue 
                    mem[_696 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _696 + -mem[64] + 100
                if not poolInfo[arg1].field_256:
                    revert with 'NH{q', 18
                if poolInfo[arg1].field_1024 > -(0 / poolInfo[arg1].field_256) - 1:
                    revert with 'NH{q', 17
                if poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                if not sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                    _813 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_813] = 26
                    mem[_813 + 32] = 'SafeMath: division by zero'
                    _854 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_854] = 30
                    mem[_854 + 32] = 'SafeMath: subtraction overflow'
                    if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= 0:
                        if 0 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                            revert with 'NH{q', 17
                        if s > sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 - 1:
                            revert with 'NH{q', 17
                        if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        mem[0] = address(arg2)
                        mem[32] = sha3(arg1, 1)
                        idx = idx + 1
                        s = s - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                        continue 
                    _869 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_869 + idx + 68] = mem[_854 + idx + 32]
                        mem[0] = address(arg2)
                        mem[32] = sha3(arg1, 1)
                        idx = idx + 32
                        continue 
                    mem[_869 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _869 + -mem[64] + 100
                if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 and poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) > -1 / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                    revert with 'NH{q', 17
                if not sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                    revert with 'NH{q', 18
                if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 != poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256):
                    revert with 0, 'SafeMath: multiplication overflow'
                _871 = mem[64]
                mem[64] = mem[64] + 64
                mem[_871] = 26
                mem[_871 + 32] = 'SafeMath: division by zero'
                _935 = mem[64]
                mem[64] = mem[64] + 64
                mem[_935] = 30
                mem[_935 + 32] = 'SafeMath: subtraction overflow'
                if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18:
                    if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                        revert with 'NH{q', 17
                    if s > -((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18) + sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 - 1:
                        revert with 'NH{q', 17
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 1
                    s = s + ((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18) - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                    continue 
                _951 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_951 + idx + 68] = mem[_935 + idx + 32]
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 32
                    continue 
                mem[_951 + 98] = 0
                revert with memory
                  from mem[64]
                   len _951 + -mem[64] + 100
            _600 = mem[64]
            mem[64] = mem[64] + 64
            mem[_600] = 30
            mem[_600 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[arg1].field_1280 > block.number:
                _605 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_605 + idx + 68] = mem[_600 + idx + 32]
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 32
                    continue 
                mem[_605 + 98] = 0
                revert with memory
                  from mem[64]
                   len _605 + -mem[64] + 100
            if block.number < poolInfo[arg1].field_1280:
                revert with 'NH{q', 17
            if not block.number - poolInfo[arg1].field_1280:
                _674 = mem[64]
                mem[64] = mem[64] + 64
                mem[_674] = 26
                mem[_674 + 32] = 'SafeMath: division by zero'
                _754 = mem[64]
                mem[64] = mem[64] + 64
                mem[_754] = 26
                mem[_754 + 32] = 'SafeMath: division by zero'
                if poolInfo[arg1].field_256 <= 0:
                    _762 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_762 + idx + 68] = mem[_754 + idx + 32]
                        mem[0] = address(arg2)
                        mem[32] = sha3(arg1, 1)
                        idx = idx + 32
                        continue 
                    mem[_762 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _762 + -mem[64] + 100
                if not poolInfo[arg1].field_256:
                    revert with 'NH{q', 18
                if poolInfo[arg1].field_1024 > -(0 / poolInfo[arg1].field_256) - 1:
                    revert with 'NH{q', 17
                if poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                if not sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                    _856 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_856] = 26
                    mem[_856 + 32] = 'SafeMath: division by zero'
                    _916 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_916] = 30
                    mem[_916 + 32] = 'SafeMath: subtraction overflow'
                    if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= 0:
                        if 0 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                            revert with 'NH{q', 17
                        if s > sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 - 1:
                            revert with 'NH{q', 17
                        if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        mem[0] = address(arg2)
                        mem[32] = sha3(arg1, 1)
                        idx = idx + 1
                        s = s - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                        continue 
                    _930 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_930 + idx + 68] = mem[_916 + idx + 32]
                        mem[0] = address(arg2)
                        mem[32] = sha3(arg1, 1)
                        idx = idx + 32
                        continue 
                    mem[_930 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _930 + -mem[64] + 100
                if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 and poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) > -1 / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                    revert with 'NH{q', 17
                if not sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                    revert with 'NH{q', 18
                if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 != poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256):
                    revert with 0, 'SafeMath: multiplication overflow'
                _937 = mem[64]
                mem[64] = mem[64] + 64
                mem[_937] = 26
                mem[_937 + 32] = 'SafeMath: division by zero'
                _995 = mem[64]
                mem[64] = mem[64] + 64
                mem[_995] = 30
                mem[_995 + 32] = 'SafeMath: subtraction overflow'
                if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18:
                    if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                        revert with 'NH{q', 17
                    if s > -((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18) + sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 - 1:
                        revert with 'NH{q', 17
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 1
                    s = s + ((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18) - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                    continue 
                _1012 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1012 + idx + 68] = mem[_995 + idx + 32]
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 32
                    continue 
                mem[_1012 + 98] = 0
                revert with memory
                  from mem[64]
                   len _1012 + -mem[64] + 100
            if block.number - poolInfo[arg1].field_1280 and poolInfo[arg1].field_512 > -1 / block.number - poolInfo[arg1].field_1280:
                revert with 'NH{q', 17
            if not block.number - poolInfo[arg1].field_1280:
                revert with 'NH{q', 18
            if (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / block.number - poolInfo[arg1].field_1280 != poolInfo[arg1].field_512:
                revert with 0, 'SafeMath: multiplication overflow'
            _750 = mem[64]
            mem[64] = mem[64] + 64
            mem[_750] = 26
            mem[_750 + 32] = 'SafeMath: division by zero'
            if not (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000:
                _814 = mem[64]
                mem[64] = mem[64] + 64
                mem[_814] = 26
                mem[_814 + 32] = 'SafeMath: division by zero'
                if poolInfo[arg1].field_256 <= 0:
                    _825 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_825 + idx + 68] = mem[_814 + idx + 32]
                        mem[0] = address(arg2)
                        mem[32] = sha3(arg1, 1)
                        idx = idx + 32
                        continue 
                    mem[_825 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _825 + -mem[64] + 100
                if not poolInfo[arg1].field_256:
                    revert with 'NH{q', 18
                if poolInfo[arg1].field_1024 > -(0 / poolInfo[arg1].field_256) - 1:
                    revert with 'NH{q', 17
                if poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                if not sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                    _936 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_936] = 26
                    mem[_936 + 32] = 'SafeMath: division by zero'
                    _994 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_994] = 30
                    mem[_994 + 32] = 'SafeMath: subtraction overflow'
                    if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= 0:
                        if 0 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                            revert with 'NH{q', 17
                        if s > sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 - 1:
                            revert with 'NH{q', 17
                        if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        mem[0] = address(arg2)
                        mem[32] = sha3(arg1, 1)
                        idx = idx + 1
                        s = s - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                        continue 
                    _1011 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1011 + idx + 68] = mem[_994 + idx + 32]
                        mem[0] = address(arg2)
                        mem[32] = sha3(arg1, 1)
                        idx = idx + 32
                        continue 
                    mem[_1011 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _1011 + -mem[64] + 100
                if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 and poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) > -1 / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                    revert with 'NH{q', 17
                if not sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                    revert with 'NH{q', 18
                if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 != poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256):
                    revert with 0, 'SafeMath: multiplication overflow'
                _1020 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1020] = 26
                mem[_1020 + 32] = 'SafeMath: division by zero'
                _1063 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1063] = 30
                mem[_1063 + 32] = 'SafeMath: subtraction overflow'
                if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18:
                    if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                        revert with 'NH{q', 17
                    if s > -((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18) + sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 - 1:
                        revert with 'NH{q', 17
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 1
                    s = s + ((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18) - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                    continue 
                _1082 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1082 + idx + 68] = mem[_1063 + idx + 32]
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 32
                    continue 
                mem[_1082 + 98] = 0
                revert with memory
                  from mem[64]
                   len _1082 + -mem[64] + 100
            if (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 and 10^18 > -1 / (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000:
                revert with 'NH{q', 17
            if not (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000:
                revert with 'NH{q', 18
            if 10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            _872 = mem[64]
            mem[64] = mem[64] + 64
            mem[_872] = 26
            mem[_872 + 32] = 'SafeMath: division by zero'
            if poolInfo[arg1].field_256 <= 0:
                _884 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_884 + idx + 68] = mem[_872 + idx + 32]
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 32
                    continue 
                mem[_884 + 94] = 0
                revert with memory
                  from mem[64]
                   len _884 + -mem[64] + 100
            if not poolInfo[arg1].field_256:
                revert with 'NH{q', 18
            if poolInfo[arg1].field_1024 > -(10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256) - 1:
                revert with 'NH{q', 17
            if poolInfo[arg1].field_1024 + (10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            if not sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                _1019 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1019] = 26
                mem[_1019 + 32] = 'SafeMath: division by zero'
                _1062 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1062] = 30
                mem[_1062 + 32] = 'SafeMath: subtraction overflow'
                if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= 0:
                    if 0 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                        revert with 'NH{q', 17
                    if s > sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 - 1:
                        revert with 'NH{q', 17
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 1
                    s = s - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                    continue 
                _1081 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1081 + idx + 68] = mem[_1062 + idx + 32]
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 32
                    continue 
                mem[_1081 + 98] = 0
                revert with memory
                  from mem[64]
                   len _1081 + -mem[64] + 100
            if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 and poolInfo[arg1].field_1024 + (10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256) > -1 / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                revert with 'NH{q', 17
            if not sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                revert with 'NH{q', 18
            if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 != poolInfo[arg1].field_1024 + (10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256):
                revert with 0, 'SafeMath: multiplication overflow'
            _1089 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1089] = 26
            mem[_1089 + 32] = 'SafeMath: division by zero'
            _1117 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1117] = 30
            mem[_1117 + 32] = 'SafeMath: subtraction overflow'
            if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18:
                if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                    revert with 'NH{q', 17
                if s > -((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18) + sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 - 1:
                    revert with 'NH{q', 17
                if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                mem[0] = address(arg2)
                mem[32] = sha3(arg1, 1)
                idx = idx + 1
                s = s + ((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (10^18 * (block.number * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18) - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                continue 
            _1129 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_1129 + idx + 68] = mem[_1117 + idx + 32]
                mem[0] = address(arg2)
                mem[32] = sha3(arg1, 1)
                idx = idx + 32
                continue 
            mem[_1129 + 98] = 0
            revert with memory
              from mem[64]
               len _1129 + -mem[64] + 100
        if poolInfo[arg1].field_1536 <= poolInfo[arg1].field_1280:
            _614 = mem[64]
            mem[64] = mem[64] + 64
            mem[_614] = 26
            mem[_614 + 32] = 'SafeMath: division by zero'
            _689 = mem[64]
            mem[64] = mem[64] + 64
            mem[_689] = 26
            mem[_689 + 32] = 'SafeMath: division by zero'
            if poolInfo[arg1].field_256 <= 0:
                _697 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_697 + idx + 68] = mem[_689 + idx + 32]
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 32
                    continue 
                mem[_697 + 94] = 0
                revert with memory
                  from mem[64]
                   len _697 + -mem[64] + 100
            if not poolInfo[arg1].field_256:
                revert with 'NH{q', 18
            if poolInfo[arg1].field_1024 > -(0 / poolInfo[arg1].field_256) - 1:
                revert with 'NH{q', 17
            if poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            if not sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                _815 = mem[64]
                mem[64] = mem[64] + 64
                mem[_815] = 26
                mem[_815 + 32] = 'SafeMath: division by zero'
                _858 = mem[64]
                mem[64] = mem[64] + 64
                mem[_858] = 30
                mem[_858 + 32] = 'SafeMath: subtraction overflow'
                if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= 0:
                    if 0 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                        revert with 'NH{q', 17
                    if s > sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 - 1:
                        revert with 'NH{q', 17
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 1
                    s = s - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                    continue 
                _870 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_870 + idx + 68] = mem[_858 + idx + 32]
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 32
                    continue 
                mem[_870 + 98] = 0
                revert with memory
                  from mem[64]
                   len _870 + -mem[64] + 100
            if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 and poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) > -1 / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                revert with 'NH{q', 17
            if not sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                revert with 'NH{q', 18
            if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 != poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256):
                revert with 0, 'SafeMath: multiplication overflow'
            _873 = mem[64]
            mem[64] = mem[64] + 64
            mem[_873] = 26
            mem[_873 + 32] = 'SafeMath: division by zero'
            _938 = mem[64]
            mem[64] = mem[64] + 64
            mem[_938] = 30
            mem[_938 + 32] = 'SafeMath: subtraction overflow'
            if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18:
                if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                    revert with 'NH{q', 17
                if s > -((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18) + sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 - 1:
                    revert with 'NH{q', 17
                if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                mem[0] = address(arg2)
                mem[32] = sha3(arg1, 1)
                idx = idx + 1
                s = s + ((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18) - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                continue 
            _954 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_954 + idx + 68] = mem[_938 + idx + 32]
                mem[0] = address(arg2)
                mem[32] = sha3(arg1, 1)
                idx = idx + 32
                continue 
            mem[_954 + 98] = 0
            revert with memory
              from mem[64]
               len _954 + -mem[64] + 100
        _601 = mem[64]
        mem[64] = mem[64] + 64
        mem[_601] = 30
        mem[_601 + 32] = 'SafeMath: subtraction overflow'
        if poolInfo[arg1].field_1280 > poolInfo[arg1].field_1536:
            _606 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_606 + idx + 68] = mem[_601 + idx + 32]
                mem[0] = address(arg2)
                mem[32] = sha3(arg1, 1)
                idx = idx + 32
                continue 
            mem[_606 + 98] = 0
            revert with memory
              from mem[64]
               len _606 + -mem[64] + 100
        if poolInfo[arg1].field_1536 < poolInfo[arg1].field_1280:
            revert with 'NH{q', 17
        if not poolInfo[arg1].field_1536 - poolInfo[arg1].field_1280:
            _675 = mem[64]
            mem[64] = mem[64] + 64
            mem[_675] = 26
            mem[_675 + 32] = 'SafeMath: division by zero'
            _755 = mem[64]
            mem[64] = mem[64] + 64
            mem[_755] = 26
            mem[_755 + 32] = 'SafeMath: division by zero'
            if poolInfo[arg1].field_256 <= 0:
                _763 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_763 + idx + 68] = mem[_755 + idx + 32]
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 32
                    continue 
                mem[_763 + 94] = 0
                revert with memory
                  from mem[64]
                   len _763 + -mem[64] + 100
            if not poolInfo[arg1].field_256:
                revert with 'NH{q', 18
            if poolInfo[arg1].field_1024 > -(0 / poolInfo[arg1].field_256) - 1:
                revert with 'NH{q', 17
            if poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            if not sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                _860 = mem[64]
                mem[64] = mem[64] + 64
                mem[_860] = 26
                mem[_860 + 32] = 'SafeMath: division by zero'
                _918 = mem[64]
                mem[64] = mem[64] + 64
                mem[_918] = 30
                mem[_918 + 32] = 'SafeMath: subtraction overflow'
                if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= 0:
                    if 0 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                        revert with 'NH{q', 17
                    if s > sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 - 1:
                        revert with 'NH{q', 17
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 1
                    s = s - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                    continue 
                _932 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_932 + idx + 68] = mem[_918 + idx + 32]
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 32
                    continue 
                mem[_932 + 98] = 0
                revert with memory
                  from mem[64]
                   len _932 + -mem[64] + 100
            if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 and poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) > -1 / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                revert with 'NH{q', 17
            if not sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                revert with 'NH{q', 18
            if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 != poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256):
                revert with 0, 'SafeMath: multiplication overflow'
            _940 = mem[64]
            mem[64] = mem[64] + 64
            mem[_940] = 26
            mem[_940 + 32] = 'SafeMath: division by zero'
            _998 = mem[64]
            mem[64] = mem[64] + 64
            mem[_998] = 30
            mem[_998 + 32] = 'SafeMath: subtraction overflow'
            if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18:
                if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                    revert with 'NH{q', 17
                if s > -((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18) + sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 - 1:
                    revert with 'NH{q', 17
                if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                mem[0] = address(arg2)
                mem[32] = sha3(arg1, 1)
                idx = idx + 1
                s = s + ((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18) - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                continue 
            _1015 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_1015 + idx + 68] = mem[_998 + idx + 32]
                mem[0] = address(arg2)
                mem[32] = sha3(arg1, 1)
                idx = idx + 32
                continue 
            mem[_1015 + 98] = 0
            revert with memory
              from mem[64]
               len _1015 + -mem[64] + 100
        if poolInfo[arg1].field_1536 - poolInfo[arg1].field_1280 and poolInfo[arg1].field_512 > -1 / poolInfo[arg1].field_1536 - poolInfo[arg1].field_1280:
            revert with 'NH{q', 17
        if not poolInfo[arg1].field_1536 - poolInfo[arg1].field_1280:
            revert with 'NH{q', 18
        if (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / poolInfo[arg1].field_1536 - poolInfo[arg1].field_1280 != poolInfo[arg1].field_512:
            revert with 0, 'SafeMath: multiplication overflow'
        _752 = mem[64]
        mem[64] = mem[64] + 64
        mem[_752] = 26
        mem[_752 + 32] = 'SafeMath: division by zero'
        if not (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000:
            _816 = mem[64]
            mem[64] = mem[64] + 64
            mem[_816] = 26
            mem[_816 + 32] = 'SafeMath: division by zero'
            if poolInfo[arg1].field_256 <= 0:
                _827 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_827 + idx + 68] = mem[_816 + idx + 32]
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 32
                    continue 
                mem[_827 + 94] = 0
                revert with memory
                  from mem[64]
                   len _827 + -mem[64] + 100
            if not poolInfo[arg1].field_256:
                revert with 'NH{q', 18
            if poolInfo[arg1].field_1024 > -(0 / poolInfo[arg1].field_256) - 1:
                revert with 'NH{q', 17
            if poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            if not sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                _939 = mem[64]
                mem[64] = mem[64] + 64
                mem[_939] = 26
                mem[_939 + 32] = 'SafeMath: division by zero'
                _997 = mem[64]
                mem[64] = mem[64] + 64
                mem[_997] = 30
                mem[_997 + 32] = 'SafeMath: subtraction overflow'
                if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= 0:
                    if 0 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                        revert with 'NH{q', 17
                    if s > sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 - 1:
                        revert with 'NH{q', 17
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 1
                    s = s - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                    continue 
                _1014 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1014 + idx + 68] = mem[_997 + idx + 32]
                    mem[0] = address(arg2)
                    mem[32] = sha3(arg1, 1)
                    idx = idx + 32
                    continue 
                mem[_1014 + 98] = 0
                revert with memory
                  from mem[64]
                   len _1014 + -mem[64] + 100
            if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 and poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256) > -1 / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                revert with 'NH{q', 17
            if not sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
                revert with 'NH{q', 18
            if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 != poolInfo[arg1].field_1024 + (0 / poolInfo[arg1].field_256):
                revert with 0, 'SafeMath: multiplication overflow'
            _1023 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1023] = 26
            mem[_1023 + 32] = 'SafeMath: division by zero'
            _1066 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1066] = 30
            mem[_1066 + 32] = 'SafeMath: subtraction overflow'
            if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18:
                if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                    revert with 'NH{q', 17
                if s > -((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18) + sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 - 1:
                    revert with 'NH{q', 17
                if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                mem[0] = address(arg2)
                mem[32] = sha3(arg1, 1)
                idx = idx + 1
                s = s + ((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (0 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18) - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                continue 
            _1086 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_1086 + idx + 68] = mem[_1066 + idx + 32]
                mem[0] = address(arg2)
                mem[32] = sha3(arg1, 1)
                idx = idx + 32
                continue 
            mem[_1086 + 98] = 0
            revert with memory
              from mem[64]
               len _1086 + -mem[64] + 100
        if (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 and 10^18 > -1 / (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000:
            revert with 'NH{q', 17
        if not (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000:
            revert with 'NH{q', 18
        if 10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        _874 = mem[64]
        mem[64] = mem[64] + 64
        mem[_874] = 26
        mem[_874 + 32] = 'SafeMath: division by zero'
        if poolInfo[arg1].field_256 <= 0:
            _887 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_887 + idx + 68] = mem[_874 + idx + 32]
                mem[0] = address(arg2)
                mem[32] = sha3(arg1, 1)
                idx = idx + 32
                continue 
            mem[_887 + 94] = 0
            revert with memory
              from mem[64]
               len _887 + -mem[64] + 100
        if not poolInfo[arg1].field_256:
            revert with 'NH{q', 18
        if poolInfo[arg1].field_1024 > -(10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256) - 1:
            revert with 'NH{q', 17
        if poolInfo[arg1].field_1024 + (10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1024:
            revert with 0, 'SafeMath: addition overflow'
        if not sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
            _1022 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1022] = 26
            mem[_1022 + 32] = 'SafeMath: division by zero'
            _1065 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1065] = 30
            mem[_1065 + 32] = 'SafeMath: subtraction overflow'
            if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= 0:
                if 0 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                    revert with 'NH{q', 17
                if s > sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 - 1:
                    revert with 'NH{q', 17
                if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                mem[0] = address(arg2)
                mem[32] = sha3(arg1, 1)
                idx = idx + 1
                s = s - sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512
                continue 
            _1085 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_1085 + idx + 68] = mem[_1065 + idx + 32]
                mem[0] = address(arg2)
                mem[32] = sha3(arg1, 1)
                idx = idx + 32
                continue 
            mem[_1085 + 98] = 0
            revert with memory
              from mem[64]
               len _1085 + -mem[64] + 100
        if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 and poolInfo[arg1].field_1024 + (10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256) > -1 / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
            revert with 'NH{q', 17
        if not sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0:
            revert with 'NH{q', 18
        if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0 != poolInfo[arg1].field_1024 + (10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256):
            revert with 0, 'SafeMath: multiplication overflow'
        _1092 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1092] = 26
        mem[_1092 + 32] = 'SafeMath: division by zero'
        _1118 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1118] = 30
        mem[_1118 + 32] = 'SafeMath: subtraction overflow'
        if sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 <= (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18:
            if (poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18 < sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512:
                revert with 'NH{q', 17
            if s > -((poolInfo[arg1].field_1024 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) + (10^18 * (poolInfo[arg1].field_1536 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_512) / 1000 / poolInfo[arg1].field_256 * sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_0) / 10^18) + sub_dfa2eec0[arg1][stor1[arg1][address(arg2)][idx + 1].field_0].field_512 - 1:
                revert with 'NH{q', 17
            if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
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
            mem[_1132 + idx + 68] = mem[_1118 + idx + 32]
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
