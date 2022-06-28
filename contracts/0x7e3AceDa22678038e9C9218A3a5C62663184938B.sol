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
mapping of uint8 stor7;
uint256 maxBuyAmount;
uint8 stor9;
uint8 stor9; offset 8
uint256 stor9; offset 8
mapping of uint256 lastBuy;
uint256 sub_d5f94685;

function totalSupply() payable {
    return totalSupply
}

function sub_2b28a362(?) payable {
    return bool(uint8(stor9.field_8))
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function maxBuyAmount() payable {
    return maxBuyAmount
}

function owner() payable {
    return owner
}

function allowBuy() payable {
    return bool(uint8(stor9.field_0))
}

function lastBuy(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return lastBuy[arg1]
}

function manager(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor7[address(arg1)])
}

function sub_d5f94685(?) payable {
    return sub_d5f94685
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function managers(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor7[arg1])
}

function _fallback() payable {
    revert
}

function sub_b5f11734(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    Mask(248, 0, stor9.field_8) = Mask(248, 0, bool(arg1))
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Manageable: caller is not owner'
    emit OwnershipPushed(owner, 0);
    owner = 0
}

function setMaxBuyAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Manageable: caller is not owner'
    maxBuyAmount = arg1
}

function setAllowBuy(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Manageable: caller is not owner'
    uint8(stor9.field_0) = uint8(arg1)
}

function pullOwnership() payable {
    if stor6 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Manageable: must be new owner to pull'
    emit OwnershipPulled(owner, stor6);
    owner = stor6
}

function sub_57843184(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Manageable: caller is not owner'
    stor7[address(arg1)] = 0
    emit 0x85bb1cb7: address(arg1)
}

function sub_e042124f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Manageable: caller is not owner'
    stor7[address(arg1)] = 1
    emit 0x83e3c673: address(arg1)
}

function sub_ed3a8c88(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Manageable: caller is not owner'
    if arg1 >= 100:
        revert with 0, 'must lessthan 100 block'
    sub_d5f94685 = arg1
}

function pushOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Manageable: caller is not owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Manageable: new owner is the zero address'
    emit OwnershipPushed(owner, arg1);
    stor6 = arg1
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

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Manageable: caller is not owner'
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if not uint8(stor9.field_0):
        revert with 0, 'not allow buy'
    if maxBuyAmount > 0:
        if arg2 > maxBuyAmount:
            revert with 0, 'exceeds maximum transfer'
    if sub_d5f94685 > 0:
        if lastBuy[tx.origin] > 0:
            if lastBuy[tx.origin] > -sub_d5f94685 - 1:
                revert with 'NH{q', 17
            if lastBuy[tx.origin] + sub_d5f94685 > block.number:
                revert with 0, 'delay block'
    lastBuy[tx.origin] = block.number
    if totalSupply > -arg2 - 1:
        revert with 'NH{q', 17
    totalSupply += arg2
    if balanceOf[address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if not uint8(stor9.field_0):
        revert with 0, 'not allow buy'
    if maxBuyAmount > 0:
        if arg2 > maxBuyAmount:
            revert with 0, 'exceeds maximum transfer'
    if uint8(stor9.field_8):
        if msg.sender:
            if arg1:
                if not stor7[address(msg.sender)]:
                    revert with 0, 'not whitelisted buy'
    if sub_d5f94685 > 0:
        if lastBuy[tx.origin] > 0:
            if lastBuy[tx.origin] > -sub_d5f94685 - 1:
                revert with 'NH{q', 17
            if lastBuy[tx.origin] + sub_d5f94685 > block.number:
                revert with 0, 'delay block'
    lastBuy[tx.origin] = block.number
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if not uint8(stor9.field_0):
        revert with 0, 'not allow buy'
    if maxBuyAmount > 0:
        if arg3 > maxBuyAmount:
            revert with 0, 'exceeds maximum transfer'
    if uint8(stor9.field_8):
        if arg1:
            if arg2:
                if not stor7[address(arg1)]:
                    revert with 0, 'not whitelisted buy'
    if sub_d5f94685 > 0:
        if lastBuy[tx.origin] > 0:
            if lastBuy[tx.origin] > -sub_d5f94685 - 1:
                revert with 'NH{q', 17
            if lastBuy[tx.origin] + sub_d5f94685 > block.number:
                revert with 0, 'delay block'
    lastBuy[tx.origin] = block.number
    if balanceOf[address(arg1)] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(arg1)] -= arg3
    if balanceOf[address(arg2)] > -arg3 - 1:
        revert with 'NH{q', 17
    balanceOf[address(arg2)] += arg3
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

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    else:
        if not uint8(stor9.field_0):
            revert with 0, 'not allow buy'
        else:
            if maxBuyAmount <= 0:
                if not uint8(stor9.field_8):
                    if sub_d5f94685 <= 0:
                        lastBuy[tx.origin] = block.number
                        if balanceOf[address(msg.sender)] < arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
                        else:
                            balanceOf[address(msg.sender)] -= arg1
                            if totalSupply < arg1:
                                revert with 'NH{q', 17
                            else:
                                totalSupply -= arg1
                                emit Transfer(arg1, msg.sender, 0);
                    else:
                        if lastBuy[tx.origin] <= 0:
                            lastBuy[tx.origin] = block.number
                            if balanceOf[address(msg.sender)] < arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
                            else:
                                balanceOf[address(msg.sender)] -= arg1
                                if totalSupply < arg1:
                                    revert with 'NH{q', 17
                                else:
                                    totalSupply -= arg1
                                    emit Transfer(arg1, msg.sender, 0);
                        else:
                            if lastBuy[tx.origin] > -sub_d5f94685 - 1:
                                revert with 'NH{q', 17
                            else:
                                if lastBuy[tx.origin] + sub_d5f94685 > block.number:
                                    revert with 0, 'delay block'
                                else:
                                    lastBuy[tx.origin] = block.number
                                    if balanceOf[address(msg.sender)] < arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
                                    else:
                                        balanceOf[address(msg.sender)] -= arg1
                                        if totalSupply < arg1:
                                            revert with 'NH{q', 17
                                        else:
                                            totalSupply -= arg1
                                            emit Transfer(arg1, msg.sender, 0);
                else:
                    if not msg.sender:
                        if sub_d5f94685 <= 0:
                            lastBuy[tx.origin] = block.number
                            if balanceOf[address(msg.sender)] < arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
                            else:
                                balanceOf[address(msg.sender)] -= arg1
                                if totalSupply < arg1:
                                    revert with 'NH{q', 17
                                else:
                                    totalSupply -= arg1
                                    emit Transfer(arg1, msg.sender, 0);
                        else:
                            if lastBuy[tx.origin] <= 0:
                                lastBuy[tx.origin] = block.number
                                if balanceOf[address(msg.sender)] < arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
                                else:
                                    balanceOf[address(msg.sender)] -= arg1
                                    if totalSupply < arg1:
                                        revert with 'NH{q', 17
                                    else:
                                        totalSupply -= arg1
                                        emit Transfer(arg1, msg.sender, 0);
                            else:
                                if lastBuy[tx.origin] > -sub_d5f94685 - 1:
                                    revert with 'NH{q', 17
                                else:
                                    if lastBuy[tx.origin] + sub_d5f94685 > block.number:
                                        revert with 0, 'delay block'
                                    else:
                                        lastBuy[tx.origin] = block.number
                                        if balanceOf[address(msg.sender)] < arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
                                        else:
                                            balanceOf[address(msg.sender)] -= arg1
                                            if totalSupply < arg1:
                                                revert with 'NH{q', 17
                                            else:
                                                totalSupply -= arg1
                                                emit Transfer(arg1, msg.sender, 0);
                    else:
                        if sub_d5f94685 <= 0:
                            lastBuy[tx.origin] = block.number
                            if balanceOf[address(msg.sender)] < arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
                            else:
                                balanceOf[address(msg.sender)] -= arg1
                                if totalSupply < arg1:
                                    revert with 'NH{q', 17
                                else:
                                    totalSupply -= arg1
                                    emit Transfer(arg1, msg.sender, 0);
                        else:
                            if lastBuy[tx.origin] <= 0:
                                lastBuy[tx.origin] = block.number
                                if balanceOf[address(msg.sender)] < arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
                                else:
                                    balanceOf[address(msg.sender)] -= arg1
                                    if totalSupply < arg1:
                                        revert with 'NH{q', 17
                                    else:
                                        totalSupply -= arg1
                                        emit Transfer(arg1, msg.sender, 0);
                            else:
                                if lastBuy[tx.origin] > -sub_d5f94685 - 1:
                                    revert with 'NH{q', 17
                                else:
                                    if lastBuy[tx.origin] + sub_d5f94685 > block.number:
                                        revert with 0, 'delay block'
                                    else:
                                        lastBuy[tx.origin] = block.number
                                        if balanceOf[address(msg.sender)] < arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
                                        else:
                                            balanceOf[address(msg.sender)] -= arg1
                                            if totalSupply < arg1:
                                                revert with 'NH{q', 17
                                            else:
                                                totalSupply -= arg1
                                                emit Transfer(arg1, msg.sender, 0);
            else:
                if arg1 > maxBuyAmount:
                    revert with 0, 'exceeds maximum transfer'
                else:
                    if not uint8(stor9.field_8):
                        if sub_d5f94685 <= 0:
                            lastBuy[tx.origin] = block.number
                            if balanceOf[address(msg.sender)] < arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
                            else:
                                balanceOf[address(msg.sender)] -= arg1
                                if totalSupply < arg1:
                                    revert with 'NH{q', 17
                                else:
                                    totalSupply -= arg1
                                    emit Transfer(arg1, msg.sender, 0);
                        else:
                            if lastBuy[tx.origin] <= 0:
                                lastBuy[tx.origin] = block.number
                                if balanceOf[address(msg.sender)] < arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
                                else:
                                    balanceOf[address(msg.sender)] -= arg1
                                    if totalSupply < arg1:
                                        revert with 'NH{q', 17
                                    else:
                                        totalSupply -= arg1
                                        emit Transfer(arg1, msg.sender, 0);
                            else:
                                if lastBuy[tx.origin] > -sub_d5f94685 - 1:
                                    revert with 'NH{q', 17
                                else:
                                    if lastBuy[tx.origin] + sub_d5f94685 > block.number:
                                        revert with 0, 'delay block'
                                    else:
                                        lastBuy[tx.origin] = block.number
                                        if balanceOf[address(msg.sender)] < arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
                                        else:
                                            balanceOf[address(msg.sender)] -= arg1
                                            if totalSupply < arg1:
                                                revert with 'NH{q', 17
                                            else:
                                                totalSupply -= arg1
                                                emit Transfer(arg1, msg.sender, 0);
                    else:
                        if not msg.sender:
                            if sub_d5f94685 <= 0:
                                lastBuy[tx.origin] = block.number
                                if balanceOf[address(msg.sender)] < arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
                                else:
                                    balanceOf[address(msg.sender)] -= arg1
                                    if totalSupply < arg1:
                                        revert with 'NH{q', 17
                                    else:
                                        totalSupply -= arg1
                                        emit Transfer(arg1, msg.sender, 0);
                            else:
                                if lastBuy[tx.origin] <= 0:
                                    lastBuy[tx.origin] = block.number
                                    if balanceOf[address(msg.sender)] < arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
                                    else:
                                        balanceOf[address(msg.sender)] -= arg1
                                        if totalSupply < arg1:
                                            revert with 'NH{q', 17
                                        else:
                                            totalSupply -= arg1
                                            emit Transfer(arg1, msg.sender, 0);
                                else:
                                    if lastBuy[tx.origin] > -sub_d5f94685 - 1:
                                        revert with 'NH{q', 17
                                    else:
                                        if lastBuy[tx.origin] + sub_d5f94685 > block.number:
                                            revert with 0, 'delay block'
                                        else:
                                            lastBuy[tx.origin] = block.number
                                            if balanceOf[address(msg.sender)] < arg1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
                                            else:
                                                balanceOf[address(msg.sender)] -= arg1
                                                if totalSupply < arg1:
                                                    revert with 'NH{q', 17
                                                else:
                                                    totalSupply -= arg1
                                                    emit Transfer(arg1, msg.sender, 0);
                        else:
                            if sub_d5f94685 <= 0:
                                lastBuy[tx.origin] = block.number
                                if balanceOf[address(msg.sender)] < arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
                                else:
                                    balanceOf[address(msg.sender)] -= arg1
                                    if totalSupply < arg1:
                                        revert with 'NH{q', 17
                                    else:
                                        totalSupply -= arg1
                                        emit Transfer(arg1, msg.sender, 0);
                            else:
                                if lastBuy[tx.origin] <= 0:
                                    lastBuy[tx.origin] = block.number
                                    if balanceOf[address(msg.sender)] < arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
                                    else:
                                        balanceOf[address(msg.sender)] -= arg1
                                        if totalSupply < arg1:
                                            revert with 'NH{q', 17
                                        else:
                                            totalSupply -= arg1
                                            emit Transfer(arg1, msg.sender, 0);
                                else:
                                    if lastBuy[tx.origin] > -sub_d5f94685 - 1:
                                        revert with 'NH{q', 17
                                    else:
                                        if lastBuy[tx.origin] + sub_d5f94685 > block.number:
                                            revert with 0, 'delay block'
                                        else:
                                            lastBuy[tx.origin] = block.number
                                            if balanceOf[address(msg.sender)] < arg1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
                                            else:
                                                balanceOf[address(msg.sender)] -= arg1
                                                if totalSupply < arg1:
                                                    revert with 'NH{q', 17
                                                else:
                                                    totalSupply -= arg1
                                                    emit Transfer(arg1, msg.sender, 0);
}

