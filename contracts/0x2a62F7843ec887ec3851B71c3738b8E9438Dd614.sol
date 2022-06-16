contract main {




// =====================  Runtime code  =====================


const decimals = 18


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
array of struct stor5;
array of uint256 stor6;
array of uint256 stor7;
uint256 stor8;
address owner;

function totalSupply() payable {
    return totalSupply
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

function snapshot() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor8++
    emit Snapshot(stor8);
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
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

function totalSupplyAt(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        revert with 0, 'ERC20Snapshot: id is 0'
    if arg1 > stor8:
        revert with 0, 'ERC20Snapshot: nonexistent id'
    if stor6.length:
        idx = stor6.length
        while 0 < idx:
            if 0 > !(idx xor 0 / 2):
                revert with 0, 17
            if idx xor 0 / 2 >= stor6.length:
                revert with 0, 50
            mem[0] = 6
            if stor6[0.5 / idx xor 0] > arg1:
                idx = idx xor 0 / 2
                continue 
            if 1 > !(idx xor 0 / 2):
                revert with 0, 17
            idx = idx
            continue 
    if 0 == stor6.length:
        return totalSupply
    if 0 >= stor7.length:
        revert with 0, 50
    return stor7
}

function balanceOfAt(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    mem[0] = arg1
    if arg2 <= 0:
        revert with 0, 'ERC20Snapshot: id is 0'
    if arg2 > stor8:
        revert with 0, 'ERC20Snapshot: nonexistent id'
    if stor5[address(arg1)].field_0:
        idx = stor5[mem[0]].field_0
        while 0 < idx:
            if 0 > !(idx xor 0 / 2):
                revert with 0, 17
            if idx xor 0 / 2 >= stor5[address(arg1)].field_0:
                revert with 0, 50
            mem[0] = sha3(address(arg1), 5)
            if stor5[address(arg1)][0.5 / idx xor 0].field_0 > arg2:
                idx = idx xor 0 / 2
                continue 
            if 1 > !(idx xor 0 / 2):
                revert with 0, 17
            idx = idx
            continue 
    if 0 == stor5[address(arg1)].field_0:
        return balanceOf[address(arg1)]
    if 0 >= stor5[address(arg1)].field_256:
        revert with 0, 50
    return stor5[address(arg1)][1].field_0
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if not stor5[address(msg.sender)].field_0:
        if 0 < stor8:
            stor5[address(msg.sender)].field_0++
            stor5[address(msg.sender)][stor5[address(msg.sender)].field_0].field_0 = stor8
            stor5[address(msg.sender)].field_256++
            stor[stor5[address(msg.sender)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor5', 5)))].field_0 = balanceOf[address(msg.sender)]
    else:
        if stor5[address(msg.sender)].field_0 < 1:
            revert with 0, 17
        if stor5[address(msg.sender)].field_0 - 1 >= stor5[address(msg.sender)].field_0:
            revert with 0, 50
        if stor5[address(msg.sender)][stor5[address(msg.sender)].field_0].field_0 < stor8:
            stor5[address(msg.sender)].field_0++
            stor5[address(msg.sender)][stor5[address(msg.sender)].field_0].field_0 = stor8
            stor5[address(msg.sender)].field_256++
            stor[stor5[address(msg.sender)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor5', 5)))].field_0 = balanceOf[address(msg.sender)]
    if not stor6.length:
        if 0 < stor8:
            stor6.length++
            stor6[stor6.length] = stor8
            stor7.length++
            stor7[stor7.length] = totalSupply
    else:
        if stor6.length < 1:
            revert with 0, 17
        if stor6.length - 1 >= stor6.length:
            revert with 0, 50
        if stor6[stor6.length] < stor8:
            stor6.length++
            stor6[stor6.length] = stor8
            stor7.length++
            stor7[stor7.length] = totalSupply
    if balanceOf[address(msg.sender)] < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
    if arg1 > balanceOf[address(msg.sender)]:
        revert with 0, 1
    if not arg1:
        balanceOf[address(msg.sender)] = test266151307()
    else:
        if balanceOf[address(msg.sender)] < arg1:
            revert with 0, 17
        balanceOf[address(msg.sender)] -= arg1
    if totalSupply < arg1:
        revert with 0, 17
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
}

function burnFrom(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[address(arg1)][address(msg.sender)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds allowance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] -= arg2
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if not stor5[address(arg1)].field_0:
        if 0 < stor8:
            stor5[address(arg1)].field_0++
            stor5[address(arg1)][stor5[address(arg1)].field_0].field_0 = stor8
            stor5[address(arg1)].field_256++
            stor[stor5[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor5', 5)))].field_0 = balanceOf[address(arg1)]
    else:
        if stor5[address(arg1)].field_0 < 1:
            revert with 0, 17
        if stor5[address(arg1)].field_0 - 1 >= stor5[address(arg1)].field_0:
            revert with 0, 50
        if stor5[address(arg1)][stor5[address(arg1)].field_0].field_0 < stor8:
            stor5[address(arg1)].field_0++
            stor5[address(arg1)][stor5[address(arg1)].field_0].field_0 = stor8
            stor5[address(arg1)].field_256++
            stor[stor5[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor5', 5)))].field_0 = balanceOf[address(arg1)]
    if not stor6.length:
        if 0 < stor8:
            stor6.length++
            stor6[stor6.length] = stor8
            stor7.length++
            stor7[stor7.length] = totalSupply
    else:
        if stor6.length < 1:
            revert with 0, 17
        if stor6.length - 1 >= stor6.length:
            revert with 0, 50
        if stor6[stor6.length] < stor8:
            stor6.length++
            stor6[stor6.length] = stor8
            stor7.length++
            stor7[stor7.length] = totalSupply
    if balanceOf[address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
    if arg2 > balanceOf[address(arg1)]:
        revert with 0, 1
    if not arg2:
        balanceOf[address(arg1)] = test266151307()
    else:
        if balanceOf[address(arg1)] < arg2:
            revert with 0, 17
        balanceOf[address(arg1)] -= arg2
    if totalSupply < arg2:
        revert with 0, 17
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
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

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if not msg.sender:
        if not stor5[address(arg1)].field_0:
            if 0 < stor8:
                stor5[address(arg1)].field_0++
                stor5[address(arg1)][stor5[address(arg1)].field_0].field_0 = stor8
                stor5[address(arg1)].field_256++
                stor[stor5[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor5', 5)))].field_0 = balanceOf[address(arg1)]
        else:
            if stor5[address(arg1)].field_0 < 1:
                revert with 0, 17
            if stor5[address(arg1)].field_0 - 1 >= stor5[address(arg1)].field_0:
                revert with 0, 50
            if stor5[address(arg1)][stor5[address(arg1)].field_0].field_0 < stor8:
                stor5[address(arg1)].field_0++
                stor5[address(arg1)][stor5[address(arg1)].field_0].field_0 = stor8
                stor5[address(arg1)].field_256++
                stor[stor5[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor5', 5)))].field_0 = balanceOf[address(arg1)]
        if not stor6.length:
            if 0 < stor8:
                stor6.length++
                stor6[stor6.length] = stor8
                stor7.length++
                stor7[stor7.length] = totalSupply
        else:
            if stor6.length < 1:
                revert with 0, 17
            if stor6.length - 1 >= stor6.length:
                revert with 0, 50
            if stor6[stor6.length] < stor8:
                stor6.length++
                stor6[stor6.length] = stor8
                stor7.length++
                stor7[stor7.length] = totalSupply
    else:
        if not stor5[address(msg.sender)].field_0:
            if 0 < stor8:
                stor5[address(msg.sender)].field_0++
                stor5[address(msg.sender)][stor5[address(msg.sender)].field_0].field_0 = stor8
                stor5[address(msg.sender)].field_256++
                stor[stor5[address(msg.sender)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor5', 5)))].field_0 = balanceOf[address(msg.sender)]
        else:
            if stor5[address(msg.sender)].field_0 < 1:
                revert with 0, 17
            if stor5[address(msg.sender)].field_0 - 1 >= stor5[address(msg.sender)].field_0:
                revert with 0, 50
            if stor5[address(msg.sender)][stor5[address(msg.sender)].field_0].field_0 < stor8:
                stor5[address(msg.sender)].field_0++
                stor5[address(msg.sender)][stor5[address(msg.sender)].field_0].field_0 = stor8
                stor5[address(msg.sender)].field_256++
                stor[stor5[address(msg.sender)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor5', 5)))].field_0 = balanceOf[address(msg.sender)]
        if arg1:
            if not stor5[address(arg1)].field_0:
                if 0 < stor8:
                    stor5[address(arg1)].field_0++
                    stor5[address(arg1)][stor5[address(arg1)].field_0].field_0 = stor8
                    stor5[address(arg1)].field_256++
                    stor[stor5[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor5', 5)))].field_0 = balanceOf[address(arg1)]
            else:
                if stor5[address(arg1)].field_0 < 1:
                    revert with 0, 17
                if stor5[address(arg1)].field_0 - 1 >= stor5[address(arg1)].field_0:
                    revert with 0, 50
                if stor5[address(arg1)][stor5[address(arg1)].field_0].field_0 < stor8:
                    stor5[address(arg1)].field_0++
                    stor5[address(arg1)][stor5[address(arg1)].field_0].field_0 = stor8
                    stor5[address(arg1)].field_256++
                    stor[stor5[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor5', 5)))].field_0 = balanceOf[address(arg1)]
        else:
            if not stor6.length:
                if 0 < stor8:
                    stor6.length++
                    stor6[stor6.length] = stor8
                    stor7.length++
                    stor7[stor7.length] = totalSupply
            else:
                if stor6.length < 1:
                    revert with 0, 17
                if stor6.length - 1 >= stor6.length:
                    revert with 0, 50
                if stor6[stor6.length] < stor8:
                    stor6.length++
                    stor6[stor6.length] = stor8
                    stor7.length++
                    stor7[stor7.length] = totalSupply
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[arg1] > !arg2:
        revert with 0, 17
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if not arg1:
        if not stor5[address(arg2)].field_0:
            if 0 < stor8:
                stor5[address(arg2)].field_0++
                stor5[address(arg2)][stor5[address(arg2)].field_0].field_0 = stor8
                stor5[address(arg2)].field_256++
                stor[stor5[address(arg2)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'stor5', 5)))].field_0 = balanceOf[address(arg2)]
        else:
            if stor5[address(arg2)].field_0 < 1:
                revert with 0, 17
            if stor5[address(arg2)].field_0 - 1 >= stor5[address(arg2)].field_0:
                revert with 0, 50
            if stor5[address(arg2)][stor5[address(arg2)].field_0].field_0 < stor8:
                stor5[address(arg2)].field_0++
                stor5[address(arg2)][stor5[address(arg2)].field_0].field_0 = stor8
                stor5[address(arg2)].field_256++
                stor[stor5[address(arg2)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'stor5', 5)))].field_0 = balanceOf[address(arg2)]
        if not stor6.length:
            if 0 < stor8:
                stor6.length++
                stor6[stor6.length] = stor8
                stor7.length++
                stor7[stor7.length] = totalSupply
        else:
            if stor6.length < 1:
                revert with 0, 17
            if stor6.length - 1 >= stor6.length:
                revert with 0, 50
            if stor6[stor6.length] < stor8:
                stor6.length++
                stor6[stor6.length] = stor8
                stor7.length++
                stor7[stor7.length] = totalSupply
    else:
        if not stor5[address(arg1)].field_0:
            if 0 < stor8:
                stor5[address(arg1)].field_0++
                stor5[address(arg1)][stor5[address(arg1)].field_0].field_0 = stor8
                stor5[address(arg1)].field_256++
                stor[stor5[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor5', 5)))].field_0 = balanceOf[address(arg1)]
        else:
            if stor5[address(arg1)].field_0 < 1:
                revert with 0, 17
            if stor5[address(arg1)].field_0 - 1 >= stor5[address(arg1)].field_0:
                revert with 0, 50
            if stor5[address(arg1)][stor5[address(arg1)].field_0].field_0 < stor8:
                stor5[address(arg1)].field_0++
                stor5[address(arg1)][stor5[address(arg1)].field_0].field_0 = stor8
                stor5[address(arg1)].field_256++
                stor[stor5[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor5', 5)))].field_0 = balanceOf[address(arg1)]
        if arg2:
            if not stor5[address(arg2)].field_0:
                if 0 < stor8:
                    stor5[address(arg2)].field_0++
                    stor5[address(arg2)][stor5[address(arg2)].field_0].field_0 = stor8
                    stor5[address(arg2)].field_256++
                    stor[stor5[address(arg2)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'stor5', 5)))].field_0 = balanceOf[address(arg2)]
            else:
                if stor5[address(arg2)].field_0 < 1:
                    revert with 0, 17
                if stor5[address(arg2)].field_0 - 1 >= stor5[address(arg2)].field_0:
                    revert with 0, 50
                if stor5[address(arg2)][stor5[address(arg2)].field_0].field_0 < stor8:
                    stor5[address(arg2)].field_0++
                    stor5[address(arg2)][stor5[address(arg2)].field_0].field_0 = stor8
                    stor5[address(arg2)].field_256++
                    stor[stor5[address(arg2)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'stor5', 5)))].field_0 = balanceOf[address(arg2)]
        else:
            if not stor6.length:
                if 0 < stor8:
                    stor6.length++
                    stor6[stor6.length] = stor8
                    stor7.length++
                    stor7[stor7.length] = totalSupply
            else:
                if stor6.length < 1:
                    revert with 0, 17
                if stor6.length - 1 >= stor6.length:
                    revert with 0, 50
                if stor6[stor6.length] < stor8:
                    stor6.length++
                    stor6[stor6.length] = stor8
                    stor7.length++
                    stor7[stor7.length] = totalSupply
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



}
