contract main {




// =====================  Runtime code  =====================


#
#  - unlock()
#  - _fallback()
#
uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address governorAddress;
mapping of uint256 configA;
address tokenAddress;
address recipientAddress;
uint256 begin;
uint256 span;
uint256 times;
uint256 total;
address storB531;

function governor() payable {
    return governorAddress
}

function begin() payable {
    return begin
}

function span() payable {
    return span
}

function total() payable {
    return total
}

function getConfigA(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return configA[arg1 xor arg2]
}

function recipient() payable {
    return recipientAddress
}

function getConfigI(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    return configA[arg2 xor arg1]
}

function getConfig(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return configA[arg1]
}

function times() payable {
    return times
}

function token() payable {
    return tokenAddress
}

function renounceGovernorship() payable {
    if governorAddress != msg.sender:
        require msg.sender == storB531
    emit GovernorshipTransferred(governorAddress, 0);
    governorAddress = 0
}

function setConfig(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if governorAddress != msg.sender:
        require msg.sender == storB531
    if arg2 != configA[arg1]:
        configA[arg1] = arg2
}

function setConfigI(bytes32 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if governorAddress != msg.sender:
        require msg.sender == storB531
    if arg3 != configA[arg2 xor arg1]:
        configA[arg2 xor arg1] = arg3
}

function setConfigA(bytes32 arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg2 == arg2
    if governorAddress != msg.sender:
        require msg.sender == storB531
    if arg3 != configA[arg1 xor arg2]:
        configA[arg1 xor arg2] = arg3
}

function transferGovernorship(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governorAddress != msg.sender:
        require msg.sender == storB531
    require arg1
    emit GovernorshipTransferred(governorAddress, arg1);
    governorAddress = arg1
}

function start(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    if governorAddress != msg.sender:
        require msg.sender == storB531
    tokenAddress = arg1
    recipientAddress = arg2
    begin = arg3
    span = arg4
    times = arg5
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    total = ext_call.return_data[0]
}

function __Governable_init_unchained(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor0.field_8):
        governorAddress = arg1
        emit GovernorshipTransferred(0, arg1);
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
        if uint8(stor0.field_8):
            governorAddress = arg1
            emit GovernorshipTransferred(0, arg1);
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            governorAddress = arg1
            emit GovernorshipTransferred(0, arg1);
            uint8(stor0.field_8) = 0
}

