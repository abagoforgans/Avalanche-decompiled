contract main {




// =====================  Runtime code  =====================


#
#  - initialize()
#
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint256 sub_ba8c7c21;
uint256 totalSupply;
array of struct stor105;
array of struct stor106;
uint8 decimals;
address owner;
array of address sub_2a29ad14;
address sub_64210fa9Address;
address sub_23fa233dAddress;
address sub_bc77ac58Address;
address sub_964bca5fAddress;
uint256 MAX_SUPPLY;
uint256 MAX_AIRDROP;
uint256 sub_5f9ff6b3;

function totalSupply() payable {
    return totalSupply
}

function sub_23fa233d(?) payable {
    return sub_23fa233dAddress
}

function sub_2a29ad14(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_2a29ad14.length
    return sub_2a29ad14[arg1]
}

function decimals() payable {
    return decimals
}

function MAX_SUPPLY() payable {
    return MAX_SUPPLY
}

function sub_5f9ff6b3(?) payable {
    return sub_5f9ff6b3
}

function sub_64210fa9(?) payable {
    return sub_64210fa9Address
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function owner() payable {
    return owner
}

function sub_964bca5f(?) payable {
    return sub_964bca5fAddress
}

function sub_ba8c7c21(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_ba8c7c21[arg1]
}

function sub_bc77ac58(?) payable {
    return sub_bc77ac58Address
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function MAX_AIRDROP() payable {
    return MAX_AIRDROP
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

function addMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_2a29ad14.length++
    sub_2a29ad14[sub_2a29ad14.length] = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
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

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 32, 37, code.data[18622 len 37], mem[165 len 27] >> 40, 0
    if allowance[address(msg.sender)][address(arg1)] < arg2:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(msg.sender)][address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    if allowance[address(msg.sender)][address(arg1)] + arg2 < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    idx = 0
    while idx < sub_2a29ad14.length:
        mem[0] = 202
        if sub_2a29ad14[idx] != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if totalSupply <= MAX_SUPPLY:
            if not arg1:
                revert with 0, 'ERC20: mint to the zero address'
            if totalSupply > -arg2 - 1:
                revert with 'NH{q', 17
            if totalSupply + arg2 < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += arg2
            if balanceOf[address(arg1)] > -arg2 - 1:
                revert with 'NH{q', 17
            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] += arg2
            emit Transfer(arg2, 0, arg1);
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '!IsMinter: caller is not from minter'
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if sub_ba8c7c21[address(msg.sender)] > -2:
        revert with 'NH{q', 17
    require block.number >= sub_ba8c7c21[address(msg.sender)] + 1
    sub_ba8c7c21[address(msg.sender)] = block.number
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 32, 38, code.data[18544 len 38], mem[166 len 26] >> 48, 0
    if balanceOf[address(msg.sender)] < arg2:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
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
    if sub_ba8c7c21[address(arg1)] > -2:
        revert with 'NH{q', 17
    require block.number >= sub_ba8c7c21[address(arg1)] + 1
    sub_ba8c7c21[address(arg1)] = block.number
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 32, 38, code.data[18544 len 38], mem[166 len 26] >> 48, 0
    if balanceOf[address(arg1)] < arg3:
        revert with 'NH{q', 17
    balanceOf[address(arg1)] -= arg3
    if balanceOf[address(arg2)] > -arg3 - 1:
        revert with 'NH{q', 17
    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 32, 40, code.data[18582 len 40], mem[264 len 24] >> 64, 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        revert with 'NH{q', 17
    if not arg1:
        revert with 0, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function burn(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    idx = 0
    while idx < sub_2a29ad14.length:
        mem[0] = 202
        if sub_2a29ad14[idx] != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
        mem[128 len 34] = code.data[18510 len 34]
        if arg2 > balanceOf[address(arg1)]:
            mem[192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[196] = 32
            idx = 0
            while idx < 34:
                mem[idx + 260] = mem[idx + 128]
                idx = idx + 32
                continue 
            revert with 0, 32, 34, mem[260 len 34], 0
        if balanceOf[address(arg1)] < arg2:
            revert with 'NH{q', 17
        balanceOf[address(arg1)] -= arg2
        mem[224] = 'SafeMath: subtraction overflow'
        if arg2 <= totalSupply:
            if totalSupply < arg2:
                revert with 'NH{q', 17
            totalSupply -= arg2
            emit Transfer(arg2, arg1, 0);
        mem[256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[260] = 32
        idx = 0
        while idx < 30:
            mem[idx + 324] = mem[idx + 224]
            idx = idx + 32
            continue 
        revert with 0, 32, 30, mem[324 len 30], 0
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '!IsMinter: caller is not from minter'
}

function sub_d4819e40(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if (32 * ('cd', 4).length) + 128 > test266151307() or (32 * ('cd', 4).length) + 128 < 96:
        revert with 'NH{q', 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] == cd[36]
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require sub_5f9ff6b3 <= MAX_AIRDROP
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        _34 = mem[(32 * idx) + 128]
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 'ERC20: mint to the zero address'
        if totalSupply > -cd[36] - 1:
            revert with 'NH{q', 17
        if totalSupply + cd[36] < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        totalSupply += cd[36]
        if balanceOf[mem[(32 * idx) + 140 len 20]] > -cd[36] - 1:
            revert with 'NH{q', 17
        if balanceOf[mem[(32 * idx) + 140 len 20]] + cd[36] < balanceOf[mem[(32 * idx) + 140 len 20]]:
            revert with 0, 'SafeMath: addition overflow'
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 101
        balanceOf[address(mem[(32 * idx) + 128])] = balanceOf[mem[(32 * idx) + 140 len 20]] + cd[36]
        mem[(32 * ('cd', 4).length) + 128] = cd[36]
        emit Transfer(cd[36], 0, address(_34));
        if sub_5f9ff6b3 > -cd[36] - 1:
            revert with 'NH{q', 17
        sub_5f9ff6b3 += cd[36]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function name() payable {
    if bool(stor105.length):
        if bool(stor105.length) == stor105.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor105.length):
            if bool(stor105.length) == stor105.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor105.length.field_1:
                if 31 < stor105.length.field_1:
                    mem[128] = uint256(stor105.field_0)
                    idx = 128
                    s = 0
                    while stor105.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor105[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor105.length.field_1), data=mem[128 len ceil32(stor105.length.field_1)])
                mem[128] = 256 * stor105.length.field_8
        else:
            if bool(stor105.length) == stor105.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor105.length.field_1:
                if 31 < stor105.length.field_1:
                    mem[128] = uint256(stor105.field_0)
                    idx = 128
                    s = 0
                    while stor105.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor105[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor105.length.field_1), data=mem[128 len ceil32(stor105.length.field_1)])
                mem[128] = 256 * stor105.length.field_8
        mem[ceil32(stor105.length.field_1) + 192 len ceil32(stor105.length.field_1)] = mem[128 len ceil32(stor105.length.field_1)]
        if ceil32(stor105.length.field_1) > stor105.length.field_1:
            mem[ceil32(stor105.length.field_1) + stor105.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor105.length.field_1), data=mem[128 len ceil32(stor105.length.field_1)], mem[(2 * ceil32(stor105.length.field_1)) + 192 len 2 * ceil32(stor105.length.field_1)]), 
    if bool(stor105.length) == stor105.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor105.length):
        if bool(stor105.length) == stor105.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor105.length.field_1:
            if 31 < stor105.length.field_1:
                mem[128] = uint256(stor105.field_0)
                idx = 128
                s = 0
                while stor105.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor105[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor105.length % 128, data=mem[128 len ceil32(stor105.length.field_1)])
            mem[128] = 256 * stor105.length.field_8
    else:
        if bool(stor105.length) == stor105.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor105.length.field_1:
            if 31 < stor105.length.field_1:
                mem[128] = uint256(stor105.field_0)
                idx = 128
                s = 0
                while stor105.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor105[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor105.length % 128, data=mem[128 len ceil32(stor105.length.field_1)])
            mem[128] = 256 * stor105.length.field_8
    mem[ceil32(stor105.length.field_1) + 192 len ceil32(stor105.length.field_1)] = mem[128 len ceil32(stor105.length.field_1)]
    if ceil32(stor105.length.field_1) > stor105.length.field_1:
        mem[ceil32(stor105.length.field_1) + stor105.length.field_1 + 192] = 0
    return Array(len=stor105.length % 128, data=mem[128 len ceil32(stor105.length.field_1)], mem[(2 * ceil32(stor105.length.field_1)) + 192 len 2 * ceil32(stor105.length.field_1)]), 
}

