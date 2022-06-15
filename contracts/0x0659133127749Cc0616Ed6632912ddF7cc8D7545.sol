contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address uniRouterAddress; offset 8
array of address sub_fd0c5a02;
address busdAddress;
array of address pools;
array of address lpPools;
array of uint256 tiers;
address govAddress;
array of uint256 stor660301456019777184113296434797620819555017468543624515662331739614079884729;

function tiers(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < tiers.length
    return tiers[arg1]
}

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function govAddress() payable {
    return govAddress
}

function uniRouterAddress() payable {
    return uniRouterAddress
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function busdAddress() payable {
    return busdAddress
}

function getOwner() payable {
    return owner
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function pools(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < pools.length
    return pools[arg1]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function lpPools(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < lpPools.length
    return lpPools[arg1]
}

function sub_fd0c5a02(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_fd0c5a02.length
    return sub_fd0c5a02[arg1]
}

function _fallback() payable {
    revert
}

function setGovAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, 'gov: wut?'
    govAddress = arg1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_16ec2b81(?) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, 'gov: wut?'
    tiers.length++
    stor175B[stor11.length] = arg1
}

function sub_8259ab11(?) payable {
    require calldata.size - 4 >= 64
    if govAddress != msg.sender:
        revert with 0, 'gov: wut?'
    require arg1 < tiers.length
    tiers[arg1] = arg2
}

function sub_5d8fc2d9(?) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, 'gov: wut?'
    require arg1 < lpPools.length
    lpPools[arg1] = 0
}

function sub_a1d32f24(?) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, 'gov: wut?'
    lpPools.length++
    lpPools[lpPools.length] = arg1
}

function addPool(address arg1) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, 'gov: wut?'
    pools.length++
    pools[pools.length] = arg1
}

function removePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, 'gov: wut?'
    require arg1 < pools.length
    pools[arg1] = 0
}

function sub_78d4c904(?) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, 'gov: wut?'
    require arg1 < sub_fd0c5a02.length
    sub_fd0c5a02[arg1] = 0
}

