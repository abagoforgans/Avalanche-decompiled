contract main {




// =====================  Runtime code  =====================


const decimals = 18


array of uint256 stor1;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor54;
array of struct stor55;
address owner;
uint8 paused;
address devWalletAddress;
address rewardPoolAddress;
address treasuryAddress;
uint256 sub_8124f7ac;
mapping of uint8 stor205;
uint256 sellTax;
mapping of uint8 stor207;
address stor209;
uint256 stor210;
uint256 stor211;
address sub_24aaab3aAddress;

function totalSupply() payable {
    return totalSupply
}

function sub_24aaab3a(?) payable {
    return sub_24aaab3aAddress
}

function paused() payable {
    return bool(paused)
}

function treasury() payable {
    return treasuryAddress
}

function rewardPool() payable {
    return rewardPoolAddress
}

function holderInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return holderInfo[arg1].field_0, holderInfo[arg1].field_512
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function sub_8124f7ac(?) payable {
    return sub_8124f7ac
}

function sub_82f9436d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor207[arg1])
}

function owner() payable {
    return owner
}

function devWallet() payable {
    return devWalletAddress
}

function sellTax() payable {
    return sellTax
}

function sub_daa1d24c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor205[arg1])
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

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setLaunchTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor211 = arg1
}

function pause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
}

function setLiquidityPairAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor209 = arg1
}

function unpause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
}

function sub_76c621e9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_24aaab3aAddress = address(arg1)
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

