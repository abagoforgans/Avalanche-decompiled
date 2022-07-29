contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#
const decimals = 18


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
uint8 stor5; offset 160
uint128 stor5; offset 160
address owner;
mapping of uint8 stor6;
mapping of uint256 blacklisted;
mapping of uint8 stor8;
mapping of uint8 stor9;
address sub_0c8106dcAddress;
address rewardPoolAddress;
address treasuryAddress;
address sub_c56d460fAddress;
uint256 sub_8124f7ac;
uint256 sub_5c4ac548;
uint256 sub_d8f21bbe;
uint256 maxPerWallet;
uint256 sub_17e25b3c;
uint8 antiBotEnabled;
uint256 sub_7b47a672;

function sub_0c8106dc(?) payable {
    return sub_0c8106dcAddress
}

function sub_17e25b3c(?) payable {
    return sub_17e25b3c
}

function totalSupply() payable {
    return totalSupply
}

function sub_43cc8c2a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor9[arg1])
}

function maxPerWallet() payable {
    return maxPerWallet
}

function sub_5c4ac548(?) payable {
    return sub_5c4ac548
}

function paused() payable {
    return bool(uint8(stor5.field_160))
}

function treasury() payable {
    return treasuryAddress
}

function sub_6216b6ce(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor8[arg1])
}

function rewardPool() payable {
    return rewardPoolAddress
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function sub_7b47a672(?) payable {
    return sub_7b47a672
}

function sub_8124f7ac(?) payable {
    return sub_8124f7ac
}

function owner() payable {
    return owner
}

function sub_c56d460f(?) payable {
    return sub_c56d460fAddress
}

function antiBotEnabled() payable {
    return bool(antiBotEnabled)
}

function sub_d8f21bbe(?) payable {
    return sub_d8f21bbe
}

function whitelisted(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor6[arg1])
}

function blacklisted(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return blacklisted[arg1]
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

function isBlacklisted(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if blacklisted[address(arg1)] <= 0:
        return (blacklisted[address(arg1)] > 0)
    return blacklisted[address(arg1)] != block.number
}

function pause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor5.field_160):
        revert with 0, 'Pausable: paused'
    Mask(96, 0, stor5.field_160) = 1
    emit Paused(msg.sender);
}

function sub_81fab5b5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require address(arg1)
    sub_c56d460fAddress = address(arg1)
}

function unpause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not uint8(stor5.field_160):
        revert with 0, 'Pausable: not paused'
    Mask(96, 0, stor5.field_160) = 0
    emit Unpaused(msg.sender);
}

function setMaxPerWallet(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 < 1000:
        revert with 0, 'Cannot less then 1000'
    maxPerWallet = arg1
}

function setAntiBotEnabled(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    antiBotEnabled = uint8(arg1)
    if arg1 - 1:
        sub_5c4ac548 = 1000
    else:
        sub_5c4ac548 = 9900
}

function sub_88ed82c6(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 500:
        revert with 0, 'Cannot be more than 500'
    if block.number > -arg1 - 1:
        revert with 'NH{q', 17
    sub_17e25b3c = block.number + arg1
}

