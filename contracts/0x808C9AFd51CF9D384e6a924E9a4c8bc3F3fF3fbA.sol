contract main {




// =====================  Runtime code  =====================


const decimals = 18


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor104;
array of struct stor105;
mapping of uint256 stor151;
array of struct stor152;
mapping of uint256 stor153;
uint256 unlockPercent;

function totalSupply() payable {
    return totalSupply
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function unlockPercent() payable {
    return unlockPercent
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

function setUnlockPercent(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor153[address(msg.sender)]:
        revert with 0, 'Only operator accounts'
    require arg1 <= 100
    unlockPercent = arg1
}

function sub_f8deff46(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor153[address(arg1)]:
        stor152.length++
        stor152[stor152.length].field_0 = address(arg1)
        stor152[stor152.length].field_160 = 0
        stor153[address(arg1)] = stor152.length
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

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor153[address(msg.sender)]:
        revert with 0, 'Only operator accounts'
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > -arg2 - 1:
        revert with 'NH{q', 17
    totalSupply += arg2
    if balanceOf[address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
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

function burn(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor153[address(msg.sender)]:
        revert with 0, 'Only operator accounts'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if balanceOf[address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
    balanceOf[address(arg1)] -= arg2
    if totalSupply < arg2:
        revert with 'NH{q', 17
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
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

function sub_ad1999ac(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor153[address(arg1)]:
        if stor153[address(arg1)] < 1:
            revert with 'NH{q', 17
        if stor152.length < 1:
            revert with 'NH{q', 17
        if stor152.length - 1 != stor153[address(arg1)] - 1:
            if stor152.length - 1 >= stor152.length:
                revert with 'NH{q', 50
            if stor153[address(arg1)] - 1 >= stor152.length:
                revert with 'NH{q', 50
            stor152[stor153[address(arg1)]].field_0 = stor152[stor152.length].field_0
            stor153[stor152[stor152.length].field_0] = stor153[address(arg1)]
        if not stor152.length:
            revert with 'NH{q', 49
        stor152[stor152.length].field_0 = 0
        stor152.length--
        stor153[address(arg1)] = 0
}

function transferAndLock(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor153[address(msg.sender)]:
        revert with 0, 'Only operator accounts'
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
    if stor151[address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    stor151[address(arg1)] += arg2
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if unlockPercent < 100:
        if 100 < unlockPercent:
            revert with 'NH{q', 17
        if stor151[address(msg.sender)] and -unlockPercent + 100 > -1 / stor151[address(msg.sender)]:
            revert with 'NH{q', 17
        if balanceOf[address(msg.sender)] < (100 * stor151[address(msg.sender)]) - (unlockPercent * stor151[address(msg.sender)]) / 100:
            revert with 'NH{q', 17
        if balanceOf[address(msg.sender)] - ((100 * stor151[address(msg.sender)]) - (unlockPercent * stor151[address(msg.sender)]) / 100) < arg2:
            revert with 0, 'Unlocked balance is not enough'
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

function sub_31c9c40b(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    if not stor153[address(msg.sender)]:
        revert with 0, 'Only operator accounts'
    if allowance[address(arg1)][address(msg.sender)] != -1:
        if allowance[address(arg1)][address(msg.sender)] < arg3:
            revert with 0, 'ERC20: insufficient allowance'
        if not address(arg1):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
        allowance[address(arg1)][address(msg.sender)] -= arg3
        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), address(arg1), msg.sender);
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not address(arg2):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if balanceOf[address(arg1)] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(arg1)] -= arg3
    if balanceOf[address(arg2)] > -arg3 - 1:
        revert with 'NH{q', 17
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, address(arg1), address(arg2));
    if 100 < unlockPercent:
        revert with 'NH{q', 17
    if stor151[address(arg1)] and -unlockPercent + 100 > -1 / stor151[address(arg1)]:
        revert with 'NH{q', 17
    if (100 * stor151[address(arg1)]) - (unlockPercent * stor151[address(arg1)]) / 100 <= arg3:
        stor151[address(arg1)] = 0
    else:
        if stor151[address(arg1)] < arg3:
            revert with 'NH{q', 17
        stor151[address(arg1)] -= arg3
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if unlockPercent < 100:
        if 100 < unlockPercent:
            revert with 'NH{q', 17
        if stor151[address(arg1)] and -unlockPercent + 100 > -1 / stor151[address(arg1)]:
            revert with 'NH{q', 17
        if balanceOf[address(arg1)] < (100 * stor151[address(arg1)]) - (unlockPercent * stor151[address(arg1)]) / 100:
            revert with 'NH{q', 17
        if balanceOf[address(arg1)] - ((100 * stor151[address(arg1)]) - (unlockPercent * stor151[address(arg1)]) / 100) <= arg3:
            revert with 0, 'Unlocked balance is not enough'
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

function name() payable {
    if bool(stor104.length):
        if bool(stor104.length) == stor104.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor104.length):
            if bool(stor104.length) == stor104.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor104.length.field_1:
                if 31 < stor104.length.field_1:
                    mem[128] = uint256(stor104.field_0)
                    idx = 128
                    s = 0
                    while stor104.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor104[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor104.length.field_1), data=mem[128 len ceil32(stor104.length.field_1)])
                mem[128] = 256 * stor104.length.field_8
        else:
            if bool(stor104.length) == stor104.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor104.length.field_1:
                if 31 < stor104.length.field_1:
                    mem[128] = uint256(stor104.field_0)
                    idx = 128
                    s = 0
                    while stor104.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor104[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor104.length.field_1), data=mem[128 len ceil32(stor104.length.field_1)])
                mem[128] = 256 * stor104.length.field_8
        mem[ceil32(stor104.length.field_1) + 192 len ceil32(stor104.length.field_1)] = mem[128 len ceil32(stor104.length.field_1)]
        if ceil32(stor104.length.field_1) > stor104.length.field_1:
            mem[ceil32(stor104.length.field_1) + stor104.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor104.length.field_1), data=mem[128 len ceil32(stor104.length.field_1)], mem[(2 * ceil32(stor104.length.field_1)) + 192 len 2 * ceil32(stor104.length.field_1)]), 
    if bool(stor104.length) == stor104.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor104.length):
        if bool(stor104.length) == stor104.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor104.length.field_1:
            if 31 < stor104.length.field_1:
                mem[128] = uint256(stor104.field_0)
                idx = 128
                s = 0
                while stor104.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor104[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor104.length % 128, data=mem[128 len ceil32(stor104.length.field_1)])
            mem[128] = 256 * stor104.length.field_8
    else:
        if bool(stor104.length) == stor104.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor104.length.field_1:
            if 31 < stor104.length.field_1:
                mem[128] = uint256(stor104.field_0)
                idx = 128
                s = 0
                while stor104.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor104[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor104.length % 128, data=mem[128 len ceil32(stor104.length.field_1)])
            mem[128] = 256 * stor104.length.field_8
    mem[ceil32(stor104.length.field_1) + 192 len ceil32(stor104.length.field_1)] = mem[128 len ceil32(stor104.length.field_1)]
    if ceil32(stor104.length.field_1) > stor104.length.field_1:
        mem[ceil32(stor104.length.field_1) + stor104.length.field_1 + 192] = 0
    return Array(len=stor104.length % 128, data=mem[128 len ceil32(stor104.length.field_1)], mem[(2 * ceil32(stor104.length.field_1)) + 192 len 2 * ceil32(stor104.length.field_1)]), 
}

function symbol() payable {
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

function initialize(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if uint8(stor0.field_8):
        if ext_code.size(this.address) > 0:
            revert with 0, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        Mask(248, 0, stor0.field_8) = 1
        uint8(stor0.field_0) = 1
        revert with 0, 'Initializable: contract is not initializing'
    owner = msg.sender
    emit OwnershipTransferred(owner, msg.sender);
    mem[floor32(arg1.length) + 97] = 13
    mem[floor32(arg1.length) + 129] = 'Search Neuron'
    mem[floor32(arg1.length) + 161] = 3
    mem[floor32(arg1.length) + 193] = 'SAC'
    if bool(stor104.length):
        if bool(stor104.length) == stor104.length.field_1 < 32:
            revert with 'NH{q', 34
        bool(stor104.length) = 0
        stor104.length.field_1 = 13
        stor104.length.field_8 = 'Search Neuron' / 256
        idx = 0
        while stor104.length.field_1 + 31 / 32 > idx:
            stor104[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if bool(stor104.length) == stor104.length.field_1 < 32:
            revert with 'NH{q', 34
        bool(stor104.length) = 0
        stor104.length.field_1 = 13
        stor104.length.field_8 = 'Search Neuron' / 256
        idx = 0
        while stor104.length.field_1 + 31 / 32 > idx:
            stor104[idx].field_0 = 0
            idx = idx + 1
            continue 
    if bool(stor105.length):
        if bool(stor105.length) == stor105.length.field_1 < 32:
            revert with 'NH{q', 34
        bool(stor105.length) = 0
        stor105.length.field_1 = 3
        stor105.length.field_8 = 'SAC' / 256
        idx = 0
        while stor105.length.field_1 + 31 / 32 > idx:
            stor105[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if bool(stor105.length) == stor105.length.field_1 < 32:
            revert with 'NH{q', 34
        bool(stor105.length) = 0
        stor105.length.field_1 = 3
        stor105.length.field_8 = 'SAC' / 256
        idx = 0
        while stor105.length.field_1 + 31 / 32 > idx:
            stor105[idx].field_0 = 0
            idx = idx + 1
            continue 
    if not owner:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > 0xffffffffffffffffffffffffffffffffffffffffffd6a416919bf9968dffffff:
        revert with 'NH{q', 17
    totalSupply += 50000000 * 10^18
    if balanceOf[stor51] > 0xffffffffffffffffffffffffffffffffffffffffffd6a416919bf9968dffffff:
        revert with 'NH{q', 17
    balanceOf[stor51] += 50000000 * 10^18
    mem[floor32(arg1.length) + 225] = 50000000 * 10^18
    emit Transfer(50000000 * 10^18, 0, owner);
    unlockPercent = 0
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 153
        if not stor153[mem[(32 * idx) + 140 len 20]]:
            stor152.length++
            stor152[stor152.length].field_0 = mem[(32 * idx) + 140 len 20]
            stor152[stor152.length].field_160 = 0
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 153
            stor153[address(mem[(32 * idx) + 128])] = stor152.length
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if not uint8(stor0.field_8):
        Mask(248, 0, stor0.field_8) = 0
}



}
