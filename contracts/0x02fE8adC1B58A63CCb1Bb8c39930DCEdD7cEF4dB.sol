contract main {




// =====================  Runtime code  =====================


const totalSupply = 1000000000 * 10^18


address owner;
mapping of uint256 stor1;
mapping of uint256 allowance;
uint256 stor4;
uint256 totalFees;
array of struct stor6;
array of struct stor7;
uint8 decimals;

function totalFees() payable {
    return totalFees
}

function decimals() payable {
    return decimals
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

function tokenFromReflection(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 > stor4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Void::tokenFromReflection: Amount must be less than total reflections'
    if not stor4 / 1000000000 * 10^18:
        revert with 'NH{q', 18
    return (arg1 / stor4 / 1000000000 * 10^18)
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1[address(arg1)] > stor4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Void::tokenFromReflection: Amount must be less than total reflections'
    if not stor4 / 1000000000 * 10^18:
        revert with 'NH{q', 18
    return (stor1[address(arg1)] / stor4 / 1000000000 * 10^18)
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Void::_approve: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Void::_approve: approve to the zero address'
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
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Void::_approve: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Void::_approve: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    55,
                    0x65566f69643a3a6465637265617365416c6c6f77616e63653a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[183 len 9] >> 184,
                    0
    if not msg.sender:
        revert with 0, 'Void::_approve: approve from the zero address'
    if not arg1:
        revert with 0, 'Void::_approve: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function reflect(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 and 666 > -1 / arg1:
        revert with 'NH{q', 17
    if arg1 < 666 * arg1 / 10000:
        revert with 'NH{q', 17
    if arg1 and stor4 / 1000000000 * 10^18 > -1 / arg1:
        revert with 'NH{q', 17
    if 666 * arg1 / 10000 and stor4 / 1000000000 * 10^18 > -1 / 666 * arg1 / 10000:
        revert with 'NH{q', 17
    if arg1 * stor4 / 1000000000 * 10^18 < 666 * arg1 / 10000 * stor4 / 1000000000 * 10^18:
        revert with 'NH{q', 17
    if stor1[address(msg.sender)] < arg1 * stor4 / 1000000000 * 10^18:
        revert with 'NH{q', 17
    stor1[address(msg.sender)] += -1 * arg1 * stor4 / 1000000000 * 10^18
    if stor4 < arg1 * stor4 / 1000000000 * 10^18:
        revert with 'NH{q', 17
    stor4 += -1 * arg1 * stor4 / 1000000000 * 10^18
    if totalFees > -arg1 - 1:
        revert with 'NH{q', 17
    totalFees += arg1
}

function reflectionFromToken(uint256 arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 > 1000000000 * 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Void::reflectionFromToken: Amount must be less than supply'
    if arg1 and 666 > -1 / arg1:
        revert with 'NH{q', 17
    if arg1 < 666 * arg1 / 10000:
        revert with 'NH{q', 17
    if arg1 and stor4 / 1000000000 * 10^18 > -1 / arg1:
        revert with 'NH{q', 17
    if 666 * arg1 / 10000 and stor4 / 1000000000 * 10^18 > -1 / 666 * arg1 / 10000:
        revert with 'NH{q', 17
    if arg1 * stor4 / 1000000000 * 10^18 < 666 * arg1 / 10000 * stor4 / 1000000000 * 10^18:
        revert with 'NH{q', 17
    if arg2:
        return ((arg1 * stor4 / 1000000000 * 10^18) - (666 * arg1 / 10000 * stor4 / 1000000000 * 10^18))
    return (arg1 * stor4 / 1000000000 * 10^18)
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Void::transfer: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Void::transfer: transfer to the zero address'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Void::transfer: Transfer amount must be greater than zero'
    if arg2 and 666 > -1 / arg2:
        revert with 'NH{q', 17
    if arg2 < 666 * arg2 / 10000:
        revert with 'NH{q', 17
    if arg2 and stor4 / 1000000000 * 10^18 > -1 / arg2:
        revert with 'NH{q', 17
    if 666 * arg2 / 10000 and stor4 / 1000000000 * 10^18 > -1 / 666 * arg2 / 10000:
        revert with 'NH{q', 17
    if arg2 * stor4 / 1000000000 * 10^18 < 666 * arg2 / 10000 * stor4 / 1000000000 * 10^18:
        revert with 'NH{q', 17
    if stor1[address(msg.sender)] < arg2 * stor4 / 1000000000 * 10^18:
        revert with 'NH{q', 17
    stor1[address(msg.sender)] += -1 * arg2 * stor4 / 1000000000 * 10^18
    if stor1[address(arg1)] > (-1 * arg2 * stor4 / 1000000000 * 10^18) + (666 * arg2 / 10000 * stor4 / 1000000000 * 10^18) - 1:
        revert with 'NH{q', 17
    stor1[address(arg1)] = stor1[address(arg1)] + (arg2 * stor4 / 1000000000 * 10^18) - (666 * arg2 / 10000 * stor4 / 1000000000 * 10^18)
    if stor4 < 666 * arg2 / 10000 * stor4 / 1000000000 * 10^18:
        revert with 'NH{q', 17
    stor4 += -1 * 666 * arg2 / 10000 * stor4 / 1000000000 * 10^18
    if totalFees > -(666 * arg2 / 10000) - 1:
        revert with 'NH{q', 17
    totalFees += 666 * arg2 / 10000
    emit Transfer((arg2 - (666 * arg2 / 10000)), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Void::transfer: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Void::transfer: transfer to the zero address'
    if arg3 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Void::transfer: Transfer amount must be greater than zero'
    if arg3 and 666 > -1 / arg3:
        revert with 'NH{q', 17
    if arg3 < 666 * arg3 / 10000:
        revert with 'NH{q', 17
    if arg3 and stor4 / 1000000000 * 10^18 > -1 / arg3:
        revert with 'NH{q', 17
    if 666 * arg3 / 10000 and stor4 / 1000000000 * 10^18 > -1 / 666 * arg3 / 10000:
        revert with 'NH{q', 17
    if arg3 * stor4 / 1000000000 * 10^18 < 666 * arg3 / 10000 * stor4 / 1000000000 * 10^18:
        revert with 'NH{q', 17
    if stor1[address(arg1)] < arg3 * stor4 / 1000000000 * 10^18:
        revert with 'NH{q', 17
    stor1[address(arg1)] += -1 * arg3 * stor4 / 1000000000 * 10^18
    if stor1[address(arg2)] > (-1 * arg3 * stor4 / 1000000000 * 10^18) + (666 * arg3 / 10000 * stor4 / 1000000000 * 10^18) - 1:
        revert with 'NH{q', 17
    stor1[address(arg2)] = stor1[address(arg2)] + (arg3 * stor4 / 1000000000 * 10^18) - (666 * arg3 / 10000 * stor4 / 1000000000 * 10^18)
    if stor4 < 666 * arg3 / 10000 * stor4 / 1000000000 * 10^18:
        revert with 'NH{q', 17
    stor4 += -1 * 666 * arg3 / 10000 * stor4 / 1000000000 * 10^18
    if totalFees > -(666 * arg3 / 10000) - 1:
        revert with 'NH{q', 17
    totalFees += 666 * arg3 / 10000
    emit Transfer((arg3 - (666 * arg3 / 10000)), arg1, arg2);
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 
                    32,
                    53,
                    0xfe566f69643a3a7472616e7366657246726f6d3a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[181 len 11] >> 168,
                    0
    if not arg1:
        revert with 0, 'Void::_approve: approve from the zero address'
    if not msg.sender:
        revert with 0, 'Void::_approve: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function name() payable {
    if bool(stor6.length):
        if bool(stor6.length) == stor6.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor6.length):
            if bool(stor6.length) == stor6.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor6.length.field_1:
                if 31 < stor6.length.field_1:
                    mem[128] = uint256(stor6.field_0)
                    idx = 128
                    s = 0
                    while stor6.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor6[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor6.length.field_1), data=mem[128 len ceil32(stor6.length.field_1)])
                mem[128] = 256 * stor6.length.field_8
        else:
            if bool(stor6.length) == stor6.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor6.length.field_1:
                if 31 < stor6.length.field_1:
                    mem[128] = uint256(stor6.field_0)
                    idx = 128
                    s = 0
                    while stor6.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor6[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor6.length.field_1), data=mem[128 len ceil32(stor6.length.field_1)])
                mem[128] = 256 * stor6.length.field_8
        mem[ceil32(stor6.length.field_1) + 192 len ceil32(stor6.length.field_1)] = mem[128 len ceil32(stor6.length.field_1)]
        if ceil32(stor6.length.field_1) > stor6.length.field_1:
            mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor6.length.field_1), data=mem[128 len ceil32(stor6.length.field_1)], mem[(2 * ceil32(stor6.length.field_1)) + 192 len 2 * ceil32(stor6.length.field_1)]), 
    if bool(stor6.length) == stor6.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor6.length):
        if bool(stor6.length) == stor6.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor6.length.field_1:
            if 31 < stor6.length.field_1:
                mem[128] = uint256(stor6.field_0)
                idx = 128
                s = 0
                while stor6.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor6[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)])
            mem[128] = 256 * stor6.length.field_8
    else:
        if bool(stor6.length) == stor6.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor6.length.field_1:
            if 31 < stor6.length.field_1:
                mem[128] = uint256(stor6.field_0)
                idx = 128
                s = 0
                while stor6.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor6[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)])
            mem[128] = 256 * stor6.length.field_8
    mem[ceil32(stor6.length.field_1) + 192 len ceil32(stor6.length.field_1)] = mem[128 len ceil32(stor6.length.field_1)]
    if ceil32(stor6.length.field_1) > stor6.length.field_1:
        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 192] = 0
    return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)], mem[(2 * ceil32(stor6.length.field_1)) + 192 len 2 * ceil32(stor6.length.field_1)]), 
}