function symbol() payable {
    if bool(stor106.length):
        if bool(stor106.length) == stor106.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor106.length):
            if bool(stor106.length) == stor106.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor106.length.field_1:
                if 31 < stor106.length.field_1:
                    mem[128] = uint256(stor106.field_0)
                    idx = 128
                    s = 0
                    while stor106.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor106[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor106.length.field_1), data=mem[128 len ceil32(stor106.length.field_1)])
                mem[128] = 256 * stor106.length.field_8
        else:
            if bool(stor106.length) == stor106.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor106.length.field_1:
                if 31 < stor106.length.field_1:
                    mem[128] = uint256(stor106.field_0)
                    idx = 128
                    s = 0
                    while stor106.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor106[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor106.length.field_1), data=mem[128 len ceil32(stor106.length.field_1)])
                mem[128] = 256 * stor106.length.field_8
        mem[ceil32(stor106.length.field_1) + 192 len ceil32(stor106.length.field_1)] = mem[128 len ceil32(stor106.length.field_1)]
        if ceil32(stor106.length.field_1) > stor106.length.field_1:
            mem[ceil32(stor106.length.field_1) + stor106.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor106.length.field_1), data=mem[128 len ceil32(stor106.length.field_1)], mem[(2 * ceil32(stor106.length.field_1)) + 192 len 2 * ceil32(stor106.length.field_1)]), 
    if bool(stor106.length) == stor106.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor106.length):
        if bool(stor106.length) == stor106.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor106.length.field_1:
            if 31 < stor106.length.field_1:
                mem[128] = uint256(stor106.field_0)
                idx = 128
                s = 0
                while stor106.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor106[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor106.length % 128, data=mem[128 len ceil32(stor106.length.field_1)])
            mem[128] = 256 * stor106.length.field_8
    else:
        if bool(stor106.length) == stor106.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor106.length.field_1:
            if 31 < stor106.length.field_1:
                mem[128] = uint256(stor106.field_0)
                idx = 128
                s = 0
                while stor106.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor106[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor106.length % 128, data=mem[128 len ceil32(stor106.length.field_1)])
            mem[128] = 256 * stor106.length.field_8
    mem[ceil32(stor106.length.field_1) + 192 len ceil32(stor106.length.field_1)] = mem[128 len ceil32(stor106.length.field_1)]
    if ceil32(stor106.length.field_1) > stor106.length.field_1:
        mem[ceil32(stor106.length.field_1) + stor106.length.field_1 + 192] = 0
    return Array(len=stor106.length % 128, data=mem[128 len ceil32(stor106.length.field_1)], mem[(2 * ceil32(stor106.length.field_1)) + 192 len 2 * ceil32(stor106.length.field_1)]), 
}



}
