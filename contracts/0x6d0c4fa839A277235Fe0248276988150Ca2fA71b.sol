contract main {




// =====================  Runtime code  =====================


const decimals = 18

const BASE_RATE = 10 * 10^18

const INITIAL_ISSUANCE = 10 * 10^18

const END = 1954713601


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
mapping of uint256 rewards;
mapping of uint256 lastUpdate;
address sub_09d6cea0Address;
address stor8;

function rewards(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return rewards[arg1]
}

function sub_09d6cea0(?) {
    return sub_09d6cea0Address
}

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function lastUpdate(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return lastUpdate[arg1]
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    call stor8 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function approve(address arg1, uint256 arg2) {
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

function burn(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require msg.sender == sub_09d6cea0Address
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if balanceOf[address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
    balanceOf[address(arg1)] -= arg2
    if totalSupply < arg2:
        revert with 0, 17
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[address(msg.sender)][address(arg1)] > !arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function getReward(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == sub_09d6cea0Address
    if rewards[address(arg1)]:
        rewards[address(arg1)] = 0
        if not arg1:
            revert with 0, 'ERC20: mint to the zero address'
        if totalSupply > !rewards[address(arg1)]:
            revert with 0, 17
        totalSupply += rewards[address(arg1)]
        if balanceOf[address(arg1)] > !rewards[address(arg1)]:
            revert with 0, 17
        balanceOf[address(arg1)] += rewards[address(arg1)]
        emit Transfer(rewards[address(arg1)], 0, arg1);
        emit RewardPaid(rewards[address(arg1)], arg1);
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[address(msg.sender)][address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: decreased allowance below zero'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
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

function transferFrom(address arg1, address arg2, uint256 arg3) {
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
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function getTotalClaimable(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.timestamp < 1954713601:
        if block.timestamp < lastUpdate[address(arg1)]:
            revert with 0, 17
        if block.timestamp - lastUpdate[address(arg1)] > 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0ea7cfe9:
            revert with 0, 17
        require ext_code.size(sub_09d6cea0Address)
        staticcall sub_09d6cea0Address.balanceOG(address arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and (10 * 10^18 * block.timestamp) - (10 * 10^18 * lastUpdate[address(arg1)]) > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if rewards[address(arg1)] > !((10 * 10^18 * block.timestamp * ext_call.return_data[0]) - (10 * 10^18 * lastUpdate[address(arg1)] * ext_call.return_data[0]) / 24 * 3600):
            revert with 0, 17
        return (rewards[address(arg1)] + ((10 * 10^18 * block.timestamp * ext_call.return_data[0]) - (10 * 10^18 * lastUpdate[address(arg1)] * ext_call.return_data[0]) / 24 * 3600))
    if 1954713601 < lastUpdate[address(arg1)]:
        revert with 0, 17
    if -lastUpdate[address(arg1)] + 1954713601 > 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0ea7cfe9:
        revert with 0, 17
    require ext_code.size(sub_09d6cea0Address)
    staticcall sub_09d6cea0Address.balanceOG(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and (-10 * 10^18 * lastUpdate[address(arg1)]) + 19547136010 * 10^18 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if rewards[address(arg1)] > !((19547136010 * 10^18 * ext_call.return_data[0]) - (10 * 10^18 * lastUpdate[address(arg1)] * ext_call.return_data[0]) / 24 * 3600):
        revert with 0, 17
    return (rewards[address(arg1)] + ((19547136010 * 10^18 * ext_call.return_data[0]) - (10 * 10^18 * lastUpdate[address(arg1)] * ext_call.return_data[0]) / 24 * 3600))
}

function updateRewardOnMint(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if sub_09d6cea0Address != msg.sender:
        revert with 0, 'Can't call this'
    if arg2 and 10 * 10^18 > -1 / arg2:
        revert with 0, 17
    if block.timestamp < 1954713601:
        if not lastUpdate[address(arg1)]:
            if rewards[address(arg1)] > !(10 * 10^18 * arg2):
                revert with 0, 17
            rewards[address(arg1)] += 10 * 10^18 * arg2
        else:
            if block.timestamp < lastUpdate[address(arg1)]:
                revert with 0, 17
            if block.timestamp - lastUpdate[address(arg1)] > 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0ea7cfe9:
                revert with 0, 17
            require ext_code.size(sub_09d6cea0Address)
            staticcall sub_09d6cea0Address.balanceOG(address arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] and (10 * 10^18 * block.timestamp) - (10 * 10^18 * lastUpdate[address(arg1)]) > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if (10 * 10^18 * block.timestamp * ext_call.return_data[0]) - (10 * 10^18 * lastUpdate[address(arg1)] * ext_call.return_data[0]) / 24 * 3600 > !(10 * 10^18 * arg2):
                revert with 0, 17
            if rewards[address(arg1)] > !(((10 * 10^18 * block.timestamp * ext_call.return_data[0]) - (10 * 10^18 * lastUpdate[address(arg1)] * ext_call.return_data[0]) / 24 * 3600) + (10 * 10^18 * arg2)):
                revert with 0, 17
            rewards[address(arg1)] = rewards[address(arg1)] + ((10 * 10^18 * block.timestamp * ext_call.return_data[0]) - (10 * 10^18 * lastUpdate[address(arg1)] * ext_call.return_data[0]) / 24 * 3600) + (10 * 10^18 * arg2)
        lastUpdate[address(arg1)] = block.timestamp
    else:
        if not lastUpdate[address(arg1)]:
            if rewards[address(arg1)] > !(10 * 10^18 * arg2):
                revert with 0, 17
            rewards[address(arg1)] += 10 * 10^18 * arg2
        else:
            if 1954713601 < lastUpdate[address(arg1)]:
                revert with 0, 17
            if -lastUpdate[address(arg1)] + 1954713601 > 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0ea7cfe9:
                revert with 0, 17
            require ext_code.size(sub_09d6cea0Address)
            staticcall sub_09d6cea0Address.balanceOG(address arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] and (-10 * 10^18 * lastUpdate[address(arg1)]) + 19547136010 * 10^18 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if (19547136010 * 10^18 * ext_call.return_data[0]) - (10 * 10^18 * lastUpdate[address(arg1)] * ext_call.return_data[0]) / 24 * 3600 > !(10 * 10^18 * arg2):
                revert with 0, 17
            if rewards[address(arg1)] > !(((19547136010 * 10^18 * ext_call.return_data[0]) - (10 * 10^18 * lastUpdate[address(arg1)] * ext_call.return_data[0]) / 24 * 3600) + (10 * 10^18 * arg2)):
                revert with 0, 17
            rewards[address(arg1)] = rewards[address(arg1)] + ((19547136010 * 10^18 * ext_call.return_data[0]) - (10 * 10^18 * lastUpdate[address(arg1)] * ext_call.return_data[0]) / 24 * 3600) + (10 * 10^18 * arg2)
        lastUpdate[address(arg1)] = 1954713601
}

function name() {
    if bool(stor3.length):
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 0, 34
        if bool(stor3.length):
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
                    return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)])
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
                    return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)])
                mem[128] = 256 * stor3.length.field_8
        mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
        if ceil32(stor3.length.field_1) > stor3.length.field_1:
            mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
    if bool(stor3.length) == stor3.length.field_1 < 32:
        revert with 0, 34
    if bool(stor3.length):
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

function symbol() {
    if bool(stor4.length):
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 0, 34
        if bool(stor4.length):
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
                    return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)])
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
                    return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)])
                mem[128] = 256 * stor4.length.field_8
        mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
        if ceil32(stor4.length.field_1) > stor4.length.field_1:
            mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
    if bool(stor4.length) == stor4.length.field_1 < 32:
        revert with 0, 34
    if bool(stor4.length):
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