function symbol() payable {
    if bool(stor7.length):
        if bool(stor7.length) == stor7.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor7.length):
            if bool(stor7.length) == stor7.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor7.length.field_1:
                if 31 < stor7.length.field_1:
                    mem[128] = uint256(stor7.field_0)
                    idx = 128
                    s = 0
                    while stor7.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor7[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor7.length.field_1), data=mem[128 len ceil32(stor7.length.field_1)])
                mem[128] = 256 * stor7.length.field_8
        else:
            if bool(stor7.length) == stor7.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor7.length.field_1:
                if 31 < stor7.length.field_1:
                    mem[128] = uint256(stor7.field_0)
                    idx = 128
                    s = 0
                    while stor7.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor7[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor7.length.field_1), data=mem[128 len ceil32(stor7.length.field_1)])
                mem[128] = 256 * stor7.length.field_8
        mem[ceil32(stor7.length.field_1) + 192 len ceil32(stor7.length.field_1)] = mem[128 len ceil32(stor7.length.field_1)]
        if ceil32(stor7.length.field_1) > stor7.length.field_1:
            mem[ceil32(stor7.length.field_1) + stor7.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor7.length.field_1), data=mem[128 len ceil32(stor7.length.field_1)], mem[(2 * ceil32(stor7.length.field_1)) + 192 len 2 * ceil32(stor7.length.field_1)]), 
    if bool(stor7.length) == stor7.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor7.length):
        if bool(stor7.length) == stor7.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor7.length.field_1:
            if 31 < stor7.length.field_1:
                mem[128] = uint256(stor7.field_0)
                idx = 128
                s = 0
                while stor7.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor7[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1)])
            mem[128] = 256 * stor7.length.field_8
    else:
        if bool(stor7.length) == stor7.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor7.length.field_1:
            if 31 < stor7.length.field_1:
                mem[128] = uint256(stor7.field_0)
                idx = 128
                s = 0
                while stor7.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor7[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1)])
            mem[128] = 256 * stor7.length.field_8
    mem[ceil32(stor7.length.field_1) + 192 len ceil32(stor7.length.field_1)] = mem[128 len ceil32(stor7.length.field_1)]
    if ceil32(stor7.length.field_1) > stor7.length.field_1:
        mem[ceil32(stor7.length.field_1) + stor7.length.field_1 + 192] = 0
    return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1)], mem[(2 * ceil32(stor7.length.field_1)) + 192 len 2 * ceil32(stor7.length.field_1)]), 
}



}
