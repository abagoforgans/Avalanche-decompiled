contract main {




// =====================  Runtime code  =====================


const decimals = 18


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
address owner;
address stor6;
address stor7;
array of address stakeholders;
mapping of uint256 stor9;
mapping of uint256 stakeOf;
mapping of uint256 stor11;
uint256 stor12;

function totalSupply() payable {
    return totalSupply
}

function stakeholders(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < stakeholders.length
    return stakeholders[arg1]
}

function stakeOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return stakeOf[address(arg1)]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function owner() payable {
    return owner
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function sub_e9f5b3c4(?) payable {
    if stor12 > -2:
        revert with 0, 17
    stor12++
}

function toMinutes(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return (arg1 / 60)
}

function toDays(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return (arg1 / 24 * 3600)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function multiplierOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor9[address(arg1)] >= 1:
        return stor9[address(arg1)]
    return 1
}

function sub_6e88293f(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if stor6 != msg.sender:
        revert with 0, 'Not authorized.'
    stor9[address(arg1)] = arg2
}

function sub_1318a6fb(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor6 != msg.sender:
        revert with 0, 'Not authorized.'
    stor11[address(arg1)] = block.timestamp
}

function setRewardsTokenAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor6 = arg1
}

function isStakeholder(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while idx < stakeholders.length:
        mem[0] = 8
        if stakeholders[idx] == arg1:
            return 1, idx
        if idx > -2:
            revert with 0, 17
        idx = idx + 1
        continue 
    return 0
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

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[arg1] > !arg2:
        revert with 0, 17
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: decreased allowance below zero'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function calculateRewards(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.timestamp < stor11[address(arg1)]:
        revert with 0, 17
    if stakeOf[address(arg1)] / 100 * 10^6 and 417 > -1 / stakeOf[address(arg1)] / 100 * 10^6:
        revert with 0, 17
    if 417 * stakeOf[address(arg1)] / 100 * 10^6 and block.timestamp - stor11[address(arg1)] / 60 > -1 / 417 * stakeOf[address(arg1)] / 100 * 10^6:
        revert with 0, 17
    if stor9[address(arg1)] >= 1:
        if 417 * stakeOf[address(arg1)] / 100 * 10^6 * block.timestamp - stor11[address(arg1)] / 60 and stor9[address(arg1)] > -1 / 417 * stakeOf[address(arg1)] / 100 * 10^6 * block.timestamp - stor11[address(arg1)] / 60:
            revert with 0, 17
        return (417 * stakeOf[address(arg1)] / 100 * 10^6 * block.timestamp - stor11[address(arg1)] / 60 * stor9[address(arg1)])
    if 417 * stakeOf[address(arg1)] / 100 * 10^6 * block.timestamp - stor11[address(arg1)] / 60 and 1 > -1 / 417 * stakeOf[address(arg1)] / 100 * 10^6 * block.timestamp - stor11[address(arg1)] / 60:
        revert with 0, 17
    return (417 * stakeOf[address(arg1)] / 100 * 10^6 * block.timestamp - stor11[address(arg1)] / 60)
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if balanceOf[address(arg1)] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(arg1)] -= arg3
    if balanceOf[arg2] > !arg3:
        revert with 0, 17
    balanceOf[arg2] += arg3
    emit Transfer(arg3, arg1, arg2);
    if allowance[address(arg1)][msg.sender] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
    emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    return 1
}

function totalStakes() payable {
    idx = 0
    s = 0
    while idx < stakeholders.length:
        mem[0] = stakeholders[idx]
        mem[32] = 10
        if s > !stakeOf[stor8[idx]]:
            revert with 0, 17
        if idx > -2:
            revert with 0, 17
        idx = idx + 1
        s = s + stakeOf[stor8[idx]]
        continue 
    return (s * stakeholders.length * stakeholders.length * stakeholders.length * stakeholders.length * stakeholders.length * stakeholders.length * stakeholders.length * stakeholders.length * stakeholders.length * stakeholders.length * stakeholders.length * stakeholders.length * stakeholders.length * stakeholders.length * stakeholders.length * stakeholders.length * stakeholders.length * stakeholders.length * stakeholders.length * stakeholders.length * stakeholders.length * stakeholders.length * stakeholders.length * stakeholders.length * stakeholders.length * stakeholders.length * stakeholders.length * stakeholders.length * stakeholders.length * stakeholders.length * stakeholders.length * stakeholders.length * stakeholders.length * stakeholders.length * stakeholders.length * stakeholders.length * stakeholders.length * stakeholders.length * stakeholders.length * stakeholders.length * stakeholders.length * stakeholders.length * stakeholders.length * stakeholders.length * stakeholders.length * stakeholders.length * stakeholders.length * stakeholders.length * stakeholders.length * stakeholders.length * stakeholders.length * stakeholders.length * stakeholders.length * stakeholders.length * stakeholders.length * stakeholders.length * stakeholders.length * stakeholders.length * stakeholders.length * stakeholders.length * stakeholders.length * stakeholders.length * stakeholders.length * stakeholders.length * stakeholders.length * stakeholders.length * stakeholders.length * stakeholders.length * stakeholders.length * stakeholders.length * stakeholders.length * stakeholders.length * stakeholders.length * stakeholders.length * stakeholders.length * stakeholders.length * stakeholders.length * stakeholders.length * stakeholders.length * stakeholders.length)
}