function name() payable {
    if bool(stor54.length):
        if bool(stor54.length) == uint255(stor54.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor54.length):
            if bool(stor54.length) == uint255(stor54.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor54.length):
                if 31 < uint255(stor54.length) * 0.5:
                    mem[128] = uint256(stor54.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor54.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor54[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor54.length), data=mem[128 len ceil32(uint255(stor54.length) * 0.5)])
                mem[128] = 256 * stor54.length.field_8
        else:
            if bool(stor54.length) == stor54.length.field_1 < 32:
                revert with 0, 34
            if stor54.length.field_1:
                if 31 < stor54.length.field_1:
                    mem[128] = uint256(stor54.field_0)
                    idx = 128
                    s = 0
                    while stor54.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor54[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor54.length), data=mem[128 len ceil32(uint255(stor54.length) * 0.5)])
                mem[128] = 256 * stor54.length.field_8
        mem[ceil32(uint255(stor54.length) * 0.5) + 192 len ceil32(uint255(stor54.length) * 0.5)] = mem[128 len ceil32(uint255(stor54.length) * 0.5)]
        if ceil32(uint255(stor54.length) * 0.5) > uint255(stor54.length) * 0.5:
            mem[ceil32(uint255(stor54.length) * 0.5) + (uint255(stor54.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor54.length), data=mem[128 len ceil32(uint255(stor54.length) * 0.5)], mem[(2 * ceil32(uint255(stor54.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor54.length) * 0.5)]), 
    if bool(stor54.length) == stor54.length.field_1 < 32:
        revert with 0, 34
    if bool(stor54.length):
        if bool(stor54.length) == uint255(stor54.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor54.length):
            if 31 < uint255(stor54.length) * 0.5:
                mem[128] = uint256(stor54.field_0)
                idx = 128
                s = 0
                while (uint255(stor54.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor54[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor54.length % 128, data=mem[128 len ceil32(stor54.length.field_1)])
            mem[128] = 256 * stor54.length.field_8
    else:
        if bool(stor54.length) == stor54.length.field_1 < 32:
            revert with 0, 34
        if stor54.length.field_1:
            if 31 < stor54.length.field_1:
                mem[128] = uint256(stor54.field_0)
                idx = 128
                s = 0
                while stor54.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor54[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor54.length % 128, data=mem[128 len ceil32(stor54.length.field_1)])
            mem[128] = 256 * stor54.length.field_8
    mem[ceil32(stor54.length.field_1) + 192 len ceil32(stor54.length.field_1)] = mem[128 len ceil32(stor54.length.field_1)]
    if ceil32(stor54.length.field_1) > stor54.length.field_1:
        mem[ceil32(stor54.length.field_1) + stor54.length.field_1 + 192] = 0
    return Array(len=stor54.length % 128, data=mem[128 len ceil32(stor54.length.field_1)], mem[(2 * ceil32(stor54.length.field_1)) + 192 len 2 * ceil32(stor54.length.field_1)]), 
}

function symbol() payable {
    if bool(stor55.length):
        if bool(stor55.length) == uint255(stor55.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor55.length):
            if bool(stor55.length) == uint255(stor55.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor55.length):
                if 31 < uint255(stor55.length) * 0.5:
                    mem[128] = uint256(stor55.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor55.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor55[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor55.length), data=mem[128 len ceil32(uint255(stor55.length) * 0.5)])
                mem[128] = 256 * stor55.length.field_8
        else:
            if bool(stor55.length) == stor55.length.field_1 < 32:
                revert with 0, 34
            if stor55.length.field_1:
                if 31 < stor55.length.field_1:
                    mem[128] = uint256(stor55.field_0)
                    idx = 128
                    s = 0
                    while stor55.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor55[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor55.length), data=mem[128 len ceil32(uint255(stor55.length) * 0.5)])
                mem[128] = 256 * stor55.length.field_8
        mem[ceil32(uint255(stor55.length) * 0.5) + 192 len ceil32(uint255(stor55.length) * 0.5)] = mem[128 len ceil32(uint255(stor55.length) * 0.5)]
        if ceil32(uint255(stor55.length) * 0.5) > uint255(stor55.length) * 0.5:
            mem[ceil32(uint255(stor55.length) * 0.5) + (uint255(stor55.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor55.length), data=mem[128 len ceil32(uint255(stor55.length) * 0.5)], mem[(2 * ceil32(uint255(stor55.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor55.length) * 0.5)]), 
    if bool(stor55.length) == stor55.length.field_1 < 32:
        revert with 0, 34
    if bool(stor55.length):
        if bool(stor55.length) == uint255(stor55.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor55.length):
            if 31 < uint255(stor55.length) * 0.5:
                mem[128] = uint256(stor55.field_0)
                idx = 128
                s = 0
                while (uint255(stor55.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor55[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor55.length % 128, data=mem[128 len ceil32(stor55.length.field_1)])
            mem[128] = 256 * stor55.length.field_8
    else:
        if bool(stor55.length) == stor55.length.field_1 < 32:
            revert with 0, 34
        if stor55.length.field_1:
            if 31 < stor55.length.field_1:
                mem[128] = uint256(stor55.field_0)
                idx = 128
                s = 0
                while stor55.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor55[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor55.length % 128, data=mem[128 len ceil32(stor55.length.field_1)])
            mem[128] = 256 * stor55.length.field_8
    mem[ceil32(stor55.length.field_1) + 192 len ceil32(stor55.length.field_1)] = mem[128 len ceil32(stor55.length.field_1)]
    if ceil32(stor55.length.field_1) > stor55.length.field_1:
        mem[ceil32(stor55.length.field_1) + stor55.length.field_1 + 192] = 0
    return Array(len=stor55.length % 128, data=mem[128 len ceil32(stor55.length.field_1)], mem[(2 * ceil32(stor55.length.field_1)) + 192 len 2 * ceil32(stor55.length.field_1)]), 
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
    if paused:
        revert with 0, 'Pausable: paused'
    if stor205[address(arg1)]:
        if stor209 != arg2:
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
        else:
            if stor207[address(arg1)]:
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
            else:
                mem[0] = arg1
                mem[32] = 208
                if holderInfo[address(arg1)].field_256 < 1:
                    revert with 0, 17
                idx = stor1[sha3(mem[0 len 64])] - 1
                while idx:
                    if holderInfo[address(arg1)].field_256 < 1:
                        revert with 0, 17
                    mem[32] = 208
                    if idx >= holderInfo[address(arg1)].field_256:
                        revert with 0, 50
                    mem[0] = sha3(address(arg1), 208) + 1
                    if block.timestamp < stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_0:
                        revert with 0, 17
                    if block.timestamp - stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_0 > 24 * 3600:
                        if idx >= holderInfo[address(arg1)].field_256:
                            revert with 0, 50
                        if holderInfo[address(arg1)].field_512 < stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_256:
                            revert with 0, 17
                        holderInfo[address(arg1)].field_512 -= stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_256
                        if idx < holderInfo[address(arg1)].field_256 - 1:
                            if holderInfo[address(arg1)].field_256 - 1 >= holderInfo[address(arg1)].field_256:
                                revert with 0, 50
                            if idx >= holderInfo[address(arg1)].field_256:
                                revert with 0, 50
                            stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_0 = stor[(2 * holderInfo[address(arg1)].field_256 - 1) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_0
                            stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_256 = stor[(2 * holderInfo[address(arg1)].field_256 - 1) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_256
                        mem[32] = 208
                        if not holderInfo[address(arg1)].field_256:
                            revert with 0, 49
                        mem[0] = sha3(address(arg1), 208) + 1
                        stor[(2 * holderInfo[address(arg1)].field_256 - 1) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_0 = 0
                        stor[(2 * holderInfo[address(arg1)].field_256 - 1) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_256 = 0
                        holderInfo[address(arg1)].field_256--
                    if not idx:
                        revert with 0, 17
                    idx = idx - 1
                    continue 
                if holderInfo[address(arg1)].field_512 > !arg3:
                    revert with 0, 17
                if holderInfo[address(arg1)].field_512 + arg3 > stor210:
                    revert with 0, 'Too many tokens sold'
                if holderInfo[address(arg1)].field_512 > !arg3:
                    revert with 0, 17
                holderInfo[address(arg1)].field_512 += arg3
                holderInfo[address(arg1)].field_256++
                stor[(2 * holderInfo[address(arg1)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_0 = block.timestamp
                stor[(2 * holderInfo[address(arg1)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_256 = arg3
                if arg3 and sellTax > -1 / arg3:
                    revert with 0, 17
                if block.timestamp < stor211:
                    revert with 0, 17
                if block.timestamp - stor211 >= 24 * 3600:
                    if arg3 < arg3 * sellTax / 10000:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not rewardPoolAddress:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if balanceOf[address(arg1)] < arg3 * sellTax / 10000:
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(arg1)] -= arg3 * sellTax / 10000
                    if balanceOf[stor202] > !(arg3 * sellTax / 10000):
                        revert with 0, 17
                    balanceOf[stor202] += arg3 * sellTax / 10000
                    emit Transfer((arg3 * sellTax / 10000), arg1, rewardPoolAddress);
                    if not arg1:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg2:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if balanceOf[address(arg1)] < arg3 - (arg3 * sellTax / 10000):
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * sellTax / 10000)
                    if balanceOf[arg2] > !(arg3 - (arg3 * sellTax / 10000)):
                        revert with 0, 17
                    balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 * sellTax / 10000)
                    emit Transfer((arg3 - (arg3 * sellTax / 10000)), arg1, arg2);
                else:
                    if arg3 * sellTax / 10000 and 2 > -1 / arg3 * sellTax / 10000:
                        revert with 0, 17
                    if arg3 < 2 * arg3 * sellTax / 10000:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not rewardPoolAddress:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if balanceOf[address(arg1)] < 2 * arg3 * sellTax / 10000:
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(arg1)] -= 2 * arg3 * sellTax / 10000
                    if balanceOf[stor202] > !(2 * arg3 * sellTax / 10000):
                        revert with 0, 17
                    balanceOf[stor202] += 2 * arg3 * sellTax / 10000
                    emit Transfer((2 * arg3 * sellTax / 10000), arg1, rewardPoolAddress);
                    if not arg1:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg2:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if balanceOf[address(arg1)] < arg3 - (2 * arg3 * sellTax / 10000):
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (2 * arg3 * sellTax / 10000)
                    if balanceOf[arg2] > !(arg3 - (2 * arg3 * sellTax / 10000)):
                        revert with 0, 17
                    balanceOf[arg2] = balanceOf[arg2] + arg3 - (2 * arg3 * sellTax / 10000)
                    emit Transfer((arg3 - (2 * arg3 * sellTax / 10000)), arg1, arg2);
    else:
        if stor209 == arg2:
            if stor207[address(arg1)]:
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
            else:
                mem[0] = arg1
                mem[32] = 208
                if holderInfo[address(arg1)].field_256 < 1:
                    revert with 0, 17
                idx = stor1[sha3(mem[0 len 64])] - 1
                while idx:
                    if holderInfo[address(arg1)].field_256 < 1:
                        revert with 0, 17
                    mem[32] = 208
                    if idx >= holderInfo[address(arg1)].field_256:
                        revert with 0, 50
                    mem[0] = sha3(address(arg1), 208) + 1
                    if block.timestamp < stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_0:
                        revert with 0, 17
                    if block.timestamp - stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_0 > 24 * 3600:
                        if idx >= holderInfo[address(arg1)].field_256:
                            revert with 0, 50
                        if holderInfo[address(arg1)].field_512 < stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_256:
                            revert with 0, 17
                        holderInfo[address(arg1)].field_512 -= stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_256
                        if idx < holderInfo[address(arg1)].field_256 - 1:
                            if holderInfo[address(arg1)].field_256 - 1 >= holderInfo[address(arg1)].field_256:
                                revert with 0, 50
                            if idx >= holderInfo[address(arg1)].field_256:
                                revert with 0, 50
                            stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_0 = stor[(2 * holderInfo[address(arg1)].field_256 - 1) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_0
                            stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_256 = stor[(2 * holderInfo[address(arg1)].field_256 - 1) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_256
                        mem[32] = 208
                        if not holderInfo[address(arg1)].field_256:
                            revert with 0, 49
                        mem[0] = sha3(address(arg1), 208) + 1
                        stor[(2 * holderInfo[address(arg1)].field_256 - 1) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_0 = 0
                        stor[(2 * holderInfo[address(arg1)].field_256 - 1) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_256 = 0
                        holderInfo[address(arg1)].field_256--
                    if not idx:
                        revert with 0, 17
                    idx = idx - 1
                    continue 
                if holderInfo[address(arg1)].field_512 > !arg3:
                    revert with 0, 17
                if holderInfo[address(arg1)].field_512 + arg3 > stor210:
                    revert with 0, 'Too many tokens sold'
                if holderInfo[address(arg1)].field_512 > !arg3:
                    revert with 0, 17
                holderInfo[address(arg1)].field_512 += arg3
                holderInfo[address(arg1)].field_256++
                stor[(2 * holderInfo[address(arg1)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_0 = block.timestamp
                stor[(2 * holderInfo[address(arg1)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_256 = arg3
                if arg3 and sellTax > -1 / arg3:
                    revert with 0, 17
                if block.timestamp < stor211:
                    revert with 0, 17
                if block.timestamp - stor211 >= 24 * 3600:
                    if arg3 < arg3 * sellTax / 10000:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not rewardPoolAddress:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if balanceOf[address(arg1)] < arg3 * sellTax / 10000:
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(arg1)] -= arg3 * sellTax / 10000
                    if balanceOf[stor202] > !(arg3 * sellTax / 10000):
                        revert with 0, 17
                    balanceOf[stor202] += arg3 * sellTax / 10000
                    emit Transfer((arg3 * sellTax / 10000), arg1, rewardPoolAddress);
                    if not arg1:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg2:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if balanceOf[address(arg1)] < arg3 - (arg3 * sellTax / 10000):
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * sellTax / 10000)
                    if balanceOf[arg2] > !(arg3 - (arg3 * sellTax / 10000)):
                        revert with 0, 17
                    balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 * sellTax / 10000)
                    emit Transfer((arg3 - (arg3 * sellTax / 10000)), arg1, arg2);
                else:
                    if arg3 * sellTax / 10000 and 2 > -1 / arg3 * sellTax / 10000:
                        revert with 0, 17
                    if arg3 < 2 * arg3 * sellTax / 10000:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not rewardPoolAddress:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if balanceOf[address(arg1)] < 2 * arg3 * sellTax / 10000:
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(arg1)] -= 2 * arg3 * sellTax / 10000
                    if balanceOf[stor202] > !(2 * arg3 * sellTax / 10000):
                        revert with 0, 17
                    balanceOf[stor202] += 2 * arg3 * sellTax / 10000
                    emit Transfer((2 * arg3 * sellTax / 10000), arg1, rewardPoolAddress);
                    if not arg1:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg2:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if balanceOf[address(arg1)] < arg3 - (2 * arg3 * sellTax / 10000):
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (2 * arg3 * sellTax / 10000)
                    if balanceOf[arg2] > !(arg3 - (2 * arg3 * sellTax / 10000)):
                        revert with 0, 17
                    balanceOf[arg2] = balanceOf[arg2] + arg3 - (2 * arg3 * sellTax / 10000)
                    emit Transfer((arg3 - (2 * arg3 * sellTax / 10000)), arg1, arg2);
        else:
            if stor209 == arg1:
                if stor209 != arg2:
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
                else:
                    if stor207[address(arg1)]:
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
                    else:
                        mem[0] = arg1
                        mem[32] = 208
                        if holderInfo[address(arg1)].field_256 < 1:
                            revert with 0, 17
                        idx = stor1[sha3(mem[0 len 64])] - 1
                        while idx:
                            if holderInfo[address(arg1)].field_256 < 1:
                                revert with 0, 17
                            mem[32] = 208
                            if idx >= holderInfo[address(arg1)].field_256:
                                revert with 0, 50
                            mem[0] = sha3(address(arg1), 208) + 1
                            if block.timestamp < stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_0:
                                revert with 0, 17
                            if block.timestamp - stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_0 > 24 * 3600:
                                if idx >= holderInfo[address(arg1)].field_256:
                                    revert with 0, 50
                                if holderInfo[address(arg1)].field_512 < stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_256:
                                    revert with 0, 17
                                holderInfo[address(arg1)].field_512 -= stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_256
                                if idx < holderInfo[address(arg1)].field_256 - 1:
                                    if holderInfo[address(arg1)].field_256 - 1 >= holderInfo[address(arg1)].field_256:
                                        revert with 0, 50
                                    if idx >= holderInfo[address(arg1)].field_256:
                                        revert with 0, 50
                                    stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_0 = stor[(2 * holderInfo[address(arg1)].field_256 - 1) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_0
                                    stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_256 = stor[(2 * holderInfo[address(arg1)].field_256 - 1) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_256
                                mem[32] = 208
                                if not holderInfo[address(arg1)].field_256:
                                    revert with 0, 49
                                mem[0] = sha3(address(arg1), 208) + 1
                                stor[(2 * holderInfo[address(arg1)].field_256 - 1) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_0 = 0
                                stor[(2 * holderInfo[address(arg1)].field_256 - 1) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_256 = 0
                                holderInfo[address(arg1)].field_256--
                            if not idx:
                                revert with 0, 17
                            idx = idx - 1
                            continue 
                        if holderInfo[address(arg1)].field_512 > !arg3:
                            revert with 0, 17
                        if holderInfo[address(arg1)].field_512 + arg3 > stor210:
                            revert with 0, 'Too many tokens sold'
                        if holderInfo[address(arg1)].field_512 > !arg3:
                            revert with 0, 17
                        holderInfo[address(arg1)].field_512 += arg3
                        holderInfo[address(arg1)].field_256++
                        stor[(2 * holderInfo[address(arg1)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_0 = block.timestamp
                        stor[(2 * holderInfo[address(arg1)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_256 = arg3
                        if arg3 and sellTax > -1 / arg3:
                            revert with 0, 17
                        if block.timestamp < stor211:
                            revert with 0, 17
                        if block.timestamp - stor211 >= 24 * 3600:
                            if arg3 < arg3 * sellTax / 10000:
                                revert with 0, 17
                            if not arg1:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not rewardPoolAddress:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if balanceOf[address(arg1)] < arg3 * sellTax / 10000:
                                revert with 0, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(arg1)] -= arg3 * sellTax / 10000
                            if balanceOf[stor202] > !(arg3 * sellTax / 10000):
                                revert with 0, 17
                            balanceOf[stor202] += arg3 * sellTax / 10000
                            emit Transfer((arg3 * sellTax / 10000), arg1, rewardPoolAddress);
                            if not arg1:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not arg2:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if balanceOf[address(arg1)] < arg3 - (arg3 * sellTax / 10000):
                                revert with 0, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * sellTax / 10000)
                            if balanceOf[arg2] > !(arg3 - (arg3 * sellTax / 10000)):
                                revert with 0, 17
                            balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 * sellTax / 10000)
                            emit Transfer((arg3 - (arg3 * sellTax / 10000)), arg1, arg2);
                        else:
                            if arg3 * sellTax / 10000 and 2 > -1 / arg3 * sellTax / 10000:
                                revert with 0, 17
                            if arg3 < 2 * arg3 * sellTax / 10000:
                                revert with 0, 17
                            if not arg1:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not rewardPoolAddress:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if balanceOf[address(arg1)] < 2 * arg3 * sellTax / 10000:
                                revert with 0, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(arg1)] -= 2 * arg3 * sellTax / 10000
                            if balanceOf[stor202] > !(2 * arg3 * sellTax / 10000):
                                revert with 0, 17
                            balanceOf[stor202] += 2 * arg3 * sellTax / 10000
                            emit Transfer((2 * arg3 * sellTax / 10000), arg1, rewardPoolAddress);
                            if not arg1:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not arg2:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if balanceOf[address(arg1)] < arg3 - (2 * arg3 * sellTax / 10000):
                                revert with 0, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (2 * arg3 * sellTax / 10000)
                            if balanceOf[arg2] > !(arg3 - (2 * arg3 * sellTax / 10000)):
                                revert with 0, 17
                            balanceOf[arg2] = balanceOf[arg2] + arg3 - (2 * arg3 * sellTax / 10000)
                            emit Transfer((arg3 - (2 * arg3 * sellTax / 10000)), arg1, arg2);
            else:
                if not arg1:
                    if stor209 != arg2:
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
                    else:
                        if stor207[address(arg1)]:
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
                        else:
                            mem[0] = arg1
                            mem[32] = 208
                            if holderInfo[address(arg1)].field_256 < 1:
                                revert with 0, 17
                            idx = stor1[sha3(mem[0 len 64])] - 1
                            while idx:
                                if holderInfo[address(arg1)].field_256 < 1:
                                    revert with 0, 17
                                mem[32] = 208
                                if idx >= holderInfo[address(arg1)].field_256:
                                    revert with 0, 50
                                mem[0] = sha3(address(arg1), 208) + 1
                                if block.timestamp < stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_0:
                                    revert with 0, 17
                                if block.timestamp - stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_0 > 24 * 3600:
                                    if idx >= holderInfo[address(arg1)].field_256:
                                        revert with 0, 50
                                    if holderInfo[address(arg1)].field_512 < stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_256:
                                        revert with 0, 17
                                    holderInfo[address(arg1)].field_512 -= stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_256
                                    if idx < holderInfo[address(arg1)].field_256 - 1:
                                        if holderInfo[address(arg1)].field_256 - 1 >= holderInfo[address(arg1)].field_256:
                                            revert with 0, 50
                                        if idx >= holderInfo[address(arg1)].field_256:
                                            revert with 0, 50
                                        stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_0 = stor[(2 * holderInfo[address(arg1)].field_256 - 1) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_0
                                        stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_256 = stor[(2 * holderInfo[address(arg1)].field_256 - 1) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_256
                                    mem[32] = 208
                                    if not holderInfo[address(arg1)].field_256:
                                        revert with 0, 49
                                    mem[0] = sha3(address(arg1), 208) + 1
                                    stor[(2 * holderInfo[address(arg1)].field_256 - 1) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_0 = 0
                                    stor[(2 * holderInfo[address(arg1)].field_256 - 1) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_256 = 0
                                    holderInfo[address(arg1)].field_256--
                                if not idx:
                                    revert with 0, 17
                                idx = idx - 1
                                continue 
                            if holderInfo[address(arg1)].field_512 > !arg3:
                                revert with 0, 17
                            if holderInfo[address(arg1)].field_512 + arg3 > stor210:
                                revert with 0, 'Too many tokens sold'
                            if holderInfo[address(arg1)].field_512 > !arg3:
                                revert with 0, 17
                            holderInfo[address(arg1)].field_512 += arg3
                            holderInfo[address(arg1)].field_256++
                            stor[(2 * holderInfo[address(arg1)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_0 = block.timestamp
                            stor[(2 * holderInfo[address(arg1)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_256 = arg3
                            if arg3 and sellTax > -1 / arg3:
                                revert with 0, 17
                            if block.timestamp < stor211:
                                revert with 0, 17
                            if block.timestamp - stor211 >= 24 * 3600:
                                if arg3 < arg3 * sellTax / 10000:
                                    revert with 0, 17
                                if not arg1:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not rewardPoolAddress:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(arg1)] < arg3 * sellTax / 10000:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(arg1)] -= arg3 * sellTax / 10000
                                if balanceOf[stor202] > !(arg3 * sellTax / 10000):
                                    revert with 0, 17
                                balanceOf[stor202] += arg3 * sellTax / 10000
                                emit Transfer((arg3 * sellTax / 10000), arg1, rewardPoolAddress);
                                if not arg1:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg2:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(arg1)] < arg3 - (arg3 * sellTax / 10000):
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * sellTax / 10000)
                                if balanceOf[arg2] > !(arg3 - (arg3 * sellTax / 10000)):
                                    revert with 0, 17
                                balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 * sellTax / 10000)
                                emit Transfer((arg3 - (arg3 * sellTax / 10000)), arg1, arg2);
                            else:
                                if arg3 * sellTax / 10000 and 2 > -1 / arg3 * sellTax / 10000:
                                    revert with 0, 17
                                if arg3 < 2 * arg3 * sellTax / 10000:
                                    revert with 0, 17
                                if not arg1:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not rewardPoolAddress:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(arg1)] < 2 * arg3 * sellTax / 10000:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(arg1)] -= 2 * arg3 * sellTax / 10000
                                if balanceOf[stor202] > !(2 * arg3 * sellTax / 10000):
                                    revert with 0, 17
                                balanceOf[stor202] += 2 * arg3 * sellTax / 10000
                                emit Transfer((2 * arg3 * sellTax / 10000), arg1, rewardPoolAddress);
                                if not arg1:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg2:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(arg1)] < arg3 - (2 * arg3 * sellTax / 10000):
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (2 * arg3 * sellTax / 10000)
                                if balanceOf[arg2] > !(arg3 - (2 * arg3 * sellTax / 10000)):
                                    revert with 0, 17
                                balanceOf[arg2] = balanceOf[arg2] + arg3 - (2 * arg3 * sellTax / 10000)
                                emit Transfer((arg3 - (2 * arg3 * sellTax / 10000)), arg1, arg2);
                else:
                    if sub_24aaab3aAddress == arg2:
                        if stor209 != arg2:
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
                        else:
                            if stor207[address(arg1)]:
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
                            else:
                                mem[0] = arg1
                                mem[32] = 208
                                if holderInfo[address(arg1)].field_256 < 1:
                                    revert with 0, 17
                                idx = stor1[sha3(mem[0 len 64])] - 1
                                while idx:
                                    if holderInfo[address(arg1)].field_256 < 1:
                                        revert with 0, 17
                                    mem[32] = 208
                                    if idx >= holderInfo[address(arg1)].field_256:
                                        revert with 0, 50
                                    mem[0] = sha3(address(arg1), 208) + 1
                                    if block.timestamp < stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_0:
                                        revert with 0, 17
                                    if block.timestamp - stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_0 > 24 * 3600:
                                        if idx >= holderInfo[address(arg1)].field_256:
                                            revert with 0, 50
                                        if holderInfo[address(arg1)].field_512 < stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_256:
                                            revert with 0, 17
                                        holderInfo[address(arg1)].field_512 -= stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_256
                                        if idx < holderInfo[address(arg1)].field_256 - 1:
                                            if holderInfo[address(arg1)].field_256 - 1 >= holderInfo[address(arg1)].field_256:
                                                revert with 0, 50
                                            if idx >= holderInfo[address(arg1)].field_256:
                                                revert with 0, 50
                                            stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_0 = stor[(2 * holderInfo[address(arg1)].field_256 - 1) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_0
                                            stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_256 = stor[(2 * holderInfo[address(arg1)].field_256 - 1) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_256
                                        mem[32] = 208
                                        if not holderInfo[address(arg1)].field_256:
                                            revert with 0, 49
                                        mem[0] = sha3(address(arg1), 208) + 1
                                        stor[(2 * holderInfo[address(arg1)].field_256 - 1) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_0 = 0
                                        stor[(2 * holderInfo[address(arg1)].field_256 - 1) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_256 = 0
                                        holderInfo[address(arg1)].field_256--
                                    if not idx:
                                        revert with 0, 17
                                    idx = idx - 1
                                    continue 
                                if holderInfo[address(arg1)].field_512 > !arg3:
                                    revert with 0, 17
                                if holderInfo[address(arg1)].field_512 + arg3 > stor210:
                                    revert with 0, 'Too many tokens sold'
                                if holderInfo[address(arg1)].field_512 > !arg3:
                                    revert with 0, 17
                                holderInfo[address(arg1)].field_512 += arg3
                                holderInfo[address(arg1)].field_256++
                                stor[(2 * holderInfo[address(arg1)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_0 = block.timestamp
                                stor[(2 * holderInfo[address(arg1)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_256 = arg3
                                if arg3 and sellTax > -1 / arg3:
                                    revert with 0, 17
                                if block.timestamp < stor211:
                                    revert with 0, 17
                                if block.timestamp - stor211 >= 24 * 3600:
                                    if arg3 < arg3 * sellTax / 10000:
                                        revert with 0, 17
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not rewardPoolAddress:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(arg1)] < arg3 * sellTax / 10000:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(arg1)] -= arg3 * sellTax / 10000
                                    if balanceOf[stor202] > !(arg3 * sellTax / 10000):
                                        revert with 0, 17
                                    balanceOf[stor202] += arg3 * sellTax / 10000
                                    emit Transfer((arg3 * sellTax / 10000), arg1, rewardPoolAddress);
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg2:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(arg1)] < arg3 - (arg3 * sellTax / 10000):
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * sellTax / 10000)
                                    if balanceOf[arg2] > !(arg3 - (arg3 * sellTax / 10000)):
                                        revert with 0, 17
                                    balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 * sellTax / 10000)
                                    emit Transfer((arg3 - (arg3 * sellTax / 10000)), arg1, arg2);
                                else:
                                    if arg3 * sellTax / 10000 and 2 > -1 / arg3 * sellTax / 10000:
                                        revert with 0, 17
                                    if arg3 < 2 * arg3 * sellTax / 10000:
                                        revert with 0, 17
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not rewardPoolAddress:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(arg1)] < 2 * arg3 * sellTax / 10000:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(arg1)] -= 2 * arg3 * sellTax / 10000
                                    if balanceOf[stor202] > !(2 * arg3 * sellTax / 10000):
                                        revert with 0, 17
                                    balanceOf[stor202] += 2 * arg3 * sellTax / 10000
                                    emit Transfer((2 * arg3 * sellTax / 10000), arg1, rewardPoolAddress);
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg2:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(arg1)] < arg3 - (2 * arg3 * sellTax / 10000):
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (2 * arg3 * sellTax / 10000)
                                    if balanceOf[arg2] > !(arg3 - (2 * arg3 * sellTax / 10000)):
                                        revert with 0, 17
                                    balanceOf[arg2] = balanceOf[arg2] + arg3 - (2 * arg3 * sellTax / 10000)
                                    emit Transfer((arg3 - (2 * arg3 * sellTax / 10000)), arg1, arg2);
                    else:
                        if arg3 and sub_8124f7ac > -1 / arg3:
                            revert with 0, 17
                        if arg3 < arg3 * sub_8124f7ac / 10000:
                            revert with 0, 17
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not rewardPoolAddress:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(arg1)] < arg3 * sub_8124f7ac / 10000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(arg1)] -= arg3 * sub_8124f7ac / 10000
                        if balanceOf[stor202] > !(arg3 * sub_8124f7ac / 10000):
                            revert with 0, 17
                        balanceOf[stor202] += arg3 * sub_8124f7ac / 10000
                        emit Transfer((arg3 * sub_8124f7ac / 10000), arg1, rewardPoolAddress);
                        if stor209 != arg2:
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg2:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if balanceOf[address(arg1)] < arg3 - (arg3 * sub_8124f7ac / 10000):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * sub_8124f7ac / 10000)
                            if balanceOf[arg2] > !(arg3 - (arg3 * sub_8124f7ac / 10000)):
                                revert with 0, 17
                            balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 * sub_8124f7ac / 10000)
                            emit Transfer((arg3 - (arg3 * sub_8124f7ac / 10000)), arg1, arg2);
                        else:
                            if stor207[address(arg1)]:
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not arg2:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(arg1)] < arg3 - (arg3 * sub_8124f7ac / 10000):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * sub_8124f7ac / 10000)
                                if balanceOf[arg2] > !(arg3 - (arg3 * sub_8124f7ac / 10000)):
                                    revert with 0, 17
                                balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 * sub_8124f7ac / 10000)
                                emit Transfer((arg3 - (arg3 * sub_8124f7ac / 10000)), arg1, arg2);
                            else:
                                mem[0] = arg1
                                mem[32] = 208
                                if holderInfo[address(arg1)].field_256 < 1:
                                    revert with 0, 17
                                idx = stor1[sha3(mem[0 len 64])] - 1
                                while idx:
                                    if holderInfo[address(arg1)].field_256 < 1:
                                        revert with 0, 17
                                    mem[32] = 208
                                    if idx >= holderInfo[address(arg1)].field_256:
                                        revert with 0, 50
                                    mem[0] = sha3(address(arg1), 208) + 1
                                    if block.timestamp < stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_0:
                                        revert with 0, 17
                                    if block.timestamp - stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_0 > 24 * 3600:
                                        if idx >= holderInfo[address(arg1)].field_256:
                                            revert with 0, 50
                                        if holderInfo[address(arg1)].field_512 < stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_256:
                                            revert with 0, 17
                                        holderInfo[address(arg1)].field_512 -= stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_256
                                        if idx < holderInfo[address(arg1)].field_256 - 1:
                                            if holderInfo[address(arg1)].field_256 - 1 >= holderInfo[address(arg1)].field_256:
                                                revert with 0, 50
                                            if idx >= holderInfo[address(arg1)].field_256:
                                                revert with 0, 50
                                            stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_0 = stor[(2 * holderInfo[address(arg1)].field_256 - 1) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_0
                                            stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_256 = stor[(2 * holderInfo[address(arg1)].field_256 - 1) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_256
                                        mem[32] = 208
                                        if not holderInfo[address(arg1)].field_256:
                                            revert with 0, 49
                                        mem[0] = sha3(address(arg1), 208) + 1
                                        stor[(2 * holderInfo[address(arg1)].field_256 - 1) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_0 = 0
                                        stor[(2 * holderInfo[address(arg1)].field_256 - 1) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_256 = 0
                                        holderInfo[address(arg1)].field_256--
                                    if not idx:
                                        revert with 0, 17
                                    idx = idx - 1
                                    continue 
                                if holderInfo[address(arg1)].field_512 > !(arg3 - (arg3 * sub_8124f7ac / 10000)):
                                    revert with 0, 17
                                if holderInfo[address(arg1)].field_512 + arg3 - (arg3 * sub_8124f7ac / 10000) > stor210:
                                    revert with 0, 'Too many tokens sold'
                                if holderInfo[address(arg1)].field_512 > !(arg3 - (arg3 * sub_8124f7ac / 10000)):
                                    revert with 0, 17
                                holderInfo[address(arg1)].field_512 = holderInfo[address(arg1)].field_512 + arg3 - (arg3 * sub_8124f7ac / 10000)
                                holderInfo[address(arg1)].field_256++
                                stor[(2 * holderInfo[address(arg1)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_0 = block.timestamp
                                stor[(2 * holderInfo[address(arg1)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_256 = arg3 - (arg3 * sub_8124f7ac / 10000)
                                if arg3 - (arg3 * sub_8124f7ac / 10000) and sellTax > -1 / arg3 - (arg3 * sub_8124f7ac / 10000):
                                    revert with 0, 17
                                if block.timestamp < stor211:
                                    revert with 0, 17
                                if block.timestamp - stor211 >= 24 * 3600:
                                    if arg3 - (arg3 * sub_8124f7ac / 10000) < (arg3 * sellTax) - (arg3 * sub_8124f7ac / 10000 * sellTax) / 10000:
                                        revert with 0, 17
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not rewardPoolAddress:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(arg1)] < (arg3 * sellTax) - (arg3 * sub_8124f7ac / 10000 * sellTax) / 10000:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(arg1)] -= (arg3 * sellTax) - (arg3 * sub_8124f7ac / 10000 * sellTax) / 10000
                                    if balanceOf[stor202] > !((arg3 * sellTax) - (arg3 * sub_8124f7ac / 10000 * sellTax) / 10000):
                                        revert with 0, 17
                                    balanceOf[stor202] += (arg3 * sellTax) - (arg3 * sub_8124f7ac / 10000 * sellTax) / 10000
                                    emit Transfer(((arg3 * sellTax) - (arg3 * sub_8124f7ac / 10000 * sellTax) / 10000), arg1, rewardPoolAddress);
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg2:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(arg1)] < arg3 - (arg3 * sub_8124f7ac / 10000) - ((arg3 * sellTax) - (arg3 * sub_8124f7ac / 10000 * sellTax) / 10000):
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * sub_8124f7ac / 10000) + ((arg3 * sellTax) - (arg3 * sub_8124f7ac / 10000 * sellTax) / 10000)
                                    if balanceOf[arg2] > !(arg3 - (arg3 * sub_8124f7ac / 10000) - ((arg3 * sellTax) - (arg3 * sub_8124f7ac / 10000 * sellTax) / 10000)):
                                        revert with 0, 17
                                    balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 * sub_8124f7ac / 10000) - ((arg3 * sellTax) - (arg3 * sub_8124f7ac / 10000 * sellTax) / 10000)
                                    emit Transfer((arg3 - (arg3 * sub_8124f7ac / 10000) - ((arg3 * sellTax) - (arg3 * sub_8124f7ac / 10000 * sellTax) / 10000)), arg1, arg2);
                                else:
                                    if (arg3 * sellTax) - (arg3 * sub_8124f7ac / 10000 * sellTax) / 10000 and 2 > -1 / (arg3 * sellTax) - (arg3 * sub_8124f7ac / 10000 * sellTax) / 10000:
                                        revert with 0, 17
                                    if arg3 - (arg3 * sub_8124f7ac / 10000) < 2 * (arg3 * sellTax) - (arg3 * sub_8124f7ac / 10000 * sellTax) / 10000:
                                        revert with 0, 17
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not rewardPoolAddress:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(arg1)] < 2 * (arg3 * sellTax) - (arg3 * sub_8124f7ac / 10000 * sellTax) / 10000:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(arg1)] -= 2 * (arg3 * sellTax) - (arg3 * sub_8124f7ac / 10000 * sellTax) / 10000
                                    if balanceOf[stor202] > !(2 * (arg3 * sellTax) - (arg3 * sub_8124f7ac / 10000 * sellTax) / 10000):
                                        revert with 0, 17
                                    balanceOf[stor202] += 2 * (arg3 * sellTax) - (arg3 * sub_8124f7ac / 10000 * sellTax) / 10000
                                    emit Transfer((2 * (arg3 * sellTax) - (arg3 * sub_8124f7ac / 10000 * sellTax) / 10000), arg1, rewardPoolAddress);
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg2:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(arg1)] < arg3 - (arg3 * sub_8124f7ac / 10000) - (2 * (arg3 * sellTax) - (arg3 * sub_8124f7ac / 10000 * sellTax) / 10000):
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * sub_8124f7ac / 10000) + (2 * (arg3 * sellTax) - (arg3 * sub_8124f7ac / 10000 * sellTax) / 10000)
                                    if balanceOf[arg2] > !(arg3 - (arg3 * sub_8124f7ac / 10000) - (2 * (arg3 * sellTax) - (arg3 * sub_8124f7ac / 10000 * sellTax) / 10000)):
                                        revert with 0, 17
                                    balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 * sub_8124f7ac / 10000) - (2 * (arg3 * sellTax) - (arg3 * sub_8124f7ac / 10000 * sellTax) / 10000)
                                    emit Transfer((arg3 - (arg3 * sub_8124f7ac / 10000) - (2 * (arg3 * sellTax) - (arg3 * sub_8124f7ac / 10000 * sellTax) / 10000)), arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if paused:
        revert with 0, 'Pausable: paused'
    if stor205[address(msg.sender)]:
        if stor209 != arg1:
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
        else:
            if stor207[address(msg.sender)]:
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
            else:
                mem[0] = msg.sender
                mem[32] = 208
                if holderInfo[address(msg.sender)].field_256 < 1:
                    revert with 0, 17
                idx = stor1[sha3(mem[0 len 64])] - 1
                while idx:
                    if holderInfo[address(msg.sender)].field_256 < 1:
                        revert with 0, 17
                    mem[32] = 208
                    if idx >= holderInfo[address(msg.sender)].field_256:
                        revert with 0, 50
                    mem[0] = sha3(address(msg.sender), 208) + 1
                    if block.timestamp < stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'holderInfo', 208)))].field_0:
                        revert with 0, 17
                    if block.timestamp - stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'holderInfo', 208)))].field_0 > 24 * 3600:
                        if idx >= holderInfo[address(msg.sender)].field_256:
                            revert with 0, 50
                        if holderInfo[address(msg.sender)].field_512 < stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'holderInfo', 208)))].field_256:
                            revert with 0, 17
                        holderInfo[address(msg.sender)].field_512 -= stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'holderInfo', 208)))].field_256
                        if idx < holderInfo[address(msg.sender)].field_256 - 1:
                            if holderInfo[address(msg.sender)].field_256 - 1 >= holderInfo[address(msg.sender)].field_256:
                                revert with 0, 50
                            if idx >= holderInfo[address(msg.sender)].field_256:
                                revert with 0, 50
                            stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'holderInfo', 208)))].field_0 = stor[(2 * holderInfo[address(msg.sender)].field_256 - 1) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'holderInfo', 208)))].field_0
                            stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'holderInfo', 208)))].field_256 = stor[(2 * holderInfo[address(msg.sender)].field_256 - 1) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'holderInfo', 208)))].field_256
                        mem[32] = 208
                        if not holderInfo[address(msg.sender)].field_256:
                            revert with 0, 49
                        mem[0] = sha3(address(msg.sender), 208) + 1
                        stor[(2 * holderInfo[address(msg.sender)].field_256 - 1) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'holderInfo', 208)))].field_0 = 0
                        stor[(2 * holderInfo[address(msg.sender)].field_256 - 1) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'holderInfo', 208)))].field_256 = 0
                        holderInfo[address(msg.sender)].field_256--
                    if not idx:
                        revert with 0, 17
                    idx = idx - 1
                    continue 
                if holderInfo[address(msg.sender)].field_512 > !arg2:
                    revert with 0, 17
                if holderInfo[address(msg.sender)].field_512 + arg2 > stor210:
                    revert with 0, 'Too many tokens sold'
                if holderInfo[address(msg.sender)].field_512 > !arg2:
                    revert with 0, 17
                holderInfo[address(msg.sender)].field_512 += arg2
                holderInfo[address(msg.sender)].field_256++
                stor[(2 * holderInfo[address(msg.sender)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'holderInfo', 208)))].field_0 = block.timestamp
                stor[(2 * holderInfo[address(msg.sender)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'holderInfo', 208)))].field_256 = arg2
                if arg2 and sellTax > -1 / arg2:
                    revert with 0, 17
                if block.timestamp < stor211:
                    revert with 0, 17
                if block.timestamp - stor211 >= 24 * 3600:
                    if arg2 < arg2 * sellTax / 10000:
                        revert with 0, 17
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not rewardPoolAddress:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if balanceOf[address(msg.sender)] < arg2 * sellTax / 10000:
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(msg.sender)] -= arg2 * sellTax / 10000
                    if balanceOf[stor202] > !(arg2 * sellTax / 10000):
                        revert with 0, 17
                    balanceOf[stor202] += arg2 * sellTax / 10000
                    emit Transfer((arg2 * sellTax / 10000), msg.sender, rewardPoolAddress);
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if balanceOf[address(msg.sender)] < arg2 - (arg2 * sellTax / 10000):
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * sellTax / 10000)
                    if balanceOf[arg1] > !(arg2 - (arg2 * sellTax / 10000)):
                        revert with 0, 17
                    balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * sellTax / 10000)
                    emit Transfer((arg2 - (arg2 * sellTax / 10000)), msg.sender, arg1);
                else:
                    if arg2 * sellTax / 10000 and 2 > -1 / arg2 * sellTax / 10000:
                        revert with 0, 17
                    if arg2 < 2 * arg2 * sellTax / 10000:
                        revert with 0, 17
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not rewardPoolAddress:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if balanceOf[address(msg.sender)] < 2 * arg2 * sellTax / 10000:
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(msg.sender)] -= 2 * arg2 * sellTax / 10000
                    if balanceOf[stor202] > !(2 * arg2 * sellTax / 10000):
                        revert with 0, 17
                    balanceOf[stor202] += 2 * arg2 * sellTax / 10000
                    emit Transfer((2 * arg2 * sellTax / 10000), msg.sender, rewardPoolAddress);
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if balanceOf[address(msg.sender)] < arg2 - (2 * arg2 * sellTax / 10000):
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (2 * arg2 * sellTax / 10000)
                    if balanceOf[arg1] > !(arg2 - (2 * arg2 * sellTax / 10000)):
                        revert with 0, 17
                    balanceOf[arg1] = balanceOf[arg1] + arg2 - (2 * arg2 * sellTax / 10000)
                    emit Transfer((arg2 - (2 * arg2 * sellTax / 10000)), msg.sender, arg1);
    else:
        if stor209 == arg1:
            if stor207[address(msg.sender)]:
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
            else:
                mem[0] = msg.sender
                mem[32] = 208
                if holderInfo[address(msg.sender)].field_256 < 1:
                    revert with 0, 17
                idx = stor1[sha3(mem[0 len 64])] - 1
                while idx:
                    if holderInfo[address(msg.sender)].field_256 < 1:
                        revert with 0, 17
                    mem[32] = 208
                    if idx >= holderInfo[address(msg.sender)].field_256:
                        revert with 0, 50
                    mem[0] = sha3(address(msg.sender), 208) + 1
                    if block.timestamp < stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'holderInfo', 208)))].field_0:
                        revert with 0, 17
                    if block.timestamp - stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'holderInfo', 208)))].field_0 > 24 * 3600:
                        if idx >= holderInfo[address(msg.sender)].field_256:
                            revert with 0, 50
                        if holderInfo[address(msg.sender)].field_512 < stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'holderInfo', 208)))].field_256:
                            revert with 0, 17
                        holderInfo[address(msg.sender)].field_512 -= stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'holderInfo', 208)))].field_256
                        if idx < holderInfo[address(msg.sender)].field_256 - 1:
                            if holderInfo[address(msg.sender)].field_256 - 1 >= holderInfo[address(msg.sender)].field_256:
                                revert with 0, 50
                            if idx >= holderInfo[address(msg.sender)].field_256:
                                revert with 0, 50
                            stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'holderInfo', 208)))].field_0 = stor[(2 * holderInfo[address(msg.sender)].field_256 - 1) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'holderInfo', 208)))].field_0
                            stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'holderInfo', 208)))].field_256 = stor[(2 * holderInfo[address(msg.sender)].field_256 - 1) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'holderInfo', 208)))].field_256
                        mem[32] = 208
                        if not holderInfo[address(msg.sender)].field_256:
                            revert with 0, 49
                        mem[0] = sha3(address(msg.sender), 208) + 1
                        stor[(2 * holderInfo[address(msg.sender)].field_256 - 1) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'holderInfo', 208)))].field_0 = 0
                        stor[(2 * holderInfo[address(msg.sender)].field_256 - 1) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'holderInfo', 208)))].field_256 = 0
                        holderInfo[address(msg.sender)].field_256--
                    if not idx:
                        revert with 0, 17
                    idx = idx - 1
                    continue 
                if holderInfo[address(msg.sender)].field_512 > !arg2:
                    revert with 0, 17
                if holderInfo[address(msg.sender)].field_512 + arg2 > stor210:
                    revert with 0, 'Too many tokens sold'
                if holderInfo[address(msg.sender)].field_512 > !arg2:
                    revert with 0, 17
                holderInfo[address(msg.sender)].field_512 += arg2
                holderInfo[address(msg.sender)].field_256++
                stor[(2 * holderInfo[address(msg.sender)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'holderInfo', 208)))].field_0 = block.timestamp
                stor[(2 * holderInfo[address(msg.sender)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'holderInfo', 208)))].field_256 = arg2
                if arg2 and sellTax > -1 / arg2:
                    revert with 0, 17
                if block.timestamp < stor211:
                    revert with 0, 17
                if block.timestamp - stor211 >= 24 * 3600:
                    if arg2 < arg2 * sellTax / 10000:
                        revert with 0, 17
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not rewardPoolAddress:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if balanceOf[address(msg.sender)] < arg2 * sellTax / 10000:
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(msg.sender)] -= arg2 * sellTax / 10000
                    if balanceOf[stor202] > !(arg2 * sellTax / 10000):
                        revert with 0, 17
                    balanceOf[stor202] += arg2 * sellTax / 10000
                    emit Transfer((arg2 * sellTax / 10000), msg.sender, rewardPoolAddress);
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if balanceOf[address(msg.sender)] < arg2 - (arg2 * sellTax / 10000):
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * sellTax / 10000)
                    if balanceOf[arg1] > !(arg2 - (arg2 * sellTax / 10000)):
                        revert with 0, 17
                    balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * sellTax / 10000)
                    emit Transfer((arg2 - (arg2 * sellTax / 10000)), msg.sender, arg1);
                else:
                    if arg2 * sellTax / 10000 and 2 > -1 / arg2 * sellTax / 10000:
                        revert with 0, 17
                    if arg2 < 2 * arg2 * sellTax / 10000:
                        revert with 0, 17
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not rewardPoolAddress:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if balanceOf[address(msg.sender)] < 2 * arg2 * sellTax / 10000:
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(msg.sender)] -= 2 * arg2 * sellTax / 10000
                    if balanceOf[stor202] > !(2 * arg2 * sellTax / 10000):
                        revert with 0, 17
                    balanceOf[stor202] += 2 * arg2 * sellTax / 10000
                    emit Transfer((2 * arg2 * sellTax / 10000), msg.sender, rewardPoolAddress);
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if balanceOf[address(msg.sender)] < arg2 - (2 * arg2 * sellTax / 10000):
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (2 * arg2 * sellTax / 10000)
                    if balanceOf[arg1] > !(arg2 - (2 * arg2 * sellTax / 10000)):
                        revert with 0, 17
                    balanceOf[arg1] = balanceOf[arg1] + arg2 - (2 * arg2 * sellTax / 10000)
                    emit Transfer((arg2 - (2 * arg2 * sellTax / 10000)), msg.sender, arg1);
        else:
            if stor209 == msg.sender:
                if stor209 != arg1:
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
                else:
                    if stor207[address(msg.sender)]:
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
                    else:
                        mem[0] = msg.sender
                        mem[32] = 208
                        if holderInfo[address(msg.sender)].field_256 < 1:
                            revert with 0, 17
                        idx = stor1[sha3(mem[0 len 64])] - 1
                        while idx:
                            if holderInfo[address(msg.sender)].field_256 < 1:
                                revert with 0, 17
                            mem[32] = 208
                            if idx >= holderInfo[address(msg.sender)].field_256:
                                revert with 0, 50
                            mem[0] = sha3(address(msg.sender), 208) + 1
                            if block.timestamp < stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'holderInfo', 208)))].field_0:
                                revert with 0, 17
                            if block.timestamp - stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'holderInfo', 208)))].field_0 > 24 * 3600:
                                if idx >= holderInfo[address(msg.sender)].field_256:
                                    revert with 0, 50
                                if holderInfo[address(msg.sender)].field_512 < stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'holderInfo', 208)))].field_256:
                                    revert with 0, 17
                                holderInfo[address(msg.sender)].field_512 -= stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'holderInfo', 208)))].field_256
                                if idx < holderInfo[address(msg.sender)].field_256 - 1:
                                    if holderInfo[address(msg.sender)].field_256 - 1 >= holderInfo[address(msg.sender)].field_256:
                                        revert with 0, 50
                                    if idx >= holderInfo[address(msg.sender)].field_256:
                                        revert with 0, 50
                                    stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'holderInfo', 208)))].field_0 = stor[(2 * holderInfo[address(msg.sender)].field_256 - 1) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'holderInfo', 208)))].field_0
                                    stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'holderInfo', 208)))].field_256 = stor[(2 * holderInfo[address(msg.sender)].field_256 - 1) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'holderInfo', 208)))].field_256
                                mem[32] = 208
                                if not holderInfo[address(msg.sender)].field_256:
                                    revert with 0, 49
                                mem[0] = sha3(address(msg.sender), 208) + 1
                                stor[(2 * holderInfo[address(msg.sender)].field_256 - 1) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'holderInfo', 208)))].field_0 = 0
                                stor[(2 * holderInfo[address(msg.sender)].field_256 - 1) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'holderInfo', 208)))].field_256 = 0
                                holderInfo[address(msg.sender)].field_256--
                            if not idx:
                                revert with 0, 17
                            idx = idx - 1
                            continue 
                        if holderInfo[address(msg.sender)].field_512 > !arg2:
                            revert with 0, 17
                        if holderInfo[address(msg.sender)].field_512 + arg2 > stor210:
                            revert with 0, 'Too many tokens sold'
                        if holderInfo[address(msg.sender)].field_512 > !arg2:
                            revert with 0, 17
                        holderInfo[address(msg.sender)].field_512 += arg2
                        holderInfo[address(msg.sender)].field_256++
                        stor[(2 * holderInfo[address(msg.sender)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'holderInfo', 208)))].field_0 = block.timestamp
                        stor[(2 * holderInfo[address(msg.sender)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'holderInfo', 208)))].field_256 = arg2
                        if arg2 and sellTax > -1 / arg2:
                            revert with 0, 17
                        if block.timestamp < stor211:
                            revert with 0, 17
                        if block.timestamp - stor211 >= 24 * 3600:
                            if arg2 < arg2 * sellTax / 10000:
                                revert with 0, 17
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not rewardPoolAddress:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)] < arg2 * sellTax / 10000:
                                revert with 0, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)] -= arg2 * sellTax / 10000
                            if balanceOf[stor202] > !(arg2 * sellTax / 10000):
                                revert with 0, 17
                            balanceOf[stor202] += arg2 * sellTax / 10000
                            emit Transfer((arg2 * sellTax / 10000), msg.sender, rewardPoolAddress);
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)] < arg2 - (arg2 * sellTax / 10000):
                                revert with 0, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * sellTax / 10000)
                            if balanceOf[arg1] > !(arg2 - (arg2 * sellTax / 10000)):
                                revert with 0, 17
                            balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * sellTax / 10000)
                            emit Transfer((arg2 - (arg2 * sellTax / 10000)), msg.sender, arg1);
                        else:
                            if arg2 * sellTax / 10000 and 2 > -1 / arg2 * sellTax / 10000:
                                revert with 0, 17
                            if arg2 < 2 * arg2 * sellTax / 10000:
                                revert with 0, 17
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not rewardPoolAddress:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)] < 2 * arg2 * sellTax / 10000:
                                revert with 0, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)] -= 2 * arg2 * sellTax / 10000
                            if balanceOf[stor202] > !(2 * arg2 * sellTax / 10000):
                                revert with 0, 17
                            balanceOf[stor202] += 2 * arg2 * sellTax / 10000
                            emit Transfer((2 * arg2 * sellTax / 10000), msg.sender, rewardPoolAddress);
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)] < arg2 - (2 * arg2 * sellTax / 10000):
                                revert with 0, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (2 * arg2 * sellTax / 10000)
                            if balanceOf[arg1] > !(arg2 - (2 * arg2 * sellTax / 10000)):
                                revert with 0, 17
                            balanceOf[arg1] = balanceOf[arg1] + arg2 - (2 * arg2 * sellTax / 10000)
                            emit Transfer((arg2 - (2 * arg2 * sellTax / 10000)), msg.sender, arg1);
            else:
                if not msg.sender:
                    if stor209 != arg1:
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
                    else:
                        if stor207[address(msg.sender)]:
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
                        else:
                            mem[0] = msg.sender
                            mem[32] = 208
                            if holderInfo[address(msg.sender)].field_256 < 1:
                                revert with 0, 17
                            idx = stor1[sha3(mem[0 len 64])] - 1
                            while idx:
                                if holderInfo[address(msg.sender)].field_256 < 1:
                                    revert with 0, 17
                                mem[32] = 208
                                if idx >= holderInfo[address(msg.sender)].field_256:
                                    revert with 0, 50
                                mem[0] = sha3(address(msg.sender), 208) + 1
                                if block.timestamp < stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'holderInfo', 208)))].field_0:
                                    revert with 0, 17
                                if block.timestamp - stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'holderInfo', 208)))].field_0 > 24 * 3600:
                                    if idx >= holderInfo[address(msg.sender)].field_256:
                                        revert with 0, 50
                                    if holderInfo[address(msg.sender)].field_512 < stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'holderInfo', 208)))].field_256:
                                        revert with 0, 17
                                    holderInfo[address(msg.sender)].field_512 -= stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'holderInfo', 208)))].field_256
                                    if idx < holderInfo[address(msg.sender)].field_256 - 1:
                                        if holderInfo[address(msg.sender)].field_256 - 1 >= holderInfo[address(msg.sender)].field_256:
                                            revert with 0, 50
                                        if idx >= holderInfo[address(msg.sender)].field_256:
                                            revert with 0, 50
                                        stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'holderInfo', 208)))].field_0 = stor[(2 * holderInfo[address(msg.sender)].field_256 - 1) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'holderInfo', 208)))].field_0
                                        stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'holderInfo', 208)))].field_256 = stor[(2 * holderInfo[address(msg.sender)].field_256 - 1) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'holderInfo', 208)))].field_256
                                    mem[32] = 208
                                    if not holderInfo[address(msg.sender)].field_256:
                                        revert with 0, 49
                                    mem[0] = sha3(address(msg.sender), 208) + 1
                                    stor[(2 * holderInfo[address(msg.sender)].field_256 - 1) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'holderInfo', 208)))].field_0 = 0
                                    stor[(2 * holderInfo[address(msg.sender)].field_256 - 1) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'holderInfo', 208)))].field_256 = 0
                                    holderInfo[address(msg.sender)].field_256--
                                if not idx:
                                    revert with 0, 17
                                idx = idx - 1
                                continue 
                            if holderInfo[address(msg.sender)].field_512 > !arg2:
                                revert with 0, 17
                            if holderInfo[address(msg.sender)].field_512 + arg2 > stor210:
                                revert with 0, 'Too many tokens sold'
                            if holderInfo[address(msg.sender)].field_512 > !arg2:
                                revert with 0, 17
                            holderInfo[address(msg.sender)].field_512 += arg2
                            holderInfo[address(msg.sender)].field_256++
                            stor[(2 * holderInfo[address(msg.sender)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'holderInfo', 208)))].field_0 = block.timestamp
                            stor[(2 * holderInfo[address(msg.sender)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'holderInfo', 208)))].field_256 = arg2
                            if arg2 and sellTax > -1 / arg2:
                                revert with 0, 17
                            if block.timestamp < stor211:
                                revert with 0, 17
                            if block.timestamp - stor211 >= 24 * 3600:
                                if arg2 < arg2 * sellTax / 10000:
                                    revert with 0, 17
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not rewardPoolAddress:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < arg2 * sellTax / 10000:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)] -= arg2 * sellTax / 10000
                                if balanceOf[stor202] > !(arg2 * sellTax / 10000):
                                    revert with 0, 17
                                balanceOf[stor202] += arg2 * sellTax / 10000
                                emit Transfer((arg2 * sellTax / 10000), msg.sender, rewardPoolAddress);
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < arg2 - (arg2 * sellTax / 10000):
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * sellTax / 10000)
                                if balanceOf[arg1] > !(arg2 - (arg2 * sellTax / 10000)):
                                    revert with 0, 17
                                balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * sellTax / 10000)
                                emit Transfer((arg2 - (arg2 * sellTax / 10000)), msg.sender, arg1);
                            else:
                                if arg2 * sellTax / 10000 and 2 > -1 / arg2 * sellTax / 10000:
                                    revert with 0, 17
                                if arg2 < 2 * arg2 * sellTax / 10000:
                                    revert with 0, 17
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not rewardPoolAddress:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < 2 * arg2 * sellTax / 10000:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)] -= 2 * arg2 * sellTax / 10000
                                if balanceOf[stor202] > !(2 * arg2 * sellTax / 10000):
                                    revert with 0, 17
                                balanceOf[stor202] += 2 * arg2 * sellTax / 10000
                                emit Transfer((2 * arg2 * sellTax / 10000), msg.sender, rewardPoolAddress);
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < arg2 - (2 * arg2 * sellTax / 10000):
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (2 * arg2 * sellTax / 10000)
                                if balanceOf[arg1] > !(arg2 - (2 * arg2 * sellTax / 10000)):
                                    revert with 0, 17
                                balanceOf[arg1] = balanceOf[arg1] + arg2 - (2 * arg2 * sellTax / 10000)
                                emit Transfer((arg2 - (2 * arg2 * sellTax / 10000)), msg.sender, arg1);
                else:
                    if sub_24aaab3aAddress == arg1:
                        if stor209 != arg1:
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
                        else:
                            if stor207[address(msg.sender)]:
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
                            else:
                                mem[0] = msg.sender
                                mem[32] = 208
                                if holderInfo[address(msg.sender)].field_256 < 1:
                                    revert with 0, 17
                                idx = stor1[sha3(mem[0 len 64])] - 1
                                while idx:
                                    if holderInfo[address(msg.sender)].field_256 < 1:
                                        revert with 0, 17
                                    mem[32] = 208
                                    if idx >= holderInfo[address(msg.sender)].field_256:
                                        revert with 0, 50
                                    mem[0] = sha3(address(msg.sender), 208) + 1
                                    if block.timestamp < stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'holderInfo', 208)))].field_0:
                                        revert with 0, 17
                                    if block.timestamp - stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'holderInfo', 208)))].field_0 > 24 * 3600:
                                        if idx >= holderInfo[address(msg.sender)].field_256:
                                            revert with 0, 50
                                        if holderInfo[address(msg.sender)].field_512 < stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'holderInfo', 208)))].field_256:
                                            revert with 0, 17
                                        holderInfo[address(msg.sender)].field_512 -= stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'holderInfo', 208)))].field_256
                                        if idx < holderInfo[address(msg.sender)].field_256 - 1:
                                            if holderInfo[address(msg.sender)].field_256 - 1 >= holderInfo[address(msg.sender)].field_256:
                                                revert with 0, 50
                                            if idx >= holderInfo[address(msg.sender)].field_256:
                                                revert with 0, 50
                                            stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'holderInfo', 208)))].field_0 = stor[(2 * holderInfo[address(msg.sender)].field_256 - 1) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'holderInfo', 208)))].field_0
                                            stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'holderInfo', 208)))].field_256 = stor[(2 * holderInfo[address(msg.sender)].field_256 - 1) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'holderInfo', 208)))].field_256
                                        mem[32] = 208
                                        if not holderInfo[address(msg.sender)].field_256:
                                            revert with 0, 49
                                        mem[0] = sha3(address(msg.sender), 208) + 1
                                        stor[(2 * holderInfo[address(msg.sender)].field_256 - 1) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'holderInfo', 208)))].field_0 = 0
                                        stor[(2 * holderInfo[address(msg.sender)].field_256 - 1) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'holderInfo', 208)))].field_256 = 0
                                        holderInfo[address(msg.sender)].field_256--
                                    if not idx:
                                        revert with 0, 17
                                    idx = idx - 1
                                    continue 
                                if holderInfo[address(msg.sender)].field_512 > !arg2:
                                    revert with 0, 17
                                if holderInfo[address(msg.sender)].field_512 + arg2 > stor210:
                                    revert with 0, 'Too many tokens sold'
                                if holderInfo[address(msg.sender)].field_512 > !arg2:
                                    revert with 0, 17
                                holderInfo[address(msg.sender)].field_512 += arg2
                                holderInfo[address(msg.sender)].field_256++
                                stor[(2 * holderInfo[address(msg.sender)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'holderInfo', 208)))].field_0 = block.timestamp
                                stor[(2 * holderInfo[address(msg.sender)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'holderInfo', 208)))].field_256 = arg2
                                if arg2 and sellTax > -1 / arg2:
                                    revert with 0, 17
                                if block.timestamp < stor211:
                                    revert with 0, 17
                                if block.timestamp - stor211 >= 24 * 3600:
                                    if arg2 < arg2 * sellTax / 10000:
                                        revert with 0, 17
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not rewardPoolAddress:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)] < arg2 * sellTax / 10000:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)] -= arg2 * sellTax / 10000
                                    if balanceOf[stor202] > !(arg2 * sellTax / 10000):
                                        revert with 0, 17
                                    balanceOf[stor202] += arg2 * sellTax / 10000
                                    emit Transfer((arg2 * sellTax / 10000), msg.sender, rewardPoolAddress);
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)] < arg2 - (arg2 * sellTax / 10000):
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * sellTax / 10000)
                                    if balanceOf[arg1] > !(arg2 - (arg2 * sellTax / 10000)):
                                        revert with 0, 17
                                    balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * sellTax / 10000)
                                    emit Transfer((arg2 - (arg2 * sellTax / 10000)), msg.sender, arg1);
                                else:
                                    if arg2 * sellTax / 10000 and 2 > -1 / arg2 * sellTax / 10000:
                                        revert with 0, 17
                                    if arg2 < 2 * arg2 * sellTax / 10000:
                                        revert with 0, 17
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not rewardPoolAddress:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)] < 2 * arg2 * sellTax / 10000:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)] -= 2 * arg2 * sellTax / 10000
                                    if balanceOf[stor202] > !(2 * arg2 * sellTax / 10000):
                                        revert with 0, 17
                                    balanceOf[stor202] += 2 * arg2 * sellTax / 10000
                                    emit Transfer((2 * arg2 * sellTax / 10000), msg.sender, rewardPoolAddress);
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)] < arg2 - (2 * arg2 * sellTax / 10000):
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (2 * arg2 * sellTax / 10000)
                                    if balanceOf[arg1] > !(arg2 - (2 * arg2 * sellTax / 10000)):
                                        revert with 0, 17
                                    balanceOf[arg1] = balanceOf[arg1] + arg2 - (2 * arg2 * sellTax / 10000)
                                    emit Transfer((arg2 - (2 * arg2 * sellTax / 10000)), msg.sender, arg1);
                    else:
                        if arg2 and sub_8124f7ac > -1 / arg2:
                            revert with 0, 17
                        if arg2 < arg2 * sub_8124f7ac / 10000:
                            revert with 0, 17
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not rewardPoolAddress:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(msg.sender)] < arg2 * sub_8124f7ac / 10000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(msg.sender)] -= arg2 * sub_8124f7ac / 10000
                        if balanceOf[stor202] > !(arg2 * sub_8124f7ac / 10000):
                            revert with 0, 17
                        balanceOf[stor202] += arg2 * sub_8124f7ac / 10000
                        emit Transfer((arg2 * sub_8124f7ac / 10000), msg.sender, rewardPoolAddress);
                        if stor209 != arg1:
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)] < arg2 - (arg2 * sub_8124f7ac / 10000):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * sub_8124f7ac / 10000)
                            if balanceOf[arg1] > !(arg2 - (arg2 * sub_8124f7ac / 10000)):
                                revert with 0, 17
                            balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * sub_8124f7ac / 10000)
                            emit Transfer((arg2 - (arg2 * sub_8124f7ac / 10000)), msg.sender, arg1);
                        else:
                            if stor207[address(msg.sender)]:
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < arg2 - (arg2 * sub_8124f7ac / 10000):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * sub_8124f7ac / 10000)
                                if balanceOf[arg1] > !(arg2 - (arg2 * sub_8124f7ac / 10000)):
                                    revert with 0, 17
                                balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * sub_8124f7ac / 10000)
                                emit Transfer((arg2 - (arg2 * sub_8124f7ac / 10000)), msg.sender, arg1);
                            else:
                                mem[0] = msg.sender
                                mem[32] = 208
                                if holderInfo[address(msg.sender)].field_256 < 1:
                                    revert with 0, 17
                                idx = stor1[sha3(mem[0 len 64])] - 1
                                while idx:
                                    if holderInfo[address(msg.sender)].field_256 < 1:
                                        revert with 0, 17
                                    mem[32] = 208
                                    if idx >= holderInfo[address(msg.sender)].field_256:
                                        revert with 0, 50
                                    mem[0] = sha3(address(msg.sender), 208) + 1
                                    if block.timestamp < stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'holderInfo', 208)))].field_0:
                                        revert with 0, 17
                                    if block.timestamp - stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'holderInfo', 208)))].field_0 > 24 * 3600:
                                        if idx >= holderInfo[address(msg.sender)].field_256:
                                            revert with 0, 50
                                        if holderInfo[address(msg.sender)].field_512 < stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'holderInfo', 208)))].field_256:
                                            revert with 0, 17
                                        holderInfo[address(msg.sender)].field_512 -= stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'holderInfo', 208)))].field_256
                                        if idx < holderInfo[address(msg.sender)].field_256 - 1:
                                            if holderInfo[address(msg.sender)].field_256 - 1 >= holderInfo[address(msg.sender)].field_256:
                                                revert with 0, 50
                                            if idx >= holderInfo[address(msg.sender)].field_256:
                                                revert with 0, 50
                                            stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'holderInfo', 208)))].field_0 = stor[(2 * holderInfo[address(msg.sender)].field_256 - 1) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'holderInfo', 208)))].field_0
                                            stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'holderInfo', 208)))].field_256 = stor[(2 * holderInfo[address(msg.sender)].field_256 - 1) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'holderInfo', 208)))].field_256
                                        mem[32] = 208
                                        if not holderInfo[address(msg.sender)].field_256:
                                            revert with 0, 49
                                        mem[0] = sha3(address(msg.sender), 208) + 1
                                        stor[(2 * holderInfo[address(msg.sender)].field_256 - 1) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'holderInfo', 208)))].field_0 = 0
                                        stor[(2 * holderInfo[address(msg.sender)].field_256 - 1) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'holderInfo', 208)))].field_256 = 0
                                        holderInfo[address(msg.sender)].field_256--
                                    if not idx:
                                        revert with 0, 17
                                    idx = idx - 1
                                    continue 
                                if holderInfo[address(msg.sender)].field_512 > !(arg2 - (arg2 * sub_8124f7ac / 10000)):
                                    revert with 0, 17
                                if holderInfo[address(msg.sender)].field_512 + arg2 - (arg2 * sub_8124f7ac / 10000) > stor210:
                                    revert with 0, 'Too many tokens sold'
                                if holderInfo[address(msg.sender)].field_512 > !(arg2 - (arg2 * sub_8124f7ac / 10000)):
                                    revert with 0, 17
                                holderInfo[address(msg.sender)].field_512 = holderInfo[address(msg.sender)].field_512 + arg2 - (arg2 * sub_8124f7ac / 10000)
                                holderInfo[address(msg.sender)].field_256++
                                stor[(2 * holderInfo[address(msg.sender)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'holderInfo', 208)))].field_0 = block.timestamp
                                stor[(2 * holderInfo[address(msg.sender)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'holderInfo', 208)))].field_256 = arg2 - (arg2 * sub_8124f7ac / 10000)
                                if arg2 - (arg2 * sub_8124f7ac / 10000) and sellTax > -1 / arg2 - (arg2 * sub_8124f7ac / 10000):
                                    revert with 0, 17
                                if block.timestamp < stor211:
                                    revert with 0, 17
                                if block.timestamp - stor211 >= 24 * 3600:
                                    if arg2 - (arg2 * sub_8124f7ac / 10000) < (arg2 * sellTax) - (arg2 * sub_8124f7ac / 10000 * sellTax) / 10000:
                                        revert with 0, 17
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not rewardPoolAddress:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)] < (arg2 * sellTax) - (arg2 * sub_8124f7ac / 10000 * sellTax) / 10000:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)] -= (arg2 * sellTax) - (arg2 * sub_8124f7ac / 10000 * sellTax) / 10000
                                    if balanceOf[stor202] > !((arg2 * sellTax) - (arg2 * sub_8124f7ac / 10000 * sellTax) / 10000):
                                        revert with 0, 17
                                    balanceOf[stor202] += (arg2 * sellTax) - (arg2 * sub_8124f7ac / 10000 * sellTax) / 10000
                                    emit Transfer(((arg2 * sellTax) - (arg2 * sub_8124f7ac / 10000 * sellTax) / 10000), msg.sender, rewardPoolAddress);
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)] < arg2 - (arg2 * sub_8124f7ac / 10000) - ((arg2 * sellTax) - (arg2 * sub_8124f7ac / 10000 * sellTax) / 10000):
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * sub_8124f7ac / 10000) + ((arg2 * sellTax) - (arg2 * sub_8124f7ac / 10000 * sellTax) / 10000)
                                    if balanceOf[arg1] > !(arg2 - (arg2 * sub_8124f7ac / 10000) - ((arg2 * sellTax) - (arg2 * sub_8124f7ac / 10000 * sellTax) / 10000)):
                                        revert with 0, 17
                                    balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * sub_8124f7ac / 10000) - ((arg2 * sellTax) - (arg2 * sub_8124f7ac / 10000 * sellTax) / 10000)
                                    emit Transfer((arg2 - (arg2 * sub_8124f7ac / 10000) - ((arg2 * sellTax) - (arg2 * sub_8124f7ac / 10000 * sellTax) / 10000)), msg.sender, arg1);
                                else:
                                    if (arg2 * sellTax) - (arg2 * sub_8124f7ac / 10000 * sellTax) / 10000 and 2 > -1 / (arg2 * sellTax) - (arg2 * sub_8124f7ac / 10000 * sellTax) / 10000:
                                        revert with 0, 17
                                    if arg2 - (arg2 * sub_8124f7ac / 10000) < 2 * (arg2 * sellTax) - (arg2 * sub_8124f7ac / 10000 * sellTax) / 10000:
                                        revert with 0, 17
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not rewardPoolAddress:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)] < 2 * (arg2 * sellTax) - (arg2 * sub_8124f7ac / 10000 * sellTax) / 10000:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)] -= 2 * (arg2 * sellTax) - (arg2 * sub_8124f7ac / 10000 * sellTax) / 10000
                                    if balanceOf[stor202] > !(2 * (arg2 * sellTax) - (arg2 * sub_8124f7ac / 10000 * sellTax) / 10000):
                                        revert with 0, 17
                                    balanceOf[stor202] += 2 * (arg2 * sellTax) - (arg2 * sub_8124f7ac / 10000 * sellTax) / 10000
                                    emit Transfer((2 * (arg2 * sellTax) - (arg2 * sub_8124f7ac / 10000 * sellTax) / 10000), msg.sender, rewardPoolAddress);
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)] < arg2 - (arg2 * sub_8124f7ac / 10000) - (2 * (arg2 * sellTax) - (arg2 * sub_8124f7ac / 10000 * sellTax) / 10000):
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * sub_8124f7ac / 10000) + (2 * (arg2 * sellTax) - (arg2 * sub_8124f7ac / 10000 * sellTax) / 10000)
                                    if balanceOf[arg1] > !(arg2 - (arg2 * sub_8124f7ac / 10000) - (2 * (arg2 * sellTax) - (arg2 * sub_8124f7ac / 10000 * sellTax) / 10000)):
                                        revert with 0, 17
                                    balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * sub_8124f7ac / 10000) - (2 * (arg2 * sellTax) - (arg2 * sub_8124f7ac / 10000 * sellTax) / 10000)
                                    emit Transfer((arg2 - (arg2 * sub_8124f7ac / 10000) - (2 * (arg2 * sellTax) - (arg2 * sub_8124f7ac / 10000 * sellTax) / 10000)), msg.sender, arg1);
    return 1
}



}