function unlockCapacity() payable {
    mem[64] = 96
    if 0 == begin:
        return 0
    if block.timestamp < begin:
        return 0
    idx = 1
    while idx <= times:
        if not span:
            _121 = mem[64]
            mem[64] = mem[64] + 64
            mem[_121] = 26
            mem[_121 + 32] = 'SafeMath: division by zero'
            if not times:
                _125 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _125 + 68] = mem[idx + _121 + 32]
                    idx = idx + 32
                    continue 
                mem[_125 + 94] = 0
                revert with memory
                  from mem[64]
                   len _125 + -mem[64] + 100
            if begin + (0 / times) < 0 / times:
                revert with 0, 'SafeMath: addition overflow'
            if block.timestamp >= begin + (0 / times):
                idx = idx + 1
                continue 
            _141 = mem[64]
            mem[64] = mem[64] + 64
            mem[_141] = 30
            mem[_141 + 32] = 'SafeMath: subtraction overflow'
            if idx > times:
                _143 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _143 + 68] = mem[idx + _141 + 32]
                    idx = idx + 32
                    continue 
                mem[_143 + 98] = 0
                revert with memory
                  from mem[64]
                   len _143 + -mem[64] + 100
            if not total:
                _151 = mem[64]
                mem[64] = mem[64] + 64
                mem[_151] = 26
                mem[_151 + 32] = 'SafeMath: division by zero'
                if not times:
                    _161 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _161 + 68] = mem[idx + _151 + 32]
                        idx = idx + 32
                        continue 
                    mem[_161 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _161 + -mem[64] + 100
                mem[mem[64] + 4] = this.address
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _181 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _193 = mem[_181]
                _197 = mem[64]
                mem[64] = mem[64] + 64
                mem[_197] = 30
                mem[_197 + 32] = 'SafeMath: subtraction overflow'
                if 0 / times <= _193:
                    return (_193 - (0 / times))
                _201 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _201 + 68] = mem[idx + _197 + 32]
                    idx = idx + 32
                    continue 
                mem[_201 + 98] = 0
                revert with memory
                  from mem[64]
                   len _201 + -mem[64] + 100
            if (times * total) - (idx * total) / total != times - idx:
                revert with 0, 'SafeMath: multiplication overflow'
            _157 = mem[64]
            mem[64] = mem[64] + 64
            mem[_157] = 26
            mem[_157 + 32] = 'SafeMath: division by zero'
            if not times:
                _163 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _163 + 68] = mem[idx + _157 + 32]
                    idx = idx + 32
                    continue 
                mem[_163 + 94] = 0
                revert with memory
                  from mem[64]
                   len _163 + -mem[64] + 100
            mem[mem[64] + 4] = this.address
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _187 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _195 = mem[_187]
            _199 = mem[64]
            mem[64] = mem[64] + 64
            mem[_199] = 30
            mem[_199 + 32] = 'SafeMath: subtraction overflow'
            if (times * total) - (idx * total) / times <= _195:
                return (_195 - ((times * total) - (idx * total) / times))
            _203 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _203 + 68] = mem[idx + _199 + 32]
                idx = idx + 32
                continue 
            mem[_203 + 98] = 0
            revert with memory
              from mem[64]
               len _203 + -mem[64] + 100
        if idx * span / span != idx:
            revert with 0, 'SafeMath: multiplication overflow'
        _123 = mem[64]
        mem[64] = mem[64] + 64
        mem[_123] = 26
        mem[_123 + 32] = 'SafeMath: division by zero'
        if not times:
            _126 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _126 + 68] = mem[idx + _123 + 32]
                idx = idx + 32
                continue 
            mem[_126 + 94] = 0
            revert with memory
              from mem[64]
               len _126 + -mem[64] + 100
        if begin + (idx * span / times) < idx * span / times:
            revert with 0, 'SafeMath: addition overflow'
        if block.timestamp >= begin + (idx * span / times):
            idx = idx + 1
            continue 
        _142 = mem[64]
        mem[64] = mem[64] + 64
        mem[_142] = 30
        mem[_142 + 32] = 'SafeMath: subtraction overflow'
        if idx > times:
            _144 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _144 + 68] = mem[idx + _142 + 32]
                idx = idx + 32
                continue 
            mem[_144 + 98] = 0
            revert with memory
              from mem[64]
               len _144 + -mem[64] + 100
        if not total:
            _154 = mem[64]
            mem[64] = mem[64] + 64
            mem[_154] = 26
            mem[_154 + 32] = 'SafeMath: division by zero'
            if not times:
                _162 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _162 + 68] = mem[idx + _154 + 32]
                    idx = idx + 32
                    continue 
                mem[_162 + 94] = 0
                revert with memory
                  from mem[64]
                   len _162 + -mem[64] + 100
            mem[mem[64] + 4] = this.address
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _184 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _194 = mem[_184]
            _198 = mem[64]
            mem[64] = mem[64] + 64
            mem[_198] = 30
            mem[_198 + 32] = 'SafeMath: subtraction overflow'
            if 0 / times <= _194:
                return (_194 - (0 / times))
            _202 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _202 + 68] = mem[idx + _198 + 32]
                idx = idx + 32
                continue 
            mem[_202 + 98] = 0
            revert with memory
              from mem[64]
               len _202 + -mem[64] + 100
        if (times * total) - (idx * total) / total != times - idx:
            revert with 0, 'SafeMath: multiplication overflow'
        _159 = mem[64]
        mem[64] = mem[64] + 64
        mem[_159] = 26
        mem[_159 + 32] = 'SafeMath: division by zero'
        if not times:
            _165 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _165 + 68] = mem[idx + _159 + 32]
                idx = idx + 32
                continue 
            mem[_165 + 94] = 0
            revert with memory
              from mem[64]
               len _165 + -mem[64] + 100
        mem[mem[64] + 4] = this.address
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _190 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _196 = mem[_190]
        _200 = mem[64]
        mem[64] = mem[64] + 64
        mem[_200] = 30
        mem[_200 + 32] = 'SafeMath: subtraction overflow'
        if (times * total) - (idx * total) / times <= _196:
            return (_196 - ((times * total) - (idx * total) / times))
        _205 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[idx + _205 + 68] = mem[idx + _200 + 32]
            idx = idx + 32
            continue 
        mem[_205 + 98] = 0
        revert with memory
          from mem[64]
           len _205 + -mem[64] + 100
    mem[mem[64] + 4] = this.address
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _119 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[mem[64]] = mem[_119]
    return memory
      from mem[64]
       len 32
}



}