function claimRewards() payable {
    idx = 0
    while idx < stakeholders.length:
        mem[0] = 8
        if stakeholders[idx] != msg.sender:
            if idx > -2:
                revert with 0, 17
            idx = idx + 1
            continue 
        if block.timestamp < stor11[address(msg.sender)]:
            revert with 0, 17
        if stakeOf[address(msg.sender)] / 100 * 10^6 and 417 > -1 / stakeOf[address(msg.sender)] / 100 * 10^6:
            revert with 0, 17
        if 417 * stakeOf[address(msg.sender)] / 100 * 10^6 and block.timestamp - stor11[address(msg.sender)] / 60 > -1 / 417 * stakeOf[address(msg.sender)] / 100 * 10^6:
            revert with 0, 17
        if stor9[address(msg.sender)] >= 1:
            if 417 * stakeOf[address(msg.sender)] / 100 * 10^6 * block.timestamp - stor11[address(msg.sender)] / 60 and stor9[address(msg.sender)] > -1 / 417 * stakeOf[address(msg.sender)] / 100 * 10^6 * block.timestamp - stor11[address(msg.sender)] / 60:
                revert with 0, 17
            if 417 * stakeOf[address(msg.sender)] / 100 * 10^6 * block.timestamp - stor11[address(msg.sender)] / 60 * stor9[address(msg.sender)] <= 0:
                revert with 0, 'Cannot claim amount 0'
            require ext_code.size(stor6)
            call stor6.0x40c10f19 with:
                 gas gas_remaining wei
                args msg.sender, 417 * stakeOf[address(msg.sender)] / 100 * 10^6 * block.timestamp - stor11[address(msg.sender)] / 60 * stor9[address(msg.sender)]
        else:
            if 417 * stakeOf[address(msg.sender)] / 100 * 10^6 * block.timestamp - stor11[address(msg.sender)] / 60 and 1 > -1 / 417 * stakeOf[address(msg.sender)] / 100 * 10^6 * block.timestamp - stor11[address(msg.sender)] / 60:
                revert with 0, 17
            if 417 * stakeOf[address(msg.sender)] / 100 * 10^6 * block.timestamp - stor11[address(msg.sender)] / 60 <= 0:
                revert with 0, 'Cannot claim amount 0'
            require ext_code.size(stor6)
            call stor6.0x40c10f19 with:
                 gas gas_remaining wei
                args msg.sender, 417 * stakeOf[address(msg.sender)] / 100 * 10^6 * block.timestamp - stor11[address(msg.sender)] / 60
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor11[msg.sender] = block.timestamp
    revert with 0, 'Not a stakeholder'
}

