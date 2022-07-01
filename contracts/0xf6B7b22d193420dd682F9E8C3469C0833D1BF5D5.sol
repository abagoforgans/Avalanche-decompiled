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
uint8 stor151;
address devWalletAddress;
address rewardPoolAddress;
address treasuryAddress;
uint256 sub_8124f7ac;
mapping of uint8 stor205;
uint256 sellTax;
mapping of uint8 stor207;
address sub_40c397daAddress;
uint256 sub_0036ce98;
uint256 launchTime;
address sub_24aaab3aAddress;

function sub_0036ce98(?) payable {
    return sub_0036ce98
}

function totalSupply() payable {
    return totalSupply
}

function sub_24aaab3a(?) payable {
    return sub_24aaab3aAddress
}

function sub_40c397da(?) payable {
    return sub_40c397daAddress
}

function paused() payable {
    return bool(stor151)
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

function launchTime() payable {
    return launchTime
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
    launchTime = arg1
}

function pause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor151:
        revert with 0, 'Pausable: paused'
    stor151 = 1
    emit Paused(msg.sender);
}

function unpause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor151:
        revert with 0, 'Pausable: not paused'
    stor151 = 0
    emit Unpaused(msg.sender);
}

function sub_76c621e9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_24aaab3aAddress = address(arg1)
}

function setLiquidityPairAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_40c397daAddress = arg1
}

function sub_8293f633(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor207[address(arg1)] = uint8(bool(arg2))
}

