contract main {




// =====================  Runtime code  =====================


#
#  - emergencyWithdraw(uint256 arg1)
#  - deposit(uint256 arg1, uint256 arg2)
#
uint32 stor0;
address owner;
uint256 stor0;
address sub_70e44ec9Address;
uint256 sub_401e3119;
array of struct poolInfo;
mapping of struct userInfo;
uint256 sub_37339f46;
uint256 startBlock;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037084;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037085;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037086;

function poolLength() payable {
    return poolInfo.length
}

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, poolInfo[arg1].field_256, poolInfo[arg1].field_512, poolInfo[arg1].field_768
}

function sub_37339f46(?) payable {
    return sub_37339f46
}

function sub_401e3119(?) payable {
    return sub_401e3119
}

function startBlock() payable {
    return startBlock
}

function sub_70e44ec9(?) payable {
    return sub_70e44ec9Address
}

function owner() payable {
    return address(owner)
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
}

function _fallback() payable {
    revert
}

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 < arg1:
        revert with 0, 17
    return (arg2 - arg1)
}

function renounceOwnership() payable {
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(owner) = 0
    emit OwnershipTransferred(address(owner), 0);
}

function sub_24de9e46(?) payable {
    require ext_code.size(sub_70e44ec9Address)
    staticcall sub_70e44ec9Address.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
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

function getLpSupply(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= poolInfo.length:
        revert with 0, 50
    require ext_code.size(poolInfo[arg1].field_0)
    staticcall poolInfo[arg1].field_0.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function fund(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'fund: must pass valid _from address'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'fund: expecting a positive non zero _amount value'
    require ext_code.size(sub_70e44ec9Address)
    staticcall sub_70e44ec9Address.balanceOf(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0, 'fund: expected an address that contains enough RIO for Transfer'
    require ext_code.size(sub_70e44ec9Address)
    call sub_70e44ec9Address.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(arg1), this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit ContractFunded(arg2, arg1);
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if block.timestamp > poolInfo[arg1].field_512:
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if block.timestamp < poolInfo[arg1].field_512:
                revert with 0, 17
            if block.timestamp - poolInfo[arg1].field_512 and sub_401e3119 > -1 / block.timestamp - poolInfo[arg1].field_512:
                revert with 0, 17
            if (block.timestamp * sub_401e3119) - (poolInfo[arg1].field_512 * sub_401e3119) and poolInfo[arg1].field_256 > -1 / (block.timestamp * sub_401e3119) - (poolInfo[arg1].field_512 * sub_401e3119):
                revert with 0, 17
            if not sub_37339f46:
                revert with 0, 18
            if (block.timestamp * sub_401e3119 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_401e3119 * poolInfo[arg1].field_256) / sub_37339f46 and 10^12 > -1 / (block.timestamp * sub_401e3119 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_401e3119 * poolInfo[arg1].field_256) / sub_37339f46:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if poolInfo[arg1].field_768 > !(10^12 * (block.timestamp * sub_401e3119 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_401e3119 * poolInfo[arg1].field_256) / sub_37339f46 / ext_call.return_data[0]):
                revert with 0, 17
            poolInfo[arg1].field_768 += 10^12 * (block.timestamp * sub_401e3119 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_401e3119 * poolInfo[arg1].field_256) / sub_37339f46 / ext_call.return_data[0]
        poolInfo[arg1].field_512 = block.timestamp
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 3
        if block.timestamp > poolInfo[idx].field_512:
            mem[mem[64] + 4] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _9 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_9]:
                if block.timestamp < poolInfo[idx].field_512:
                    revert with 0, 17
                if block.timestamp - poolInfo[idx].field_512 and sub_401e3119 > -1 / block.timestamp - poolInfo[idx].field_512:
                    revert with 0, 17
                if (block.timestamp * sub_401e3119) - (poolInfo[idx].field_512 * sub_401e3119) and poolInfo[idx].field_256 > -1 / (block.timestamp * sub_401e3119) - (poolInfo[idx].field_512 * sub_401e3119):
                    revert with 0, 17
                if not sub_37339f46:
                    revert with 0, 18
                if (block.timestamp * sub_401e3119 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_401e3119 * poolInfo[idx].field_256) / sub_37339f46 and 10^12 > -1 / (block.timestamp * sub_401e3119 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_401e3119 * poolInfo[idx].field_256) / sub_37339f46:
                    revert with 0, 17
                if not mem[_9]:
                    revert with 0, 18
                if poolInfo[idx].field_768 > !(10^12 * (block.timestamp * sub_401e3119 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_401e3119 * poolInfo[idx].field_256) / sub_37339f46 / mem[_9]):
                    revert with 0, 17
                poolInfo[idx].field_768 += 10^12 * (block.timestamp * sub_401e3119 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_401e3119 * poolInfo[idx].field_256) / sub_37339f46 / mem[_9]
            poolInfo[idx].field_512 = block.timestamp
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_f4ee6777(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if arg1 >= poolInfo.length:
        revert with 0, 50
    require ext_code.size(poolInfo[arg1].field_0)
    staticcall poolInfo[arg1].field_0.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp < poolInfo[arg1].field_512:
        revert with 0, 17
    if block.timestamp - poolInfo[arg1].field_512 and sub_401e3119 > -1 / block.timestamp - poolInfo[arg1].field_512:
        revert with 0, 17
    if (block.timestamp * sub_401e3119) - (poolInfo[arg1].field_512 * sub_401e3119) and poolInfo[arg1].field_256 > -1 / (block.timestamp * sub_401e3119) - (poolInfo[arg1].field_512 * sub_401e3119):
        revert with 0, 17
    if not sub_37339f46:
        revert with 0, 18
    if (block.timestamp * sub_401e3119 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_401e3119 * poolInfo[arg1].field_256) / sub_37339f46 and 10^12 > -1 / (block.timestamp * sub_401e3119 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_401e3119 * poolInfo[arg1].field_256) / sub_37339f46:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if poolInfo[arg1].field_768 > !(10^12 * (block.timestamp * sub_401e3119 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_401e3119 * poolInfo[arg1].field_256) / sub_37339f46 / ext_call.return_data[0]):
        revert with 0, 17
    if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^12 * (block.timestamp * sub_401e3119 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_401e3119 * poolInfo[arg1].field_256) / sub_37339f46 / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
        revert with 0, 17
    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.timestamp * sub_401e3119 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_401e3119 * poolInfo[arg1].field_256) / sub_37339f46 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
        revert with 0, 17
    return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.timestamp * sub_401e3119 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_401e3119 * poolInfo[arg1].field_256) / sub_37339f46 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
}

function emergencyWithdrawReward() payable {
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(sub_70e44ec9Address)
    staticcall sub_70e44ec9Address.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 132] = address(owner)
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor0)
    mem[ceil32(return_data.size) + 128 len 4] = transfer(address arg1, uint256 arg2)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(sub_70e44ec9Address):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 328] = 0
    call sub_70e44ec9Address with:
       funct Mask(32, 224, transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], 0) << 288)
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