function compoundRewards() payable {
    idx = 0
    while idx < stakeholders.length:
        mem[0] = 8
        if stakeholders[idx] != msg.sender:
            if idx > -2:
                revert with 0, 17
            idx = idx + 1
            continue 
        if block.timestamp < stor11[address(msg.sender)]:
            revert with 0, 17
        if stakeOf[address(msg.sender)] / 100 * 10^6 and 417 > -1 / stakeOf[address(msg.sender)] / 100 * 10^6:
            revert with 0, 17
        if 417 * stakeOf[address(msg.sender)] / 100 * 10^6 and block.timestamp - stor11[address(msg.sender)] / 60 > -1 / 417 * stakeOf[address(msg.sender)] / 100 * 10^6:
            revert with 0, 17
        if stor9[address(msg.sender)] >= 1:
            if 417 * stakeOf[address(msg.sender)] / 100 * 10^6 * block.timestamp - stor11[address(msg.sender)] / 60 and stor9[address(msg.sender)] > -1 / 417 * stakeOf[address(msg.sender)] / 100 * 10^6 * block.timestamp - stor11[address(msg.sender)] / 60:
                revert with 0, 17
            if 417 * stakeOf[address(msg.sender)] / 100 * 10^6 * block.timestamp - stor11[address(msg.sender)] / 60 * stor9[address(msg.sender)] <= 0:
                revert with 0, 'Cannot compound amount 0'
            if stakeOf[msg.sender] > !(417 * stakeOf[address(msg.sender)] / 100 * 10^6 * block.timestamp - stor11[address(msg.sender)] / 60 * stor9[address(msg.sender)]):
                revert with 0, 17
            stakeOf[msg.sender] += 417 * stakeOf[address(msg.sender)] / 100 * 10^6 * block.timestamp - stor11[address(msg.sender)] / 60 * stor9[address(msg.sender)]
            require ext_code.size(stor6)
            call stor6.0x40c10f19 with:
                 gas gas_remaining wei
                args msg.sender, 417 * stakeOf[address(msg.sender)] / 100 * 10^6 * block.timestamp - stor11[address(msg.sender)] / 60 * stor9[address(msg.sender)]
        else:
            if 417 * stakeOf[address(msg.sender)] / 100 * 10^6 * block.timestamp - stor11[address(msg.sender)] / 60 and 1 > -1 / 417 * stakeOf[address(msg.sender)] / 100 * 10^6 * block.timestamp - stor11[address(msg.sender)] / 60:
                revert with 0, 17
            if 417 * stakeOf[address(msg.sender)] / 100 * 10^6 * block.timestamp - stor11[address(msg.sender)] / 60 <= 0:
                revert with 0, 'Cannot compound amount 0'
            if stakeOf[msg.sender] > !(417 * stakeOf[address(msg.sender)] / 100 * 10^6 * block.timestamp - stor11[address(msg.sender)] / 60):
                revert with 0, 17
            stakeOf[msg.sender] += 417 * stakeOf[address(msg.sender)] / 100 * 10^6 * block.timestamp - stor11[address(msg.sender)] / 60
            require ext_code.size(stor6)
            call stor6.0x40c10f19 with:
                 gas gas_remaining wei
                args msg.sender, 417 * stakeOf[address(msg.sender)] / 100 * 10^6 * block.timestamp - stor11[address(msg.sender)] / 60
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor11[msg.sender] = block.timestamp
    revert with 0, 'Not a stakeholder'
}

function createStake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if block.timestamp < stor11[address(msg.sender)]:
        revert with 0, 17
    if stakeOf[address(msg.sender)] / 100 * 10^6 and 417 > -1 / stakeOf[address(msg.sender)] / 100 * 10^6:
        revert with 0, 17
    if 417 * stakeOf[address(msg.sender)] / 100 * 10^6 and block.timestamp - stor11[address(msg.sender)] / 60 > -1 / 417 * stakeOf[address(msg.sender)] / 100 * 10^6:
        revert with 0, 17
    if stor9[address(msg.sender)] >= 1:
        if 417 * stakeOf[address(msg.sender)] / 100 * 10^6 * block.timestamp - stor11[address(msg.sender)] / 60 and stor9[address(msg.sender)] > -1 / 417 * stakeOf[address(msg.sender)] / 100 * 10^6 * block.timestamp - stor11[address(msg.sender)] / 60:
            revert with 0, 17
        if 417 * stakeOf[address(msg.sender)] / 100 * 10^6 * block.timestamp - stor11[address(msg.sender)] / 60 * stor9[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Please claim outstanding rewards...'
    else:
        if 417 * stakeOf[address(msg.sender)] / 100 * 10^6 * block.timestamp - stor11[address(msg.sender)] / 60 and 1 > -1 / 417 * stakeOf[address(msg.sender)] / 100 * 10^6 * block.timestamp - stor11[address(msg.sender)] / 60:
            revert with 0, 17
        if 417 * stakeOf[address(msg.sender)] / 100 * 10^6 * block.timestamp - stor11[address(msg.sender)] / 60:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Please claim outstanding rewards...'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if balanceOf[address(msg.sender)] < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg1
    if totalSupply < arg1:
        revert with 0, 17
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
    if not stakeOf[msg.sender]:
        idx = 0
        while idx < stakeholders.length:
            mem[0] = 8
            if stakeholders[idx] != msg.sender:
                if idx > -2:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if stakeOf[msg.sender] > !arg1:
                revert with 0, 17
            stakeOf[msg.sender] += arg1
            require ext_code.size(stor6)
            call stor6.0x40c10f19 with:
                 gas gas_remaining wei
                args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            stor11[msg.sender] = block.timestamp
        stakeholders.length++
        stakeholders[stakeholders.length] = msg.sender
        stor9[address(msg.sender)] = 1
    if stakeOf[msg.sender] > !arg1:
        revert with 0, 17
    stakeOf[msg.sender] += arg1
    require ext_code.size(stor6)
    call stor6.0x40c10f19 with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor11[msg.sender] = block.timestamp
}