function sub_b01a1ca6(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor205[address(arg1)] = uint8(bool(arg2))
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

function getSales(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if holderInfo[address(arg1)].field_256 > test266151307():
        revert with 0, 65
    if holderInfo[address(arg1)].field_256:
        mem[128 len 32 * holderInfo[address(arg1)].field_256] = call.data[calldata.size len 32 * holderInfo[address(arg1)].field_256]
    if holderInfo[address(arg1)].field_256 > test266151307():
        revert with 0, 65
    mem[(32 * holderInfo[address(arg1)].field_256) + 128] = holderInfo[address(arg1)].field_256
    if holderInfo[address(arg1)].field_256:
        mem[(32 * holderInfo[address(arg1)].field_256) + 160 len 32 * holderInfo[address(arg1)].field_256] = call.data[calldata.size len 32 * holderInfo[address(arg1)].field_256]
    idx = 0
    while idx < holderInfo[address(arg1)].field_256:
        if idx >= holderInfo[address(arg1)].field_256:
            revert with 0, 50
        if idx >= holderInfo[address(arg1)].field_256:
            revert with 0, 50
        mem[(32 * idx) + 128] = stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_0
        if idx >= holderInfo[address(arg1)].field_256:
            revert with 0, 50
        if idx >= mem[(32 * holderInfo[address(arg1)].field_256) + 128]:
            revert with 0, 50
        mem[(32 * idx) + (32 * holderInfo[address(arg1)].field_256) + 160] = stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_256
        if idx == -1:
            revert with 0, 17
        mem[0] = arg1
        mem[32] = 208
        idx = idx + 1
        continue 
    mem[(64 * holderInfo[address(arg1)].field_256) + 160] = 64
    mem[(64 * holderInfo[address(arg1)].field_256) + 224] = holderInfo[address(arg1)].field_256
    mem[(64 * holderInfo[address(arg1)].field_256) + 256 len 32 * holderInfo[address(arg1)].field_256] = mem[128 len 32 * holderInfo[address(arg1)].field_256]
    mem[(64 * holderInfo[address(arg1)].field_256) + 192] = (32 * holderInfo[address(arg1)].field_256) + 96
    mem[(98 * holderInfo[address(arg1)].field_256) + 256] = mem[(32 * holderInfo[address(arg1)].field_256) + 128]
    mem[(98 * holderInfo[address(arg1)].field_256) + 288 len 32 * mem[(32 * holderInfo[address(arg1)].field_256) + 128]] = mem[(32 * holderInfo[address(arg1)].field_256) + 160 len 32 * mem[(32 * holderInfo[address(arg1)].field_256) + 128]]
    return memory
      from (64 * holderInfo[address(arg1)].field_256) + 160
       len (161 * holderInfo[address(arg1)].field_256) + (32 * mem[(32 * holderInfo[address(arg1)].field_256) + 128]) + 128
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
                mem[128] = 256 * Mask(248, 0, stor54.length.field_8)
        else:
            if bool(stor54.length) == stor54.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor54.length.field_1 % 128:
                if 31 < stor54.length.field_1 % 128:
                    mem[128] = uint256(stor54.field_0)
                    idx = 128
                    s = 0
                    while stor54.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor54[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor54.length), data=mem[128 len ceil32(uint255(stor54.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor54.length.field_8)
        mem[ceil32(uint255(stor54.length) * 0.5) + 192 len ceil32(uint255(stor54.length) * 0.5)] = mem[128 len ceil32(uint255(stor54.length) * 0.5)]
        if ceil32(uint255(stor54.length) * 0.5) > uint255(stor54.length) * 0.5:
            mem[ceil32(uint255(stor54.length) * 0.5) + (uint255(stor54.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor54.length), data=mem[128 len ceil32(uint255(stor54.length) * 0.5)], mem[(2 * ceil32(uint255(stor54.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor54.length) * 0.5)]), 
    if bool(stor54.length) == stor54.length.field_1 % 128 < 32:
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
                return Array(len=stor54.length % 128, data=mem[128 len ceil32(stor54.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor54.length.field_8)
    else:
        if bool(stor54.length) == stor54.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor54.length.field_1 % 128:
            if 31 < stor54.length.field_1 % 128:
                mem[128] = uint256(stor54.field_0)
                idx = 128
                s = 0
                while stor54.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor54[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor54.length % 128, data=mem[128 len ceil32(stor54.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor54.length.field_8)
    mem[ceil32(stor54.length.field_1 % 128) + 192 len ceil32(stor54.length.field_1 % 128)] = mem[128 len ceil32(stor54.length.field_1 % 128)]
    if ceil32(stor54.length.field_1 % 128) > stor54.length.field_1 % 128:
        mem[ceil32(stor54.length.field_1 % 128) + stor54.length.field_1 % 128 + 192] = 0
    return Array(len=stor54.length % 128, data=mem[128 len ceil32(stor54.length.field_1 % 128)], mem[(2 * ceil32(stor54.length.field_1 % 128)) + 192 len 2 * ceil32(stor54.length.field_1 % 128)]), 
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
                mem[128] = 256 * Mask(248, 0, stor55.length.field_8)
        else:
            if bool(stor55.length) == stor55.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor55.length.field_1 % 128:
                if 31 < stor55.length.field_1 % 128:
                    mem[128] = uint256(stor55.field_0)
                    idx = 128
                    s = 0
                    while stor55.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor55[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor55.length), data=mem[128 len ceil32(uint255(stor55.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor55.length.field_8)
        mem[ceil32(uint255(stor55.length) * 0.5) + 192 len ceil32(uint255(stor55.length) * 0.5)] = mem[128 len ceil32(uint255(stor55.length) * 0.5)]
        if ceil32(uint255(stor55.length) * 0.5) > uint255(stor55.length) * 0.5:
            mem[ceil32(uint255(stor55.length) * 0.5) + (uint255(stor55.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor55.length), data=mem[128 len ceil32(uint255(stor55.length) * 0.5)], mem[(2 * ceil32(uint255(stor55.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor55.length) * 0.5)]), 
    if bool(stor55.length) == stor55.length.field_1 % 128 < 32:
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
                return Array(len=stor55.length % 128, data=mem[128 len ceil32(stor55.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor55.length.field_8)
    else:
        if bool(stor55.length) == stor55.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor55.length.field_1 % 128:
            if 31 < stor55.length.field_1 % 128:
                mem[128] = uint256(stor55.field_0)
                idx = 128
                s = 0
                while stor55.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor55[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor55.length % 128, data=mem[128 len ceil32(stor55.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor55.length.field_8)
    mem[ceil32(stor55.length.field_1 % 128) + 192 len ceil32(stor55.length.field_1 % 128)] = mem[128 len ceil32(stor55.length.field_1 % 128)]
    if ceil32(stor55.length.field_1 % 128) > stor55.length.field_1 % 128:
        mem[ceil32(stor55.length.field_1 % 128) + stor55.length.field_1 % 128 + 192] = 0
    return Array(len=stor55.length % 128, data=mem[128 len ceil32(stor55.length.field_1 % 128)], mem[(2 * ceil32(stor55.length.field_1 % 128)) + 192 len 2 * ceil32(stor55.length.field_1 % 128)]), 
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if stor151:
        revert with 0, 'Pausable: paused'
    if stor205[address(msg.sender)]:
        if sub_40c397daAddress != arg1:
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
            return 1
        if holderInfo[address(msg.sender)].field_256:
            if holderInfo[address(msg.sender)].field_256 < 1:
                revert with 0, 17
            if var48001 < 1:
                revert with 0, 17
            if var52003 >= holderInfo[address(msg.sender)].field_256:
                revert with 0, 50
            if block.timestamp < var56002:
                revert with 0, 17
            if var60001 <= 24 * 3600:
                if not var64001:
                    revert with 0, 17
                if var72001 < 1:
                    revert with 0, 17
                if var76003 >= holderInfo[address(msg.sender)].field_256:
                    revert with 0, 50
                if block.timestamp < var80002:
                    revert with 0, 17
                # nil
            else:
                if var62002 >= holderInfo[address(msg.sender)].field_256:
                    revert with 0, 50
                if var66001 < var66002:
                    revert with 0, 17
                stor[var70003] = var70001
                if var70006 >= var70005:
                    if not holderInfo[address(msg.sender)].field_256:
                        revert with 0, 49
                    stor[(2 * var74001 - 1) + sha3(var74002)] = 0
                    stor[(2 * var74001 - 1) + sha3(var74002) + 1] = 0
                    stor[var74002] = var74001 - 1
                    if not var78001:
                        revert with 0, 17
                    # nil
                else:
                    if var72001 >= holderInfo[address(msg.sender)].field_256:
                        revert with 0, 50
                    if var74004 >= holderInfo[address(msg.sender)].field_256:
                        revert with 0, 50
                    stor[(2 * var76001) + sha3(var76002)] = stor[var76003]
                    stor[(2 * var76001) + sha3(var76002) + 1] = stor1[var76003]
                    if not holderInfo[address(msg.sender)].field_256:
                        revert with 0, 49
                    stor[(2 * var80001 - 1) + sha3(var80002)] = 0
                    stor[(2 * var80001 - 1) + sha3(var80002) + 1] = 0
                    stor[var80002] = var80001 - 1
                    # nil
        else:
            if holderInfo[address(msg.sender)].field_512 > !arg2:
                revert with 0, 17
            if holderInfo[address(msg.sender)].field_512 + arg2 > sub_0036ce98:
                revert with 0, 'Too many tokens sold'
            if holderInfo[address(msg.sender)].field_512 > !arg2:
                revert with 0, 17
            holderInfo[address(msg.sender)].field_512 += arg2
            holderInfo[address(msg.sender)].field_256++
            stor[(2 * holderInfo[address(msg.sender)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'holderInfo', 208)))].field_0 = block.timestamp
            stor[(2 * holderInfo[address(msg.sender)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'holderInfo', 208)))].field_256 = arg2
            if arg2 and sellTax > -1 / arg2:
                revert with 0, 17
            if block.timestamp < launchTime:
                revert with 0, 17
            if block.timestamp - launchTime >= 24 * 3600:
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
            return 1
    else:
        if sub_40c397daAddress == arg1:
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
                return 1
            if holderInfo[address(msg.sender)].field_256:
                if holderInfo[address(msg.sender)].field_256 < 1:
                    revert with 0, 17
                if var49001 < 1:
                    revert with 0, 17
                if var53003 >= holderInfo[address(msg.sender)].field_256:
                    revert with 0, 50
                if block.timestamp < var57002:
                    revert with 0, 17
                if var61001 <= 24 * 3600:
                    if not var65001:
                        revert with 0, 17
                    if var73001 < 1:
                        revert with 0, 17
                    if var77003 >= holderInfo[address(msg.sender)].field_256:
                        revert with 0, 50
                    if block.timestamp < var81002:
                        revert with 0, 17
                    # nil
                else:
                    if var63002 >= holderInfo[address(msg.sender)].field_256:
                        revert with 0, 50
                    if var67001 < var67002:
                        revert with 0, 17
                    stor[var71003] = var71001
                    if var71006 >= var71005:
                        if not holderInfo[address(msg.sender)].field_256:
                            revert with 0, 49
                        stor[(2 * var75001 - 1) + sha3(var75002)] = 0
                        stor[(2 * var75001 - 1) + sha3(var75002) + 1] = 0
                        stor[var75002] = var75001 - 1
                        if not var79001:
                            revert with 0, 17
                        # nil
                    else:
                        if var73001 >= holderInfo[address(msg.sender)].field_256:
                            revert with 0, 50
                        if var75004 >= holderInfo[address(msg.sender)].field_256:
                            revert with 0, 50
                        stor[(2 * var77001) + sha3(var77002)] = stor[var77003]
                        stor[(2 * var77001) + sha3(var77002) + 1] = stor1[var77003]
                        if not holderInfo[address(msg.sender)].field_256:
                            revert with 0, 49
                        stor[(2 * var81001 - 1) + sha3(var81002)] = 0
                        stor[(2 * var81001 - 1) + sha3(var81002) + 1] = 0
                        stor[var81002] = var81001 - 1
                        # nil
            else:
                if holderInfo[address(msg.sender)].field_512 > !arg2:
                    revert with 0, 17
                if holderInfo[address(msg.sender)].field_512 + arg2 > sub_0036ce98:
                    revert with 0, 'Too many tokens sold'
                if holderInfo[address(msg.sender)].field_512 > !arg2:
                    revert with 0, 17
                holderInfo[address(msg.sender)].field_512 += arg2
                holderInfo[address(msg.sender)].field_256++
                stor[(2 * holderInfo[address(msg.sender)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'holderInfo', 208)))].field_0 = block.timestamp
                stor[(2 * holderInfo[address(msg.sender)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'holderInfo', 208)))].field_256 = arg2
                if arg2 and sellTax > -1 / arg2:
                    revert with 0, 17
                if block.timestamp < launchTime:
                    revert with 0, 17
                if block.timestamp - launchTime >= 24 * 3600:
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
                return 1
        else:
            if sub_40c397daAddress == msg.sender:
                if sub_40c397daAddress != arg1:
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
                    return 1
                if holderInfo[address(msg.sender)].field_256:
                    if holderInfo[address(msg.sender)].field_256 < 1:
                        revert with 0, 17
                    if var50001 < 1:
                        revert with 0, 17
                    if var54003 >= holderInfo[address(msg.sender)].field_256:
                        revert with 0, 50
                    if block.timestamp < var58002:
                        revert with 0, 17
                    if var62001 <= 24 * 3600:
                        if not var66001:
                            revert with 0, 17
                        if var74001 < 1:
                            revert with 0, 17
                        if var78003 >= holderInfo[address(msg.sender)].field_256:
                            revert with 0, 50
                        if block.timestamp < var82002:
                            revert with 0, 17
                        # nil
                    else:
                        if var64002 >= holderInfo[address(msg.sender)].field_256:
                            revert with 0, 50
                        if var68001 < var68002:
                            revert with 0, 17
                        stor[var72003] = var72001
                        if var72006 >= var72005:
                            if not holderInfo[address(msg.sender)].field_256:
                                revert with 0, 49
                            stor[(2 * var76001 - 1) + sha3(var76002)] = 0
                            stor[(2 * var76001 - 1) + sha3(var76002) + 1] = 0
                            stor[var76002] = var76001 - 1
                            if not var80001:
                                revert with 0, 17
                            # nil
                        else:
                            if var74001 >= holderInfo[address(msg.sender)].field_256:
                                revert with 0, 50
                            if var76004 >= holderInfo[address(msg.sender)].field_256:
                                revert with 0, 50
                            stor[(2 * var78001) + sha3(var78002)] = stor[var78003]
                            stor[(2 * var78001) + sha3(var78002) + 1] = stor1[var78003]
                            if not holderInfo[address(msg.sender)].field_256:
                                revert with 0, 49
                            stor[(2 * var82001 - 1) + sha3(var82002)] = 0
                            stor[(2 * var82001 - 1) + sha3(var82002) + 1] = 0
                            stor[var82002] = var82001 - 1
                            # nil
                else:
                    if holderInfo[address(msg.sender)].field_512 > !arg2:
                        revert with 0, 17
                    if holderInfo[address(msg.sender)].field_512 + arg2 > sub_0036ce98:
                        revert with 0, 'Too many tokens sold'
                    if holderInfo[address(msg.sender)].field_512 > !arg2:
                        revert with 0, 17
                    holderInfo[address(msg.sender)].field_512 += arg2
                    holderInfo[address(msg.sender)].field_256++
                    stor[(2 * holderInfo[address(msg.sender)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'holderInfo', 208)))].field_0 = block.timestamp
                    stor[(2 * holderInfo[address(msg.sender)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'holderInfo', 208)))].field_256 = arg2
                    if arg2 and sellTax > -1 / arg2:
                        revert with 0, 17
                    if block.timestamp < launchTime:
                        revert with 0, 17
                    if block.timestamp - launchTime >= 24 * 3600:
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
                    return 1
            else:
                if not msg.sender:
                    if sub_40c397daAddress != arg1:
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
                        return 1
                    if holderInfo[address(msg.sender)].field_256:
                        if holderInfo[address(msg.sender)].field_256 < 1:
                            revert with 0, 17
                        if var51001 < 1:
                            revert with 0, 17
                        if var55003 >= holderInfo[address(msg.sender)].field_256:
                            revert with 0, 50
                        if block.timestamp < var59002:
                            revert with 0, 17
                        if var63001 <= 24 * 3600:
                            if not var67001:
                                revert with 0, 17
                            if var75001 < 1:
                                revert with 0, 17
                            if var79003 >= holderInfo[address(msg.sender)].field_256:
                                revert with 0, 50
                            if block.timestamp < var83002:
                                revert with 0, 17
                            # nil
                        else:
                            if var65002 >= holderInfo[address(msg.sender)].field_256:
                                revert with 0, 50
                            if var69001 < var69002:
                                revert with 0, 17
                            stor[var73003] = var73001
                            if var73006 >= var73005:
                                if not holderInfo[address(msg.sender)].field_256:
                                    revert with 0, 49
                                stor[(2 * var77001 - 1) + sha3(var77002)] = 0
                                stor[(2 * var77001 - 1) + sha3(var77002) + 1] = 0
                                stor[var77002] = var77001 - 1
                                if not var81001:
                                    revert with 0, 17
                                # nil
                            else:
                                if var75001 >= holderInfo[address(msg.sender)].field_256:
                                    revert with 0, 50
                                if var77004 >= holderInfo[address(msg.sender)].field_256:
                                    revert with 0, 50
                                stor[(2 * var79001) + sha3(var79002)] = stor[var79003]
                                stor[(2 * var79001) + sha3(var79002) + 1] = stor1[var79003]
                                if not holderInfo[address(msg.sender)].field_256:
                                    revert with 0, 49
                                stor[(2 * var83001 - 1) + sha3(var83002)] = 0
                                stor[(2 * var83001 - 1) + sha3(var83002) + 1] = 0
                                stor[var83002] = var83001 - 1
                                # nil
                    else:
                        if holderInfo[address(msg.sender)].field_512 > !arg2:
                            revert with 0, 17
                        if holderInfo[address(msg.sender)].field_512 + arg2 > sub_0036ce98:
                            revert with 0, 'Too many tokens sold'
                        if holderInfo[address(msg.sender)].field_512 > !arg2:
                            revert with 0, 17
                        holderInfo[address(msg.sender)].field_512 += arg2
                        holderInfo[address(msg.sender)].field_256++
                        stor[(2 * holderInfo[address(msg.sender)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'holderInfo', 208)))].field_0 = block.timestamp
                        stor[(2 * holderInfo[address(msg.sender)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'holderInfo', 208)))].field_256 = arg2
                        if arg2 and sellTax > -1 / arg2:
                            revert with 0, 17
                        if block.timestamp < launchTime:
                            revert with 0, 17
                        if block.timestamp - launchTime >= 24 * 3600:
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
                        return 1
                else:
                    if sub_24aaab3aAddress == arg1:
                        if sub_40c397daAddress != arg1:
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
                            return 1
                        if holderInfo[address(msg.sender)].field_256:
                            if holderInfo[address(msg.sender)].field_256 < 1:
                                revert with 0, 17
                            if var52001 < 1:
                                revert with 0, 17
                            if var56003 >= holderInfo[address(msg.sender)].field_256:
                                revert with 0, 50
                            if block.timestamp < var60002:
                                revert with 0, 17
                            if var64001 <= 24 * 3600:
                                if not var68001:
                                    revert with 0, 17
                                if var76001 < 1:
                                    revert with 0, 17
                                if var80003 >= holderInfo[address(msg.sender)].field_256:
                                    revert with 0, 50
                                if block.timestamp < var84002:
                                    revert with 0, 17
                                # nil
                            else:
                                if var66002 >= holderInfo[address(msg.sender)].field_256:
                                    revert with 0, 50
                                if var70001 < var70002:
                                    revert with 0, 17
                                stor[var74003] = var74001
                                if var74006 >= var74005:
                                    if not holderInfo[address(msg.sender)].field_256:
                                        revert with 0, 49
                                    stor[(2 * var78001 - 1) + sha3(var78002)] = 0
                                    stor[(2 * var78001 - 1) + sha3(var78002) + 1] = 0
                                    stor[var78002] = var78001 - 1
                                    if not var82001:
                                        revert with 0, 17
                                    # nil
                                else:
                                    if var76001 >= holderInfo[address(msg.sender)].field_256:
                                        revert with 0, 50
                                    if var78004 >= holderInfo[address(msg.sender)].field_256:
                                        revert with 0, 50
                                    stor[(2 * var80001) + sha3(var80002)] = stor[var80003]
                                    stor[(2 * var80001) + sha3(var80002) + 1] = stor1[var80003]
                                    if not holderInfo[address(msg.sender)].field_256:
                                        revert with 0, 49
                                    stor[(2 * var84001 - 1) + sha3(var84002)] = 0
                                    stor[(2 * var84001 - 1) + sha3(var84002) + 1] = 0
                                    stor[var84002] = var84001 - 1
                                    # nil
                        else:
                            if holderInfo[address(msg.sender)].field_512 > !arg2:
                                revert with 0, 17
                            if holderInfo[address(msg.sender)].field_512 + arg2 > sub_0036ce98:
                                revert with 0, 'Too many tokens sold'
                            if holderInfo[address(msg.sender)].field_512 > !arg2:
                                revert with 0, 17
                            holderInfo[address(msg.sender)].field_512 += arg2
                            holderInfo[address(msg.sender)].field_256++
                            stor[(2 * holderInfo[address(msg.sender)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'holderInfo', 208)))].field_0 = block.timestamp
                            stor[(2 * holderInfo[address(msg.sender)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'holderInfo', 208)))].field_256 = arg2
                            if arg2 and sellTax > -1 / arg2:
                                revert with 0, 17
                            if block.timestamp < launchTime:
                                revert with 0, 17
                            if block.timestamp - launchTime >= 24 * 3600:
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
                            return 1
                    else:
                        if treasuryAddress == arg1:
                            if sub_40c397daAddress != arg1:
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
                                return 1
                            if holderInfo[address(msg.sender)].field_256:
                                if holderInfo[address(msg.sender)].field_256 < 1:
                                    revert with 0, 17
                                if var53001 < 1:
                                    revert with 0, 17
                                if var57003 >= holderInfo[address(msg.sender)].field_256:
                                    revert with 0, 50
                                if block.timestamp < var61002:
                                    revert with 0, 17
                                if var65001 <= 24 * 3600:
                                    if not var69001:
                                        revert with 0, 17
                                    if var77001 < 1:
                                        revert with 0, 17
                                    if var81003 >= holderInfo[address(msg.sender)].field_256:
                                        revert with 0, 50
                                    if block.timestamp < var85002:
                                        revert with 0, 17
                                    # nil
                                else:
                                    if var67002 >= holderInfo[address(msg.sender)].field_256:
                                        revert with 0, 50
                                    if var71001 < var71002:
                                        revert with 0, 17
                                    stor[var75003] = var75001
                                    if var75006 >= var75005:
                                        if not holderInfo[address(msg.sender)].field_256:
                                            revert with 0, 49
                                        stor[(2 * var79001 - 1) + sha3(var79002)] = 0
                                        stor[(2 * var79001 - 1) + sha3(var79002) + 1] = 0
                                        stor[var79002] = var79001 - 1
                                        if not var83001:
                                            revert with 0, 17
                                        # nil
                                    else:
                                        if var77001 >= holderInfo[address(msg.sender)].field_256:
                                            revert with 0, 50
                                        if var79004 >= holderInfo[address(msg.sender)].field_256:
                                            revert with 0, 50
                                        stor[(2 * var81001) + sha3(var81002)] = stor[var81003]
                                        stor[(2 * var81001) + sha3(var81002) + 1] = stor1[var81003]
                                        if not holderInfo[address(msg.sender)].field_256:
                                            revert with 0, 49
                                        stor[(2 * var85001 - 1) + sha3(var85002)] = 0
                                        stor[(2 * var85001 - 1) + sha3(var85002) + 1] = 0
                                        stor[var85002] = var85001 - 1
                                        # nil
                            else:
                                if holderInfo[address(msg.sender)].field_512 > !arg2:
                                    revert with 0, 17
                                if holderInfo[address(msg.sender)].field_512 + arg2 > sub_0036ce98:
                                    revert with 0, 'Too many tokens sold'
                                if holderInfo[address(msg.sender)].field_512 > !arg2:
                                    revert with 0, 17
                                holderInfo[address(msg.sender)].field_512 += arg2
                                holderInfo[address(msg.sender)].field_256++
                                stor[(2 * holderInfo[address(msg.sender)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'holderInfo', 208)))].field_0 = block.timestamp
                                stor[(2 * holderInfo[address(msg.sender)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'holderInfo', 208)))].field_256 = arg2
                                if arg2 and sellTax > -1 / arg2:
                                    revert with 0, 17
                                if block.timestamp < launchTime:
                                    revert with 0, 17
                                if block.timestamp - launchTime >= 24 * 3600:
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
                                return 1
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
                            if sub_40c397daAddress != arg1:
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
                                return 1
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
                                return 1
                            if holderInfo[address(msg.sender)].field_256:
                                if holderInfo[address(msg.sender)].field_256 < 1:
                                    revert with 0, 17
                                if var73001 < 1:
                                    revert with 0, 17
                                if var77003 >= holderInfo[address(msg.sender)].field_256:
                                    revert with 0, 50
                                if block.timestamp < var81002:
                                    revert with 0, 17
                                if var85001 <= 24 * 3600:
                                    if not var89001:
                                        revert with 0, 17
                                    if var97001 < 1:
                                        revert with 0, 17
                                    if var101003 >= holderInfo[address(msg.sender)].field_256:
                                        revert with 0, 50
                                    if block.timestamp < var105002:
                                        revert with 0, 17
                                    # nil
                                else:
                                    if var87002 >= holderInfo[address(msg.sender)].field_256:
                                        revert with 0, 50
                                    if var91001 < var91002:
                                        revert with 0, 17
                                    stor[var95003] = var95001
                                    if var95006 >= var95005:
                                        if not holderInfo[address(msg.sender)].field_256:
                                            revert with 0, 49
                                        stor[(2 * var99001 - 1) + sha3(var99002)] = 0
                                        stor[(2 * var99001 - 1) + sha3(var99002) + 1] = 0
                                        stor[var99002] = var99001 - 1
                                        if not var103001:
                                            revert with 0, 17
                                        # nil
                                    else:
                                        if var97001 >= holderInfo[address(msg.sender)].field_256:
                                            revert with 0, 50
                                        if var99004 >= holderInfo[address(msg.sender)].field_256:
                                            revert with 0, 50
                                        stor[(2 * var101001) + sha3(var101002)] = stor[var101003]
                                        stor[(2 * var101001) + sha3(var101002) + 1] = stor1[var101003]
                                        if not holderInfo[address(msg.sender)].field_256:
                                            revert with 0, 49
                                        stor[(2 * var105001 - 1) + sha3(var105002)] = 0
                                        stor[(2 * var105001 - 1) + sha3(var105002) + 1] = 0
                                        stor[var105002] = var105001 - 1
                                        # nil
                            else:
                                if holderInfo[address(msg.sender)].field_512 > !(arg2 - (arg2 * sub_8124f7ac / 10000)):
                                    revert with 0, 17
                                if holderInfo[address(msg.sender)].field_512 + arg2 - (arg2 * sub_8124f7ac / 10000) > sub_0036ce98:
                                    revert with 0, 'Too many tokens sold'
                                if holderInfo[address(msg.sender)].field_512 > !(arg2 - (arg2 * sub_8124f7ac / 10000)):
                                    revert with 0, 17
                                holderInfo[address(msg.sender)].field_512 = holderInfo[address(msg.sender)].field_512 + arg2 - (arg2 * sub_8124f7ac / 10000)
                                holderInfo[address(msg.sender)].field_256++
                                stor[(2 * holderInfo[address(msg.sender)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'holderInfo', 208)))].field_0 = block.timestamp
                                stor[(2 * holderInfo[address(msg.sender)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'holderInfo', 208)))].field_256 = arg2 - (arg2 * sub_8124f7ac / 10000)
                                if arg2 - (arg2 * sub_8124f7ac / 10000) and sellTax > -1 / arg2 - (arg2 * sub_8124f7ac / 10000):
                                    revert with 0, 17
                                if block.timestamp < launchTime:
                                    revert with 0, 17
                                if block.timestamp - launchTime >= 24 * 3600:
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

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(arg1)][address(msg.sender)] == -1:
        if stor151:
            revert with 0, 'Pausable: paused'
        if stor205[address(arg1)]:
            if sub_40c397daAddress != arg2:
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
                return 1
            if holderInfo[address(arg1)].field_256:
                if holderInfo[address(arg1)].field_256 < 1:
                    revert with 0, 17
                if var54001 < 1:
                    revert with 0, 17
                if var58003 >= holderInfo[address(arg1)].field_256:
                    revert with 0, 50
                if block.timestamp < var62002:
                    revert with 0, 17
                if var66001 <= 24 * 3600:
                    if not var70001:
                        revert with 0, 17
                    if var78001 < 1:
                        revert with 0, 17
                    if var82003 >= holderInfo[address(arg1)].field_256:
                        revert with 0, 50
                    if block.timestamp < var86002:
                        revert with 0, 17
                    # nil
                else:
                    if var68002 >= holderInfo[address(arg1)].field_256:
                        revert with 0, 50
                    if var72001 < var72002:
                        revert with 0, 17
                    stor[var76003] = var76001
                    if var76006 >= var76005:
                        if not holderInfo[address(arg1)].field_256:
                            revert with 0, 49
                        stor[(2 * var80001 - 1) + sha3(var80002)] = 0
                        stor[(2 * var80001 - 1) + sha3(var80002) + 1] = 0
                        stor[var80002] = var80001 - 1
                        if not var84001:
                            revert with 0, 17
                        # nil
                    else:
                        if var78001 >= holderInfo[address(arg1)].field_256:
                            revert with 0, 50
                        if var80004 >= holderInfo[address(arg1)].field_256:
                            revert with 0, 50
                        stor[(2 * var82001) + sha3(var82002)] = stor[var82003]
                        stor[(2 * var82001) + sha3(var82002) + 1] = stor1[var82003]
                        if not holderInfo[address(arg1)].field_256:
                            revert with 0, 49
                        stor[(2 * var86001 - 1) + sha3(var86002)] = 0
                        stor[(2 * var86001 - 1) + sha3(var86002) + 1] = 0
                        stor[var86002] = var86001 - 1
                        # nil
            else:
                if holderInfo[address(arg1)].field_512 > !arg3:
                    revert with 0, 17
                if holderInfo[address(arg1)].field_512 + arg3 > sub_0036ce98:
                    revert with 0, 'Too many tokens sold'
                if holderInfo[address(arg1)].field_512 > !arg3:
                    revert with 0, 17
                holderInfo[address(arg1)].field_512 += arg3
                holderInfo[address(arg1)].field_256++
                stor[(2 * holderInfo[address(arg1)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_0 = block.timestamp
                stor[(2 * holderInfo[address(arg1)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_256 = arg3
                if arg3 and sellTax > -1 / arg3:
                    revert with 0, 17
                if block.timestamp < launchTime:
                    revert with 0, 17
                if block.timestamp - launchTime >= 24 * 3600:
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
                return 1
        else:
            if sub_40c397daAddress == arg2:
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
                    return 1
                if holderInfo[address(arg1)].field_256:
                    if holderInfo[address(arg1)].field_256 < 1:
                        revert with 0, 17
                    if var55001 < 1:
                        revert with 0, 17
                    if var59003 >= holderInfo[address(arg1)].field_256:
                        revert with 0, 50
                    if block.timestamp < var63002:
                        revert with 0, 17
                    if var67001 <= 24 * 3600:
                        if not var71001:
                            revert with 0, 17
                        if var79001 < 1:
                            revert with 0, 17
                        if var83003 >= holderInfo[address(arg1)].field_256:
                            revert with 0, 50
                        if block.timestamp < var87002:
                            revert with 0, 17
                        # nil
                    else:
                        if var69002 >= holderInfo[address(arg1)].field_256:
                            revert with 0, 50
                        if var73001 < var73002:
                            revert with 0, 17
                        stor[var77003] = var77001
                        if var77006 >= var77005:
                            if not holderInfo[address(arg1)].field_256:
                                revert with 0, 49
                            stor[(2 * var81001 - 1) + sha3(var81002)] = 0
                            stor[(2 * var81001 - 1) + sha3(var81002) + 1] = 0
                            stor[var81002] = var81001 - 1
                            if not var85001:
                                revert with 0, 17
                            # nil
                        else:
                            if var79001 >= holderInfo[address(arg1)].field_256:
                                revert with 0, 50
                            if var81004 >= holderInfo[address(arg1)].field_256:
                                revert with 0, 50
                            stor[(2 * var83001) + sha3(var83002)] = stor[var83003]
                            stor[(2 * var83001) + sha3(var83002) + 1] = stor1[var83003]
                            if not holderInfo[address(arg1)].field_256:
                                revert with 0, 49
                            stor[(2 * var87001 - 1) + sha3(var87002)] = 0
                            stor[(2 * var87001 - 1) + sha3(var87002) + 1] = 0
                            stor[var87002] = var87001 - 1
                            # nil
                else:
                    if holderInfo[address(arg1)].field_512 > !arg3:
                        revert with 0, 17
                    if holderInfo[address(arg1)].field_512 + arg3 > sub_0036ce98:
                        revert with 0, 'Too many tokens sold'
                    if holderInfo[address(arg1)].field_512 > !arg3:
                        revert with 0, 17
                    holderInfo[address(arg1)].field_512 += arg3
                    holderInfo[address(arg1)].field_256++
                    stor[(2 * holderInfo[address(arg1)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_0 = block.timestamp
                    stor[(2 * holderInfo[address(arg1)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_256 = arg3
                    if arg3 and sellTax > -1 / arg3:
                        revert with 0, 17
                    if block.timestamp < launchTime:
                        revert with 0, 17
                    if block.timestamp - launchTime >= 24 * 3600:
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
                    return 1
            else:
                if sub_40c397daAddress == arg1:
                    if sub_40c397daAddress != arg2:
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
                        return 1
                    if holderInfo[address(arg1)].field_256:
                        if holderInfo[address(arg1)].field_256 < 1:
                            revert with 0, 17
                        if var56001 < 1:
                            revert with 0, 17
                        if var60003 >= holderInfo[address(arg1)].field_256:
                            revert with 0, 50
                        if block.timestamp < var64002:
                            revert with 0, 17
                        if var68001 <= 24 * 3600:
                            if not var72001:
                                revert with 0, 17
                            if var80001 < 1:
                                revert with 0, 17
                            if var84003 >= holderInfo[address(arg1)].field_256:
                                revert with 0, 50
                            if block.timestamp < var88002:
                                revert with 0, 17
                            # nil
                        else:
                            if var70002 >= holderInfo[address(arg1)].field_256:
                                revert with 0, 50
                            if var74001 < var74002:
                                revert with 0, 17
                            stor[var78003] = var78001
                            if var78006 >= var78005:
                                if not holderInfo[address(arg1)].field_256:
                                    revert with 0, 49
                                stor[(2 * var82001 - 1) + sha3(var82002)] = 0
                                stor[(2 * var82001 - 1) + sha3(var82002) + 1] = 0
                                stor[var82002] = var82001 - 1
                                if not var86001:
                                    revert with 0, 17
                                # nil
                            else:
                                if var80001 >= holderInfo[address(arg1)].field_256:
                                    revert with 0, 50
                                if var82004 >= holderInfo[address(arg1)].field_256:
                                    revert with 0, 50
                                stor[(2 * var84001) + sha3(var84002)] = stor[var84003]
                                stor[(2 * var84001) + sha3(var84002) + 1] = stor1[var84003]
                                if not holderInfo[address(arg1)].field_256:
                                    revert with 0, 49
                                stor[(2 * var88001 - 1) + sha3(var88002)] = 0
                                stor[(2 * var88001 - 1) + sha3(var88002) + 1] = 0
                                stor[var88002] = var88001 - 1
                                # nil
                    else:
                        if holderInfo[address(arg1)].field_512 > !arg3:
                            revert with 0, 17
                        if holderInfo[address(arg1)].field_512 + arg3 > sub_0036ce98:
                            revert with 0, 'Too many tokens sold'
                        if holderInfo[address(arg1)].field_512 > !arg3:
                            revert with 0, 17
                        holderInfo[address(arg1)].field_512 += arg3
                        holderInfo[address(arg1)].field_256++
                        stor[(2 * holderInfo[address(arg1)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_0 = block.timestamp
                        stor[(2 * holderInfo[address(arg1)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_256 = arg3
                        if arg3 and sellTax > -1 / arg3:
                            revert with 0, 17
                        if block.timestamp < launchTime:
                            revert with 0, 17
                        if block.timestamp - launchTime >= 24 * 3600:
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
                        return 1
                else:
                    if not arg1:
                        if sub_40c397daAddress != arg2:
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
                            return 1
                        if holderInfo[address(arg1)].field_256:
                            if holderInfo[address(arg1)].field_256 < 1:
                                revert with 0, 17
                            if var57001 < 1:
                                revert with 0, 17
                            if var61003 >= holderInfo[address(arg1)].field_256:
                                revert with 0, 50
                            if block.timestamp < var65002:
                                revert with 0, 17
                            if var69001 <= 24 * 3600:
                                if not var73001:
                                    revert with 0, 17
                                if var81001 < 1:
                                    revert with 0, 17
                                if var85003 >= holderInfo[address(arg1)].field_256:
                                    revert with 0, 50
                                if block.timestamp < var89002:
                                    revert with 0, 17
                                # nil
                            else:
                                if var71002 >= holderInfo[address(arg1)].field_256:
                                    revert with 0, 50
                                if var75001 < var75002:
                                    revert with 0, 17
                                stor[var79003] = var79001
                                if var79006 >= var79005:
                                    if not holderInfo[address(arg1)].field_256:
                                        revert with 0, 49
                                    stor[(2 * var83001 - 1) + sha3(var83002)] = 0
                                    stor[(2 * var83001 - 1) + sha3(var83002) + 1] = 0
                                    stor[var83002] = var83001 - 1
                                    if not var87001:
                                        revert with 0, 17
                                    # nil
                                else:
                                    if var81001 >= holderInfo[address(arg1)].field_256:
                                        revert with 0, 50
                                    if var83004 >= holderInfo[address(arg1)].field_256:
                                        revert with 0, 50
                                    stor[(2 * var85001) + sha3(var85002)] = stor[var85003]
                                    stor[(2 * var85001) + sha3(var85002) + 1] = stor1[var85003]
                                    if not holderInfo[address(arg1)].field_256:
                                        revert with 0, 49
                                    stor[(2 * var89001 - 1) + sha3(var89002)] = 0
                                    stor[(2 * var89001 - 1) + sha3(var89002) + 1] = 0
                                    stor[var89002] = var89001 - 1
                                    # nil
                        else:
                            if holderInfo[address(arg1)].field_512 > !arg3:
                                revert with 0, 17
                            if holderInfo[address(arg1)].field_512 + arg3 > sub_0036ce98:
                                revert with 0, 'Too many tokens sold'
                            if holderInfo[address(arg1)].field_512 > !arg3:
                                revert with 0, 17
                            holderInfo[address(arg1)].field_512 += arg3
                            holderInfo[address(arg1)].field_256++
                            stor[(2 * holderInfo[address(arg1)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_0 = block.timestamp
                            stor[(2 * holderInfo[address(arg1)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_256 = arg3
                            if arg3 and sellTax > -1 / arg3:
                                revert with 0, 17
                            if block.timestamp < launchTime:
                                revert with 0, 17
                            if block.timestamp - launchTime >= 24 * 3600:
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
                            return 1
                    else:
                        if sub_24aaab3aAddress == arg2:
                            if sub_40c397daAddress != arg2:
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
                                return 1
                            if holderInfo[address(arg1)].field_256:
                                if holderInfo[address(arg1)].field_256 < 1:
                                    revert with 0, 17
                                if var58001 < 1:
                                    revert with 0, 17
                                if var62003 >= holderInfo[address(arg1)].field_256:
                                    revert with 0, 50
                                if block.timestamp < var66002:
                                    revert with 0, 17
                                if var70001 <= 24 * 3600:
                                    if not var74001:
                                        revert with 0, 17
                                    if var82001 < 1:
                                        revert with 0, 17
                                    if var86003 >= holderInfo[address(arg1)].field_256:
                                        revert with 0, 50
                                    if block.timestamp < var90002:
                                        revert with 0, 17
                                    # nil
                                else:
                                    if var72002 >= holderInfo[address(arg1)].field_256:
                                        revert with 0, 50
                                    if var76001 < var76002:
                                        revert with 0, 17
                                    stor[var80003] = var80001
                                    if var80006 >= var80005:
                                        if not holderInfo[address(arg1)].field_256:
                                            revert with 0, 49
                                        stor[(2 * var84001 - 1) + sha3(var84002)] = 0
                                        stor[(2 * var84001 - 1) + sha3(var84002) + 1] = 0
                                        stor[var84002] = var84001 - 1
                                        if not var88001:
                                            revert with 0, 17
                                        # nil
                                    else:
                                        if var82001 >= holderInfo[address(arg1)].field_256:
                                            revert with 0, 50
                                        if var84004 >= holderInfo[address(arg1)].field_256:
                                            revert with 0, 50
                                        stor[(2 * var86001) + sha3(var86002)] = stor[var86003]
                                        stor[(2 * var86001) + sha3(var86002) + 1] = stor1[var86003]
                                        if not holderInfo[address(arg1)].field_256:
                                            revert with 0, 49
                                        stor[(2 * var90001 - 1) + sha3(var90002)] = 0
                                        stor[(2 * var90001 - 1) + sha3(var90002) + 1] = 0
                                        stor[var90002] = var90001 - 1
                                        # nil
                            else:
                                if holderInfo[address(arg1)].field_512 > !arg3:
                                    revert with 0, 17
                                if holderInfo[address(arg1)].field_512 + arg3 > sub_0036ce98:
                                    revert with 0, 'Too many tokens sold'
                                if holderInfo[address(arg1)].field_512 > !arg3:
                                    revert with 0, 17
                                holderInfo[address(arg1)].field_512 += arg3
                                holderInfo[address(arg1)].field_256++
                                stor[(2 * holderInfo[address(arg1)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_0 = block.timestamp
                                stor[(2 * holderInfo[address(arg1)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_256 = arg3
                                if arg3 and sellTax > -1 / arg3:
                                    revert with 0, 17
                                if block.timestamp < launchTime:
                                    revert with 0, 17
                                if block.timestamp - launchTime >= 24 * 3600:
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
                                return 1
                        else:
                            if treasuryAddress == arg2:
                                if sub_40c397daAddress != arg2:
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
                                    return 1
                                if holderInfo[address(arg1)].field_256:
                                    if holderInfo[address(arg1)].field_256 < 1:
                                        revert with 0, 17
                                    if var59001 < 1:
                                        revert with 0, 17
                                    if var63003 >= holderInfo[address(arg1)].field_256:
                                        revert with 0, 50
                                    if block.timestamp < var67002:
                                        revert with 0, 17
                                    if var71001 <= 24 * 3600:
                                        if not var75001:
                                            revert with 0, 17
                                        if var83001 < 1:
                                            revert with 0, 17
                                        if var87003 >= holderInfo[address(arg1)].field_256:
                                            revert with 0, 50
                                        if block.timestamp < var91002:
                                            revert with 0, 17
                                        # nil
                                    else:
                                        if var73002 >= holderInfo[address(arg1)].field_256:
                                            revert with 0, 50
                                        if var77001 < var77002:
                                            revert with 0, 17
                                        stor[var81003] = var81001
                                        if var81006 >= var81005:
                                            if not holderInfo[address(arg1)].field_256:
                                                revert with 0, 49
                                            stor[(2 * var85001 - 1) + sha3(var85002)] = 0
                                            stor[(2 * var85001 - 1) + sha3(var85002) + 1] = 0
                                            stor[var85002] = var85001 - 1
                                            if not var89001:
                                                revert with 0, 17
                                            # nil
                                        else:
                                            if var83001 >= holderInfo[address(arg1)].field_256:
                                                revert with 0, 50
                                            if var85004 >= holderInfo[address(arg1)].field_256:
                                                revert with 0, 50
                                            stor[(2 * var87001) + sha3(var87002)] = stor[var87003]
                                            stor[(2 * var87001) + sha3(var87002) + 1] = stor1[var87003]
                                            if not holderInfo[address(arg1)].field_256:
                                                revert with 0, 49
                                            stor[(2 * var91001 - 1) + sha3(var91002)] = 0
                                            stor[(2 * var91001 - 1) + sha3(var91002) + 1] = 0
                                            stor[var91002] = var91001 - 1
                                            # nil
                                else:
                                    if holderInfo[address(arg1)].field_512 > !arg3:
                                        revert with 0, 17
                                    if holderInfo[address(arg1)].field_512 + arg3 > sub_0036ce98:
                                        revert with 0, 'Too many tokens sold'
                                    if holderInfo[address(arg1)].field_512 > !arg3:
                                        revert with 0, 17
                                    holderInfo[address(arg1)].field_512 += arg3
                                    holderInfo[address(arg1)].field_256++
                                    stor[(2 * holderInfo[address(arg1)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_0 = block.timestamp
                                    stor[(2 * holderInfo[address(arg1)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_256 = arg3
                                    if arg3 and sellTax > -1 / arg3:
                                        revert with 0, 17
                                    if block.timestamp < launchTime:
                                        revert with 0, 17
                                    if block.timestamp - launchTime >= 24 * 3600:
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
                                    return 1
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
                                if sub_40c397daAddress != arg2:
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
                                    return 1
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
                                    return 1
                                if holderInfo[address(arg1)].field_256:
                                    if holderInfo[address(arg1)].field_256 < 1:
                                        revert with 0, 17
                                    if var79001 < 1:
                                        revert with 0, 17
                                    if var83003 >= holderInfo[address(arg1)].field_256:
                                        revert with 0, 50
                                    if block.timestamp < var87002:
                                        revert with 0, 17
                                    if var91001 <= 24 * 3600:
                                        if not var95001:
                                            revert with 0, 17
                                        if var103001 < 1:
                                            revert with 0, 17
                                        if var107003 >= holderInfo[address(arg1)].field_256:
                                            revert with 0, 50
                                        if block.timestamp < var111002:
                                            revert with 0, 17
                                        # nil
                                    else:
                                        if var93002 >= holderInfo[address(arg1)].field_256:
                                            revert with 0, 50
                                        if var97001 < var97002:
                                            revert with 0, 17
                                        stor[var101003] = var101001
                                        if var101006 >= var101005:
                                            if not holderInfo[address(arg1)].field_256:
                                                revert with 0, 49
                                            stor[(2 * var105001 - 1) + sha3(var105002)] = 0
                                            stor[(2 * var105001 - 1) + sha3(var105002) + 1] = 0
                                            stor[var105002] = var105001 - 1
                                            if not var109001:
                                                revert with 0, 17
                                            # nil
                                        else:
                                            if var103001 >= holderInfo[address(arg1)].field_256:
                                                revert with 0, 50
                                            if var105004 >= holderInfo[address(arg1)].field_256:
                                                revert with 0, 50
                                            stor[(2 * var107001) + sha3(var107002)] = stor[var107003]
                                            stor[(2 * var107001) + sha3(var107002) + 1] = stor1[var107003]
                                            if not holderInfo[address(arg1)].field_256:
                                                revert with 0, 49
                                            stor[(2 * var111001 - 1) + sha3(var111002)] = 0
                                            stor[(2 * var111001 - 1) + sha3(var111002) + 1] = 0
                                            stor[var111002] = var111001 - 1
                                            # nil
                                else:
                                    if holderInfo[address(arg1)].field_512 > !(arg3 - (arg3 * sub_8124f7ac / 10000)):
                                        revert with 0, 17
                                    if holderInfo[address(arg1)].field_512 + arg3 - (arg3 * sub_8124f7ac / 10000) > sub_0036ce98:
                                        revert with 0, 'Too many tokens sold'
                                    if holderInfo[address(arg1)].field_512 > !(arg3 - (arg3 * sub_8124f7ac / 10000)):
                                        revert with 0, 17
                                    holderInfo[address(arg1)].field_512 = holderInfo[address(arg1)].field_512 + arg3 - (arg3 * sub_8124f7ac / 10000)
                                    holderInfo[address(arg1)].field_256++
                                    stor[(2 * holderInfo[address(arg1)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_0 = block.timestamp
                                    stor[(2 * holderInfo[address(arg1)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_256 = arg3 - (arg3 * sub_8124f7ac / 10000)
                                    if arg3 - (arg3 * sub_8124f7ac / 10000) and sellTax > -1 / arg3 - (arg3 * sub_8124f7ac / 10000):
                                        revert with 0, 17
                                    if block.timestamp < launchTime:
                                        revert with 0, 17
                                    if block.timestamp - launchTime >= 24 * 3600:
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
    else:
        if allowance[address(arg1)][address(msg.sender)] < arg3:
            revert with 0, 'ERC20: insufficient allowance'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
        allowance[address(arg1)][address(msg.sender)] -= arg3
        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
        if stor151:
            revert with 0, 'Pausable: paused'
        if stor205[address(arg1)]:
            if sub_40c397daAddress != arg2:
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
                return 1
            if holderInfo[address(arg1)].field_256:
                if holderInfo[address(arg1)].field_256 < 1:
                    revert with 0, 17
                if var59001 < 1:
                    revert with 0, 17
                if var63003 >= holderInfo[address(arg1)].field_256:
                    revert with 0, 50
                if block.timestamp < var67002:
                    revert with 0, 17
                if var71001 <= 24 * 3600:
                    if not var75001:
                        revert with 0, 17
                    if var83001 < 1:
                        revert with 0, 17
                    if var87003 >= holderInfo[address(arg1)].field_256:
                        revert with 0, 50
                    if block.timestamp < var91002:
                        revert with 0, 17
                    # nil
                else:
                    if var73002 >= holderInfo[address(arg1)].field_256:
                        revert with 0, 50
                    if var77001 < var77002:
                        revert with 0, 17
                    stor[var81003] = var81001
                    if var81006 >= var81005:
                        if not holderInfo[address(arg1)].field_256:
                            revert with 0, 49
                        stor[(2 * var85001 - 1) + sha3(var85002)] = 0
                        stor[(2 * var85001 - 1) + sha3(var85002) + 1] = 0
                        stor[var85002] = var85001 - 1
                        if not var89001:
                            revert with 0, 17
                        # nil
                    else:
                        if var83001 >= holderInfo[address(arg1)].field_256:
                            revert with 0, 50
                        if var85004 >= holderInfo[address(arg1)].field_256:
                            revert with 0, 50
                        stor[(2 * var87001) + sha3(var87002)] = stor[var87003]
                        stor[(2 * var87001) + sha3(var87002) + 1] = stor1[var87003]
                        if not holderInfo[address(arg1)].field_256:
                            revert with 0, 49
                        stor[(2 * var91001 - 1) + sha3(var91002)] = 0
                        stor[(2 * var91001 - 1) + sha3(var91002) + 1] = 0
                        stor[var91002] = var91001 - 1
                        # nil
            else:
                if holderInfo[address(arg1)].field_512 > !arg3:
                    revert with 0, 17
                if holderInfo[address(arg1)].field_512 + arg3 > sub_0036ce98:
                    revert with 0, 'Too many tokens sold'
                if holderInfo[address(arg1)].field_512 > !arg3:
                    revert with 0, 17
                holderInfo[address(arg1)].field_512 += arg3
                holderInfo[address(arg1)].field_256++
                stor[(2 * holderInfo[address(arg1)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_0 = block.timestamp
                stor[(2 * holderInfo[address(arg1)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_256 = arg3
                if arg3 and sellTax > -1 / arg3:
                    revert with 0, 17
                if block.timestamp < launchTime:
                    revert with 0, 17
                if block.timestamp - launchTime >= 24 * 3600:
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
                return 1
        else:
            if sub_40c397daAddress == arg2:
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
                    return 1
                if holderInfo[address(arg1)].field_256:
                    if holderInfo[address(arg1)].field_256 < 1:
                        revert with 0, 17
                    if var60001 < 1:
                        revert with 0, 17
                    if var64003 >= holderInfo[address(arg1)].field_256:
                        revert with 0, 50
                    if block.timestamp < var68002:
                        revert with 0, 17
                    if var72001 <= 24 * 3600:
                        if not var76001:
                            revert with 0, 17
                        if var84001 < 1:
                            revert with 0, 17
                        if var88003 >= holderInfo[address(arg1)].field_256:
                            revert with 0, 50
                        if block.timestamp < var92002:
                            revert with 0, 17
                        # nil
                    else:
                        if var74002 >= holderInfo[address(arg1)].field_256:
                            revert with 0, 50
                        if var78001 < var78002:
                            revert with 0, 17
                        stor[var82003] = var82001
                        if var82006 >= var82005:
                            if not holderInfo[address(arg1)].field_256:
                                revert with 0, 49
                            stor[(2 * var86001 - 1) + sha3(var86002)] = 0
                            stor[(2 * var86001 - 1) + sha3(var86002) + 1] = 0
                            stor[var86002] = var86001 - 1
                            if not var90001:
                                revert with 0, 17
                            # nil
                        else:
                            if var84001 >= holderInfo[address(arg1)].field_256:
                                revert with 0, 50
                            if var86004 >= holderInfo[address(arg1)].field_256:
                                revert with 0, 50
                            stor[(2 * var88001) + sha3(var88002)] = stor[var88003]
                            stor[(2 * var88001) + sha3(var88002) + 1] = stor1[var88003]
                            if not holderInfo[address(arg1)].field_256:
                                revert with 0, 49
                            stor[(2 * var92001 - 1) + sha3(var92002)] = 0
                            stor[(2 * var92001 - 1) + sha3(var92002) + 1] = 0
                            stor[var92002] = var92001 - 1
                            # nil
                else:
                    if holderInfo[address(arg1)].field_512 > !arg3:
                        revert with 0, 17
                    if holderInfo[address(arg1)].field_512 + arg3 > sub_0036ce98:
                        revert with 0, 'Too many tokens sold'
                    if holderInfo[address(arg1)].field_512 > !arg3:
                        revert with 0, 17
                    holderInfo[address(arg1)].field_512 += arg3
                    holderInfo[address(arg1)].field_256++
                    stor[(2 * holderInfo[address(arg1)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_0 = block.timestamp
                    stor[(2 * holderInfo[address(arg1)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_256 = arg3
                    if arg3 and sellTax > -1 / arg3:
                        revert with 0, 17
                    if block.timestamp < launchTime:
                        revert with 0, 17
                    if block.timestamp - launchTime >= 24 * 3600:
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
                    return 1
            else:
                if sub_40c397daAddress == arg1:
                    if sub_40c397daAddress != arg2:
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
                        return 1
                    if holderInfo[address(arg1)].field_256:
                        if holderInfo[address(arg1)].field_256 < 1:
                            revert with 0, 17
                        if var61001 < 1:
                            revert with 0, 17
                        if var65003 >= holderInfo[address(arg1)].field_256:
                            revert with 0, 50
                        if block.timestamp < var69002:
                            revert with 0, 17
                        if var73001 <= 24 * 3600:
                            if not var77001:
                                revert with 0, 17
                            if var85001 < 1:
                                revert with 0, 17
                            if var89003 >= holderInfo[address(arg1)].field_256:
                                revert with 0, 50
                            if block.timestamp < var93002:
                                revert with 0, 17
                            # nil
                        else:
                            if var75002 >= holderInfo[address(arg1)].field_256:
                                revert with 0, 50
                            if var79001 < var79002:
                                revert with 0, 17
                            stor[var83003] = var83001
                            if var83006 >= var83005:
                                if not holderInfo[address(arg1)].field_256:
                                    revert with 0, 49
                                stor[(2 * var87001 - 1) + sha3(var87002)] = 0
                                stor[(2 * var87001 - 1) + sha3(var87002) + 1] = 0
                                stor[var87002] = var87001 - 1
                                if not var91001:
                                    revert with 0, 17
                                # nil
                            else:
                                if var85001 >= holderInfo[address(arg1)].field_256:
                                    revert with 0, 50
                                if var87004 >= holderInfo[address(arg1)].field_256:
                                    revert with 0, 50
                                stor[(2 * var89001) + sha3(var89002)] = stor[var89003]
                                stor[(2 * var89001) + sha3(var89002) + 1] = stor1[var89003]
                                if not holderInfo[address(arg1)].field_256:
                                    revert with 0, 49
                                stor[(2 * var93001 - 1) + sha3(var93002)] = 0
                                stor[(2 * var93001 - 1) + sha3(var93002) + 1] = 0
                                stor[var93002] = var93001 - 1
                                # nil
                    else:
                        if holderInfo[address(arg1)].field_512 > !arg3:
                            revert with 0, 17
                        if holderInfo[address(arg1)].field_512 + arg3 > sub_0036ce98:
                            revert with 0, 'Too many tokens sold'
                        if holderInfo[address(arg1)].field_512 > !arg3:
                            revert with 0, 17
                        holderInfo[address(arg1)].field_512 += arg3
                        holderInfo[address(arg1)].field_256++
                        stor[(2 * holderInfo[address(arg1)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_0 = block.timestamp
                        stor[(2 * holderInfo[address(arg1)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_256 = arg3
                        if arg3 and sellTax > -1 / arg3:
                            revert with 0, 17
                        if block.timestamp < launchTime:
                            revert with 0, 17
                        if block.timestamp - launchTime >= 24 * 3600:
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
                        return 1
                else:
                    if not arg1:
                        if sub_40c397daAddress != arg2:
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
                            return 1
                        if holderInfo[address(arg1)].field_256:
                            if holderInfo[address(arg1)].field_256 < 1:
                                revert with 0, 17
                            if var62001 < 1:
                                revert with 0, 17
                            if var66003 >= holderInfo[address(arg1)].field_256:
                                revert with 0, 50
                            if block.timestamp < var70002:
                                revert with 0, 17
                            if var74001 <= 24 * 3600:
                                if not var78001:
                                    revert with 0, 17
                                if var86001 < 1:
                                    revert with 0, 17
                                if var90003 >= holderInfo[address(arg1)].field_256:
                                    revert with 0, 50
                                if block.timestamp < var94002:
                                    revert with 0, 17
                                # nil
                            else:
                                if var76002 >= holderInfo[address(arg1)].field_256:
                                    revert with 0, 50
                                if var80001 < var80002:
                                    revert with 0, 17
                                stor[var84003] = var84001
                                if var84006 >= var84005:
                                    if not holderInfo[address(arg1)].field_256:
                                        revert with 0, 49
                                    stor[(2 * var88001 - 1) + sha3(var88002)] = 0
                                    stor[(2 * var88001 - 1) + sha3(var88002) + 1] = 0
                                    stor[var88002] = var88001 - 1
                                    if not var92001:
                                        revert with 0, 17
                                    # nil
                                else:
                                    if var86001 >= holderInfo[address(arg1)].field_256:
                                        revert with 0, 50
                                    if var88004 >= holderInfo[address(arg1)].field_256:
                                        revert with 0, 50
                                    stor[(2 * var90001) + sha3(var90002)] = stor[var90003]
                                    stor[(2 * var90001) + sha3(var90002) + 1] = stor1[var90003]
                                    if not holderInfo[address(arg1)].field_256:
                                        revert with 0, 49
                                    stor[(2 * var94001 - 1) + sha3(var94002)] = 0
                                    stor[(2 * var94001 - 1) + sha3(var94002) + 1] = 0
                                    stor[var94002] = var94001 - 1
                                    # nil
                        else:
                            if holderInfo[address(arg1)].field_512 > !arg3:
                                revert with 0, 17
                            if holderInfo[address(arg1)].field_512 + arg3 > sub_0036ce98:
                                revert with 0, 'Too many tokens sold'
                            if holderInfo[address(arg1)].field_512 > !arg3:
                                revert with 0, 17
                            holderInfo[address(arg1)].field_512 += arg3
                            holderInfo[address(arg1)].field_256++
                            stor[(2 * holderInfo[address(arg1)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_0 = block.timestamp
                            stor[(2 * holderInfo[address(arg1)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_256 = arg3
                            if arg3 and sellTax > -1 / arg3:
                                revert with 0, 17
                            if block.timestamp < launchTime:
                                revert with 0, 17
                            if block.timestamp - launchTime >= 24 * 3600:
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
                            return 1
                    else:
                        if sub_24aaab3aAddress == arg2:
                            if sub_40c397daAddress != arg2:
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
                                return 1
                            if holderInfo[address(arg1)].field_256:
                                if holderInfo[address(arg1)].field_256 < 1:
                                    revert with 0, 17
                                if var63001 < 1:
                                    revert with 0, 17
                                if var67003 >= holderInfo[address(arg1)].field_256:
                                    revert with 0, 50
                                if block.timestamp < var71002:
                                    revert with 0, 17
                                if var75001 <= 24 * 3600:
                                    if not var79001:
                                        revert with 0, 17
                                    if var87001 < 1:
                                        revert with 0, 17
                                    if var91003 >= holderInfo[address(arg1)].field_256:
                                        revert with 0, 50
                                    if block.timestamp < var95002:
                                        revert with 0, 17
                                    # nil
                                else:
                                    if var77002 >= holderInfo[address(arg1)].field_256:
                                        revert with 0, 50
                                    if var81001 < var81002:
                                        revert with 0, 17
                                    stor[var85003] = var85001
                                    if var85006 >= var85005:
                                        if not holderInfo[address(arg1)].field_256:
                                            revert with 0, 49
                                        stor[(2 * var89001 - 1) + sha3(var89002)] = 0
                                        stor[(2 * var89001 - 1) + sha3(var89002) + 1] = 0
                                        stor[var89002] = var89001 - 1
                                        if not var93001:
                                            revert with 0, 17
                                        # nil
                                    else:
                                        if var87001 >= holderInfo[address(arg1)].field_256:
                                            revert with 0, 50
                                        if var89004 >= holderInfo[address(arg1)].field_256:
                                            revert with 0, 50
                                        stor[(2 * var91001) + sha3(var91002)] = stor[var91003]
                                        stor[(2 * var91001) + sha3(var91002) + 1] = stor1[var91003]
                                        if not holderInfo[address(arg1)].field_256:
                                            revert with 0, 49
                                        stor[(2 * var95001 - 1) + sha3(var95002)] = 0
                                        stor[(2 * var95001 - 1) + sha3(var95002) + 1] = 0
                                        stor[var95002] = var95001 - 1
                                        # nil
                            else:
                                if holderInfo[address(arg1)].field_512 > !arg3:
                                    revert with 0, 17
                                if holderInfo[address(arg1)].field_512 + arg3 > sub_0036ce98:
                                    revert with 0, 'Too many tokens sold'
                                if holderInfo[address(arg1)].field_512 > !arg3:
                                    revert with 0, 17
                                holderInfo[address(arg1)].field_512 += arg3
                                holderInfo[address(arg1)].field_256++
                                stor[(2 * holderInfo[address(arg1)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_0 = block.timestamp
                                stor[(2 * holderInfo[address(arg1)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_256 = arg3
                                if arg3 and sellTax > -1 / arg3:
                                    revert with 0, 17
                                if block.timestamp < launchTime:
                                    revert with 0, 17
                                if block.timestamp - launchTime >= 24 * 3600:
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
                                return 1
                        else:
                            if treasuryAddress == arg2:
                                if sub_40c397daAddress != arg2:
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
                                    return 1
                                if holderInfo[address(arg1)].field_256:
                                    if holderInfo[address(arg1)].field_256 < 1:
                                        revert with 0, 17
                                    if var64001 < 1:
                                        revert with 0, 17
                                    if var68003 >= holderInfo[address(arg1)].field_256:
                                        revert with 0, 50
                                    if block.timestamp < var72002:
                                        revert with 0, 17
                                    if var76001 <= 24 * 3600:
                                        if not var80001:
                                            revert with 0, 17
                                        if var88001 < 1:
                                            revert with 0, 17
                                        if var92003 >= holderInfo[address(arg1)].field_256:
                                            revert with 0, 50
                                        if block.timestamp < var96002:
                                            revert with 0, 17
                                        # nil
                                    else:
                                        if var78002 >= holderInfo[address(arg1)].field_256:
                                            revert with 0, 50
                                        if var82001 < var82002:
                                            revert with 0, 17
                                        stor[var86003] = var86001
                                        if var86006 >= var86005:
                                            if not holderInfo[address(arg1)].field_256:
                                                revert with 0, 49
                                            stor[(2 * var90001 - 1) + sha3(var90002)] = 0
                                            stor[(2 * var90001 - 1) + sha3(var90002) + 1] = 0
                                            stor[var90002] = var90001 - 1
                                            if not var94001:
                                                revert with 0, 17
                                            # nil
                                        else:
                                            if var88001 >= holderInfo[address(arg1)].field_256:
                                                revert with 0, 50
                                            if var90004 >= holderInfo[address(arg1)].field_256:
                                                revert with 0, 50
                                            stor[(2 * var92001) + sha3(var92002)] = stor[var92003]
                                            stor[(2 * var92001) + sha3(var92002) + 1] = stor1[var92003]
                                            if not holderInfo[address(arg1)].field_256:
                                                revert with 0, 49
                                            stor[(2 * var96001 - 1) + sha3(var96002)] = 0
                                            stor[(2 * var96001 - 1) + sha3(var96002) + 1] = 0
                                            stor[var96002] = var96001 - 1
                                            # nil
                                else:
                                    if holderInfo[address(arg1)].field_512 > !arg3:
                                        revert with 0, 17
                                    if holderInfo[address(arg1)].field_512 + arg3 > sub_0036ce98:
                                        revert with 0, 'Too many tokens sold'
                                    if holderInfo[address(arg1)].field_512 > !arg3:
                                        revert with 0, 17
                                    holderInfo[address(arg1)].field_512 += arg3
                                    holderInfo[address(arg1)].field_256++
                                    stor[(2 * holderInfo[address(arg1)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_0 = block.timestamp
                                    stor[(2 * holderInfo[address(arg1)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_256 = arg3
                                    if arg3 and sellTax > -1 / arg3:
                                        revert with 0, 17
                                    if block.timestamp < launchTime:
                                        revert with 0, 17
                                    if block.timestamp - launchTime >= 24 * 3600:
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
                                    return 1
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
                                if sub_40c397daAddress != arg2:
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
                                    return 1
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
                                    return 1
                                if holderInfo[address(arg1)].field_256:
                                    if holderInfo[address(arg1)].field_256 < 1:
                                        revert with 0, 17
                                    if var84001 < 1:
                                        revert with 0, 17
                                    if var88003 >= holderInfo[address(arg1)].field_256:
                                        revert with 0, 50
                                    if block.timestamp < var92002:
                                        revert with 0, 17
                                    if var96001 <= 24 * 3600:
                                        if not var100001:
                                            revert with 0, 17
                                        if var108001 < 1:
                                            revert with 0, 17
                                        if var112003 >= holderInfo[address(arg1)].field_256:
                                            revert with 0, 50
                                        if block.timestamp < var116002:
                                            revert with 0, 17
                                        # nil
                                    else:
                                        if var98002 >= holderInfo[address(arg1)].field_256:
                                            revert with 0, 50
                                        if var102001 < var102002:
                                            revert with 0, 17
                                        stor[var106003] = var106001
                                        if var106006 >= var106005:
                                            if not holderInfo[address(arg1)].field_256:
                                                revert with 0, 49
                                            stor[(2 * var110001 - 1) + sha3(var110002)] = 0
                                            stor[(2 * var110001 - 1) + sha3(var110002) + 1] = 0
                                            stor[var110002] = var110001 - 1
                                            if not var114001:
                                                revert with 0, 17
                                            # nil
                                        else:
                                            if var108001 >= holderInfo[address(arg1)].field_256:
                                                revert with 0, 50
                                            if var110004 >= holderInfo[address(arg1)].field_256:
                                                revert with 0, 50
                                            stor[(2 * var112001) + sha3(var112002)] = stor[var112003]
                                            stor[(2 * var112001) + sha3(var112002) + 1] = stor1[var112003]
                                            if not holderInfo[address(arg1)].field_256:
                                                revert with 0, 49
                                            stor[(2 * var116001 - 1) + sha3(var116002)] = 0
                                            stor[(2 * var116001 - 1) + sha3(var116002) + 1] = 0
                                            stor[var116002] = var116001 - 1
                                            # nil
                                else:
                                    if holderInfo[address(arg1)].field_512 > !(arg3 - (arg3 * sub_8124f7ac / 10000)):
                                        revert with 0, 17
                                    if holderInfo[address(arg1)].field_512 + arg3 - (arg3 * sub_8124f7ac / 10000) > sub_0036ce98:
                                        revert with 0, 'Too many tokens sold'
                                    if holderInfo[address(arg1)].field_512 > !(arg3 - (arg3 * sub_8124f7ac / 10000)):
                                        revert with 0, 17
                                    holderInfo[address(arg1)].field_512 = holderInfo[address(arg1)].field_512 + arg3 - (arg3 * sub_8124f7ac / 10000)
                                    holderInfo[address(arg1)].field_256++
                                    stor[(2 * holderInfo[address(arg1)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_0 = block.timestamp
                                    stor[(2 * holderInfo[address(arg1)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderInfo', 208)))].field_256 = arg3 - (arg3 * sub_8124f7ac / 10000)
                                    if arg3 - (arg3 * sub_8124f7ac / 10000) and sellTax > -1 / arg3 - (arg3 * sub_8124f7ac / 10000):
                                        revert with 0, 17
                                    if block.timestamp < launchTime:
                                        revert with 0, 17
                                    if block.timestamp - launchTime >= 24 * 3600:
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



}