function setLpPair(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Cannot be 0'
    stor9[address(arg1)] = uint8(arg2)
    stor6[address(arg1)] = uint8(arg2)
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

function sub_f8d5b005(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if address(arg1):
        rewardPoolAddress = address(arg1)
        stor6[stor11] = 1
        stor8[stor11] = 1
    if address(arg2):
        treasuryAddress = address(arg2)
        stor6[stor12] = 1
        stor8[stor12] = 1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setTaxes(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 > 2500:
        revert with 0, 'Cannot be more than 25%'
    if arg1 > 5000:
        revert with 0, 'Cannot be more than 50%'
    if arg3 > 10000:
        revert with 0, 'Cannot be more than 20%'
    sub_8124f7ac = arg1
    sub_5c4ac548 = arg2
    sub_d8f21bbe = arg3
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(msg.sender)][address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
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

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if uint8(stor5.field_160):
        if not stor6[address(msg.sender)]:
            revert with 0, 'Paused'
        if not stor6[0]:
            revert with 0, 'Paused'
    if not stor6[0]:
        if balanceOf > -arg1 - 1:
            revert with 'NH{q', 17
        if balanceOf + arg1 > maxPerWallet:
            revert with 0, 'Max wallet amount reached'
    if balanceOf[address(msg.sender)] < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg1
    if totalSupply < arg1:
        revert with 'NH{q', 17
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
}

function sub_5a38438e(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[36] == bool(cd[36])
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 6
        stor6[mem[(32 * idx) + 140 len 20]] = uint8(bool(cd[36]))
        if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_df4cd84c(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[36] == bool(cd[36])
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 8
        stor8[mem[(32 * idx) + 140 len 20]] = uint8(bool(cd[36]))
        if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_a79f3d0d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if blacklisted[address(arg1)] <= 0:
        revert with 0, 'Not blacklisted'
    if blacklisted[address(arg1)] == block.number:
        revert with 0, 'Not blacklisted'
    blacklisted[address(arg1)] = 0
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not rewardPoolAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if uint8(stor5.field_160):
        if not stor6[address(arg1)]:
            revert with 0, 'Paused'
        if not stor6[stor11]:
            revert with 0, 'Paused'
    if not stor6[stor11]:
        if balanceOf[stor11] > -balanceOf[address(arg1)] - 1:
            revert with 'NH{q', 17
        if balanceOf[stor11] + balanceOf[address(arg1)] > maxPerWallet:
            revert with 0, 'Max wallet amount reached'
    if balanceOf[address(arg1)] < balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(arg1)] = 0
    if balanceOf[stor11] > -balanceOf[address(arg1)] - 1:
        revert with 'NH{q', 17
    balanceOf[stor11] += balanceOf[address(arg1)]
    emit Transfer(balanceOf[address(arg1)], address(arg1), rewardPoolAddress);
    if block.number < 1:
        revert with 'NH{q', 17
    blacklisted[address(arg1)] = block.number - 1
}

function sub_a0c20231(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[36] == bool(cd[36])
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not cd[36]:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 7
            blacklisted[mem[(32 * idx) + 140 len 20]] = 0
            if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        if block.number < 1:
            revert with 'NH{q', 17
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 7
            blacklisted[mem[(32 * idx) + 140 len 20]] = block.number - 1
            if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
}

function name() payable {
    if bool(stor3.length):
        if not bool(stor3.length) - (stor3.length.field_1 < 32):
            revert with 'NH{q', 34
        if bool(stor3.length):
            if not bool(stor3.length) - (stor3.length.field_1 < 32):
                revert with 'NH{q', 34
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
            if not bool(stor3.length) - (stor3.length.field_1 < 32):
                revert with 'NH{q', 34
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
    if not bool(stor3.length) - (stor3.length.field_1 < 32):
        revert with 'NH{q', 34
    if bool(stor3.length):
        if not bool(stor3.length) - (stor3.length.field_1 < 32):
            revert with 'NH{q', 34
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
        if not bool(stor3.length) - (stor3.length.field_1 < 32):
            revert with 'NH{q', 34
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
        if not bool(stor4.length) - (stor4.length.field_1 < 32):
            revert with 'NH{q', 34
        if bool(stor4.length):
            if not bool(stor4.length) - (stor4.length.field_1 < 32):
                revert with 'NH{q', 34
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
            if not bool(stor4.length) - (stor4.length.field_1 < 32):
                revert with 'NH{q', 34
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
    if not bool(stor4.length) - (stor4.length.field_1 < 32):
        revert with 'NH{q', 34
    if bool(stor4.length):
        if not bool(stor4.length) - (stor4.length.field_1 < 32):
            revert with 'NH{q', 34
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
        if not bool(stor4.length) - (stor4.length.field_1 < 32):
            revert with 'NH{q', 34
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

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if antiBotEnabled:
        if not blacklisted[address(arg1)]:
            if stor9[address(msg.sender)]:
                if not stor6[address(arg1)]:
                    blacklisted[address(arg1)] = block.number
                    if not sub_7b47a672 - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    sub_7b47a672++
    if stor8[address(msg.sender)]:
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
        if uint8(stor5.field_160):
            if not stor6[address(msg.sender)]:
                revert with 0, 'Paused'
            if not stor6[address(arg1)]:
                revert with 0, 'Paused'
        if not stor6[address(arg1)]:
            if balanceOf[address(arg1)] > -arg2 - 1:
                revert with 'NH{q', 17
            if balanceOf[address(arg1)] + arg2 > maxPerWallet:
                revert with 0, 'Max wallet amount reached'
        if balanceOf[address(msg.sender)] < arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
        balanceOf[address(msg.sender)] -= arg2
        if balanceOf[address(arg1)] > -arg2 - 1:
            revert with 'NH{q', 17
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if stor8[address(arg1)]:
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
            if uint8(stor5.field_160):
                if not stor6[address(msg.sender)]:
                    revert with 0, 'Paused'
                if not stor6[address(arg1)]:
                    revert with 0, 'Paused'
            if not stor6[address(arg1)]:
                if balanceOf[address(arg1)] > -arg2 - 1:
                    revert with 'NH{q', 17
                if balanceOf[address(arg1)] + arg2 > maxPerWallet:
                    revert with 0, 'Max wallet amount reached'
            if balanceOf[address(msg.sender)] < arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
            balanceOf[address(msg.sender)] -= arg2
            if balanceOf[address(arg1)] > -arg2 - 1:
                revert with 'NH{q', 17
            balanceOf[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if blacklisted[address(msg.sender)] <= 0:
                if blacklisted[address(arg1)] <= 0:
                    if arg2 and sub_5c4ac548 > -1 / arg2:
                        revert with 'NH{q', 17
                    if arg2 < arg2 * sub_5c4ac548 / 10000:
                        revert with 'NH{q', 17
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not rewardPoolAddress:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if uint8(stor5.field_160):
                        if not stor6[address(msg.sender)]:
                            revert with 0, 'Paused'
                        if not stor6[stor11]:
                            revert with 0, 'Paused'
                    if not stor6[stor11]:
                        if balanceOf[stor11] > -(arg2 * sub_5c4ac548 / 10000) - 1:
                            revert with 'NH{q', 17
                        if balanceOf[stor11] + (arg2 * sub_5c4ac548 / 10000) > maxPerWallet:
                            revert with 0, 'Max wallet amount reached'
                    if balanceOf[address(msg.sender)] < arg2 * sub_5c4ac548 / 10000:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(msg.sender)] -= arg2 * sub_5c4ac548 / 10000
                    if balanceOf[stor11] > -(arg2 * sub_5c4ac548 / 10000) - 1:
                        revert with 'NH{q', 17
                    balanceOf[stor11] += arg2 * sub_5c4ac548 / 10000
                    emit Transfer((arg2 * sub_5c4ac548 / 10000), msg.sender, rewardPoolAddress);
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if uint8(stor5.field_160):
                        if not stor6[address(msg.sender)]:
                            revert with 0, 'Paused'
                        if not stor6[address(arg1)]:
                            revert with 0, 'Paused'
                    if not stor6[address(arg1)]:
                        if balanceOf[address(arg1)] > -arg2 + (arg2 * sub_5c4ac548 / 10000) - 1:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg1)] + arg2 - (arg2 * sub_5c4ac548 / 10000) > maxPerWallet:
                            revert with 0, 'Max wallet amount reached'
                    if balanceOf[address(msg.sender)] < arg2 - (arg2 * sub_5c4ac548 / 10000):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * sub_5c4ac548 / 10000)
                    if balanceOf[address(arg1)] > -arg2 + (arg2 * sub_5c4ac548 / 10000) - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * sub_5c4ac548 / 10000)
                    emit Transfer((arg2 - (arg2 * sub_5c4ac548 / 10000)), msg.sender, arg1);
                else:
                    if blacklisted[address(arg1)] != block.number:
                        if arg2 and sub_d8f21bbe > -1 / arg2:
                            revert with 'NH{q', 17
                        if arg2 < arg2 * sub_d8f21bbe / 10000:
                            revert with 'NH{q', 17
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not rewardPoolAddress:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if uint8(stor5.field_160):
                            if not stor6[address(msg.sender)]:
                                revert with 0, 'Paused'
                            if not stor6[stor11]:
                                revert with 0, 'Paused'
                        if not stor6[stor11]:
                            if balanceOf[stor11] > -(arg2 * sub_d8f21bbe / 10000) - 1:
                                revert with 'NH{q', 17
                            if balanceOf[stor11] + (arg2 * sub_d8f21bbe / 10000) > maxPerWallet:
                                revert with 0, 'Max wallet amount reached'
                        if balanceOf[address(msg.sender)] < arg2 * sub_d8f21bbe / 10000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(msg.sender)] -= arg2 * sub_d8f21bbe / 10000
                        if balanceOf[stor11] > -(arg2 * sub_d8f21bbe / 10000) - 1:
                            revert with 'NH{q', 17
                        balanceOf[stor11] += arg2 * sub_d8f21bbe / 10000
                        emit Transfer((arg2 * sub_d8f21bbe / 10000), msg.sender, rewardPoolAddress);
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if uint8(stor5.field_160):
                            if not stor6[address(msg.sender)]:
                                revert with 0, 'Paused'
                            if not stor6[address(arg1)]:
                                revert with 0, 'Paused'
                        if not stor6[address(arg1)]:
                            if balanceOf[address(arg1)] > -arg2 + (arg2 * sub_d8f21bbe / 10000) - 1:
                                revert with 'NH{q', 17
                            if balanceOf[address(arg1)] + arg2 - (arg2 * sub_d8f21bbe / 10000) > maxPerWallet:
                                revert with 0, 'Max wallet amount reached'
                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * sub_d8f21bbe / 10000):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * sub_d8f21bbe / 10000)
                        if balanceOf[address(arg1)] > -arg2 + (arg2 * sub_d8f21bbe / 10000) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * sub_d8f21bbe / 10000)
                        emit Transfer((arg2 - (arg2 * sub_d8f21bbe / 10000)), msg.sender, arg1);
                    else:
                        if arg2 and sub_5c4ac548 > -1 / arg2:
                            revert with 'NH{q', 17
                        if arg2 < arg2 * sub_5c4ac548 / 10000:
                            revert with 'NH{q', 17
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not rewardPoolAddress:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if uint8(stor5.field_160):
                            if not stor6[address(msg.sender)]:
                                revert with 0, 'Paused'
                            if not stor6[stor11]:
                                revert with 0, 'Paused'
                        if not stor6[stor11]:
                            if balanceOf[stor11] > -(arg2 * sub_5c4ac548 / 10000) - 1:
                                revert with 'NH{q', 17
                            if balanceOf[stor11] + (arg2 * sub_5c4ac548 / 10000) > maxPerWallet:
                                revert with 0, 'Max wallet amount reached'
                        if balanceOf[address(msg.sender)] < arg2 * sub_5c4ac548 / 10000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(msg.sender)] -= arg2 * sub_5c4ac548 / 10000
                        if balanceOf[stor11] > -(arg2 * sub_5c4ac548 / 10000) - 1:
                            revert with 'NH{q', 17
                        balanceOf[stor11] += arg2 * sub_5c4ac548 / 10000
                        emit Transfer((arg2 * sub_5c4ac548 / 10000), msg.sender, rewardPoolAddress);
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if uint8(stor5.field_160):
                            if not stor6[address(msg.sender)]:
                                revert with 0, 'Paused'
                            if not stor6[address(arg1)]:
                                revert with 0, 'Paused'
                        if not stor6[address(arg1)]:
                            if balanceOf[address(arg1)] > -arg2 + (arg2 * sub_5c4ac548 / 10000) - 1:
                                revert with 'NH{q', 17
                            if balanceOf[address(arg1)] + arg2 - (arg2 * sub_5c4ac548 / 10000) > maxPerWallet:
                                revert with 0, 'Max wallet amount reached'
                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * sub_5c4ac548 / 10000):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * sub_5c4ac548 / 10000)
                        if balanceOf[address(arg1)] > -arg2 + (arg2 * sub_5c4ac548 / 10000) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * sub_5c4ac548 / 10000)
                        emit Transfer((arg2 - (arg2 * sub_5c4ac548 / 10000)), msg.sender, arg1);
            else:
                if blacklisted[address(msg.sender)] != block.number:
                    if arg2 and sub_d8f21bbe > -1 / arg2:
                        revert with 'NH{q', 17
                    if arg2 < arg2 * sub_d8f21bbe / 10000:
                        revert with 'NH{q', 17
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not rewardPoolAddress:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if uint8(stor5.field_160):
                        if not stor6[address(msg.sender)]:
                            revert with 0, 'Paused'
                        if not stor6[stor11]:
                            revert with 0, 'Paused'
                    if not stor6[stor11]:
                        if balanceOf[stor11] > -(arg2 * sub_d8f21bbe / 10000) - 1:
                            revert with 'NH{q', 17
                        if balanceOf[stor11] + (arg2 * sub_d8f21bbe / 10000) > maxPerWallet:
                            revert with 0, 'Max wallet amount reached'
                    if balanceOf[address(msg.sender)] < arg2 * sub_d8f21bbe / 10000:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(msg.sender)] -= arg2 * sub_d8f21bbe / 10000
                    if balanceOf[stor11] > -(arg2 * sub_d8f21bbe / 10000) - 1:
                        revert with 'NH{q', 17
                    balanceOf[stor11] += arg2 * sub_d8f21bbe / 10000
                    emit Transfer((arg2 * sub_d8f21bbe / 10000), msg.sender, rewardPoolAddress);
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if uint8(stor5.field_160):
                        if not stor6[address(msg.sender)]:
                            revert with 0, 'Paused'
                        if not stor6[address(arg1)]:
                            revert with 0, 'Paused'
                    if not stor6[address(arg1)]:
                        if balanceOf[address(arg1)] > -arg2 + (arg2 * sub_d8f21bbe / 10000) - 1:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg1)] + arg2 - (arg2 * sub_d8f21bbe / 10000) > maxPerWallet:
                            revert with 0, 'Max wallet amount reached'
                    if balanceOf[address(msg.sender)] < arg2 - (arg2 * sub_d8f21bbe / 10000):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * sub_d8f21bbe / 10000)
                    if balanceOf[address(arg1)] > -arg2 + (arg2 * sub_d8f21bbe / 10000) - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * sub_d8f21bbe / 10000)
                    emit Transfer((arg2 - (arg2 * sub_d8f21bbe / 10000)), msg.sender, arg1);
                else:
                    if blacklisted[address(arg1)] <= 0:
                        if arg2 and sub_5c4ac548 > -1 / arg2:
                            revert with 'NH{q', 17
                        if arg2 < arg2 * sub_5c4ac548 / 10000:
                            revert with 'NH{q', 17
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not rewardPoolAddress:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if uint8(stor5.field_160):
                            if not stor6[address(msg.sender)]:
                                revert with 0, 'Paused'
                            if not stor6[stor11]:
                                revert with 0, 'Paused'
                        if not stor6[stor11]:
                            if balanceOf[stor11] > -(arg2 * sub_5c4ac548 / 10000) - 1:
                                revert with 'NH{q', 17
                            if balanceOf[stor11] + (arg2 * sub_5c4ac548 / 10000) > maxPerWallet:
                                revert with 0, 'Max wallet amount reached'
                        if balanceOf[address(msg.sender)] < arg2 * sub_5c4ac548 / 10000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(msg.sender)] -= arg2 * sub_5c4ac548 / 10000
                        if balanceOf[stor11] > -(arg2 * sub_5c4ac548 / 10000) - 1:
                            revert with 'NH{q', 17
                        balanceOf[stor11] += arg2 * sub_5c4ac548 / 10000
                        emit Transfer((arg2 * sub_5c4ac548 / 10000), msg.sender, rewardPoolAddress);
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if uint8(stor5.field_160):
                            if not stor6[address(msg.sender)]:
                                revert with 0, 'Paused'
                            if not stor6[address(arg1)]:
                                revert with 0, 'Paused'
                        if not stor6[address(arg1)]:
                            if balanceOf[address(arg1)] > -arg2 + (arg2 * sub_5c4ac548 / 10000) - 1:
                                revert with 'NH{q', 17
                            if balanceOf[address(arg1)] + arg2 - (arg2 * sub_5c4ac548 / 10000) > maxPerWallet:
                                revert with 0, 'Max wallet amount reached'
                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * sub_5c4ac548 / 10000):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * sub_5c4ac548 / 10000)
                        if balanceOf[address(arg1)] > -arg2 + (arg2 * sub_5c4ac548 / 10000) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * sub_5c4ac548 / 10000)
                        emit Transfer((arg2 - (arg2 * sub_5c4ac548 / 10000)), msg.sender, arg1);
                    else:
                        if blacklisted[address(arg1)] != block.number:
                            if arg2 and sub_d8f21bbe > -1 / arg2:
                                revert with 'NH{q', 17
                            if arg2 < arg2 * sub_d8f21bbe / 10000:
                                revert with 'NH{q', 17
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not rewardPoolAddress:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if uint8(stor5.field_160):
                                if not stor6[address(msg.sender)]:
                                    revert with 0, 'Paused'
                                if not stor6[stor11]:
                                    revert with 0, 'Paused'
                            if not stor6[stor11]:
                                if balanceOf[stor11] > -(arg2 * sub_d8f21bbe / 10000) - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[stor11] + (arg2 * sub_d8f21bbe / 10000) > maxPerWallet:
                                    revert with 0, 'Max wallet amount reached'
                            if balanceOf[address(msg.sender)] < arg2 * sub_d8f21bbe / 10000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)] -= arg2 * sub_d8f21bbe / 10000
                            if balanceOf[stor11] > -(arg2 * sub_d8f21bbe / 10000) - 1:
                                revert with 'NH{q', 17
                            balanceOf[stor11] += arg2 * sub_d8f21bbe / 10000
                            emit Transfer((arg2 * sub_d8f21bbe / 10000), msg.sender, rewardPoolAddress);
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if uint8(stor5.field_160):
                                if not stor6[address(msg.sender)]:
                                    revert with 0, 'Paused'
                                if not stor6[address(arg1)]:
                                    revert with 0, 'Paused'
                            if not stor6[address(arg1)]:
                                if balanceOf[address(arg1)] > -arg2 + (arg2 * sub_d8f21bbe / 10000) - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg1)] + arg2 - (arg2 * sub_d8f21bbe / 10000) > maxPerWallet:
                                    revert with 0, 'Max wallet amount reached'
                            if balanceOf[address(msg.sender)] < arg2 - (arg2 * sub_d8f21bbe / 10000):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * sub_d8f21bbe / 10000)
                            if balanceOf[address(arg1)] > -arg2 + (arg2 * sub_d8f21bbe / 10000) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * sub_d8f21bbe / 10000)
                            emit Transfer((arg2 - (arg2 * sub_d8f21bbe / 10000)), msg.sender, arg1);
                        else:
                            if arg2 and sub_5c4ac548 > -1 / arg2:
                                revert with 'NH{q', 17
                            if arg2 < arg2 * sub_5c4ac548 / 10000:
                                revert with 'NH{q', 17
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not rewardPoolAddress:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if uint8(stor5.field_160):
                                if not stor6[address(msg.sender)]:
                                    revert with 0, 'Paused'
                                if not stor6[stor11]:
                                    revert with 0, 'Paused'
                            if not stor6[stor11]:
                                if balanceOf[stor11] > -(arg2 * sub_5c4ac548 / 10000) - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[stor11] + (arg2 * sub_5c4ac548 / 10000) > maxPerWallet:
                                    revert with 0, 'Max wallet amount reached'
                            if balanceOf[address(msg.sender)] < arg2 * sub_5c4ac548 / 10000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)] -= arg2 * sub_5c4ac548 / 10000
                            if balanceOf[stor11] > -(arg2 * sub_5c4ac548 / 10000) - 1:
                                revert with 'NH{q', 17
                            balanceOf[stor11] += arg2 * sub_5c4ac548 / 10000
                            emit Transfer((arg2 * sub_5c4ac548 / 10000), msg.sender, rewardPoolAddress);
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if uint8(stor5.field_160):
                                if not stor6[address(msg.sender)]:
                                    revert with 0, 'Paused'
                                if not stor6[address(arg1)]:
                                    revert with 0, 'Paused'
                            if not stor6[address(arg1)]:
                                if balanceOf[address(arg1)] > -arg2 + (arg2 * sub_5c4ac548 / 10000) - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg1)] + arg2 - (arg2 * sub_5c4ac548 / 10000) > maxPerWallet:
                                    revert with 0, 'Max wallet amount reached'
                            if balanceOf[address(msg.sender)] < arg2 - (arg2 * sub_5c4ac548 / 10000):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * sub_5c4ac548 / 10000)
                            if balanceOf[address(arg1)] > -arg2 + (arg2 * sub_5c4ac548 / 10000) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * sub_5c4ac548 / 10000)
                            emit Transfer((arg2 - (arg2 * sub_5c4ac548 / 10000)), msg.sender, arg1);
    return 1
}



}
