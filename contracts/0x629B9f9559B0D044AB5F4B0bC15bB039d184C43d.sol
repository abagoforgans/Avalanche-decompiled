contract main {




// =====================  Runtime code  =====================


array of struct stor0;
array of struct stor1;
uint8 decimals;
uint256 _totalSupply;
array of address charities;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function decimals() payable {
    return decimals
}

function _totalSupply() payable {
    return _totalSupply
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function charities(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < charities.length
    return charities[arg1]
}

function _fallback() payable {
    revert
}

function totalSupply() payable {
    if _totalSupply < balanceOf[0]:
        revert with 'NH{q', 17
    return (_totalSupply - balanceOf[0])
}

function sub_9d280443(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require arg2 > 0
    if not arg2:
        revert with 'NH{q', 18
    return (arg1 / arg2)
}

function sub_b19a6968(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require arg2 <= arg1
    if arg1 < arg2:
        revert with 'NH{q', 17
    return (arg1 - arg2)
}

function sub_360264c8(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 > -arg2 - 1:
        revert with 'NH{q', 17
    require arg1 + arg2 >= arg1
    return (arg1 + arg2)
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_8abadb11(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 and arg2 > -1 / arg1:
        revert with 'NH{q', 17
    if arg1:
        if not arg1:
            revert with 'NH{q', 18
        require arg1 * arg2 / arg1 == arg2
    return (arg1 * arg2)
}

function bet(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require balanceOf[address(msg.sender)] >= arg1
    require arg1 <= balanceOf[address(msg.sender)]
    if balanceOf[address(msg.sender)] < arg1:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)] -= arg1
    emit Transfer(arg1, msg.sender, 0);
    if bool(sha3(block.difficulty, block.timestamp)):
        return 'You lost.', 0
    if arg1 and 2 > -1 / arg1:
        revert with 'NH{q', 17
    if arg1:
        if not arg1:
            revert with 'NH{q', 18
        require 2 * arg1 / arg1 == 2
    if balanceOf[address(msg.sender)] > -(2 * arg1) - 1:
        revert with 'NH{q', 17
    require balanceOf[address(msg.sender)] + (2 * arg1) >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += 2 * arg1
    if arg1 and 2 > -1 / arg1:
        revert with 'NH{q', 17
    if arg1:
        if not arg1:
            revert with 'NH{q', 18
        require 2 * arg1 / arg1 == 2
    emit Transfer((2 * arg1), 0, msg.sender);
    return 'You won!', 0
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require arg2 / 200 <= arg2
    if arg2 < arg2 / 200:
        revert with 'NH{q', 17
    require arg2 / 13 <= arg2 - (arg2 / 200)
    if arg2 - (arg2 / 200) < arg2 / 13:
        revert with 'NH{q', 17
    if not charities.length:
        revert with 'NH{q', 18
    if sha3(block.difficulty, block.timestamp) % charities.length >= charities.length:
        revert with 'NH{q', 50
    require arg2 <= balanceOf[address(msg.sender)]
    if balanceOf[address(msg.sender)] < arg2:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[0] > -(arg2 / 200) - 1:
        revert with 'NH{q', 17
    require balanceOf[0] + (arg2 / 200) >= balanceOf[0]
    balanceOf[0] += arg2 / 200
    if balanceOf[stor4[('map', 'difficulty', 'timestamp') % stor4.length]] > -(arg2 / 13) - 1:
        revert with 'NH{q', 17
    require balanceOf[stor4[('map', 'difficulty', 'timestamp') % stor4.length]] + (arg2 / 13) >= balanceOf[stor4[('map', 'difficulty', 'timestamp') % stor4.length]]
    balanceOf[stor4[('map', 'difficulty', 'timestamp') % stor4.length]] += arg2 / 13
    if balanceOf[address(arg1)] > -arg2 + (arg2 / 200) + (arg2 / 13) - 1:
        revert with 'NH{q', 17
    require balanceOf[address(arg1)] + arg2 - (arg2 / 200) - (arg2 / 13) >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 / 200) - (arg2 / 13)
    emit Transfer((arg2 / 200), msg.sender, 0);
    emit Transfer((arg2 / 13), msg.sender, charities[('map', 'difficulty', 'timestamp') % charities.length]);
    emit Transfer((arg2 - (arg2 / 200) - (arg2 / 13)), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        revert with 'NH{q', 17
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg3 / 200 <= arg3
    if arg3 < arg3 / 200:
        revert with 'NH{q', 17
    require arg3 / 13 <= arg3 - (arg3 / 200)
    if arg3 - (arg3 / 200) < arg3 / 13:
        revert with 'NH{q', 17
    if not charities.length:
        revert with 'NH{q', 18
    if sha3(block.difficulty, block.timestamp) % charities.length >= charities.length:
        revert with 'NH{q', 50
    require arg3 <= balanceOf[address(arg1)]
    if balanceOf[address(arg1)] < arg3:
        revert with 'NH{q', 17
    balanceOf[address(arg1)] -= arg3
    if balanceOf[0] > -(arg3 / 200) - 1:
        revert with 'NH{q', 17
    require balanceOf[0] + (arg3 / 200) >= balanceOf[0]
    balanceOf[0] += arg3 / 200
    if balanceOf[stor4[('map', 'difficulty', 'timestamp') % stor4.length]] > -(arg3 / 13) - 1:
        revert with 'NH{q', 17
    require balanceOf[stor4[('map', 'difficulty', 'timestamp') % stor4.length]] + (arg3 / 13) >= balanceOf[stor4[('map', 'difficulty', 'timestamp') % stor4.length]]
    balanceOf[stor4[('map', 'difficulty', 'timestamp') % stor4.length]] += arg3 / 13
    if balanceOf[address(arg2)] > -arg3 + (arg3 / 200) + (arg3 / 13) - 1:
        revert with 'NH{q', 17
    require balanceOf[address(arg2)] + arg3 - (arg3 / 200) - (arg3 / 13) >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 / 200) - (arg3 / 13)
    emit Transfer((arg3 / 200), arg1, 0);
    emit Transfer((arg3 / 13), arg1, charities[('map', 'difficulty', 'timestamp') % charities.length]);
    emit Transfer((arg3 - (arg3 / 200) - (arg3 / 13)), arg1, arg2);
    return 1
}