function sub_35011077(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if stor7 != msg.sender:
        revert with 0, 'createStakeTo: Not authorized.'
    if block.timestamp < stor11[address(arg1)]:
        revert with 0, 17
    if stakeOf[address(arg1)] / 100 * 10^6 and 417 > -1 / stakeOf[address(arg1)] / 100 * 10^6:
        revert with 0, 17
    if 417 * stakeOf[address(arg1)] / 100 * 10^6 and block.timestamp - stor11[address(arg1)] / 60 > -1 / 417 * stakeOf[address(arg1)] / 100 * 10^6:
        revert with 0, 17
    if stor9[address(arg1)] >= 1:
        if 417 * stakeOf[address(arg1)] / 100 * 10^6 * block.timestamp - stor11[address(arg1)] / 60 and stor9[address(arg1)] > -1 / 417 * stakeOf[address(arg1)] / 100 * 10^6 * block.timestamp - stor11[address(arg1)] / 60:
            revert with 0, 17
        if 417 * stakeOf[address(arg1)] / 100 * 10^6 * block.timestamp - stor11[address(arg1)] / 60 * stor9[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Please claim outstanding rewards...'
    else:
        if 417 * stakeOf[address(arg1)] / 100 * 10^6 * block.timestamp - stor11[address(arg1)] / 60 and 1 > -1 / 417 * stakeOf[address(arg1)] / 100 * 10^6 * block.timestamp - stor11[address(arg1)] / 60:
            revert with 0, 17
        if 417 * stakeOf[address(arg1)] / 100 * 10^6 * block.timestamp - stor11[address(arg1)] / 60:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Please claim outstanding rewards...'
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if balanceOf[address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
    balanceOf[address(arg1)] -= arg2
    if totalSupply < arg2:
        revert with 0, 17
    totalSupply -= arg2
    emit Transfer(arg2, address(arg1), 0);
    if not stakeOf[address(arg1)]:
        idx = 0
        while idx < stakeholders.length:
            mem[0] = 8
            if stakeholders[idx] != address(arg1):
                if idx > -2:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if stakeOf[address(arg1)] > !arg2:
                revert with 0, 17
            stakeOf[address(arg1)] += arg2
            require ext_code.size(stor6)
            call stor6.0x40c10f19 with:
                 gas gas_remaining wei
                args address(arg1), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            stor11[address(arg1)] = block.timestamp
        stakeholders.length++
        stakeholders[stakeholders.length] = address(arg1)
        stor9[address(arg1)] = 1
    if stakeOf[address(arg1)] > !arg2:
        revert with 0, 17
    stakeOf[address(arg1)] += arg2
    require ext_code.size(stor6)
    call stor6.0x40c10f19 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor11[address(arg1)] = block.timestamp
}

function name() payable {
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor3.length):
            if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor3.length):
                if 31 < uint255(stor3.length) * 0.5:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor3.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * stor3.length.field_8
        else:
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 0, 34
            if stor3.length.field_1:
                if 31 < stor3.length.field_1:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * stor3.length.field_8
        mem[ceil32(uint255(stor3.length) * 0.5) + 192 len ceil32(uint255(stor3.length) * 0.5)] = mem[128 len ceil32(uint255(stor3.length) * 0.5)]
        if ceil32(uint255(stor3.length) * 0.5) > uint255(stor3.length) * 0.5:
            mem[ceil32(uint255(stor3.length) * 0.5) + (uint255(stor3.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)], mem[(2 * ceil32(uint255(stor3.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor3.length) * 0.5)]), 
    if bool(stor3.length) == stor3.length.field_1 < 32:
        revert with 0, 34
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor3.length):
            if 31 < uint255(stor3.length) * 0.5:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while (uint255(stor3.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    else:
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 0, 34
        if stor3.length.field_1:
            if 31 < stor3.length.field_1:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
    if ceil32(stor3.length.field_1) > stor3.length.field_1:
        mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 192] = 0
    return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
}

function symbol() payable {
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor4.length):
            if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor4.length):
                if 31 < uint255(stor4.length) * 0.5:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor4.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        else:
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 0, 34
            if stor4.length.field_1:
                if 31 < stor4.length.field_1:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        mem[ceil32(uint255(stor4.length) * 0.5) + 192 len ceil32(uint255(stor4.length) * 0.5)] = mem[128 len ceil32(uint255(stor4.length) * 0.5)]
        if ceil32(uint255(stor4.length) * 0.5) > uint255(stor4.length) * 0.5:
            mem[ceil32(uint255(stor4.length) * 0.5) + (uint255(stor4.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)], mem[(2 * ceil32(uint255(stor4.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor4.length) * 0.5)]), 
    if bool(stor4.length) == stor4.length.field_1 < 32:
        revert with 0, 34
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor4.length):
            if 31 < uint255(stor4.length) * 0.5:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while (uint255(stor4.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    else:
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 0, 34
        if stor4.length.field_1:
            if 31 < stor4.length.field_1:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
    if ceil32(stor4.length.field_1) > stor4.length.field_1:
        mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 192] = 0
    return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
}