function burnFrom(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 32, 36, 0xfe45524332303a206275726e20616d6f756e74206578636565647320616c6c6f77616e63, mem[164 len 28] >> 32, 0
    else:
        if not arg1:
            revert with 0, 'ERC20: approve from the zero address'
        else:
            if not msg.sender:
                revert with 0, 'ERC20: approve to the zero address'
            else:
                allowance[address(arg1)][address(msg.sender)] -= arg2
                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
                if not arg1:
                    revert with 0, 'ERC20: burn from the zero address'
                else:
                    if not uint8(stor9.field_0):
                        revert with 0, 'not allow buy'
                    else:
                        if maxBuyAmount <= 0:
                            if not uint8(stor9.field_8):
                                if sub_d5f94685 <= 0:
                                    lastBuy[tx.origin] = block.number
                                    if balanceOf[address(arg1)] < arg2:
                                        revert with 0, 'ERC20: burn amount exceeds balance'
                                    else:
                                        balanceOf[address(arg1)] -= arg2
                                        if totalSupply < arg2:
                                            revert with 'NH{q', 17
                                        else:
                                            totalSupply -= arg2
                                            emit Transfer(arg2, arg1, 0);
                                else:
                                    if lastBuy[tx.origin] <= 0:
                                        lastBuy[tx.origin] = block.number
                                        if balanceOf[address(arg1)] < arg2:
                                            revert with 0, 'ERC20: burn amount exceeds balance'
                                        else:
                                            balanceOf[address(arg1)] -= arg2
                                            if totalSupply < arg2:
                                                revert with 'NH{q', 17
                                            else:
                                                totalSupply -= arg2
                                                emit Transfer(arg2, arg1, 0);
                                    else:
                                        if lastBuy[tx.origin] > -sub_d5f94685 - 1:
                                            revert with 'NH{q', 17
                                        else:
                                            if lastBuy[tx.origin] + sub_d5f94685 > block.number:
                                                revert with 0, 'delay block'
                                            else:
                                                lastBuy[tx.origin] = block.number
                                                if balanceOf[address(arg1)] < arg2:
                                                    revert with 0, 'ERC20: burn amount exceeds balance'
                                                else:
                                                    balanceOf[address(arg1)] -= arg2
                                                    if totalSupply < arg2:
                                                        revert with 'NH{q', 17
                                                    else:
                                                        totalSupply -= arg2
                                                        emit Transfer(arg2, arg1, 0);
                            else:
                                if not arg1:
                                    if sub_d5f94685 <= 0:
                                        lastBuy[tx.origin] = block.number
                                        if balanceOf[address(arg1)] < arg2:
                                            revert with 0, 'ERC20: burn amount exceeds balance'
                                        else:
                                            balanceOf[address(arg1)] -= arg2
                                            if totalSupply < arg2:
                                                revert with 'NH{q', 17
                                            else:
                                                totalSupply -= arg2
                                                emit Transfer(arg2, arg1, 0);
                                    else:
                                        if lastBuy[tx.origin] <= 0:
                                            lastBuy[tx.origin] = block.number
                                            if balanceOf[address(arg1)] < arg2:
                                                revert with 0, 'ERC20: burn amount exceeds balance'
                                            else:
                                                balanceOf[address(arg1)] -= arg2
                                                if totalSupply < arg2:
                                                    revert with 'NH{q', 17
                                                else:
                                                    totalSupply -= arg2
                                                    emit Transfer(arg2, arg1, 0);
                                        else:
                                            if lastBuy[tx.origin] > -sub_d5f94685 - 1:
                                                revert with 'NH{q', 17
                                            else:
                                                if lastBuy[tx.origin] + sub_d5f94685 > block.number:
                                                    revert with 0, 'delay block'
                                                else:
                                                    lastBuy[tx.origin] = block.number
                                                    if balanceOf[address(arg1)] < arg2:
                                                        revert with 0, 'ERC20: burn amount exceeds balance'
                                                    else:
                                                        balanceOf[address(arg1)] -= arg2
                                                        if totalSupply < arg2:
                                                            revert with 'NH{q', 17
                                                        else:
                                                            totalSupply -= arg2
                                                            emit Transfer(arg2, arg1, 0);
                                else:
                                    if sub_d5f94685 <= 0:
                                        lastBuy[tx.origin] = block.number
                                        if balanceOf[address(arg1)] < arg2:
                                            revert with 0, 'ERC20: burn amount exceeds balance'
                                        else:
                                            balanceOf[address(arg1)] -= arg2
                                            if totalSupply < arg2:
                                                revert with 'NH{q', 17
                                            else:
                                                totalSupply -= arg2
                                                emit Transfer(arg2, arg1, 0);
                                    else:
                                        if lastBuy[tx.origin] <= 0:
                                            lastBuy[tx.origin] = block.number
                                            if balanceOf[address(arg1)] < arg2:
                                                revert with 0, 'ERC20: burn amount exceeds balance'
                                            else:
                                                balanceOf[address(arg1)] -= arg2
                                                if totalSupply < arg2:
                                                    revert with 'NH{q', 17
                                                else:
                                                    totalSupply -= arg2
                                                    emit Transfer(arg2, arg1, 0);
                                        else:
                                            if lastBuy[tx.origin] > -sub_d5f94685 - 1:
                                                revert with 'NH{q', 17
                                            else:
                                                if lastBuy[tx.origin] + sub_d5f94685 > block.number:
                                                    revert with 0, 'delay block'
                                                else:
                                                    lastBuy[tx.origin] = block.number
                                                    if balanceOf[address(arg1)] < arg2:
                                                        revert with 0, 'ERC20: burn amount exceeds balance'
                                                    else:
                                                        balanceOf[address(arg1)] -= arg2
                                                        if totalSupply < arg2:
                                                            revert with 'NH{q', 17
                                                        else:
                                                            totalSupply -= arg2
                                                            emit Transfer(arg2, arg1, 0);
                        else:
                            if arg2 > maxBuyAmount:
                                revert with 0, 'exceeds maximum transfer'
                            else:
                                if not uint8(stor9.field_8):
                                    if sub_d5f94685 <= 0:
                                        lastBuy[tx.origin] = block.number
                                        if balanceOf[address(arg1)] < arg2:
                                            revert with 0, 'ERC20: burn amount exceeds balance'
                                        else:
                                            balanceOf[address(arg1)] -= arg2
                                            if totalSupply < arg2:
                                                revert with 'NH{q', 17
                                            else:
                                                totalSupply -= arg2
                                                emit Transfer(arg2, arg1, 0);
                                    else:
                                        if lastBuy[tx.origin] <= 0:
                                            lastBuy[tx.origin] = block.number
                                            if balanceOf[address(arg1)] < arg2:
                                                revert with 0, 'ERC20: burn amount exceeds balance'
                                            else:
                                                balanceOf[address(arg1)] -= arg2
                                                if totalSupply < arg2:
                                                    revert with 'NH{q', 17
                                                else:
                                                    totalSupply -= arg2
                                                    emit Transfer(arg2, arg1, 0);
                                        else:
                                            if lastBuy[tx.origin] > -sub_d5f94685 - 1:
                                                revert with 'NH{q', 17
                                            else:
                                                if lastBuy[tx.origin] + sub_d5f94685 > block.number:
                                                    revert with 0, 'delay block'
                                                else:
                                                    lastBuy[tx.origin] = block.number
                                                    if balanceOf[address(arg1)] < arg2:
                                                        revert with 0, 'ERC20: burn amount exceeds balance'
                                                    else:
                                                        balanceOf[address(arg1)] -= arg2
                                                        if totalSupply < arg2:
                                                            revert with 'NH{q', 17
                                                        else:
                                                            totalSupply -= arg2
                                                            emit Transfer(arg2, arg1, 0);
                                else:
                                    if not arg1:
                                        if sub_d5f94685 <= 0:
                                            lastBuy[tx.origin] = block.number
                                            if balanceOf[address(arg1)] < arg2:
                                                revert with 0, 'ERC20: burn amount exceeds balance'
                                            else:
                                                balanceOf[address(arg1)] -= arg2
                                                if totalSupply < arg2:
                                                    revert with 'NH{q', 17
                                                else:
                                                    totalSupply -= arg2
                                                    emit Transfer(arg2, arg1, 0);
                                        else:
                                            if lastBuy[tx.origin] <= 0:
                                                lastBuy[tx.origin] = block.number
                                                if balanceOf[address(arg1)] < arg2:
                                                    revert with 0, 'ERC20: burn amount exceeds balance'
                                                else:
                                                    balanceOf[address(arg1)] -= arg2
                                                    if totalSupply < arg2:
                                                        revert with 'NH{q', 17
                                                    else:
                                                        totalSupply -= arg2
                                                        emit Transfer(arg2, arg1, 0);
                                            else:
                                                if lastBuy[tx.origin] > -sub_d5f94685 - 1:
                                                    revert with 'NH{q', 17
                                                else:
                                                    if lastBuy[tx.origin] + sub_d5f94685 > block.number:
                                                        revert with 0, 'delay block'
                                                    else:
                                                        lastBuy[tx.origin] = block.number
                                                        if balanceOf[address(arg1)] < arg2:
                                                            revert with 0, 'ERC20: burn amount exceeds balance'
                                                        else:
                                                            balanceOf[address(arg1)] -= arg2
                                                            if totalSupply < arg2:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                totalSupply -= arg2
                                                                emit Transfer(arg2, arg1, 0);
                                    else:
                                        if sub_d5f94685 <= 0:
                                            lastBuy[tx.origin] = block.number
                                            if balanceOf[address(arg1)] < arg2:
                                                revert with 0, 'ERC20: burn amount exceeds balance'
                                            else:
                                                balanceOf[address(arg1)] -= arg2
                                                if totalSupply < arg2:
                                                    revert with 'NH{q', 17
                                                else:
                                                    totalSupply -= arg2
                                                    emit Transfer(arg2, arg1, 0);
                                        else:
                                            if lastBuy[tx.origin] <= 0:
                                                lastBuy[tx.origin] = block.number
                                                if balanceOf[address(arg1)] < arg2:
                                                    revert with 0, 'ERC20: burn amount exceeds balance'
                                                else:
                                                    balanceOf[address(arg1)] -= arg2
                                                    if totalSupply < arg2:
                                                        revert with 'NH{q', 17
                                                    else:
                                                        totalSupply -= arg2
                                                        emit Transfer(arg2, arg1, 0);
                                            else:
                                                if lastBuy[tx.origin] > -sub_d5f94685 - 1:
                                                    revert with 'NH{q', 17
                                                else:
                                                    if lastBuy[tx.origin] + sub_d5f94685 > block.number:
                                                        revert with 0, 'delay block'
                                                    else:
                                                        lastBuy[tx.origin] = block.number
                                                        if balanceOf[address(arg1)] < arg2:
                                                            revert with 0, 'ERC20: burn amount exceeds balance'
                                                        else:
                                                            balanceOf[address(arg1)] -= arg2
                                                            if totalSupply < arg2:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                totalSupply -= arg2
                                                                emit Transfer(arg2, arg1, 0);
}