function set(uint256 arg1, uint256 arg2, bool arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require arg3 == arg3
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 3
            if block.timestamp > poolInfo[idx].field_512:
                mem[mem[64] + 4] = this.address
                require ext_code.size(poolInfo[idx].field_0)
                staticcall poolInfo[idx].field_0.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _16 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_16]:
                    if block.timestamp < poolInfo[idx].field_512:
                        revert with 0, 17
                    if block.timestamp - poolInfo[idx].field_512 and sub_401e3119 > -1 / block.timestamp - poolInfo[idx].field_512:
                        revert with 0, 17
                    if (block.timestamp * sub_401e3119) - (poolInfo[idx].field_512 * sub_401e3119) and poolInfo[idx].field_256 > -1 / (block.timestamp * sub_401e3119) - (poolInfo[idx].field_512 * sub_401e3119):
                        revert with 0, 17
                    if not sub_37339f46:
                        revert with 0, 18
                    if (block.timestamp * sub_401e3119 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_401e3119 * poolInfo[idx].field_256) / sub_37339f46 and 10^12 > -1 / (block.timestamp * sub_401e3119 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_401e3119 * poolInfo[idx].field_256) / sub_37339f46:
                        revert with 0, 17
                    if not mem[_16]:
                        revert with 0, 18
                    if poolInfo[idx].field_768 > !(10^12 * (block.timestamp * sub_401e3119 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_401e3119 * poolInfo[idx].field_256) / sub_37339f46 / mem[_16]):
                        revert with 0, 17
                    poolInfo[idx].field_768 += 10^12 * (block.timestamp * sub_401e3119 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_401e3119 * poolInfo[idx].field_256) / sub_37339f46 / mem[_16]
                poolInfo[idx].field_512 = block.timestamp
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if sub_37339f46 < poolInfo[arg1].field_256:
        revert with 0, 17
    if sub_37339f46 - poolInfo[arg1].field_256 > !arg2:
        revert with 0, 17
    sub_37339f46 = sub_37339f46 - poolInfo[arg1].field_256 + arg2
    if arg1 >= poolInfo.length:
        revert with 0, 50
    poolInfo[arg1].field_256 = arg2
}