function updateReward(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require msg.sender == sub_09d6cea0Address
    if block.timestamp < 1954713601:
        if lastUpdate[address(arg1)]:
            if block.timestamp < lastUpdate[address(arg1)]:
                revert with 0, 17
            if block.timestamp - lastUpdate[address(arg1)] > 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0ea7cfe9:
                revert with 0, 17
            require ext_code.size(sub_09d6cea0Address)
            staticcall sub_09d6cea0Address.balanceOG(address arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] and (10 * 10^18 * block.timestamp) - (10 * 10^18 * lastUpdate[address(arg1)]) > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if rewards[address(arg1)] > !((10 * 10^18 * block.timestamp * ext_call.return_data[0]) - (10 * 10^18 * lastUpdate[address(arg1)] * ext_call.return_data[0]) / 24 * 3600):
                revert with 0, 17
            rewards[address(arg1)] += (10 * 10^18 * block.timestamp * ext_call.return_data[0]) - (10 * 10^18 * lastUpdate[address(arg1)] * ext_call.return_data[0]) / 24 * 3600
        if lastUpdate[address(arg1)] != 1954713601:
            lastUpdate[address(arg1)] = block.timestamp
        if arg2:
            if lastUpdate[address(arg2)]:
                if block.timestamp < lastUpdate[address(arg2)]:
                    revert with 0, 17
                if block.timestamp - lastUpdate[address(arg2)] > 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0ea7cfe9:
                    revert with 0, 17
                require ext_code.size(sub_09d6cea0Address)
                staticcall sub_09d6cea0Address.balanceOG(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] and (10 * 10^18 * block.timestamp) - (10 * 10^18 * lastUpdate[address(arg2)]) > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if rewards[address(arg2)] > !((10 * 10^18 * block.timestamp * ext_call.return_data[0]) - (10 * 10^18 * lastUpdate[address(arg2)] * ext_call.return_data[0]) / 24 * 3600):
                    revert with 0, 17
                rewards[address(arg2)] += (10 * 10^18 * block.timestamp * ext_call.return_data[0]) - (10 * 10^18 * lastUpdate[address(arg2)] * ext_call.return_data[0]) / 24 * 3600
            if lastUpdate[address(arg2)] != 1954713601:
                lastUpdate[address(arg2)] = block.timestamp
    else:
        if lastUpdate[address(arg1)]:
            if 1954713601 < lastUpdate[address(arg1)]:
                revert with 0, 17
            if -lastUpdate[address(arg1)] + 1954713601 > 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0ea7cfe9:
                revert with 0, 17
            require ext_code.size(sub_09d6cea0Address)
            staticcall sub_09d6cea0Address.balanceOG(address arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] and (-10 * 10^18 * lastUpdate[address(arg1)]) + 19547136010 * 10^18 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if rewards[address(arg1)] > !((19547136010 * 10^18 * ext_call.return_data[0]) - (10 * 10^18 * lastUpdate[address(arg1)] * ext_call.return_data[0]) / 24 * 3600):
                revert with 0, 17
            rewards[address(arg1)] += (19547136010 * 10^18 * ext_call.return_data[0]) - (10 * 10^18 * lastUpdate[address(arg1)] * ext_call.return_data[0]) / 24 * 3600
        if lastUpdate[address(arg1)] != 1954713601:
            lastUpdate[address(arg1)] = 1954713601
        if arg2:
            if lastUpdate[address(arg2)]:
                if 1954713601 < lastUpdate[address(arg2)]:
                    revert with 0, 17
                if -lastUpdate[address(arg2)] + 1954713601 > 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0ea7cfe9:
                    revert with 0, 17
                require ext_code.size(sub_09d6cea0Address)
                staticcall sub_09d6cea0Address.balanceOG(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] and (-10 * 10^18 * lastUpdate[address(arg2)]) + 19547136010 * 10^18 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if rewards[address(arg2)] > !((19547136010 * 10^18 * ext_call.return_data[0]) - (10 * 10^18 * lastUpdate[address(arg2)] * ext_call.return_data[0]) / 24 * 3600):
                    revert with 0, 17
                rewards[address(arg2)] += (19547136010 * 10^18 * ext_call.return_data[0]) - (10 * 10^18 * lastUpdate[address(arg2)] * ext_call.return_data[0]) / 24 * 3600
            if lastUpdate[address(arg2)] != 1954713601:
                lastUpdate[address(arg2)] = 1954713601
}



}