function removeStake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if block.timestamp < stor11[address(msg.sender)]:
        revert with 0, 17
    if stakeOf[address(msg.sender)] / 100 * 10^6 and 417 > -1 / stakeOf[address(msg.sender)] / 100 * 10^6:
        revert with 0, 17
    if 417 * stakeOf[address(msg.sender)] / 100 * 10^6 and block.timestamp - stor11[address(msg.sender)] / 60 > -1 / 417 * stakeOf[address(msg.sender)] / 100 * 10^6:
        revert with 0, 17
    if stor9[address(msg.sender)] >= 1:
        if 417 * stakeOf[address(msg.sender)] / 100 * 10^6 * block.timestamp - stor11[address(msg.sender)] / 60 and stor9[address(msg.sender)] > -1 / 417 * stakeOf[address(msg.sender)] / 100 * 10^6 * block.timestamp - stor11[address(msg.sender)] / 60:
            revert with 0, 17
        if 417 * stakeOf[address(msg.sender)] / 100 * 10^6 * block.timestamp - stor11[address(msg.sender)] / 60 * stor9[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Please claim outstanding rewards...'
    else:
        if 417 * stakeOf[address(msg.sender)] / 100 * 10^6 * block.timestamp - stor11[address(msg.sender)] / 60 and 1 > -1 / 417 * stakeOf[address(msg.sender)] / 100 * 10^6 * block.timestamp - stor11[address(msg.sender)] / 60:
            revert with 0, 17
        if 417 * stakeOf[address(msg.sender)] / 100 * 10^6 * block.timestamp - stor11[address(msg.sender)] / 60:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Please claim outstanding rewards...'
    require ext_code.size(stor6)
    call stor6.unstake(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'unstake sMAG failed'
    if arg1 < stakeOf[msg.sender]:
        if stakeOf[msg.sender] < arg1:
            revert with 0, 17
        stakeOf[msg.sender] -= arg1
    else:
        stakeOf[msg.sender] = 0
        idx = 0
        while idx < stakeholders.length:
            mem[0] = 8
            if stakeholders[idx] != msg.sender:
                if idx > -2:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if stakeholders.length < 1:
                revert with 0, 17
            if stakeholders.length - 1 >= stakeholders.length:
                revert with 0, 50
            if idx >= stakeholders.length:
                revert with 0, 50
            stakeholders[idx] = stakeholders[stakeholders.length]
            if not stakeholders.length:
                revert with 0, 49
            stakeholders[stakeholders.length] = 0
            stakeholders.length--
            if not msg.sender:
                revert with 0, 'ERC20: mint to the zero address'
            if totalSupply > !arg1:
                revert with 0, 17
            totalSupply += arg1
            if balanceOf[address(msg.sender)] > !arg1:
                revert with 0, 17
            balanceOf[address(msg.sender)] += arg1
            emit Transfer(arg1, 0, msg.sender);
            stor9[msg.sender] = 1
            require ext_code.size(stor7)
            call stor7.0x991017e3 with:
                 gas gas_remaining wei
                args msg.sender, 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    if not msg.sender:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > !arg1:
        revert with 0, 17
    totalSupply += arg1
    if balanceOf[address(msg.sender)] > !arg1:
        revert with 0, 17
    balanceOf[address(msg.sender)] += arg1
    emit Transfer(arg1, 0, msg.sender);
    stor9[msg.sender] = 1
    require ext_code.size(stor7)
    call stor7.0x991017e3 with:
         gas gas_remaining wei
        args msg.sender, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