function add(uint256 arg1, address arg2, bool arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require arg2 == arg2
    require arg3 == arg3
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 3
            if block.timestamp > poolInfo[idx].field_512:
                mem[mem[64] + 4] = this.address
                require ext_code.size(poolInfo[idx].field_0)
                staticcall poolInfo[idx].field_0.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _31 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_31]:
                    if block.timestamp < poolInfo[idx].field_512:
                        revert with 0, 17
                    if block.timestamp - poolInfo[idx].field_512 and sub_401e3119 > -1 / block.timestamp - poolInfo[idx].field_512:
                        revert with 0, 17
                    if (block.timestamp * sub_401e3119) - (poolInfo[idx].field_512 * sub_401e3119) and poolInfo[idx].field_256 > -1 / (block.timestamp * sub_401e3119) - (poolInfo[idx].field_512 * sub_401e3119):
                        revert with 0, 17
                    if not sub_37339f46:
                        revert with 0, 18
                    if (block.timestamp * sub_401e3119 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_401e3119 * poolInfo[idx].field_256) / sub_37339f46 and 10^12 > -1 / (block.timestamp * sub_401e3119 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_401e3119 * poolInfo[idx].field_256) / sub_37339f46:
                        revert with 0, 17
                    if not mem[_31]:
                        revert with 0, 18
                    if poolInfo[idx].field_768 > !(10^12 * (block.timestamp * sub_401e3119 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_401e3119 * poolInfo[idx].field_256) / sub_37339f46 / mem[_31]):
                        revert with 0, 17
                    poolInfo[idx].field_768 += 10^12 * (block.timestamp * sub_401e3119 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_401e3119 * poolInfo[idx].field_256) / sub_37339f46 / mem[_31]
                poolInfo[idx].field_512 = block.timestamp
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    if sub_37339f46 > !arg1:
        revert with 0, 17
    sub_37339f46 += arg1
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg2
    storC257[stor3.length] = arg1
    if block.timestamp > startBlock:
        storC257[stor3.length] = block.timestamp
    else:
        storC257[stor3.length] = startBlock
    storC257[stor3.length] = 0
}