function _burnFrom(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 32, 36, 0xfe45524332303a206275726e20616d6f756e74206578636565647320616c6c6f77616e63, mem[164 len 28] >> 32, 0
    else:
        if not arg1:
            revert with 0, 'ERC20: approve from the zero address'
        else:
            if not msg.sender:
                revert with 0, 'ERC20: approve to the zero address'
            else:
                allowance[address(arg1)][address(msg.sender)] -= arg2
                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
                if not arg1:
                    revert with 0, 'ERC20: burn from the zero address'
                else:
                    if not uint8(stor9.field_0):
                        revert with 0, 'not allow buy'
                    else:
                        if maxBuyAmount <= 0:
                            if not uint8(stor9.field_8):
                                if sub_d5f94685 <= 0:
                                    lastBuy[tx.origin] = block.number
                                    if balanceOf[address(arg1)] < arg2:
                                        revert with 0, 'ERC20: burn amount exceeds balance'
                                    else:
                                        balanceOf[address(arg1)] -= arg2
                                        if totalSupply < arg2:
                                            revert with 'NH{q', 17
                                        else:
                                            totalSupply -= arg2
                                            emit Transfer(arg2, arg1, 0);
                                else:
                                    if lastBuy[tx.origin] <= 0:
                                        lastBuy[tx.origin] = block.number
                                        if balanceOf[address(arg1)] < arg2:
                                            revert with 0, 'ERC20: burn amount exceeds balance'
                                        else:
                                            balanceOf[address(arg1)] -= arg2
                                            if totalSupply < arg2:
                                                revert with 'NH{q', 17
                                            else:
                                                totalSupply -= arg2
                                                emit Transfer(arg2, arg1, 0);
                                    else:
                                        if lastBuy[tx.origin] > -sub_d5f94685 - 1:
                                            revert with 'NH{q', 17
                                        else:
                                            if lastBuy[tx.origin] + sub_d5f94685 > block.number:
                                                revert with 0, 'delay block'
                                            else:
                                                lastBuy[tx.origin] = block.number
                                                if balanceOf[address(arg1)] < arg2:
                                                    revert with 0, 'ERC20: burn amount exceeds balance'
                                                else:
                                                    balanceOf[address(arg1)] -= arg2
                                                    if totalSupply < arg2:
                                                        revert with 'NH{q', 17
                                                    else:
                                                        totalSupply -= arg2
                                                        emit Transfer(arg2, arg1, 0);
                            else:
                                if not arg1:
                                    if sub_d5f94685 <= 0:
                                        lastBuy[tx.origin] = block.number
                                        if balanceOf[address(arg1)] < arg2:
                                            revert with 0, 'ERC20: burn amount exceeds balance'
                                        else:
                                            balanceOf[address(arg1)] -= arg2
                                            if totalSupply < arg2:
                                                revert with 'NH{q', 17
                                            else:
                                                totalSupply -= arg2
                                                emit Transfer(arg2, arg1, 0);
                                    else:
                                        if lastBuy[tx.origin] <= 0:
                                            lastBuy[tx.origin] = block.number
                                            if balanceOf[address(arg1)] < arg2:
                                                revert with 0, 'ERC20: burn amount exceeds balance'
                                            else:
                                                balanceOf[address(arg1)] -= arg2
                                                if totalSupply < arg2:
                                                    revert with 'NH{q', 17
                                                else:
                                                    totalSupply -= arg2
                                                    emit Transfer(arg2, arg1, 0);
                                        else:
                                            if lastBuy[tx.origin] > -sub_d5f94685 - 1:
                                                revert with 'NH{q', 17
                                            else:
                                                if lastBuy[tx.origin] + sub_d5f94685 > block.number:
                                                    revert with 0, 'delay block'
                                                else:
                                                    lastBuy[tx.origin] = block.number
                                                    if balanceOf[address(arg1)] < arg2:
                                                        revert with 0, 'ERC20: burn amount exceeds balance'
                                                    else:
                                                        balanceOf[address(arg1)] -= arg2
                                                        if totalSupply < arg2:
                                                            revert with 'NH{q', 17
                                                        else:
                                                            totalSupply -= arg2
                                                            emit Transfer(arg2, arg1, 0);
                                else:
                                    if sub_d5f94685 <= 0:
                                        lastBuy[tx.origin] = block.number
                                        if balanceOf[address(arg1)] < arg2:
                                            revert with 0, 'ERC20: burn amount exceeds balance'
                                        else:
                                            balanceOf[address(arg1)] -= arg2
                                            if totalSupply < arg2:
                                                revert with 'NH{q', 17
                                            else:
                                                totalSupply -= arg2
                                                emit Transfer(arg2, arg1, 0);
                                    else:
                                        if lastBuy[tx.origin] <= 0:
                                            lastBuy[tx.origin] = block.number
                                            if balanceOf[address(arg1)] < arg2:
                                                revert with 0, 'ERC20: burn amount exceeds balance'
                                            else:
                                                balanceOf[address(arg1)] -= arg2
                                                if totalSupply < arg2:
                                                    revert with 'NH{q', 17
                                                else:
                                                    totalSupply -= arg2
                                                    emit Transfer(arg2, arg1, 0);
                                        else:
                                            if lastBuy[tx.origin] > -sub_d5f94685 - 1:
                                                revert with 'NH{q', 17
                                            else:
                                                if lastBuy[tx.origin] + sub_d5f94685 > block.number:
                                                    revert with 0, 'delay block'
                                                else:
                                                    lastBuy[tx.origin] = block.number
                                                    if balanceOf[address(arg1)] < arg2:
                                                        revert with 0, 'ERC20: burn amount exceeds balance'
                                                    else:
                                                        balanceOf[address(arg1)] -= arg2
                                                        if totalSupply < arg2:
                                                            revert with 'NH{q', 17
                                                        else:
                                                            totalSupply -= arg2
                                                            emit Transfer(arg2, arg1, 0);
                        else:
                            if arg2 > maxBuyAmount:
                                revert with 0, 'exceeds maximum transfer'
                            else:
                                if not uint8(stor9.field_8):
                                    if sub_d5f94685 <= 0:
                                        lastBuy[tx.origin] = block.number
                                        if balanceOf[address(arg1)] < arg2:
                                            revert with 0, 'ERC20: burn amount exceeds balance'
                                        else:
                                            balanceOf[address(arg1)] -= arg2
                                            if totalSupply < arg2:
                                                revert with 'NH{q', 17
                                            else:
                                                totalSupply -= arg2
                                                emit Transfer(arg2, arg1, 0);
                                    else:
                                        if lastBuy[tx.origin] <= 0:
                                            lastBuy[tx.origin] = block.number
                                            if balanceOf[address(arg1)] < arg2:
                                                revert with 0, 'ERC20: burn amount exceeds balance'
                                            else:
                                                balanceOf[address(arg1)] -= arg2
                                                if totalSupply < arg2:
                                                    revert with 'NH{q', 17
                                                else:
                                                    totalSupply -= arg2
                                                    emit Transfer(arg2, arg1, 0);
                                        else:
                                            if lastBuy[tx.origin] > -sub_d5f94685 - 1:
                                                revert with 'NH{q', 17
                                            else:
                                                if lastBuy[tx.origin] + sub_d5f94685 > block.number:
                                                    revert with 0, 'delay block'
                                                else:
                                                    lastBuy[tx.origin] = block.number
                                                    if balanceOf[address(arg1)] < arg2:
                                                        revert with 0, 'ERC20: burn amount exceeds balance'
                                                    else:
                                                        balanceOf[address(arg1)] -= arg2
                                                        if totalSupply < arg2:
                                                            revert with 'NH{q', 17
                                                        else:
                                                            totalSupply -= arg2
                                                            emit Transfer(arg2, arg1, 0);
                                else:
                                    if not arg1:
                                        if sub_d5f94685 <= 0:
                                            lastBuy[tx.origin] = block.number
                                            if balanceOf[address(arg1)] < arg2:
                                                revert with 0, 'ERC20: burn amount exceeds balance'
                                            else:
                                                balanceOf[address(arg1)] -= arg2
                                                if totalSupply < arg2:
                                                    revert with 'NH{q', 17
                                                else:
                                                    totalSupply -= arg2
                                                    emit Transfer(arg2, arg1, 0);
                                        else:
                                            if lastBuy[tx.origin] <= 0:
                                                lastBuy[tx.origin] = block.number
                                                if balanceOf[address(arg1)] < arg2:
                                                    revert with 0, 'ERC20: burn amount exceeds balance'
                                                else:
                                                    balanceOf[address(arg1)] -= arg2
                                                    if totalSupply < arg2:
                                                        revert with 'NH{q', 17
                                                    else:
                                                        totalSupply -= arg2
                                                        emit Transfer(arg2, arg1, 0);
                                            else:
                                                if lastBuy[tx.origin] > -sub_d5f94685 - 1:
                                                    revert with 'NH{q', 17
                                                else:
                                                    if lastBuy[tx.origin] + sub_d5f94685 > block.number:
                                                        revert with 0, 'delay block'
                                                    else:
                                                        lastBuy[tx.origin] = block.number
                                                        if balanceOf[address(arg1)] < arg2:
                                                            revert with 0, 'ERC20: burn amount exceeds balance'
                                                        else:
                                                            balanceOf[address(arg1)] -= arg2
                                                            if totalSupply < arg2:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                totalSupply -= arg2
                                                                emit Transfer(arg2, arg1, 0);
                                    else:
                                        if sub_d5f94685 <= 0:
                                            lastBuy[tx.origin] = block.number
                                            if balanceOf[address(arg1)] < arg2:
                                                revert with 0, 'ERC20: burn amount exceeds balance'
                                            else:
                                                balanceOf[address(arg1)] -= arg2
                                                if totalSupply < arg2:
                                                    revert with 'NH{q', 17
                                                else:
                                                    totalSupply -= arg2
                                                    emit Transfer(arg2, arg1, 0);
                                        else:
                                            if lastBuy[tx.origin] <= 0:
                                                lastBuy[tx.origin] = block.number
                                                if balanceOf[address(arg1)] < arg2:
                                                    revert with 0, 'ERC20: burn amount exceeds balance'
                                                else:
                                                    balanceOf[address(arg1)] -= arg2
                                                    if totalSupply < arg2:
                                                        revert with 'NH{q', 17
                                                    else:
                                                        totalSupply -= arg2
                                                        emit Transfer(arg2, arg1, 0);
                                            else:
                                                if lastBuy[tx.origin] > -sub_d5f94685 - 1:
                                                    revert with 'NH{q', 17
                                                else:
                                                    if lastBuy[tx.origin] + sub_d5f94685 > block.number:
                                                        revert with 0, 'delay block'
                                                    else:
                                                        lastBuy[tx.origin] = block.number
                                                        if balanceOf[address(arg1)] < arg2:
                                                            revert with 0, 'ERC20: burn amount exceeds balance'
                                                        else:
                                                            balanceOf[address(arg1)] -= arg2
                                                            if totalSupply < arg2:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                totalSupply -= arg2
                                                                emit Transfer(arg2, arg1, 0);
}



}
