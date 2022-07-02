contract main {




// =====================  Runtime code  =====================


const decimals = 18


array of uint256 balanceOf;
array of uint256 allowance;
array of uint256 stor2;
array of struct stor3;
array of struct stor4;
address owner;
uint256 stor6;
uint256 stor7;
address stor8;
array of struct sub_6eeb305c;

function totalSupply() payable {
    return stor2.length
}

function sub_6eeb305c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_6eeb305c[address(arg1)].field_0
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

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor8 = arg1
}

function setRewards(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor6 = arg1
}

function setNodePrice(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor7 = arg1
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
    require arg2 == arg2
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

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function claim(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= sub_6eeb305c[address(msg.sender)].field_0:
        revert with 'NH{q', 50
    if block.timestamp < sub_6eeb305c[address(msg.sender)][arg1].field_256:
        revert with 'NH{q', 17
    sub_6eeb305c[address(msg.sender)][arg1].field_256 = block.timestamp
    if block.timestamp - sub_6eeb305c[address(msg.sender)][arg1].field_256 and stor6 > -1 / block.timestamp - sub_6eeb305c[address(msg.sender)][arg1].field_256:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0, 'ERC20: mint to the zero address'
    if stor2.length > (-1 * block.timestamp * stor6) + (sub_6eeb305c[address(msg.sender)][arg1].field_256 * stor6) - 1:
        revert with 'NH{q', 17
    stor2.length = stor2.length + (block.timestamp * stor6) - (sub_6eeb305c[address(msg.sender)][arg1].field_256 * stor6)
    if balanceOf[address(msg.sender)] > (-1 * block.timestamp * stor6) + (sub_6eeb305c[address(msg.sender)][arg1].field_256 * stor6) - 1:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (block.timestamp * stor6) - (sub_6eeb305c[address(msg.sender)][arg1].field_256 * stor6)
    emit Transfer(((block.timestamp * stor6) - (sub_6eeb305c[address(msg.sender)][arg1].field_256 * stor6)), 0, msg.sender);
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
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
    if balanceOf[address(arg2)] > -arg3 - 1:
        revert with 'NH{q', 17
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function getPendingRewards(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 >= sub_6eeb305c[address(arg1)].field_0:
        revert with 'NH{q', 50
    if sub_6eeb305c[address(arg1)][arg2].field_512:
        if sub_6eeb305c[address(arg1)][arg2].field_512 == sub_6eeb305c[address(arg1)][arg2].field_513 < 32:
            revert with 'NH{q', 34
    else:
        if sub_6eeb305c[address(arg1)][arg2].field_512 == sub_6eeb305c[address(arg1)][arg2].field_513 < 32:
            revert with 'NH{q', 34
    if sub_6eeb305c[address(arg1)][arg2].field_512:
        if sub_6eeb305c[address(arg1)][arg2].field_512 == sub_6eeb305c[address(arg1)][arg2].field_513 < 32:
            revert with 'NH{q', 34
        if sub_6eeb305c[address(arg1)][arg2].field_513:
            if 31 < sub_6eeb305c[address(arg1)][arg2].field_513:
                idx = 224
                s = 0
                while sub_6eeb305c[address(arg1)][arg2].field_513 + 192 > idx:
                    mem[idx + 32] = stor[s + sha3((3 * arg2) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_6eeb305c', 9)) + 2)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if sub_6eeb305c[address(arg1)][arg2].field_512 == sub_6eeb305c[address(arg1)][arg2].field_513 < 32:
            revert with 'NH{q', 34
        if sub_6eeb305c[address(arg1)][arg2].field_513:
            if 31 < sub_6eeb305c[address(arg1)][arg2].field_513:
                idx = 224
                s = 0
                while sub_6eeb305c[address(arg1)][arg2].field_513 + 192 > idx:
                    mem[idx + 32] = stor[s + sha3((3 * arg2) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_6eeb305c', 9)) + 2)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    if block.timestamp < sub_6eeb305c[address(arg1)][arg2].field_256:
        revert with 'NH{q', 17
    if block.timestamp - sub_6eeb305c[address(arg1)][arg2].field_256 and stor6 > -1 / block.timestamp - sub_6eeb305c[address(arg1)][arg2].field_256:
        revert with 'NH{q', 17
    return ((block.timestamp * stor6) - (sub_6eeb305c[address(arg1)][arg2].field_256 * stor6))
}

function name() payable {
    if bool(stor3.length):
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor3.length):
            if bool(stor3.length) == stor3.length.field_1 < 32:
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
            if bool(stor3.length) == stor3.length.field_1 < 32:
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
    if bool(stor3.length) == stor3.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor3.length):
        if bool(stor3.length) == stor3.length.field_1 < 32:
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
        if bool(stor3.length) == stor3.length.field_1 < 32:
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
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor4.length):
            if bool(stor4.length) == stor4.length.field_1 < 32:
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
            if bool(stor4.length) == stor4.length.field_1 < 32:
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
    if bool(stor4.length) == stor4.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor4.length):
        if bool(stor4.length) == stor4.length.field_1 < 32:
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
        if bool(stor4.length) == stor4.length.field_1 < 32:
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

function sub_adf1b67e(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg2 < sub_6eeb305c[arg1].field_0
    if sub_6eeb305c[arg1][arg2].field_512:
        if sub_6eeb305c[arg1][arg2].field_512 == sub_6eeb305c[arg1][arg2].field_513 < 32:
            revert with 'NH{q', 34
        if sub_6eeb305c[arg1][arg2].field_512:
            if sub_6eeb305c[arg1][arg2].field_512 == sub_6eeb305c[arg1][arg2].field_513 < 32:
                revert with 'NH{q', 34
            if sub_6eeb305c[arg1][arg2].field_513:
                if 31 >= sub_6eeb305c[arg1][arg2].field_513:
                    mem[128] = 256 * sub_6eeb305c[arg1][arg2].field_520
                else:
                    mem[128] = stor[sha3((3 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_6eeb305c', 9)) + 2)].field_0
                    idx = 128
                    s = 0
                    while sub_6eeb305c[arg1][arg2].field_513 + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((3 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_6eeb305c', 9)) + 2)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if sub_6eeb305c[arg1][arg2].field_512 == sub_6eeb305c[arg1][arg2].field_513 < 32:
                revert with 'NH{q', 34
            if sub_6eeb305c[arg1][arg2].field_513:
                if 31 >= sub_6eeb305c[arg1][arg2].field_513:
                    mem[128] = 256 * sub_6eeb305c[arg1][arg2].field_520
                else:
                    mem[128] = stor[sha3((3 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_6eeb305c', 9)) + 2)].field_0
                    idx = 128
                    s = 0
                    while sub_6eeb305c[arg1][arg2].field_513 + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((3 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_6eeb305c', 9)) + 2)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return sub_6eeb305c[arg1][arg2].field_0, 
               sub_6eeb305c[arg1][arg2].field_256,
               Array(len=2 * Mask(256, -1, sub_6eeb305c[arg1][arg2].field_513), data=mem[128 len ceil32(sub_6eeb305c[arg1][arg2].field_513)])
    if sub_6eeb305c[arg1][arg2].field_512 == sub_6eeb305c[arg1][arg2].field_513 < 32:
        revert with 'NH{q', 34
    if sub_6eeb305c[arg1][arg2].field_512:
        if sub_6eeb305c[arg1][arg2].field_512 == sub_6eeb305c[arg1][arg2].field_513 < 32:
            revert with 'NH{q', 34
        if sub_6eeb305c[arg1][arg2].field_513:
            if 31 >= sub_6eeb305c[arg1][arg2].field_513:
                mem[128] = 256 * sub_6eeb305c[arg1][arg2].field_520
            else:
                mem[128] = stor[sha3((3 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_6eeb305c', 9)) + 2)].field_0
                idx = 128
                s = 0
                while sub_6eeb305c[arg1][arg2].field_513 + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((3 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_6eeb305c', 9)) + 2)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if sub_6eeb305c[arg1][arg2].field_512 == sub_6eeb305c[arg1][arg2].field_513 < 32:
            revert with 'NH{q', 34
        if sub_6eeb305c[arg1][arg2].field_513:
            if 31 >= sub_6eeb305c[arg1][arg2].field_513:
                mem[128] = 256 * sub_6eeb305c[arg1][arg2].field_520
            else:
                mem[128] = stor[sha3((3 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_6eeb305c', 9)) + 2)].field_0
                idx = 128
                s = 0
                while sub_6eeb305c[arg1][arg2].field_513 + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((3 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_6eeb305c', 9)) + 2)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return sub_6eeb305c[arg1][arg2].field_0, 
           sub_6eeb305c[arg1][arg2].field_256,
           Array(len=sub_6eeb305c[arg1][arg2].field_512, data=mem[128 len ceil32(sub_6eeb305c[arg1][arg2].field_513)])
}

function mint(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg1.length) + 128 > test266151307() or ceil32(arg1.length) + 128 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    require ext_code.size(stor8)
    staticcall stor8.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0, ext_call.return_data[4 len 28] == 0, ext_call.return_data[4 len 28]
    if 0, ext_call.return_data[4 len 28] < stor7:
        revert with 0, 'Not enough balance'
    require ext_code.size(stor8)
    call stor8.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), stor7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    balanceOf.length = block.timestamp
    allowance.length = block.timestamp
    if bool(stor2.length):
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor2[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor2.length = 0
            idx = 0
            while stor2.length.field_1 + 31 / 32 > idx:
                stor2[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor2[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor2.length = 0
            idx = 0
            while stor2.length.field_1 + 31 / 32 > idx:
                stor2[idx].field_0 = 0
                idx = idx + 1
                continue 
    sub_6eeb305c[address(msg.sender)].field_0++
    sub_6eeb305c[address(msg.sender)][sub_6eeb305c[address(msg.sender)].field_0].field_0 = balanceOf.length
    sub_6eeb305c[address(msg.sender)][sub_6eeb305c[address(msg.sender)].field_0].field_256 = allowance.length
    if bool(stor2.length):
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if sub_6eeb305c[address(msg.sender)][sub_6eeb305c[address(msg.sender)].field_0].field_512:
            if sub_6eeb305c[address(msg.sender)][sub_6eeb305c[address(msg.sender)].field_0].field_512 == sub_6eeb305c[address(msg.sender)][sub_6eeb305c[address(msg.sender)].field_0].field_513 < 32:
                revert with 'NH{q', 34
            if not stor2.length.field_1:
                sub_6eeb305c[address(msg.sender)][sub_6eeb305c[address(msg.sender)].field_0].field_512 = 0
                idx = 0
                while sub_6eeb305c[address(msg.sender)][sub_6eeb305c[address(msg.sender)].field_0].field_513 + 31 / 32 > idx:
                    stor[idx + sha3((3 * sub_6eeb305c[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_6eeb305c', 9)) + 2)].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                sub_6eeb305c[address(msg.sender)][sub_6eeb305c[address(msg.sender)].field_0].field_512 = (2 * stor2.length.field_1) + 1
                s = 0
                idx = 0
                while stor2.length.field_1 + 31 / 32 > idx:
                    stor[s + sha3((3 * sub_6eeb305c[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_6eeb305c', 9)) + 2)].field_0 = stor2[idx].field_0
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = stor2.length.field_1 + 31 / 32
                while sub_6eeb305c[address(msg.sender)][sub_6eeb305c[address(msg.sender)].field_0].field_513 + 31 / 32 > idx:
                    stor[idx + sha3((3 * sub_6eeb305c[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_6eeb305c', 9)) + 2)].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if sub_6eeb305c[address(msg.sender)][sub_6eeb305c[address(msg.sender)].field_0].field_512 == sub_6eeb305c[address(msg.sender)][sub_6eeb305c[address(msg.sender)].field_0].field_513 < 32:
                revert with 'NH{q', 34
            if not stor2.length.field_1:
                sub_6eeb305c[address(msg.sender)][sub_6eeb305c[address(msg.sender)].field_0].field_512 = 0
                idx = 0
                while sub_6eeb305c[address(msg.sender)][sub_6eeb305c[address(msg.sender)].field_0].field_513 + 31 / 32 > idx:
                    stor[idx + sha3((3 * sub_6eeb305c[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_6eeb305c', 9)) + 2)].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                sub_6eeb305c[address(msg.sender)][sub_6eeb305c[address(msg.sender)].field_0].field_512 = (2 * stor2.length.field_1) + 1
                s = 0
                idx = 0
                while stor2.length.field_1 + 31 / 32 > idx:
                    stor[s + sha3((3 * sub_6eeb305c[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_6eeb305c', 9)) + 2)].field_0 = stor2[idx].field_0
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = stor2.length.field_1 + 31 / 32
                while sub_6eeb305c[address(msg.sender)][sub_6eeb305c[address(msg.sender)].field_0].field_513 + 31 / 32 > idx:
                    stor[idx + sha3((3 * sub_6eeb305c[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_6eeb305c', 9)) + 2)].field_0 = 0
                    idx = idx + 1
                    continue 
    else:
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if sub_6eeb305c[address(msg.sender)][sub_6eeb305c[address(msg.sender)].field_0].field_512:
            if sub_6eeb305c[address(msg.sender)][sub_6eeb305c[address(msg.sender)].field_0].field_512 == sub_6eeb305c[address(msg.sender)][sub_6eeb305c[address(msg.sender)].field_0].field_513 < 32:
                revert with 'NH{q', 34
            if not stor2.length.field_1:
                sub_6eeb305c[address(msg.sender)][sub_6eeb305c[address(msg.sender)].field_0].field_512 = 0
                idx = 0
                while sub_6eeb305c[address(msg.sender)][sub_6eeb305c[address(msg.sender)].field_0].field_513 + 31 / 32 > idx:
                    stor[idx + sha3((3 * sub_6eeb305c[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_6eeb305c', 9)) + 2)].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                sub_6eeb305c[address(msg.sender)][sub_6eeb305c[address(msg.sender)].field_0].field_512 = (2 * stor2.length.field_1) + 1
                s = 0
                idx = 0
                while stor2.length.field_1 + 31 / 32 > idx:
                    stor[s + sha3((3 * sub_6eeb305c[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_6eeb305c', 9)) + 2)].field_0 = stor2[idx].field_0
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = stor2.length.field_1 + 31 / 32
                while sub_6eeb305c[address(msg.sender)][sub_6eeb305c[address(msg.sender)].field_0].field_513 + 31 / 32 > idx:
                    stor[idx + sha3((3 * sub_6eeb305c[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_6eeb305c', 9)) + 2)].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if sub_6eeb305c[address(msg.sender)][sub_6eeb305c[address(msg.sender)].field_0].field_512 == sub_6eeb305c[address(msg.sender)][sub_6eeb305c[address(msg.sender)].field_0].field_513 < 32:
                revert with 'NH{q', 34
            if not stor2.length.field_1:
                sub_6eeb305c[address(msg.sender)][sub_6eeb305c[address(msg.sender)].field_0].field_512 = 0
                idx = 0
                while sub_6eeb305c[address(msg.sender)][sub_6eeb305c[address(msg.sender)].field_0].field_513 + 31 / 32 > idx:
                    stor[idx + sha3((3 * sub_6eeb305c[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_6eeb305c', 9)) + 2)].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                sub_6eeb305c[address(msg.sender)][sub_6eeb305c[address(msg.sender)].field_0].field_512 = (2 * stor2.length.field_1) + 1
                s = 0
                idx = 0
                while stor2.length.field_1 + 31 / 32 > idx:
                    stor[s + sha3((3 * sub_6eeb305c[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_6eeb305c', 9)) + 2)].field_0 = stor2[idx].field_0
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = stor2.length.field_1 + 31 / 32
                while sub_6eeb305c[address(msg.sender)][sub_6eeb305c[address(msg.sender)].field_0].field_513 + 31 / 32 > idx:
                    stor[idx + sha3((3 * sub_6eeb305c[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_6eeb305c', 9)) + 2)].field_0 = 0
                    idx = idx + 1
                    continue 
}



}