function withdraw(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if arg2 > userInfo[arg1][msg.sender].field_0:
        revert with 0, 'withdraw: not good'
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if block.timestamp <= poolInfo[arg1].field_512:
        if userInfo[arg1][msg.sender].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][msg.sender].field_0:
            revert with 0, 17
        if userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12 < userInfo[arg1][msg.sender].field_256:
            revert with 0, 17
        mem[100] = this.address
        require ext_code.size(sub_70e44ec9Address)
        staticcall sub_70e44ec9Address.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(return_data.size) + 100] = msg.sender
        if (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
            mem[ceil32(return_data.size) + 132] = (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256
            require ext_code.size(sub_70e44ec9Address)
            call sub_70e44ec9Address.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256
        else:
            mem[ceil32(return_data.size) + 132] = ext_call.return_data[0]
            require ext_code.size(sub_70e44ec9Address)
            call sub_70e44ec9Address.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0]
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if userInfo[arg1][msg.sender].field_0 < arg2:
            revert with 0, 17
        userInfo[arg1][msg.sender].field_0 -= arg2
        if userInfo[arg1][msg.sender].field_0 - arg2 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][msg.sender].field_0 - arg2:
            revert with 0, 17
        userInfo[arg1][msg.sender].field_256 = (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) - (arg2 * poolInfo[arg1].field_768) / 10^12
        mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
        mem[(2 * ceil32(return_data.size)) + 164] = arg2
        mem[(2 * ceil32(return_data.size)) + 96] = 68
        mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[(2 * ceil32(return_data.size)) + 128 len 4] = transfer(address arg1, uint256 arg2)
        mem[(2 * ceil32(return_data.size)) + 196] = 32
        mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(poolInfo[arg1].field_0):
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + 260 len 96] = transfer(address arg1, uint256 arg2), msg.sender, arg2, 0
        mem[(2 * ceil32(return_data.size)) + 328] = 0
        call poolInfo[arg1].field_0 with:
           funct Mask(32, 224, transfer(address arg1, uint256 arg2), msg.sender, arg2, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, transfer(address arg1, uint256 arg2), msg.sender, arg2, 0) << 288)
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
    else:
        mem[100] = this.address
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if block.timestamp < poolInfo[arg1].field_512:
                revert with 0, 17
            if block.timestamp - poolInfo[arg1].field_512 and sub_401e3119 > -1 / block.timestamp - poolInfo[arg1].field_512:
                revert with 0, 17
            if (block.timestamp * sub_401e3119) - (poolInfo[arg1].field_512 * sub_401e3119) and poolInfo[arg1].field_256 > -1 / (block.timestamp * sub_401e3119) - (poolInfo[arg1].field_512 * sub_401e3119):
                revert with 0, 17
            if not sub_37339f46:
                revert with 0, 18
            if (block.timestamp * sub_401e3119 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_401e3119 * poolInfo[arg1].field_256) / sub_37339f46 and 10^12 > -1 / (block.timestamp * sub_401e3119 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_401e3119 * poolInfo[arg1].field_256) / sub_37339f46:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if poolInfo[arg1].field_768 > !(10^12 * (block.timestamp * sub_401e3119 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_401e3119 * poolInfo[arg1].field_256) / sub_37339f46 / ext_call.return_data[0]):
                revert with 0, 17
            poolInfo[arg1].field_768 += 10^12 * (block.timestamp * sub_401e3119 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_401e3119 * poolInfo[arg1].field_256) / sub_37339f46 / ext_call.return_data[0]
        poolInfo[arg1].field_512 = block.timestamp
        if userInfo[arg1][msg.sender].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][msg.sender].field_0:
            revert with 0, 17
        if userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12 < userInfo[arg1][msg.sender].field_256:
            revert with 0, 17
        mem[ceil32(return_data.size) + 100] = this.address
        require ext_code.size(sub_70e44ec9Address)
        staticcall sub_70e44ec9Address.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
        if (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
            mem[(2 * ceil32(return_data.size)) + 132] = (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256
            require ext_code.size(sub_70e44ec9Address)
            call sub_70e44ec9Address.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256
        else:
            mem[(2 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
            require ext_code.size(sub_70e44ec9Address)
            call sub_70e44ec9Address.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0]
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if userInfo[arg1][msg.sender].field_0 < arg2:
            revert with 0, 17
        userInfo[arg1][msg.sender].field_0 -= arg2
        if userInfo[arg1][msg.sender].field_0 - arg2 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][msg.sender].field_0 - arg2:
            revert with 0, 17
        userInfo[arg1][msg.sender].field_256 = (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) - (arg2 * poolInfo[arg1].field_768) / 10^12
        mem[(4 * ceil32(return_data.size)) + 132] = msg.sender
        mem[(4 * ceil32(return_data.size)) + 164] = arg2
        mem[(4 * ceil32(return_data.size)) + 96] = 68
        mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[(4 * ceil32(return_data.size)) + 128 len 4] = transfer(address arg1, uint256 arg2)
        mem[(4 * ceil32(return_data.size)) + 196] = 32
        mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(poolInfo[arg1].field_0):
            revert with 0, 'Address: call to non-contract'
        mem[(4 * ceil32(return_data.size)) + 260 len 96] = transfer(address arg1, uint256 arg2), msg.sender, arg2, 0
        mem[(4 * ceil32(return_data.size)) + 328] = 0
        call poolInfo[arg1].field_0 with:
           funct Mask(32, 224, transfer(address arg1, uint256 arg2), msg.sender, arg2, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, transfer(address arg1, uint256 arg2), msg.sender, arg2, 0) << 288)
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
            mem[(4 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(4 * ceil32(return_data.size)) + 292] == bool(mem[(4 * ceil32(return_data.size)) + 292])
                if not mem[(4 * ceil32(return_data.size)) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit Withdraw(arg2, msg.sender, arg1);
}



}