function name() payable {
    if bool(stor0.length):
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor0.length):
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor0.length.field_1:
                if 31 < stor0.length.field_1:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)])
                mem[128] = 256 * stor0.length.field_8
        else:
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor0.length.field_1:
                if 31 < stor0.length.field_1:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)])
                mem[128] = 256 * stor0.length.field_8
        mem[ceil32(stor0.length.field_1) + 192 len ceil32(stor0.length.field_1)] = mem[128 len ceil32(stor0.length.field_1)]
        if ceil32(stor0.length.field_1) > stor0.length.field_1:
            mem[ceil32(stor0.length.field_1) + stor0.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
    if bool(stor0.length) == stor0.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor0.length):
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor0.length.field_1:
            if 31 < stor0.length.field_1:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    else:
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor0.length.field_1:
            if 31 < stor0.length.field_1:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    mem[ceil32(stor0.length.field_1) + 192 len ceil32(stor0.length.field_1)] = mem[128 len ceil32(stor0.length.field_1)]
    if ceil32(stor0.length.field_1) > stor0.length.field_1:
        mem[ceil32(stor0.length.field_1) + stor0.length.field_1 + 192] = 0
    return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
}

function symbol() payable {
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor1.length):
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor1.length.field_1:
                if 31 < stor1.length.field_1:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)])
                mem[128] = 256 * stor1.length.field_8
        else:
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor1.length.field_1:
                if 31 < stor1.length.field_1:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)])
                mem[128] = 256 * stor1.length.field_8
        mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
        if ceil32(stor1.length.field_1) > stor1.length.field_1:
            mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
    if bool(stor1.length) == stor1.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor1.length.field_1:
            if 31 < stor1.length.field_1:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    else:
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor1.length.field_1:
            if 31 < stor1.length.field_1:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
    if ceil32(stor1.length.field_1) > stor1.length.field_1:
        mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
}



}
