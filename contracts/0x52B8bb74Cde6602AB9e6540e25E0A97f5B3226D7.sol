contract main {




// =====================  Runtime code  =====================


#
#  - deposit(uint256 arg1, uint256 arg2)
#
address owner;
mapping of uint256 sub_8600adc6;
address elevenAddress;
uint256 sub_2bb5cc3e;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 stor7;
array of uint256 stor62514009886607029107290561805838585334079798074568712924583230797734656856476;
array of uint256 stor62514009886607029107290561805838585334079798074568712924583230797734656856477;
array of uint256 stor62514009886607029107290561805838585334079798074568712924583230797734656856478;

function poolLength() payable {
    return poolInfo.length
}

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, poolInfo[arg1].field_256, poolInfo[arg1].field_512, poolInfo[arg1].field_768
}

function totalAllocPoint() payable {
    return totalAllocPoint
}

function sub_2bb5cc3e(?) payable {
    return sub_2bb5cc3e
}

function sub_8600adc6(?) payable {
    require calldata.size - 4 >= 32
    return sub_8600adc6[arg1]
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
}

function eleven() payable {
    return elevenAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 > arg2:
        revert with 0, 'SafeMath: subtraction overflow'
    return (arg2 - arg1)
}

function sub_170a37a6(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg1 > 10 * sub_2bb5cc3e:
        revert with 0, 'too much rewards'
    sub_2bb5cc3e = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_17fdad6c(?) payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if block.timestamp > stor7:
        stor7 = block.timestamp + (8 * 3600)
    else:
        require ext_code.size(elevenAddress)
        staticcall elevenAddress.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(elevenAddress)
        call elevenAddress.transfer(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(poolInfo[arg1].field_0):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = transfer(address rg1, uint256 rg2), msg.sender, userInfo[arg1][msg.sender].field_32
    mem[324 len 0] = 0
    call poolInfo[arg1].field_0 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args userInfo[arg1][msg.sender].field_0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transfer(address rg1, uint256 rg2), msg.sender, userInfo[arg1][msg.sender].field_0
        if not transfer(address rg1, uint256 rg2), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit EmergencyWithdraw(userInfo[arg1][msg.sender].field_0, msg.sender, arg1);
    userInfo[arg1][msg.sender].field_0 = 0
    userInfo[arg1][msg.sender].field_256 = 0
    sub_8600adc6[msg.sender] = 0
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    if block.timestamp > poolInfo[arg1].field_512:
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if poolInfo[arg1].field_512 > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.timestamp - poolInfo[arg1].field_512:
                if not totalAllocPoint:
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / totalAllocPoint:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                else:
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
            else:
                if (block.timestamp * sub_2bb5cc3e) - (poolInfo[arg1].field_512 * sub_2bb5cc3e) / block.timestamp - poolInfo[arg1].field_512 != sub_2bb5cc3e:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not (block.timestamp * sub_2bb5cc3e) - (poolInfo[arg1].field_512 * sub_2bb5cc3e):
                    if not totalAllocPoint:
                        revert with 0, 'SafeMath: division by zero'
                    if not 0 / totalAllocPoint:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                    else:
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                else:
                    if (block.timestamp * sub_2bb5cc3e * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_2bb5cc3e * poolInfo[arg1].field_256) / (block.timestamp * sub_2bb5cc3e) - (poolInfo[arg1].field_512 * sub_2bb5cc3e) != poolInfo[arg1].field_256:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not totalAllocPoint:
                        revert with 0, 'SafeMath: division by zero'
                    if not (block.timestamp * sub_2bb5cc3e * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_2bb5cc3e * poolInfo[arg1].field_256) / totalAllocPoint:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                    else:
                        if 10^12 * (block.timestamp * sub_2bb5cc3e * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_2bb5cc3e * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * sub_2bb5cc3e * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_2bb5cc3e * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (10^12 * (block.timestamp * sub_2bb5cc3e * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_2bb5cc3e * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^12 * (block.timestamp * sub_2bb5cc3e * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_2bb5cc3e * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
        poolInfo[arg1].field_512 = block.timestamp
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 4
        if block.timestamp <= poolInfo[idx].field_512:
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(poolInfo[idx].field_0)
        staticcall poolInfo[idx].field_0.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            poolInfo[idx].field_512 = block.timestamp
            idx = idx + 1
            continue 
        _117 = mem[64]
        mem[64] = mem[64] + 64
        mem[_117] = 30
        mem[_117 + 32] = 'SafeMath: subtraction overflow'
        if poolInfo[idx].field_512 > block.timestamp:
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
            idx = 32
            while idx < 30:
                mem[idx + mem[64] + 68] = mem[idx + _117 + 32]
                idx = idx + 32
                continue 
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.timestamp - poolInfo[idx].field_512:
            _131 = mem[64]
            mem[64] = mem[64] + 64
            mem[_131] = 26
            mem[_131 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _135 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _135 + 68] = mem[idx + _131 + 32]
                    idx = idx + 32
                    continue 
                mem[_135 + 68] = mem[_135 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _135 + -mem[64] + 100
            if not 0 / totalAllocPoint:
                _159 = mem[64]
                mem[64] = mem[64] + 64
                mem[_159] = 26
                mem[_159 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _164 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _164 + 68] = mem[idx + _159 + 32]
                    idx = idx + 32
                    continue 
                mem[_164 + 68] = mem[_164 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _164 + -mem[64] + 100
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _163 = mem[64]
            mem[64] = mem[64] + 64
            mem[_163] = 26
            mem[_163 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _174 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _174 + 68] = mem[idx + _163 + 32]
                idx = idx + 32
                continue 
            mem[_174 + 68] = mem[_174 + 74 len 26]
            revert with memory
              from mem[64]
               len _174 + -mem[64] + 100
        if (block.timestamp * sub_2bb5cc3e) - (poolInfo[idx].field_512 * sub_2bb5cc3e) / block.timestamp - poolInfo[idx].field_512 != sub_2bb5cc3e:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not (block.timestamp * sub_2bb5cc3e) - (poolInfo[idx].field_512 * sub_2bb5cc3e):
            _134 = mem[64]
            mem[64] = mem[64] + 64
            mem[_134] = 26
            mem[_134 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _139 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _139 + 68] = mem[idx + _134 + 32]
                    idx = idx + 32
                    continue 
                mem[_139 + 68] = mem[_139 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _139 + -mem[64] + 100
            if not 0 / totalAllocPoint:
                _162 = mem[64]
                mem[64] = mem[64] + 64
                mem[_162] = 26
                mem[_162 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _171 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _171 + 68] = mem[idx + _162 + 32]
                    idx = idx + 32
                    continue 
                mem[_171 + 68] = mem[_171 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _171 + -mem[64] + 100
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _170 = mem[64]
            mem[64] = mem[64] + 64
            mem[_170] = 26
            mem[_170 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _184 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _184 + 68] = mem[idx + _170 + 32]
                idx = idx + 32
                continue 
            mem[_184 + 68] = mem[_184 + 74 len 26]
            revert with memory
              from mem[64]
               len _184 + -mem[64] + 100
        if (block.timestamp * sub_2bb5cc3e * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_2bb5cc3e * poolInfo[idx].field_256) / (block.timestamp * sub_2bb5cc3e) - (poolInfo[idx].field_512 * sub_2bb5cc3e) != poolInfo[idx].field_256:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _138 = mem[64]
        mem[64] = mem[64] + 64
        mem[_138] = 26
        mem[_138 + 32] = 'SafeMath: division by zero'
        if not totalAllocPoint:
            _145 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _145 + 68] = mem[idx + _138 + 32]
                idx = idx + 32
                continue 
            mem[_145 + 68] = mem[_145 + 74 len 26]
            revert with memory
              from mem[64]
               len _145 + -mem[64] + 100
        if not (block.timestamp * sub_2bb5cc3e * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_2bb5cc3e * poolInfo[idx].field_256) / totalAllocPoint:
            _169 = mem[64]
            mem[64] = mem[64] + 64
            mem[_169] = 26
            mem[_169 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _181 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _181 + 68] = mem[idx + _169 + 32]
                idx = idx + 32
                continue 
            mem[_181 + 68] = mem[_181 + 74 len 26]
            revert with memory
              from mem[64]
               len _181 + -mem[64] + 100
        if 10^12 * (block.timestamp * sub_2bb5cc3e * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_2bb5cc3e * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_2bb5cc3e * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_2bb5cc3e * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _180 = mem[64]
        mem[64] = mem[64] + 64
        mem[_180] = 26
        mem[_180 + 32] = 'SafeMath: division by zero'
        if ext_call.return_data[0]:
            if (10^12 * (block.timestamp * sub_2bb5cc3e * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_2bb5cc3e * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[idx].field_768 += 10^12 * (block.timestamp * sub_2bb5cc3e * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_2bb5cc3e * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
            poolInfo[idx].field_512 = block.timestamp
            idx = idx + 1
            continue 
        _194 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[idx + _194 + 68] = mem[idx + _180 + 32]
            idx = idx + 32
            continue 
        mem[_194 + 68] = mem[_194 + 74 len 26]
        revert with memory
          from mem[64]
           len _194 + -mem[64] + 100
}

function add(uint256 arg1, address arg2, bool arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 4
            if block.timestamp <= poolInfo[idx].field_512:
                idx = idx + 1
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _142 = mem[64]
            mem[64] = mem[64] + 64
            mem[_142] = 30
            mem[_142 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.timestamp:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                idx = 32
                while idx < 30:
                    mem[idx + mem[64] + 68] = mem[idx + _142 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.timestamp - poolInfo[idx].field_512:
                _156 = mem[64]
                mem[64] = mem[64] + 64
                mem[_156] = 26
                mem[_156 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _160 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _160 + 68] = mem[idx + _156 + 32]
                        idx = idx + 32
                        continue 
                    mem[_160 + 68] = mem[_160 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _160 + -mem[64] + 100
                if not 0 / totalAllocPoint:
                    _184 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_184] = 26
                    mem[_184 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.timestamp
                        idx = idx + 1
                        continue 
                    _189 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _189 + 68] = mem[idx + _184 + 32]
                        idx = idx + 32
                        continue 
                    mem[_189 + 68] = mem[_189 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _189 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _188 = mem[64]
                mem[64] = mem[64] + 64
                mem[_188] = 26
                mem[_188 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _199 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _199 + 68] = mem[idx + _188 + 32]
                    idx = idx + 32
                    continue 
                mem[_199 + 68] = mem[_199 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _199 + -mem[64] + 100
            if (block.timestamp * sub_2bb5cc3e) - (poolInfo[idx].field_512 * sub_2bb5cc3e) / block.timestamp - poolInfo[idx].field_512 != sub_2bb5cc3e:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.timestamp * sub_2bb5cc3e) - (poolInfo[idx].field_512 * sub_2bb5cc3e):
                _159 = mem[64]
                mem[64] = mem[64] + 64
                mem[_159] = 26
                mem[_159 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _164 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _164 + 68] = mem[idx + _159 + 32]
                        idx = idx + 32
                        continue 
                    mem[_164 + 68] = mem[_164 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _164 + -mem[64] + 100
                if not 0 / totalAllocPoint:
                    _187 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_187] = 26
                    mem[_187 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.timestamp
                        idx = idx + 1
                        continue 
                    _196 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _196 + 68] = mem[idx + _187 + 32]
                        idx = idx + 32
                        continue 
                    mem[_196 + 68] = mem[_196 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _196 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _195 = mem[64]
                mem[64] = mem[64] + 64
                mem[_195] = 26
                mem[_195 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _209 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _209 + 68] = mem[idx + _195 + 32]
                    idx = idx + 32
                    continue 
                mem[_209 + 68] = mem[_209 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _209 + -mem[64] + 100
            if (block.timestamp * sub_2bb5cc3e * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_2bb5cc3e * poolInfo[idx].field_256) / (block.timestamp * sub_2bb5cc3e) - (poolInfo[idx].field_512 * sub_2bb5cc3e) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _163 = mem[64]
            mem[64] = mem[64] + 64
            mem[_163] = 26
            mem[_163 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _170 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _170 + 68] = mem[idx + _163 + 32]
                    idx = idx + 32
                    continue 
                mem[_170 + 68] = mem[_170 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _170 + -mem[64] + 100
            if not (block.timestamp * sub_2bb5cc3e * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_2bb5cc3e * poolInfo[idx].field_256) / totalAllocPoint:
                _194 = mem[64]
                mem[64] = mem[64] + 64
                mem[_194] = 26
                mem[_194 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _206 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _206 + 68] = mem[idx + _194 + 32]
                    idx = idx + 32
                    continue 
                mem[_206 + 68] = mem[_206 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _206 + -mem[64] + 100
            if 10^12 * (block.timestamp * sub_2bb5cc3e * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_2bb5cc3e * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_2bb5cc3e * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_2bb5cc3e * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _205 = mem[64]
            mem[64] = mem[64] + 64
            mem[_205] = 26
            mem[_205 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * (block.timestamp * sub_2bb5cc3e * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_2bb5cc3e * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.timestamp * sub_2bb5cc3e * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_2bb5cc3e * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _219 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _219 + 68] = mem[idx + _205 + 32]
                idx = idx + 32
                continue 
            mem[_219 + 68] = mem[_219 + 74 len 26]
            revert with memory
              from mem[64]
               len _219 + -mem[64] + 100
    if arg1 + totalAllocPoint < totalAllocPoint:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint += arg1
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg2
    stor8A35[stor4.length] = arg1
    stor8A35[stor4.length] = block.timestamp
    stor8A35[stor4.length] = 0
}

function pendingEleven(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_0)
    staticcall poolInfo[arg1].field_0.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp <= poolInfo[arg1].field_512:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if not ext_call.return_data[0]:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if poolInfo[arg1].field_512 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if not block.timestamp - poolInfo[arg1].field_512:
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / totalAllocPoint:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if (block.timestamp * sub_2bb5cc3e) - (poolInfo[arg1].field_512 * sub_2bb5cc3e) / block.timestamp - poolInfo[arg1].field_512 != sub_2bb5cc3e:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not (block.timestamp * sub_2bb5cc3e) - (poolInfo[arg1].field_512 * sub_2bb5cc3e):
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / totalAllocPoint:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if (block.timestamp * sub_2bb5cc3e * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_2bb5cc3e * poolInfo[arg1].field_256) / (block.timestamp * sub_2bb5cc3e) - (poolInfo[arg1].field_512 * sub_2bb5cc3e) != poolInfo[arg1].field_256:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not totalAllocPoint:
        revert with 0, 'SafeMath: division by zero'
    if not (block.timestamp * sub_2bb5cc3e * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_2bb5cc3e * poolInfo[arg1].field_256) / totalAllocPoint:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if 10^12 * (block.timestamp * sub_2bb5cc3e * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_2bb5cc3e * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * sub_2bb5cc3e * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_2bb5cc3e * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if (10^12 * (block.timestamp * sub_2bb5cc3e * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_2bb5cc3e * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userInfo[arg1][address(arg2)].field_256
    if (10^12 * (block.timestamp * sub_2bb5cc3e * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_2bb5cc3e * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (block.timestamp * sub_2bb5cc3e * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_2bb5cc3e * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if userInfo[arg1][address(arg2)].field_256 > (10^12 * (block.timestamp * sub_2bb5cc3e * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_2bb5cc3e * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((10^12 * (block.timestamp * sub_2bb5cc3e * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_2bb5cc3e * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
}

function set(uint256 arg1, uint256 arg2, bool arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 4
            if block.timestamp <= poolInfo[idx].field_512:
                idx = idx + 1
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _169 = mem[64]
            mem[64] = mem[64] + 64
            mem[_169] = 30
            mem[_169 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.timestamp:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                idx = 32
                while idx < 30:
                    mem[idx + mem[64] + 68] = mem[idx + _169 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.timestamp - poolInfo[idx].field_512:
                _187 = mem[64]
                mem[64] = mem[64] + 64
                mem[_187] = 26
                mem[_187 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _191 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _191 + 68] = mem[idx + _187 + 32]
                        idx = idx + 32
                        continue 
                    mem[_191 + 68] = mem[_191 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _191 + -mem[64] + 100
                if not 0 / totalAllocPoint:
                    _215 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_215] = 26
                    mem[_215 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.timestamp
                        idx = idx + 1
                        continue 
                    _220 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _220 + 68] = mem[idx + _215 + 32]
                        idx = idx + 32
                        continue 
                    mem[_220 + 68] = mem[_220 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _220 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _219 = mem[64]
                mem[64] = mem[64] + 64
                mem[_219] = 26
                mem[_219 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _230 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _230 + 68] = mem[idx + _219 + 32]
                    idx = idx + 32
                    continue 
                mem[_230 + 68] = mem[_230 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _230 + -mem[64] + 100
            if (block.timestamp * sub_2bb5cc3e) - (poolInfo[idx].field_512 * sub_2bb5cc3e) / block.timestamp - poolInfo[idx].field_512 != sub_2bb5cc3e:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.timestamp * sub_2bb5cc3e) - (poolInfo[idx].field_512 * sub_2bb5cc3e):
                _190 = mem[64]
                mem[64] = mem[64] + 64
                mem[_190] = 26
                mem[_190 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _195 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _195 + 68] = mem[idx + _190 + 32]
                        idx = idx + 32
                        continue 
                    mem[_195 + 68] = mem[_195 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _195 + -mem[64] + 100
                if not 0 / totalAllocPoint:
                    _218 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_218] = 26
                    mem[_218 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.timestamp
                        idx = idx + 1
                        continue 
                    _227 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _227 + 68] = mem[idx + _218 + 32]
                        idx = idx + 32
                        continue 
                    mem[_227 + 68] = mem[_227 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _227 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _226 = mem[64]
                mem[64] = mem[64] + 64
                mem[_226] = 26
                mem[_226 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _240 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _240 + 68] = mem[idx + _226 + 32]
                    idx = idx + 32
                    continue 
                mem[_240 + 68] = mem[_240 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _240 + -mem[64] + 100
            if (block.timestamp * sub_2bb5cc3e * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_2bb5cc3e * poolInfo[idx].field_256) / (block.timestamp * sub_2bb5cc3e) - (poolInfo[idx].field_512 * sub_2bb5cc3e) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _194 = mem[64]
            mem[64] = mem[64] + 64
            mem[_194] = 26
            mem[_194 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _201 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _201 + 68] = mem[idx + _194 + 32]
                    idx = idx + 32
                    continue 
                mem[_201 + 68] = mem[_201 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _201 + -mem[64] + 100
            if not (block.timestamp * sub_2bb5cc3e * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_2bb5cc3e * poolInfo[idx].field_256) / totalAllocPoint:
                _225 = mem[64]
                mem[64] = mem[64] + 64
                mem[_225] = 26
                mem[_225 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _237 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _237 + 68] = mem[idx + _225 + 32]
                    idx = idx + 32
                    continue 
                mem[_237 + 68] = mem[_237 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _237 + -mem[64] + 100
            if 10^12 * (block.timestamp * sub_2bb5cc3e * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_2bb5cc3e * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_2bb5cc3e * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_2bb5cc3e * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _236 = mem[64]
            mem[64] = mem[64] + 64
            mem[_236] = 26
            mem[_236 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * (block.timestamp * sub_2bb5cc3e * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_2bb5cc3e * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.timestamp * sub_2bb5cc3e * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_2bb5cc3e * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _250 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _250 + 68] = mem[idx + _236 + 32]
                idx = idx + 32
                continue 
            mem[_250 + 68] = mem[_250 + 74 len 26]
            revert with memory
              from mem[64]
               len _250 + -mem[64] + 100
    require arg1 < poolInfo.length
    if poolInfo[arg1].field_256 > totalAllocPoint:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg2 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint = arg2 + totalAllocPoint - poolInfo[arg1].field_256
    require arg1 < poolInfo.length
    poolInfo[arg1].field_256 = arg2
}

function withdraw(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    if arg2 > userInfo[arg1][msg.sender].field_0:
        revert with 0, 'withdraw: not good'
    require arg1 < poolInfo.length
    if block.timestamp <= poolInfo[arg1].field_512:
        if not userInfo[arg1][msg.sender].field_0:
            if userInfo[arg1][msg.sender].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_8600adc6[msg.sender] - userInfo[arg1][msg.sender].field_256 < -userInfo[arg1][msg.sender].field_256:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(elevenAddress)
            staticcall elevenAddress.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(elevenAddress)
            if sub_8600adc6[msg.sender] - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                call elevenAddress.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args msg.sender, sub_8600adc6[msg.sender] - userInfo[arg1][msg.sender].field_256
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                sub_8600adc6[msg.sender] = 0
                if arg2 > userInfo[arg1][msg.sender].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                userInfo[arg1][msg.sender].field_0 -= arg2
                if not userInfo[arg1][msg.sender].field_0 - arg2:
                    userInfo[arg1][msg.sender].field_256 = 0
                else:
                    if (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) - (arg2 * poolInfo[arg1].field_768) / userInfo[arg1][msg.sender].field_0 - arg2 != poolInfo[arg1].field_768:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    userInfo[arg1][msg.sender].field_256 = (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) - (arg2 * poolInfo[arg1].field_768) / 10^12
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(poolInfo[arg1].field_0):
                    revert with 0, 'Address: call to non-contract'
                mem[516 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, arg2) >> 32
                mem[580 len 0] = 0
                call poolInfo[arg1].field_0 with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, arg2) << 224, mem[580 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[548]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 627 len 22]
            else:
                call elevenAddress.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if ext_call.return_data[0] > sub_8600adc6[msg.sender] - userInfo[arg1][msg.sender].field_256:
                    revert with 0, 'SafeMath: subtraction overflow'
                sub_8600adc6[msg.sender] = sub_8600adc6[msg.sender] - userInfo[arg1][msg.sender].field_256 - ext_call.return_data[0]
                if arg2 > userInfo[arg1][msg.sender].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                userInfo[arg1][msg.sender].field_0 -= arg2
                if not userInfo[arg1][msg.sender].field_0 - arg2:
                    userInfo[arg1][msg.sender].field_256 = 0
                else:
                    if (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) - (arg2 * poolInfo[arg1].field_768) / userInfo[arg1][msg.sender].field_0 - arg2 != poolInfo[arg1].field_768:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    userInfo[arg1][msg.sender].field_256 = (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) - (arg2 * poolInfo[arg1].field_768) / 10^12
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(poolInfo[arg1].field_0):
                    revert with 0, 'Address: call to non-contract'
                mem[580 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, arg2) >> 32
                mem[644 len 0] = 0
                call poolInfo[arg1].field_0 with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, arg2) << 224, mem[644 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[612]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 691 len 22]
        else:
            if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_8600adc6[msg.sender] < 0:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(elevenAddress)
            staticcall elevenAddress.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(elevenAddress)
            if sub_8600adc6[msg.sender] + (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                call elevenAddress.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args msg.sender, sub_8600adc6[msg.sender] + (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                sub_8600adc6[msg.sender] = 0
                if arg2 > userInfo[arg1][msg.sender].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                userInfo[arg1][msg.sender].field_0 -= arg2
                if not userInfo[arg1][msg.sender].field_0 - arg2:
                    userInfo[arg1][msg.sender].field_256 = 0
                else:
                    if (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) - (arg2 * poolInfo[arg1].field_768) / userInfo[arg1][msg.sender].field_0 - arg2 != poolInfo[arg1].field_768:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    userInfo[arg1][msg.sender].field_256 = (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) - (arg2 * poolInfo[arg1].field_768) / 10^12
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(poolInfo[arg1].field_0):
                    revert with 0, 'Address: call to non-contract'
                mem[516 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, arg2) >> 32
                mem[580 len 0] = 0
                call poolInfo[arg1].field_0 with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, arg2) << 224, mem[580 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[548]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 627 len 22]
            else:
                call elevenAddress.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if ext_call.return_data[0] > sub_8600adc6[msg.sender] + (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256:
                    revert with 0, 'SafeMath: subtraction overflow'
                sub_8600adc6[msg.sender] = sub_8600adc6[msg.sender] + (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 - ext_call.return_data[0]
                if arg2 > userInfo[arg1][msg.sender].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                userInfo[arg1][msg.sender].field_0 -= arg2
                if not userInfo[arg1][msg.sender].field_0 - arg2:
                    userInfo[arg1][msg.sender].field_256 = 0
                else:
                    if (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) - (arg2 * poolInfo[arg1].field_768) / userInfo[arg1][msg.sender].field_0 - arg2 != poolInfo[arg1].field_768:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    userInfo[arg1][msg.sender].field_256 = (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) - (arg2 * poolInfo[arg1].field_768) / 10^12
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(poolInfo[arg1].field_0):
                    revert with 0, 'Address: call to non-contract'
                mem[580 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, arg2) >> 32
                mem[644 len 0] = 0
                call poolInfo[arg1].field_0 with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, arg2) << 224, mem[644 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[612]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 691 len 22]
    else:
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            poolInfo[arg1].field_512 = block.timestamp
            if not userInfo[arg1][msg.sender].field_0:
                if userInfo[arg1][msg.sender].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if sub_8600adc6[msg.sender] - userInfo[arg1][msg.sender].field_256 < -userInfo[arg1][msg.sender].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(elevenAddress)
                staticcall elevenAddress.balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(elevenAddress)
                if sub_8600adc6[msg.sender] - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                    call elevenAddress.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, sub_8600adc6[msg.sender] - userInfo[arg1][msg.sender].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    sub_8600adc6[msg.sender] = 0
                    if arg2 > userInfo[arg1][msg.sender].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    userInfo[arg1][msg.sender].field_0 -= arg2
                    if not userInfo[arg1][msg.sender].field_0 - arg2:
                        userInfo[arg1][msg.sender].field_256 = 0
                    else:
                        if (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) - (arg2 * poolInfo[arg1].field_768) / userInfo[arg1][msg.sender].field_0 - arg2 != poolInfo[arg1].field_768:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        userInfo[arg1][msg.sender].field_256 = (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) - (arg2 * poolInfo[arg1].field_768) / 10^12
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    mem[516 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, arg2) >> 32
                    mem[580 len 0] = 0
                    call poolInfo[arg1].field_0 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, arg2) << 224, mem[580 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[548]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 627 len 22]
                else:
                    call elevenAddress.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if ext_call.return_data[0] > sub_8600adc6[msg.sender] - userInfo[arg1][msg.sender].field_256:
                        revert with 0, 'SafeMath: subtraction overflow'
                    sub_8600adc6[msg.sender] = sub_8600adc6[msg.sender] - userInfo[arg1][msg.sender].field_256 - ext_call.return_data[0]
                    if arg2 > userInfo[arg1][msg.sender].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    userInfo[arg1][msg.sender].field_0 -= arg2
                    if not userInfo[arg1][msg.sender].field_0 - arg2:
                        userInfo[arg1][msg.sender].field_256 = 0
                    else:
                        if (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) - (arg2 * poolInfo[arg1].field_768) / userInfo[arg1][msg.sender].field_0 - arg2 != poolInfo[arg1].field_768:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        userInfo[arg1][msg.sender].field_256 = (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) - (arg2 * poolInfo[arg1].field_768) / 10^12
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    mem[580 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, arg2) >> 32
                    mem[644 len 0] = 0
                    call poolInfo[arg1].field_0 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, arg2) << 224, mem[644 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[612]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 691 len 22]
            else:
                if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                if sub_8600adc6[msg.sender] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(elevenAddress)
                staticcall elevenAddress.balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(elevenAddress)
                if sub_8600adc6[msg.sender] + (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                    call elevenAddress.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, sub_8600adc6[msg.sender] + (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    sub_8600adc6[msg.sender] = 0
                    if arg2 > userInfo[arg1][msg.sender].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    userInfo[arg1][msg.sender].field_0 -= arg2
                    if not userInfo[arg1][msg.sender].field_0 - arg2:
                        userInfo[arg1][msg.sender].field_256 = 0
                    else:
                        if (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) - (arg2 * poolInfo[arg1].field_768) / userInfo[arg1][msg.sender].field_0 - arg2 != poolInfo[arg1].field_768:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        userInfo[arg1][msg.sender].field_256 = (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) - (arg2 * poolInfo[arg1].field_768) / 10^12
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    mem[516 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, arg2) >> 32
                    mem[580 len 0] = 0
                    call poolInfo[arg1].field_0 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, arg2) << 224, mem[580 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[548]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 627 len 22]
                else:
                    call elevenAddress.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if ext_call.return_data[0] > sub_8600adc6[msg.sender] + (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256:
                        revert with 0, 'SafeMath: subtraction overflow'
                    sub_8600adc6[msg.sender] = sub_8600adc6[msg.sender] + (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 - ext_call.return_data[0]
                    if arg2 > userInfo[arg1][msg.sender].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    userInfo[arg1][msg.sender].field_0 -= arg2
                    if not userInfo[arg1][msg.sender].field_0 - arg2:
                        userInfo[arg1][msg.sender].field_256 = 0
                    else:
                        if (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) - (arg2 * poolInfo[arg1].field_768) / userInfo[arg1][msg.sender].field_0 - arg2 != poolInfo[arg1].field_768:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        userInfo[arg1][msg.sender].field_256 = (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) - (arg2 * poolInfo[arg1].field_768) / 10^12
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    mem[580 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, arg2) >> 32
                    mem[644 len 0] = 0
                    call poolInfo[arg1].field_0 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, arg2) << 224, mem[644 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[612]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 691 len 22]
        else:
            if poolInfo[arg1].field_512 > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.timestamp - poolInfo[arg1].field_512:
                if not totalAllocPoint:
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / totalAllocPoint:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                else:
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
            else:
                if (block.timestamp * sub_2bb5cc3e) - (poolInfo[arg1].field_512 * sub_2bb5cc3e) / block.timestamp - poolInfo[arg1].field_512 != sub_2bb5cc3e:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not (block.timestamp * sub_2bb5cc3e) - (poolInfo[arg1].field_512 * sub_2bb5cc3e):
                    if not totalAllocPoint:
                        revert with 0, 'SafeMath: division by zero'
                    if not 0 / totalAllocPoint:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                    else:
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                else:
                    if (block.timestamp * sub_2bb5cc3e * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_2bb5cc3e * poolInfo[arg1].field_256) / (block.timestamp * sub_2bb5cc3e) - (poolInfo[arg1].field_512 * sub_2bb5cc3e) != poolInfo[arg1].field_256:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not totalAllocPoint:
                        revert with 0, 'SafeMath: division by zero'
                    if not (block.timestamp * sub_2bb5cc3e * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_2bb5cc3e * poolInfo[arg1].field_256) / totalAllocPoint:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                    else:
                        if 10^12 * (block.timestamp * sub_2bb5cc3e * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_2bb5cc3e * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * sub_2bb5cc3e * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_2bb5cc3e * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (10^12 * (block.timestamp * sub_2bb5cc3e * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_2bb5cc3e * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^12 * (block.timestamp * sub_2bb5cc3e * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_2bb5cc3e * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
            poolInfo[arg1].field_512 = block.timestamp
            if not userInfo[arg1][msg.sender].field_0:
                if userInfo[arg1][msg.sender].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if sub_8600adc6[msg.sender] - userInfo[arg1][msg.sender].field_256 < -userInfo[arg1][msg.sender].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(elevenAddress)
                staticcall elevenAddress.balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(elevenAddress)
                if sub_8600adc6[msg.sender] - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                    call elevenAddress.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, sub_8600adc6[msg.sender] - userInfo[arg1][msg.sender].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    sub_8600adc6[msg.sender] = 0
                    if arg2 > userInfo[arg1][msg.sender].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    userInfo[arg1][msg.sender].field_0 -= arg2
                    if not userInfo[arg1][msg.sender].field_0 - arg2:
                        userInfo[arg1][msg.sender].field_256 = 0
                    else:
                        if (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) - (arg2 * poolInfo[arg1].field_768) / userInfo[arg1][msg.sender].field_0 - arg2 != poolInfo[arg1].field_768:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        userInfo[arg1][msg.sender].field_256 = (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) - (arg2 * poolInfo[arg1].field_768) / 10^12
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    mem[708 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, arg2) >> 32
                    mem[772 len 0] = 0
                    call poolInfo[arg1].field_0 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, arg2) << 224, mem[772 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[740]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 819 len 22]
                else:
                    call elevenAddress.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if ext_call.return_data[0] > sub_8600adc6[msg.sender] - userInfo[arg1][msg.sender].field_256:
                        revert with 0, 'SafeMath: subtraction overflow'
                    sub_8600adc6[msg.sender] = sub_8600adc6[msg.sender] - userInfo[arg1][msg.sender].field_256 - ext_call.return_data[0]
                    if arg2 > userInfo[arg1][msg.sender].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    userInfo[arg1][msg.sender].field_0 -= arg2
                    if not userInfo[arg1][msg.sender].field_0 - arg2:
                        userInfo[arg1][msg.sender].field_256 = 0
                    else:
                        if (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) - (arg2 * poolInfo[arg1].field_768) / userInfo[arg1][msg.sender].field_0 - arg2 != poolInfo[arg1].field_768:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                        userInfo[arg1][msg.sender].field_256 = (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) - (arg2 * poolInfo[arg1].field_768) / 10^12
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    mem[772 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, arg2) >> 32
                    mem[836 len 0] = 0
                    call poolInfo[arg1].field_0 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, arg2) << 224, mem[836 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[804]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 883 len 22]
            else:
                if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                if sub_8600adc6[msg.sender] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(elevenAddress)
                staticcall elevenAddress.balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(elevenAddress)
                if sub_8600adc6[msg.sender] + (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                    call elevenAddress.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, sub_8600adc6[msg.sender] + (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    sub_8600adc6[msg.sender] = 0
                    if arg2 > userInfo[arg1][msg.sender].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    userInfo[arg1][msg.sender].field_0 -= arg2
                    if not userInfo[arg1][msg.sender].field_0 - arg2:
                        userInfo[arg1][msg.sender].field_256 = 0
                    else:
                        if (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) - (arg2 * poolInfo[arg1].field_768) / userInfo[arg1][msg.sender].field_0 - arg2 != poolInfo[arg1].field_768:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        userInfo[arg1][msg.sender].field_256 = (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) - (arg2 * poolInfo[arg1].field_768) / 10^12
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    mem[708 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, arg2) >> 32
                    mem[772 len 0] = 0
                    call poolInfo[arg1].field_0 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, arg2) << 224, mem[772 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[740]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 819 len 22]
                else:
                    call elevenAddress.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if ext_call.return_data[0] > sub_8600adc6[msg.sender] + (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256:
                        revert with 0, 'SafeMath: subtraction overflow'
                    sub_8600adc6[msg.sender] = sub_8600adc6[msg.sender] + (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 - ext_call.return_data[0]
                    if arg2 > userInfo[arg1][msg.sender].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    userInfo[arg1][msg.sender].field_0 -= arg2
                    if not userInfo[arg1][msg.sender].field_0 - arg2:
                        userInfo[arg1][msg.sender].field_256 = 0
                    else:
                        if (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) - (arg2 * poolInfo[arg1].field_768) / userInfo[arg1][msg.sender].field_0 - arg2 != poolInfo[arg1].field_768:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                        userInfo[arg1][msg.sender].field_256 = (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) - (arg2 * poolInfo[arg1].field_768) / 10^12
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    mem[772 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, arg2) >> 32
                    mem[836 len 0] = 0
                    call poolInfo[arg1].field_0 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, arg2) << 224, mem[836 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[804]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 883 len 22]
    emit Withdraw(arg2, msg.sender, arg1);
}



}
