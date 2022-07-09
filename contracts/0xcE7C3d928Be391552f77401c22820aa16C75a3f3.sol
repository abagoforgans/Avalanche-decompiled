contract main {




// =====================  Runtime code  =====================


#
#  - sub_edb46a1b(?)
#
const sub_058b7784(?) = 10

const decimals = 18

const sub_4c7cc901(?) = (48 * 24 * 3600)

const sub_a8c43c7c(?) = 50

const sub_b31c67fa(?) = 25


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
uint8 stor5; offset 160
address owner;
address cropAddress;
uint256 sub_727743da;
mapping of uint256 sub_fc2759bf;
mapping of uint256 unlockTimestamps;
uint256 stakeTime;

function totalSupply() payable {
    return totalSupply
}

function crop() payable {
    return cropAddress
}

function paused() payable {
    return bool(stor5)
}

function unlockTimestamps(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return unlockTimestamps[arg1]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function sub_727743da(?) payable {
    return sub_727743da
}

function owner() payable {
    return owner
}

function stakeTime() payable {
    return stakeTime
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sub_fc2759bf(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_fc2759bf[arg1]
}

function _fallback() payable {
    revert
}

function sub_dbc78231(?) payable {
    if 0 == stakeTime:
        return stakeTime != 0
    return block.timestamp >= stakeTime
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_b1c14dee(?) payable {
    staticcall cropAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < sub_727743da:
        revert with 0, 17
    return (ext_call.return_data[0] - sub_727743da)
}

function setStakeStartTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 < block.timestamp:
        revert with 0, 'startTime cannot be in the past'
    if stakeTime != 0:
        if block.timestamp >= stakeTime:
            revert with 0, 'staking already started'
    stakeTime = arg1
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

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(arg1)][address(msg.sender)] != -1:
        if allowance[address(arg1)][address(msg.sender)] < arg3:
            revert with 0, 'ERC20: insufficient allowance'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
        allowance[address(arg1)][address(msg.sender)] -= arg3
        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
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
    return 1
}

function sub_634b1897(?) payable {
    require calldata.size - 4 >= 32
    if stor5:
        revert with 0, 'Pausable: paused'
    staticcall cropAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < sub_727743da:
        revert with 0, 17
    if arg1 and ext_call.return_data[0] - sub_727743da > -1 / arg1:
        revert with 0, 17
    if not totalSupply:
        revert with 0, 18
    if not msg.sender:
        revert with 0, 'ERC20: burn from the zero address'
    if balanceOf[address(msg.sender)] < arg1:
        revert with 0, 'ERC20: burn amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg1
    if totalSupply < arg1:
        revert with 0, 17
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
    if (ext_call.return_data[0] * arg1) - (sub_727743da * arg1) / totalSupply and 10 > -1 / (ext_call.return_data[0] * arg1) - (sub_727743da * arg1) / totalSupply:
        revert with 0, 17
    if (ext_call.return_data[0] * arg1) - (sub_727743da * arg1) / totalSupply < 10 * (ext_call.return_data[0] * arg1) - (sub_727743da * arg1) / totalSupply / 100:
        revert with 0, 17
    if sub_fc2759bf[msg.sender] > !(((ext_call.return_data[0] * arg1) - (sub_727743da * arg1) / totalSupply) - (10 * (ext_call.return_data[0] * arg1) - (sub_727743da * arg1) / totalSupply / 100)):
        revert with 0, 17
    sub_fc2759bf[msg.sender] = sub_fc2759bf[msg.sender] + ((ext_call.return_data[0] * arg1) - (sub_727743da * arg1) / totalSupply) - (10 * (ext_call.return_data[0] * arg1) - (sub_727743da * arg1) / totalSupply / 100)
    if block.timestamp > -172801:
        revert with 0, 17
    unlockTimestamps[msg.sender] = block.timestamp + (48 * 24 * 3600)
    if sub_727743da > !(((ext_call.return_data[0] * arg1) - (sub_727743da * arg1) / totalSupply) - (10 * (ext_call.return_data[0] * arg1) - (sub_727743da * arg1) / totalSupply / 100)):
        revert with 0, 17
    sub_727743da = sub_727743da + ((ext_call.return_data[0] * arg1) - (sub_727743da * arg1) / totalSupply) - (10 * (ext_call.return_data[0] * arg1) - (sub_727743da * arg1) / totalSupply / 100)
    require ext_code.size(cropAddress)
    call cropAddress.0x9dc29fac with:
         gas gas_remaining wei
        args this.address, 10 * (ext_call.return_data[0] * arg1) - (sub_727743da * arg1) / totalSupply / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function stake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor5:
        revert with 0, 'Pausable: paused'
    if 0 == stakeTime:
        revert with 0, 'You can't stake yet'
    if block.timestamp < stakeTime:
        revert with 0, 'You can't stake yet'
    if not totalSupply:
        if not msg.sender:
            revert with 0, 'ERC20: mint to the zero address'
        if totalSupply > !arg1:
            revert with 0, 17
        totalSupply += arg1
        if balanceOf[address(msg.sender)] > !arg1:
            revert with 0, 17
        balanceOf[address(msg.sender)] += arg1
        emit Transfer(arg1, 0, msg.sender);
    else:
        staticcall cropAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < sub_727743da:
            revert with 0, 17
        if not ext_call.return_data[0] - sub_727743da:
            if not msg.sender:
                revert with 0, 'ERC20: mint to the zero address'
            if totalSupply > !arg1:
                revert with 0, 17
            totalSupply += arg1
            if balanceOf[address(msg.sender)] > !arg1:
                revert with 0, 17
            balanceOf[address(msg.sender)] += arg1
            emit Transfer(arg1, 0, msg.sender);
        else:
            staticcall cropAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < sub_727743da:
                revert with 0, 17
            if arg1 and totalSupply > -1 / arg1:
                revert with 0, 17
            if not ext_call.return_data[0] - sub_727743da:
                revert with 0, 18
            if not msg.sender:
                revert with 0, 'ERC20: mint to the zero address'
            if totalSupply > !(arg1 * totalSupply / ext_call.return_data[0] - sub_727743da):
                revert with 0, 17
            totalSupply += arg1 * totalSupply / ext_call.return_data[0] - sub_727743da
            if balanceOf[address(msg.sender)] > !(arg1 * totalSupply / ext_call.return_data[0] - sub_727743da):
                revert with 0, 17
            balanceOf[address(msg.sender)] += arg1 * totalSupply / ext_call.return_data[0] - sub_727743da
            emit Transfer((arg1 * totalSupply / ext_call.return_data[0] - sub_727743da), 0, msg.sender);
    require ext_code.size(cropAddress)
    call cropAddress.0xff7a50d7 with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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
            mem[(uint255(stor3.length) * 0.5) + ceil32(uint255(stor3.length) * 0.5) + 192] = 0
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
        mem[stor3.length.field_1 + ceil32(stor3.length.field_1) + 192] = 0
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
            mem[(uint255(stor4.length) * 0.5) + ceil32(uint255(stor4.length) * 0.5) + 192] = 0
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
        mem[stor4.length.field_1 + ceil32(stor4.length.field_1) + 192] = 0
    return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
}

function sub_efe6066f(?) payable {
    require calldata.size - 4 >= 32
    if stor5:
        revert with 0, 'Pausable: paused'
    mem[100] = this.address
    staticcall cropAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < sub_727743da:
        revert with 0, 17
    if arg1 and ext_call.return_data[0] - sub_727743da > -1 / arg1:
        revert with 0, 17
    if not totalSupply:
        revert with 0, 18
    if (ext_call.return_data[0] * arg1) - (sub_727743da * arg1) / totalSupply and 50 > -1 / (ext_call.return_data[0] * arg1) - (sub_727743da * arg1) / totalSupply:
        revert with 0, 17
    if (ext_call.return_data[0] * arg1) - (sub_727743da * arg1) / totalSupply and 25 > -1 / (ext_call.return_data[0] * arg1) - (sub_727743da * arg1) / totalSupply:
        revert with 0, 17
    if not msg.sender:
        revert with 0, 'ERC20: burn from the zero address'
    if balanceOf[address(msg.sender)] < arg1:
        revert with 0, 'ERC20: burn amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg1
    if totalSupply < arg1:
        revert with 0, 17
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
    require ext_code.size(cropAddress)
    call cropAddress.0x9dc29fac with:
         gas gas_remaining wei
        args this.address, 25 * (ext_call.return_data[0] * arg1) - (sub_727743da * arg1) / totalSupply / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = 50 * (ext_call.return_data[0] * arg1) - (sub_727743da * arg1) / totalSupply / 100
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(cropAddress):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, 50 * (ext_call.return_data[0] * arg1) - (sub_727743da * arg1) / totalSupply / 100, 0
    mem[ceil32(return_data.size) + 328] = 0
    call cropAddress with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, 50 * (ext_call.return_data[0] * arg1) - (sub_727743da * arg1) / totalSupply / 100, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, 50 * (ext_call.return_data[0] * arg1) - (sub_727743da * arg1) / totalSupply / 100, 0) << 288)
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



}
