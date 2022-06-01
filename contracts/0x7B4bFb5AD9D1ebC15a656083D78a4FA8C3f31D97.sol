contract main {




// =====================  Runtime code  =====================


address founderAddress;
mapping of uint256 balanceOf;
mapping of uint8 stor2;
uint8 stor3;
array of struct stor4;
array of struct stor5;
uint8 decimals;
uint256 totalSupply;
address treasuryAddress;
mapping of uint256 allowance;

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function isWhitelisted(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor2[arg1])
}

function founder() payable {
    return founderAddress
}

function paused() payable {
    return bool(stor3)
}

function treasury() payable {
    return treasuryAddress
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

function _fallback() payable {
    revert
}

function selfDestruct() payable {
    if founderAddress != msg.sender:
        revert with 0, 'Your are not the Founder.'
    balanceOf[stor0] = 0
    totalSupply = 0
    return 1
}

function unpause() payable {
    if founderAddress != msg.sender:
        revert with 0, 'Your are not the Founder.'
    require stor3
    stor3 = 0
    emit Unpause()
    return 1
}

function pause() payable {
    if founderAddress != msg.sender:
        revert with 0, 'Your are not the Founder.'
    if stor3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'All transactions have been paused.'
    stor3 = 1
    emit Pause()
    return 1
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if founderAddress != msg.sender:
        revert with 0, 'Your are not the Founder.'
    if totalSupply > -arg2 - 1:
        revert with 'NH{q', 17
    totalSupply += arg2
    if balanceOf[address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    return 1
}

function addToWhitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if founderAddress != msg.sender:
        revert with 0, 'Your are not the Founder.'
    if stor2[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Whitelisted status detected; please check whitelisted status.'
    stor2[address(arg1)] = 1
    emit AddToWhitelist(arg1);
    return 1
}

function removedFromWhitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if founderAddress != msg.sender:
        revert with 0, 'Your are not the Founder.'
    if bool(stor2[address(arg1)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Whitelisted status not detected; please check whitelisted status.'
    stor2[address(arg1)] = 0
    emit RemovedFromWhitelist(arg1);
    return 1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if founderAddress != msg.sender:
        revert with 0, 'Your are not the Founder.'
    if not arg1:
        revert with 0, 'Zero address not allowed.'
    balanceOf[stor0] = 0
    if balanceOf[address(arg1)] > -balanceOf[stor0] - 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)] += balanceOf[stor0]
    founderAddress = arg1
    emit TransferOwnership(founderAddress, arg1);
    return 1
}

function burn(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if founderAddress != msg.sender:
        revert with 0, 'Your are not the Founder.'
    if balanceOf[address(arg1)] < arg2:
        revert with 0, 'Burn amount exceeds balance'
    if balanceOf[address(arg1)] < arg2:
        revert with 'NH{q', 17
    balanceOf[address(arg1)] -= arg2
    if totalSupply < arg2:
        revert with 'NH{q', 17
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0, 'Zero address not allowed.'
    if not msg.sender:
        revert with 0, 'Zero address not allowed.'
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0, 'Not enough balance.'
    if arg2 <= 0:
        revert with 0, 'The value is less than zero!'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burnWhiteTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if founderAddress != msg.sender:
        revert with 0, 'Your are not the Founder.'
    if bool(stor2[address(arg1)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Whitelisted status not detected; please check whitelisted status.'
    balanceOf[address(arg1)] = 0
    if balanceOf[stor0] > -balanceOf[address(arg1)] - 1:
        revert with 'NH{q', 17
    balanceOf[stor0] += balanceOf[address(arg1)]
    emit BurnWhiteTokens(address(arg1), balanceOf[address(arg1)]);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(msg.sender)][address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    if not arg1:
        revert with 0, 'Zero address not allowed.'
    if not msg.sender:
        revert with 0, 'Zero address not allowed.'
    if balanceOf[address(msg.sender)] < allowance[address(msg.sender)][address(arg1)] + arg2:
        revert with 0, 'Not enough balance.'
    if allowance[address(msg.sender)][address(arg1)] + arg2 <= 0:
        revert with 0, 'The value is less than zero!'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(msg.sender)][address(arg1)] < arg2:
        revert with 'NH{q', 17
    if not arg1:
        revert with 0, 'Zero address not allowed.'
    if not msg.sender:
        revert with 0, 'Zero address not allowed.'
    if allowance[address(msg.sender)][address(arg1)] < allowance[address(msg.sender)][address(arg1)] - arg2:
        revert with 0, 'Not enough balance.'
    if allowance[address(msg.sender)][address(arg1)] - arg2 <= 0:
        revert with 0, 'The value is less than zero!'
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0, 'Zero address not allowed.'
    if not arg1:
        revert with 0, 'Zero address not allowed.'
    if stor2[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Whitelisted status detected; please check whitelisted status.'
    if stor2[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Whitelisted status detected; please check whitelisted status.'
    if stor3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'All transactions have been paused.'
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, balanceOf[address(msg.sender)], arg2
    if balanceOf[address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)] += arg2
    if balanceOf[address(msg.sender)] < arg2:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)] -= arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function changeTokenName(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    if founderAddress != msg.sender:
        revert with 0, 'Your are not the Founder.'
    if bool(stor4.length):
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor4[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor4.length = 0
            idx = 0
            while stor4.length.field_1 + 31 / 32 > idx:
                stor4[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor4[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor4.length = 0
            idx = 0
            while stor4.length.field_1 + 31 / 32 > idx:
                stor4[idx].field_0 = 0
                idx = idx + 1
                continue 
    return 1
}

function changeTokenSymbol(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    if founderAddress != msg.sender:
        revert with 0, 'Your are not the Founder.'
    if bool(stor5.length):
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor5[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor5.length = 0
            idx = 0
            while stor5.length.field_1 + 31 / 32 > idx:
                stor5[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor5[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor5.length = 0
            idx = 0
            while stor5.length.field_1 + 31 / 32 > idx:
                stor5[idx].field_0 = 0
                idx = idx + 1
                continue 
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not arg1:
        revert with 0, 'Zero address not allowed.'
    if not arg2:
        revert with 0, 'Zero address not allowed.'
    if stor2[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Whitelisted status detected; please check whitelisted status.'
    if stor2[address(arg2)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Whitelisted status detected; please check whitelisted status.'
    if stor3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'All transactions have been paused.'
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, balanceOf[address(arg1)], arg3
    if balanceOf[address(arg2)] > -arg3 - 1:
        revert with 'NH{q', 17
    balanceOf[address(arg2)] += arg3
    if balanceOf[address(arg1)] < arg3:
        revert with 'NH{q', 17
    balanceOf[address(arg1)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0, 'Zero address not allowed.'
    if not arg1:
        revert with 0, 'Zero address not allowed.'
    if allowance[address(arg1)][address(msg.sender)] < allowance[address(arg1)][address(msg.sender)] - arg3:
        revert with 0, 'Not enough balance.'
    if allowance[address(arg1)][address(msg.sender)] - arg3 <= 0:
        revert with 0, 'The value is less than zero!'
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function name() payable {
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

function symbol() payable {
    if bool(stor5.length):
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor5.length):
            if bool(stor5.length) == stor5.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor5.length.field_1:
                if 31 < stor5.length.field_1:
                    mem[128] = uint256(stor5.field_0)
                    idx = 128
                    s = 0
                    while stor5.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor5[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5.length.field_1), data=mem[128 len ceil32(stor5.length.field_1)])
                mem[128] = 256 * stor5.length.field_8
        else:
            if bool(stor5.length) == stor5.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor5.length.field_1:
                if 31 < stor5.length.field_1:
                    mem[128] = uint256(stor5.field_0)
                    idx = 128
                    s = 0
                    while stor5.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor5[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5.length.field_1), data=mem[128 len ceil32(stor5.length.field_1)])
                mem[128] = 256 * stor5.length.field_8
        mem[ceil32(stor5.length.field_1) + 192 len ceil32(stor5.length.field_1)] = mem[128 len ceil32(stor5.length.field_1)]
        if ceil32(stor5.length.field_1) > stor5.length.field_1:
            mem[ceil32(stor5.length.field_1) + stor5.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor5.length.field_1), data=mem[128 len ceil32(stor5.length.field_1)], mem[(2 * ceil32(stor5.length.field_1)) + 192 len 2 * ceil32(stor5.length.field_1)]), 
    if bool(stor5.length) == stor5.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor5.length):
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor5.length.field_1:
            if 31 < stor5.length.field_1:
                mem[128] = uint256(stor5.field_0)
                idx = 128
                s = 0
                while stor5.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)])
            mem[128] = 256 * stor5.length.field_8
    else:
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor5.length.field_1:
            if 31 < stor5.length.field_1:
                mem[128] = uint256(stor5.field_0)
                idx = 128
                s = 0
                while stor5.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)])
            mem[128] = 256 * stor5.length.field_8
    mem[ceil32(stor5.length.field_1) + 192 len ceil32(stor5.length.field_1)] = mem[128 len ceil32(stor5.length.field_1)]
    if ceil32(stor5.length.field_1) > stor5.length.field_1:
        mem[ceil32(stor5.length.field_1) + stor5.length.field_1 + 192] = 0
    return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)], mem[(2 * ceil32(stor5.length.field_1)) + 192 len 2 * ceil32(stor5.length.field_1)]), 
}



}