function sub_a4e9ddeb(?) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, 'gov: wut?'
    sub_fd0c5a02.length++
    sub_fd0c5a02[sub_fd0c5a02.length] = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function mint(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not msg.sender:
        revert with 0, 'BEP20: mint to the zero address'
    if arg1 + totalSupply < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg1
    if arg1 + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(msg.sender)] += arg1
    emit Transfer(arg1, 0, msg.sender);
    return 1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6f42455032303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x7342455032303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x6f42455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 + allowance[address(msg.sender)][address(arg1)] < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6f42455032303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x7742455032303a205472616e7366657220616d6f756e74206d7573742062652067726561746572207468616e207a6572,
                    mem[212 len 16]
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 
                    32,
                    38,
                    0x6f42455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(msg.sender)] -= arg2
    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    if arg2 > arg2:
        revert with 0, 'SafeMath: subtraction overflow'
    if balanceOf[this.address] < balanceOf[this.address]:
        revert with 0, 'SafeMath: addition overflow'
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg3 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x7742455032303a205472616e7366657220616d6f756e74206d7573742062652067726561746572207468616e207a6572,
                    mem[212 len 16]
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 
                    32,
                    38,
                    0x6f42455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(arg1)] -= arg3
    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    if arg3 > arg3:
        revert with 0, 'SafeMath: subtraction overflow'
    if balanceOf[this.address] < balanceOf[this.address]:
        revert with 0, 'SafeMath: addition overflow'
    emit Transfer(arg3, arg1, arg2);
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 
                    32,
                    40,
                    0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                    mem[328 len 24],
                    mem[376 len 8]
    if not arg1:
        revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[456 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x6f42455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[454 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function sub_24e48b90(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    mem[0] = arg1
    mem[32] = 1
    idx = 0
    s = stor[sha3(mem[0 len 64])]
    while idx < sub_fd0c5a02.length:
        mem[0] = 7
        if not sub_fd0c5a02[idx]:
            idx = idx + 1
            s = s
            continue 
        require idx < sub_fd0c5a02.length
        require ext_code.size(sub_fd0c5a02[idx])
        staticcall sub_fd0c5a02[idx].0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < sub_fd0c5a02.length
        mem[32] = 1
        mem[0] = 7
        mem[mem[64] + 4] = arg1
        require ext_code.size(sub_fd0c5a02[idx])
        staticcall sub_fd0c5a02[idx].0x70a08231 with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            _130 = mem[64]
            mem[64] = mem[64] + 64
            mem[_130] = 26
            mem[_130 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                idx = idx + 1
                s = s + (0 / ext_call.return_data[0])
                continue 
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            mem[mem[64] + 68] = 'SafeMath: division by zero'
            s = 32
            while s < 26:
                mem[s + mem[64] + 68] = mem[s + _130 + 32]
                s = s + 32
                continue 
        else:
            if balanceOf[stor7[idx]] * ext_call.return_data[0] / ext_call.return_data[0] != balanceOf[stor7[idx]]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _131 = mem[64]
            mem[64] = mem[64] + 64
            mem[_131] = 26
            mem[_131 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                idx = idx + 1
                s = s + (balanceOf[stor7[idx]] * ext_call.return_data[0] / ext_call.return_data[0])
                continue 
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            mem[mem[64] + 68] = 'SafeMath: division by zero'
            idx = 32
            while idx < 26:
                mem[idx + mem[64] + 68] = mem[idx + _131 + 32]
                idx = idx + 32
                continue 
        revert with 0, 'SafeMath: division by zero'
    idx = 0
    t = s
    while idx < pools.length:
        mem[0] = 9
        if not pools[idx]:
            idx = idx + 1
            t = t
            continue 
        require idx < pools.length
        mem[0] = 9
        require ext_code.size(pools[idx])
        staticcall pools[idx].userInfo(address arg1) with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        idx = idx + 1
        t = ext_call.return_data[0] + t
        continue 
    idx = 0
    s = t
    while idx < lpPools.length:
        mem[0] = 10
        if not lpPools[idx]:
            idx = idx + 1
            s = s
            continue 
        require idx < lpPools.length
        require ext_code.size(lpPools[idx])
        staticcall lpPools[idx].userInfo(address arg1) with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require idx < lpPools.length
        require ext_code.size(lpPools[idx])
        staticcall lpPools[idx].stakeToken() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x18160ddd with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[0] = address(ext_call.return_data[0])
        mem[32] = 1
        if not ext_call.return_data[0]:
            _258 = mem[64]
            mem[64] = mem[64] + 64
            mem[_258] = 26
            mem[_258 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                idx = idx + 1
                s = s + (0 / ext_call.return_data[0])
                continue 
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            mem[mem[64] + 68] = 'SafeMath: division by zero'
            s = 32
            while s < 26:
                mem[s + mem[64] + 68] = mem[s + _258 + 32]
                s = s + 32
                continue 
        else:
            if balanceOf[address(ext_call.return_data[0])] * ext_call.return_data[0] / ext_call.return_data[0] != balanceOf[address(ext_call.return_data[0])]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _259 = mem[64]
            mem[64] = mem[64] + 64
            mem[_259] = 26
            mem[_259 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                idx = idx + 1
                s = s + (balanceOf[address(ext_call.return_data[0])] * ext_call.return_data[0] / ext_call.return_data[0])
                continue 
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            mem[mem[64] + 68] = 'SafeMath: division by zero'
            idx = 32
            while idx < 26:
                mem[idx + mem[64] + 68] = mem[idx + _259 + 32]
                idx = idx + 32
                continue 
        revert with 0, 'SafeMath: division by zero'
    return s
}

function getTier(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    mem[0] = arg1
    mem[32] = 1
    idx = 0
    s = stor[sha3(mem[0 len 64])]
    while idx < sub_fd0c5a02.length:
        mem[0] = 7
        if not sub_fd0c5a02[idx]:
            idx = idx + 1
            s = s
            continue 
        require idx < sub_fd0c5a02.length
        require ext_code.size(sub_fd0c5a02[idx])
        staticcall sub_fd0c5a02[idx].0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < sub_fd0c5a02.length
        mem[32] = 1
        mem[0] = 7
        mem[mem[64] + 4] = arg1
        require ext_code.size(sub_fd0c5a02[idx])
        staticcall sub_fd0c5a02[idx].0x70a08231 with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            _136 = mem[64]
            mem[64] = mem[64] + 64
            mem[_136] = 26
            mem[_136 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                idx = idx + 1
                s = s + (0 / ext_call.return_data[0])
                continue 
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            mem[mem[64] + 68] = 'SafeMath: division by zero'
            s = 32
            while s < 26:
                mem[s + mem[64] + 68] = mem[s + _136 + 32]
                s = s + 32
                continue 
        else:
            if balanceOf[stor7[idx]] * ext_call.return_data[0] / ext_call.return_data[0] != balanceOf[stor7[idx]]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _137 = mem[64]
            mem[64] = mem[64] + 64
            mem[_137] = 26
            mem[_137 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                idx = idx + 1
                s = s + (balanceOf[stor7[idx]] * ext_call.return_data[0] / ext_call.return_data[0])
                continue 
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            mem[mem[64] + 68] = 'SafeMath: division by zero'
            idx = 32
            while idx < 26:
                mem[idx + mem[64] + 68] = mem[idx + _137 + 32]
                idx = idx + 32
                continue 
        revert with 0, 'SafeMath: division by zero'
    idx = 0
    t = s
    while idx < pools.length:
        mem[0] = 9
        if not pools[idx]:
            idx = idx + 1
            t = t
            continue 
        require idx < pools.length
        mem[0] = 9
        require ext_code.size(pools[idx])
        staticcall pools[idx].userInfo(address arg1) with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        idx = idx + 1
        t = ext_call.return_data[0] + t
        continue 
    idx = 0
    s = t
    while idx < lpPools.length:
        mem[0] = 10
        if not lpPools[idx]:
            idx = idx + 1
            s = s
            continue 
        require idx < lpPools.length
        require ext_code.size(lpPools[idx])
        staticcall lpPools[idx].userInfo(address arg1) with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require idx < lpPools.length
        require ext_code.size(lpPools[idx])
        staticcall lpPools[idx].stakeToken() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x18160ddd with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[0] = address(ext_call.return_data[0])
        mem[32] = 1
        if not ext_call.return_data[0]:
            _270 = mem[64]
            mem[64] = mem[64] + 64
            mem[_270] = 26
            mem[_270 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                idx = idx + 1
                s = s + (0 / ext_call.return_data[0])
                continue 
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            mem[mem[64] + 68] = 'SafeMath: division by zero'
            s = 32
            while s < 26:
                mem[s + mem[64] + 68] = mem[s + _270 + 32]
                s = s + 32
                continue 
        else:
            if balanceOf[address(ext_call.return_data[0])] * ext_call.return_data[0] / ext_call.return_data[0] != balanceOf[address(ext_call.return_data[0])]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _271 = mem[64]
            mem[64] = mem[64] + 64
            mem[_271] = 26
            mem[_271 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                idx = idx + 1
                s = s + (balanceOf[address(ext_call.return_data[0])] * ext_call.return_data[0] / ext_call.return_data[0])
                continue 
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            mem[mem[64] + 68] = 'SafeMath: division by zero'
            idx = 32
            while idx < 26:
                mem[idx + mem[64] + 68] = mem[idx + _271 + 32]
                idx = idx + 32
                continue 
        revert with 0, 'SafeMath: division by zero'
    if not tiers.length:
        return 0
    require var22001 < tiers.length
    if s >= tiers[var24001]:
        return var24003
    require var24003 - 1 < tiers.length
    t = var24003
    while s < tiers[t]:
        require t - 2 < tiers.length
        mem[0] = 11
        t = t - 1
        continue 
    return (t - 1)
}



}
