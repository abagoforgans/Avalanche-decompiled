contract main {




// =====================  Runtime code  =====================


#
#  - initialize()
#  - delegateBySig(address arg1, uint256 arg2, uint256 arg3, uint8 arg4, bytes32 arg5, bytes32 arg6)
#
const decimals = 18


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor54;
array of struct stor55;
address owner;
uint256 stor201;
uint256 stor202;
mapping of uint256 nonces;
uint256 stor254;
mapping of address delegates;
array of struct numCheckpoints;
array of struct stor306;

function totalSupply() payable {
    return totalSupply
}

function delegates(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return delegates[address(arg1)]
}

function numCheckpoints(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if numCheckpoints[address(arg1)].field_0 > test266151307():
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 32 bits'
    return numCheckpoints[address(arg1)].field_0
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return uint256(balanceOf[address(arg1)])
}

function nonces(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return nonces[address(arg1)]
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

function checkpoints(address arg1, uint32 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 >= numCheckpoints[address(arg1)].field_0:
        revert with 'NH{q', 50
    return numCheckpoints[address(arg1)][arg2].field_0, numCheckpoints[address(arg1)][arg2].field_32
}

function _fallback() payable {
    revert
}

function DOMAIN_SEPARATOR() payable {
    return sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, stor201, stor202, chainid, this.address)
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

function getVotes(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not numCheckpoints[address(arg1)].field_0:
        return 0
    if numCheckpoints[address(arg1)].field_0 < 1:
        revert with 'NH{q', 17
    if numCheckpoints[address(arg1)].field_0 - 1 >= numCheckpoints[address(arg1)].field_0:
        revert with 'NH{q', 50
    return numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0
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

function getPastTotalSupply(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= block.number:
        revert with 0, 'ERC20Votes: block not yet mined'
    idx = stor306.length
    while 0 < idx:
        if 0 > -(0 xor idx / 2) - 1:
            revert with 'NH{q', 17
        if 0 xor idx / 2 >= stor306.length:
            revert with 'NH{q', 50
        mem[0] = 306
        if stor306[0.5 / 0 xor idx].field_0 > arg1:
            idx = 0 xor idx / 2
            continue 
        if 0 xor idx / 2 > -2:
            revert with 'NH{q', 17
        idx = idx
        continue 
    if not idx:
        return 0
    if idx < 1:
        revert with 'NH{q', 17
    if idx - 1 >= stor306.length:
        revert with 'NH{q', 50
    return stor306[idx].field_0
}

function getPastVotes(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 >= block.number:
        revert with 0, 'ERC20Votes: block not yet mined'
    mem[0] = arg1
    idx = numCheckpoints[mem[0]].field_0
    while 0 < idx:
        if 0 > -(0 xor idx / 2) - 1:
            revert with 'NH{q', 17
        if 0 xor idx / 2 >= numCheckpoints[address(arg1)].field_0:
            revert with 'NH{q', 50
        mem[0] = sha3(address(arg1), 305)
        if numCheckpoints[address(arg1)][0.5 / 0 xor idx].field_0 > arg2:
            idx = 0 xor idx / 2
            continue 
        if 0 xor idx / 2 > -2:
            revert with 'NH{q', 17
        idx = idx
        continue 
    if not idx:
        return 0
    if idx < 1:
        revert with 'NH{q', 17
    if idx - 1 >= numCheckpoints[address(arg1)].field_0:
        revert with 'NH{q', 50
    return numCheckpoints[address(arg1)][idx].field_0
}

function permit(address arg1, address arg2, uint256 arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) payable {
    require calldata.size - 4 >= 224
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    require arg7 == arg7
    if block.timestamp > arg4:
        revert with 0, 'ERC20Permit: expired deadline'
    nonces[address(arg1)]++
    if arg7 > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 'ECDSA: invalid signature 's' value'
    if arg5 != 27:
        if arg5 != 28:
            revert with 0, 'ECDSA: invalid signature 'v' value'
    signer = erecover(sha3(0, sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, stor201, stor202, chainid, this.address), sha3(stor254, address(arg1), address(arg2), arg3, nonces[address(arg1)], arg4)), arg5 << 248, arg6, arg7) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'ECDSA: invalid signature'
    if address(signer) != arg1:
        revert with 0, 'ERC20Permit: invalid signature'
    if not arg1:
        revert with 0, 'ERC20: approve from the zero address'
    if not arg2:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(arg2)] = arg3
    emit Approval(arg3, arg1, arg2);
}

function name() payable {
    if bool(stor54.length):
        if bool(stor54.length) == stor54.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor54.length):
            if bool(stor54.length) == stor54.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor54.length.field_1:
                if 31 < stor54.length.field_1:
                    mem[128] = uint256(stor54.field_0)
                    idx = 128
                    s = 0
                    while stor54.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor54[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor54.length.field_1), data=mem[128 len ceil32(stor54.length.field_1)])
                mem[128] = 256 * stor54.length.field_8
        else:
            if bool(stor54.length) == stor54.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor54.length.field_1:
                if 31 < stor54.length.field_1:
                    mem[128] = uint256(stor54.field_0)
                    idx = 128
                    s = 0
                    while stor54.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor54[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor54.length.field_1), data=mem[128 len ceil32(stor54.length.field_1)])
                mem[128] = 256 * stor54.length.field_8
        mem[ceil32(stor54.length.field_1) + 192 len ceil32(stor54.length.field_1)] = mem[128 len ceil32(stor54.length.field_1)]
        if ceil32(stor54.length.field_1) > stor54.length.field_1:
            mem[ceil32(stor54.length.field_1) + stor54.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor54.length.field_1), data=mem[128 len ceil32(stor54.length.field_1)], mem[(2 * ceil32(stor54.length.field_1)) + 192 len 2 * ceil32(stor54.length.field_1)]), 
    if bool(stor54.length) == stor54.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor54.length):
        if bool(stor54.length) == stor54.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor54.length.field_1:
            if 31 < stor54.length.field_1:
                mem[128] = uint256(stor54.field_0)
                idx = 128
                s = 0
                while stor54.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor54[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor54.length % 128, data=mem[128 len ceil32(stor54.length.field_1)])
            mem[128] = 256 * stor54.length.field_8
    else:
        if bool(stor54.length) == stor54.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor54.length.field_1:
            if 31 < stor54.length.field_1:
                mem[128] = uint256(stor54.field_0)
                idx = 128
                s = 0
                while stor54.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor54[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor54.length % 128, data=mem[128 len ceil32(stor54.length.field_1)])
            mem[128] = 256 * stor54.length.field_8
    mem[ceil32(stor54.length.field_1) + 192 len ceil32(stor54.length.field_1)] = mem[128 len ceil32(stor54.length.field_1)]
    if ceil32(stor54.length.field_1) > stor54.length.field_1:
        mem[ceil32(stor54.length.field_1) + stor54.length.field_1 + 192] = 0
    return Array(len=stor54.length % 128, data=mem[128 len ceil32(stor54.length.field_1)], mem[(2 * ceil32(stor54.length.field_1)) + 192 len 2 * ceil32(stor54.length.field_1)]), 
}

function symbol() payable {
    if bool(stor55.length):
        if bool(stor55.length) == stor55.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor55.length):
            if bool(stor55.length) == stor55.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor55.length.field_1:
                if 31 < stor55.length.field_1:
                    mem[128] = uint256(stor55.field_0)
                    idx = 128
                    s = 0
                    while stor55.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor55[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor55.length.field_1), data=mem[128 len ceil32(stor55.length.field_1)])
                mem[128] = 256 * stor55.length.field_8
        else:
            if bool(stor55.length) == stor55.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor55.length.field_1:
                if 31 < stor55.length.field_1:
                    mem[128] = uint256(stor55.field_0)
                    idx = 128
                    s = 0
                    while stor55.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor55[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor55.length.field_1), data=mem[128 len ceil32(stor55.length.field_1)])
                mem[128] = 256 * stor55.length.field_8
        mem[ceil32(stor55.length.field_1) + 192 len ceil32(stor55.length.field_1)] = mem[128 len ceil32(stor55.length.field_1)]
        if ceil32(stor55.length.field_1) > stor55.length.field_1:
            mem[ceil32(stor55.length.field_1) + stor55.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor55.length.field_1), data=mem[128 len ceil32(stor55.length.field_1)], mem[(2 * ceil32(stor55.length.field_1)) + 192 len 2 * ceil32(stor55.length.field_1)]), 
    if bool(stor55.length) == stor55.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor55.length):
        if bool(stor55.length) == stor55.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor55.length.field_1:
            if 31 < stor55.length.field_1:
                mem[128] = uint256(stor55.field_0)
                idx = 128
                s = 0
                while stor55.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor55[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor55.length % 128, data=mem[128 len ceil32(stor55.length.field_1)])
            mem[128] = 256 * stor55.length.field_8
    else:
        if bool(stor55.length) == stor55.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor55.length.field_1:
            if 31 < stor55.length.field_1:
                mem[128] = uint256(stor55.field_0)
                idx = 128
                s = 0
                while stor55.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor55[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor55.length % 128, data=mem[128 len ceil32(stor55.length.field_1)])
            mem[128] = 256 * stor55.length.field_8
    mem[ceil32(stor55.length.field_1) + 192 len ceil32(stor55.length.field_1)] = mem[128 len ceil32(stor55.length.field_1)]
    if ceil32(stor55.length.field_1) > stor55.length.field_1:
        mem[ceil32(stor55.length.field_1) + stor55.length.field_1 + 192] = 0
    return Array(len=stor55.length % 128, data=mem[128 len ceil32(stor55.length.field_1)], mem[(2 * ceil32(stor55.length.field_1)) + 192 len 2 * ceil32(stor55.length.field_1)]), 
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if uint256(balanceOf[address(msg.sender)]) < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    uint256(balanceOf[address(msg.sender)]) -= arg2
    if uint256(balanceOf[address(arg1)]) > -arg2 - 1:
        revert with 'NH{q', 17
    uint256(balanceOf[address(arg1)]) += arg2
    emit Transfer(arg2, msg.sender, arg1);
    if delegates[address(msg.sender)] != delegates[address(arg1)]:
        if arg2 > 0:
            if not delegates[address(msg.sender)]:
                if delegates[address(arg1)]:
                    if not numCheckpoints[stor304[address(arg1)]].field_0:
                        if 0 > -arg2 - 1:
                            revert with 'NH{q', 17
                        if numCheckpoints[stor304[address(arg1)]].field_0 <= 0:
                            if block.number > test266151307():
                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                            if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                            numCheckpoints[stor304[address(arg1)]].field_0++
                            numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = uint32(block.number)
                            numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_32 = Mask(224, 0, arg2)
                        else:
                            if numCheckpoints[stor304[address(arg1)]].field_0 < 1:
                                revert with 'NH{q', 17
                            if numCheckpoints[stor304[address(arg1)]].field_0 - 1 >= numCheckpoints[stor304[address(arg1)]].field_0:
                                revert with 'NH{q', 50
                            if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 == block.number:
                                if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                                if numCheckpoints[stor304[address(arg1)]].field_0 < 1:
                                    revert with 'NH{q', 17
                                if numCheckpoints[stor304[address(arg1)]].field_0 - 1 >= numCheckpoints[stor304[address(arg1)]].field_0:
                                    revert with 'NH{q', 50
                                numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = Mask(224, 0, arg2)
                            else:
                                if block.number > test266151307():
                                    revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                numCheckpoints[stor304[address(arg1)]].field_0++
                                numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = uint32(block.number)
                                numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_32 = Mask(224, 0, arg2)
                        emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
                    else:
                        if numCheckpoints[stor304[address(arg1)]].field_0 < 1:
                            revert with 'NH{q', 17
                        if numCheckpoints[stor304[address(arg1)]].field_0 - 1 >= numCheckpoints[stor304[address(arg1)]].field_0:
                            revert with 'NH{q', 50
                        if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 > -arg2 - 1:
                            revert with 'NH{q', 17
                        if numCheckpoints[stor304[address(arg1)]].field_0 <= 0:
                            if block.number > test266151307():
                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                            if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                            numCheckpoints[stor304[address(arg1)]].field_0++
                            numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = uint32(block.number)
                            numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_32 = Mask(224, 0, numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2)
                        else:
                            if numCheckpoints[stor304[address(arg1)]].field_0 < 1:
                                revert with 'NH{q', 17
                            if numCheckpoints[stor304[address(arg1)]].field_0 - 1 >= numCheckpoints[stor304[address(arg1)]].field_0:
                                revert with 'NH{q', 50
                            if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 == block.number:
                                if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                                if numCheckpoints[stor304[address(arg1)]].field_0 < 1:
                                    revert with 'NH{q', 17
                                if numCheckpoints[stor304[address(arg1)]].field_0 - 1 >= numCheckpoints[stor304[address(arg1)]].field_0:
                                    revert with 'NH{q', 50
                                numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = Mask(224, 0, numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2)
                            else:
                                if block.number > test266151307():
                                    revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                numCheckpoints[stor304[address(arg1)]].field_0++
                                numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = uint32(block.number)
                                numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_32 = Mask(224, 0, numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2)
                        emit DelegateVotesChanged(numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0, numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2, delegates[address(arg1)]);
            else:
                if not numCheckpoints[stor304[address(msg.sender)]].field_0:
                    if 0 < arg2:
                        revert with 'NH{q', 17
                    if numCheckpoints[stor304[address(msg.sender)]].field_0 <= 0:
                        if block.number > test266151307():
                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                        if -arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                        numCheckpoints[stor304[address(msg.sender)]].field_0++
                        numCheckpoints[stor304[address(msg.sender)]][numCheckpoints[stor304[address(msg.sender)]].field_0].field_0 = uint32(block.number)
                        numCheckpoints[stor304[address(msg.sender)]][numCheckpoints[stor304[address(msg.sender)]].field_0].field_32 = Mask(224, 0, -arg2)
                        emit DelegateVotesChanged(0, -arg2, delegates[address(msg.sender)]);
                        if delegates[address(arg1)]:
                            if not numCheckpoints[stor304[address(arg1)]].field_0:
                                if 0 > -arg2 - 1:
                                    revert with 'NH{q', 17
                                if numCheckpoints[stor304[address(arg1)]].field_0 <= 0:
                                    if block.number > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                    if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                    numCheckpoints[stor304[address(arg1)]].field_0++
                                    numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = uint32(block.number)
                                    numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_32 = Mask(224, 0, arg2)
                                else:
                                    if numCheckpoints[stor304[address(arg1)]].field_0 < 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[stor304[address(arg1)]].field_0 - 1 >= numCheckpoints[stor304[address(arg1)]].field_0:
                                        revert with 'NH{q', 50
                                    if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 == block.number:
                                        if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        if numCheckpoints[stor304[address(arg1)]].field_0 < 1:
                                            revert with 'NH{q', 17
                                        if numCheckpoints[stor304[address(arg1)]].field_0 - 1 >= numCheckpoints[stor304[address(arg1)]].field_0:
                                            revert with 'NH{q', 50
                                        numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = Mask(224, 0, arg2)
                                    else:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        numCheckpoints[stor304[address(arg1)]].field_0++
                                        numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = uint32(block.number)
                                        numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_32 = Mask(224, 0, arg2)
                                emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
                            else:
                                if numCheckpoints[stor304[address(arg1)]].field_0 < 1:
                                    revert with 'NH{q', 17
                                if numCheckpoints[stor304[address(arg1)]].field_0 - 1 >= numCheckpoints[stor304[address(arg1)]].field_0:
                                    revert with 'NH{q', 50
                                if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 > -arg2 - 1:
                                    revert with 'NH{q', 17
                                if numCheckpoints[stor304[address(arg1)]].field_0 <= 0:
                                    if block.number > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                    if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                    numCheckpoints[stor304[address(arg1)]].field_0++
                                    numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = uint32(block.number)
                                    numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_32 = Mask(224, 0, numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2)
                                else:
                                    if numCheckpoints[stor304[address(arg1)]].field_0 < 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[stor304[address(arg1)]].field_0 - 1 >= numCheckpoints[stor304[address(arg1)]].field_0:
                                        revert with 'NH{q', 50
                                    if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 == block.number:
                                        if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        if numCheckpoints[stor304[address(arg1)]].field_0 < 1:
                                            revert with 'NH{q', 17
                                        if numCheckpoints[stor304[address(arg1)]].field_0 - 1 >= numCheckpoints[stor304[address(arg1)]].field_0:
                                            revert with 'NH{q', 50
                                        numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = Mask(224, 0, numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2)
                                    else:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        numCheckpoints[stor304[address(arg1)]].field_0++
                                        numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = uint32(block.number)
                                        numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_32 = Mask(224, 0, numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2)
                                emit DelegateVotesChanged(numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0, numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2, delegates[address(arg1)]);
                    else:
                        if numCheckpoints[stor304[address(msg.sender)]].field_0 < 1:
                            revert with 'NH{q', 17
                        if numCheckpoints[stor304[address(msg.sender)]].field_0 - 1 >= numCheckpoints[stor304[address(msg.sender)]].field_0:
                            revert with 'NH{q', 50
                        if numCheckpoints[stor304[address(msg.sender)]][numCheckpoints[stor304[address(msg.sender)]].field_0].field_0 == block.number:
                            if -arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                            if numCheckpoints[stor304[address(msg.sender)]].field_0 < 1:
                                revert with 'NH{q', 17
                            if numCheckpoints[stor304[address(msg.sender)]].field_0 - 1 >= numCheckpoints[stor304[address(msg.sender)]].field_0:
                                revert with 'NH{q', 50
                            numCheckpoints[stor304[address(msg.sender)]][numCheckpoints[stor304[address(msg.sender)]].field_0].field_0 = Mask(224, 0, -arg2)
                            emit DelegateVotesChanged(0, -arg2, delegates[address(msg.sender)]);
                            if delegates[address(arg1)]:
                                if not numCheckpoints[stor304[address(arg1)]].field_0:
                                    if 0 > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[stor304[address(arg1)]].field_0 <= 0:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        numCheckpoints[stor304[address(arg1)]].field_0++
                                        numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = uint32(block.number)
                                        numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_32 = Mask(224, 0, arg2)
                                    else:
                                        if numCheckpoints[stor304[address(arg1)]].field_0 < 1:
                                            revert with 'NH{q', 17
                                        if numCheckpoints[stor304[address(arg1)]].field_0 - 1 >= numCheckpoints[stor304[address(arg1)]].field_0:
                                            revert with 'NH{q', 50
                                        if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 == block.number:
                                            if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                                            if numCheckpoints[stor304[address(arg1)]].field_0 < 1:
                                                revert with 'NH{q', 17
                                            if numCheckpoints[stor304[address(arg1)]].field_0 - 1 >= numCheckpoints[stor304[address(arg1)]].field_0:
                                                revert with 'NH{q', 50
                                            numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = Mask(224, 0, arg2)
                                        else:
                                            if block.number > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                            if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            numCheckpoints[stor304[address(arg1)]].field_0++
                                            numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = uint32(block.number)
                                            numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_32 = Mask(224, 0, arg2)
                                    emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
                                else:
                                    if numCheckpoints[stor304[address(arg1)]].field_0 < 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[stor304[address(arg1)]].field_0 - 1 >= numCheckpoints[stor304[address(arg1)]].field_0:
                                        revert with 'NH{q', 50
                                    if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[stor304[address(arg1)]].field_0 <= 0:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        numCheckpoints[stor304[address(arg1)]].field_0++
                                        numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = uint32(block.number)
                                        numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_32 = Mask(224, 0, numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2)
                                    else:
                                        if numCheckpoints[stor304[address(arg1)]].field_0 < 1:
                                            revert with 'NH{q', 17
                                        if numCheckpoints[stor304[address(arg1)]].field_0 - 1 >= numCheckpoints[stor304[address(arg1)]].field_0:
                                            revert with 'NH{q', 50
                                        if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 == block.number:
                                            if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                                            if numCheckpoints[stor304[address(arg1)]].field_0 < 1:
                                                revert with 'NH{q', 17
                                            if numCheckpoints[stor304[address(arg1)]].field_0 - 1 >= numCheckpoints[stor304[address(arg1)]].field_0:
                                                revert with 'NH{q', 50
                                            numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = Mask(224, 0, numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2)
                                        else:
                                            if block.number > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                            if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            numCheckpoints[stor304[address(arg1)]].field_0++
                                            numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = uint32(block.number)
                                            numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_32 = Mask(224, 0, numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2)
                                    emit DelegateVotesChanged(numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0, numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2, delegates[address(arg1)]);
                        else:
                            if block.number > test266151307():
                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                            if -arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                            numCheckpoints[stor304[address(msg.sender)]].field_0++
                            numCheckpoints[stor304[address(msg.sender)]][numCheckpoints[stor304[address(msg.sender)]].field_0].field_0 = uint32(block.number)
                            numCheckpoints[stor304[address(msg.sender)]][numCheckpoints[stor304[address(msg.sender)]].field_0].field_32 = Mask(224, 0, -arg2)
                            emit DelegateVotesChanged(0, -arg2, delegates[address(msg.sender)]);
                            if delegates[address(arg1)]:
                                if not numCheckpoints[stor304[address(arg1)]].field_0:
                                    if 0 > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[stor304[address(arg1)]].field_0 <= 0:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        numCheckpoints[stor304[address(arg1)]].field_0++
                                        numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = uint32(block.number)
                                        numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_32 = Mask(224, 0, arg2)
                                    else:
                                        if numCheckpoints[stor304[address(arg1)]].field_0 < 1:
                                            revert with 'NH{q', 17
                                        if numCheckpoints[stor304[address(arg1)]].field_0 - 1 >= numCheckpoints[stor304[address(arg1)]].field_0:
                                            revert with 'NH{q', 50
                                        if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 == block.number:
                                            if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            if numCheckpoints[stor304[address(arg1)]].field_0 < 1:
                                                revert with 'NH{q', 17
                                            if numCheckpoints[stor304[address(arg1)]].field_0 - 1 >= numCheckpoints[stor304[address(arg1)]].field_0:
                                                revert with 'NH{q', 50
                                            numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = Mask(224, 0, arg2)
                                        else:
                                            if block.number > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                            if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            numCheckpoints[stor304[address(arg1)]].field_0++
                                            numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = uint32(block.number)
                                            numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_32 = Mask(224, 0, arg2)
                                    emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
                                else:
                                    if numCheckpoints[stor304[address(arg1)]].field_0 < 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[stor304[address(arg1)]].field_0 - 1 >= numCheckpoints[stor304[address(arg1)]].field_0:
                                        revert with 'NH{q', 50
                                    if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[stor304[address(arg1)]].field_0 <= 0:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        numCheckpoints[stor304[address(arg1)]].field_0++
                                        numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = uint32(block.number)
                                        numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_32 = Mask(224, 0, numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2)
                                    else:
                                        if numCheckpoints[stor304[address(arg1)]].field_0 < 1:
                                            revert with 'NH{q', 17
                                        if numCheckpoints[stor304[address(arg1)]].field_0 - 1 >= numCheckpoints[stor304[address(arg1)]].field_0:
                                            revert with 'NH{q', 50
                                        if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 == block.number:
                                            if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            if numCheckpoints[stor304[address(arg1)]].field_0 < 1:
                                                revert with 'NH{q', 17
                                            if numCheckpoints[stor304[address(arg1)]].field_0 - 1 >= numCheckpoints[stor304[address(arg1)]].field_0:
                                                revert with 'NH{q', 50
                                            numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = Mask(224, 0, numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2)
                                        else:
                                            if block.number > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                            if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            numCheckpoints[stor304[address(arg1)]].field_0++
                                            numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = uint32(block.number)
                                            numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_32 = Mask(224, 0, numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2)
                                    emit DelegateVotesChanged(numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0, numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2, delegates[address(arg1)]);
                else:
                    if numCheckpoints[stor304[address(msg.sender)]].field_0 < 1:
                        revert with 'NH{q', 17
                    if numCheckpoints[stor304[address(msg.sender)]].field_0 - 1 >= numCheckpoints[stor304[address(msg.sender)]].field_0:
                        revert with 'NH{q', 50
                    if numCheckpoints[stor304[address(msg.sender)]][numCheckpoints[stor304[address(msg.sender)]].field_0].field_0 < arg2:
                        revert with 'NH{q', 17
                    if numCheckpoints[stor304[address(msg.sender)]].field_0 <= 0:
                        if block.number > test266151307():
                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                        if numCheckpoints[stor304[address(msg.sender)]][numCheckpoints[stor304[address(msg.sender)]].field_0].field_0 - arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                        numCheckpoints[stor304[address(msg.sender)]].field_0++
                        numCheckpoints[stor304[address(msg.sender)]][numCheckpoints[stor304[address(msg.sender)]].field_0].field_0 = uint32(block.number)
                        numCheckpoints[stor304[address(msg.sender)]][numCheckpoints[stor304[address(msg.sender)]].field_0].field_32 = Mask(224, 0, numCheckpoints[stor304[address(msg.sender)]][numCheckpoints[stor304[address(msg.sender)]].field_0].field_0 - arg2)
                        emit DelegateVotesChanged(numCheckpoints[stor304[address(msg.sender)]][numCheckpoints[stor304[address(msg.sender)]].field_0].field_0, numCheckpoints[stor304[address(msg.sender)]][numCheckpoints[stor304[address(msg.sender)]].field_0].field_0 - arg2, delegates[address(msg.sender)]);
                        if delegates[address(arg1)]:
                            if not numCheckpoints[stor304[address(arg1)]].field_0:
                                if 0 > -arg2 - 1:
                                    revert with 'NH{q', 17
                                if numCheckpoints[stor304[address(arg1)]].field_0 <= 0:
                                    if block.number > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                    if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                    numCheckpoints[stor304[address(arg1)]].field_0++
                                    numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = uint32(block.number)
                                    numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_32 = Mask(224, 0, arg2)
                                else:
                                    if numCheckpoints[stor304[address(arg1)]].field_0 < 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[stor304[address(arg1)]].field_0 - 1 >= numCheckpoints[stor304[address(arg1)]].field_0:
                                        revert with 'NH{q', 50
                                    if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 == block.number:
                                        if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        if numCheckpoints[stor304[address(arg1)]].field_0 < 1:
                                            revert with 'NH{q', 17
                                        if numCheckpoints[stor304[address(arg1)]].field_0 - 1 >= numCheckpoints[stor304[address(arg1)]].field_0:
                                            revert with 'NH{q', 50
                                        numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = Mask(224, 0, arg2)
                                    else:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        numCheckpoints[stor304[address(arg1)]].field_0++
                                        numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = uint32(block.number)
                                        numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_32 = Mask(224, 0, arg2)
                                emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
                            else:
                                if numCheckpoints[stor304[address(arg1)]].field_0 < 1:
                                    revert with 'NH{q', 17
                                if numCheckpoints[stor304[address(arg1)]].field_0 - 1 >= numCheckpoints[stor304[address(arg1)]].field_0:
                                    revert with 'NH{q', 50
                                if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 > -arg2 - 1:
                                    revert with 'NH{q', 17
                                if numCheckpoints[stor304[address(arg1)]].field_0 <= 0:
                                    if block.number > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                    if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                    numCheckpoints[stor304[address(arg1)]].field_0++
                                    numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = uint32(block.number)
                                    numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_32 = Mask(224, 0, numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2)
                                else:
                                    if numCheckpoints[stor304[address(arg1)]].field_0 < 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[stor304[address(arg1)]].field_0 - 1 >= numCheckpoints[stor304[address(arg1)]].field_0:
                                        revert with 'NH{q', 50
                                    if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 == block.number:
                                        if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        if numCheckpoints[stor304[address(arg1)]].field_0 < 1:
                                            revert with 'NH{q', 17
                                        if numCheckpoints[stor304[address(arg1)]].field_0 - 1 >= numCheckpoints[stor304[address(arg1)]].field_0:
                                            revert with 'NH{q', 50
                                        numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = Mask(224, 0, numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2)
                                    else:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        numCheckpoints[stor304[address(arg1)]].field_0++
                                        numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = uint32(block.number)
                                        numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_32 = Mask(224, 0, numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2)
                                emit DelegateVotesChanged(numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0, numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2, delegates[address(arg1)]);
                    else:
                        if numCheckpoints[stor304[address(msg.sender)]].field_0 < 1:
                            revert with 'NH{q', 17
                        if numCheckpoints[stor304[address(msg.sender)]].field_0 - 1 >= numCheckpoints[stor304[address(msg.sender)]].field_0:
                            revert with 'NH{q', 50
                        if numCheckpoints[stor304[address(msg.sender)]][numCheckpoints[stor304[address(msg.sender)]].field_0].field_0 == block.number:
                            if numCheckpoints[stor304[address(msg.sender)]][numCheckpoints[stor304[address(msg.sender)]].field_0].field_0 - arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                            if numCheckpoints[stor304[address(msg.sender)]].field_0 < 1:
                                revert with 'NH{q', 17
                            if numCheckpoints[stor304[address(msg.sender)]].field_0 - 1 >= numCheckpoints[stor304[address(msg.sender)]].field_0:
                                revert with 'NH{q', 50
                            numCheckpoints[stor304[address(msg.sender)]][numCheckpoints[stor304[address(msg.sender)]].field_0].field_0 = Mask(224, 0, numCheckpoints[stor304[address(msg.sender)]][numCheckpoints[stor304[address(msg.sender)]].field_0].field_0 - arg2)
                            emit DelegateVotesChanged(numCheckpoints[stor304[address(msg.sender)]][numCheckpoints[stor304[address(msg.sender)]].field_0].field_0, numCheckpoints[stor304[address(msg.sender)]][numCheckpoints[stor304[address(msg.sender)]].field_0].field_0 - arg2, delegates[address(msg.sender)]);
                            if delegates[address(arg1)]:
                                if not numCheckpoints[stor304[address(arg1)]].field_0:
                                    if 0 > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[stor304[address(arg1)]].field_0 <= 0:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        numCheckpoints[stor304[address(arg1)]].field_0++
                                        numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = uint32(block.number)
                                        numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_32 = Mask(224, 0, arg2)
                                    else:
                                        if numCheckpoints[stor304[address(arg1)]].field_0 < 1:
                                            revert with 'NH{q', 17
                                        if numCheckpoints[stor304[address(arg1)]].field_0 - 1 >= numCheckpoints[stor304[address(arg1)]].field_0:
                                            revert with 'NH{q', 50
                                        if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 == block.number:
                                            if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                                            if numCheckpoints[stor304[address(arg1)]].field_0 < 1:
                                                revert with 'NH{q', 17
                                            if numCheckpoints[stor304[address(arg1)]].field_0 - 1 >= numCheckpoints[stor304[address(arg1)]].field_0:
                                                revert with 'NH{q', 50
                                            numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = Mask(224, 0, arg2)
                                        else:
                                            if block.number > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                            if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            numCheckpoints[stor304[address(arg1)]].field_0++
                                            numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = uint32(block.number)
                                            numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_32 = Mask(224, 0, arg2)
                                    emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
                                else:
                                    if numCheckpoints[stor304[address(arg1)]].field_0 < 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[stor304[address(arg1)]].field_0 - 1 >= numCheckpoints[stor304[address(arg1)]].field_0:
                                        revert with 'NH{q', 50
                                    if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[stor304[address(arg1)]].field_0 <= 0:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        numCheckpoints[stor304[address(arg1)]].field_0++
                                        numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = uint32(block.number)
                                        numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_32 = Mask(224, 0, numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2)
                                    else:
                                        if numCheckpoints[stor304[address(arg1)]].field_0 < 1:
                                            revert with 'NH{q', 17
                                        if numCheckpoints[stor304[address(arg1)]].field_0 - 1 >= numCheckpoints[stor304[address(arg1)]].field_0:
                                            revert with 'NH{q', 50
                                        if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 == block.number:
                                            if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                                            if numCheckpoints[stor304[address(arg1)]].field_0 < 1:
                                                revert with 'NH{q', 17
                                            if numCheckpoints[stor304[address(arg1)]].field_0 - 1 >= numCheckpoints[stor304[address(arg1)]].field_0:
                                                revert with 'NH{q', 50
                                            numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = Mask(224, 0, numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2)
                                        else:
                                            if block.number > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                            if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            numCheckpoints[stor304[address(arg1)]].field_0++
                                            numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = uint32(block.number)
                                            numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_32 = Mask(224, 0, numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2)
                                    emit DelegateVotesChanged(numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0, numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2, delegates[address(arg1)]);
                        else:
                            if block.number > test266151307():
                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                            if numCheckpoints[stor304[address(msg.sender)]][numCheckpoints[stor304[address(msg.sender)]].field_0].field_0 - arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                            numCheckpoints[stor304[address(msg.sender)]].field_0++
                            numCheckpoints[stor304[address(msg.sender)]][numCheckpoints[stor304[address(msg.sender)]].field_0].field_0 = uint32(block.number)
                            numCheckpoints[stor304[address(msg.sender)]][numCheckpoints[stor304[address(msg.sender)]].field_0].field_32 = Mask(224, 0, numCheckpoints[stor304[address(msg.sender)]][numCheckpoints[stor304[address(msg.sender)]].field_0].field_0 - arg2)
                            emit DelegateVotesChanged(numCheckpoints[stor304[address(msg.sender)]][numCheckpoints[stor304[address(msg.sender)]].field_0].field_0, numCheckpoints[stor304[address(msg.sender)]][numCheckpoints[stor304[address(msg.sender)]].field_0].field_0 - arg2, delegates[address(msg.sender)]);
                            if delegates[address(arg1)]:
                                if not numCheckpoints[stor304[address(arg1)]].field_0:
                                    if 0 > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[stor304[address(arg1)]].field_0 <= 0:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        numCheckpoints[stor304[address(arg1)]].field_0++
                                        numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = uint32(block.number)
                                        numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_32 = Mask(224, 0, arg2)
                                    else:
                                        if numCheckpoints[stor304[address(arg1)]].field_0 < 1:
                                            revert with 'NH{q', 17
                                        if numCheckpoints[stor304[address(arg1)]].field_0 - 1 >= numCheckpoints[stor304[address(arg1)]].field_0:
                                            revert with 'NH{q', 50
                                        if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 == block.number:
                                            if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            if numCheckpoints[stor304[address(arg1)]].field_0 < 1:
                                                revert with 'NH{q', 17
                                            if numCheckpoints[stor304[address(arg1)]].field_0 - 1 >= numCheckpoints[stor304[address(arg1)]].field_0:
                                                revert with 'NH{q', 50
                                            numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = Mask(224, 0, arg2)
                                        else:
                                            if block.number > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                            if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            numCheckpoints[stor304[address(arg1)]].field_0++
                                            numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = uint32(block.number)
                                            numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_32 = Mask(224, 0, arg2)
                                    emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
                                else:
                                    if numCheckpoints[stor304[address(arg1)]].field_0 < 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[stor304[address(arg1)]].field_0 - 1 >= numCheckpoints[stor304[address(arg1)]].field_0:
                                        revert with 'NH{q', 50
                                    if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[stor304[address(arg1)]].field_0 <= 0:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        numCheckpoints[stor304[address(arg1)]].field_0++
                                        numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = uint32(block.number)
                                        numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_32 = Mask(224, 0, numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2)
                                    else:
                                        if numCheckpoints[stor304[address(arg1)]].field_0 < 1:
                                            revert with 'NH{q', 17
                                        if numCheckpoints[stor304[address(arg1)]].field_0 - 1 >= numCheckpoints[stor304[address(arg1)]].field_0:
                                            revert with 'NH{q', 50
                                        if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 == block.number:
                                            if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            if numCheckpoints[stor304[address(arg1)]].field_0 < 1:
                                                revert with 'NH{q', 17
                                            if numCheckpoints[stor304[address(arg1)]].field_0 - 1 >= numCheckpoints[stor304[address(arg1)]].field_0:
                                                revert with 'NH{q', 50
                                            numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = Mask(224, 0, numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2)
                                        else:
                                            if block.number > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                            if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            numCheckpoints[stor304[address(arg1)]].field_0++
                                            numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = uint32(block.number)
                                            numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_32 = Mask(224, 0, numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2)
                                    emit DelegateVotesChanged(numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0, numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2, delegates[address(arg1)]);
    return 1
}

function delegate(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    delegates[address(msg.sender)] = arg1
    emit DelegateChanged(msg.sender, delegates[address(msg.sender)], arg1);
    if delegates[address(msg.sender)] != arg1:
        if uint256(balanceOf[address(msg.sender)]) > 0:
            if not delegates[address(msg.sender)]:
                if arg1:
                    if not numCheckpoints[address(arg1)].field_0:
                        if 0 > -uint256(balanceOf[address(msg.sender)]) - 1:
                            revert with 'NH{q', 17
                        if numCheckpoints[address(arg1)].field_0 <= 0:
                            if block.number > test266151307():
                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                            if uint256(balanceOf[address(msg.sender)]) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                            numCheckpoints[address(arg1)].field_0++
                            numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = uint32(block.number)
                            numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = Mask(224, 0, balanceOf[address(msg.sender)])
                            numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_32 = 0
                        else:
                            if numCheckpoints[address(arg1)].field_0 < 1:
                                revert with 'NH{q', 17
                            if numCheckpoints[address(arg1)].field_0 - 1 >= numCheckpoints[address(arg1)].field_0:
                                revert with 'NH{q', 50
                            if numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 == block.number:
                                if uint256(balanceOf[address(msg.sender)]) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                                if numCheckpoints[address(arg1)].field_0 < 1:
                                    revert with 'NH{q', 17
                                if numCheckpoints[address(arg1)].field_0 - 1 >= numCheckpoints[address(arg1)].field_0:
                                    revert with 'NH{q', 50
                                numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = Mask(224, 0, balanceOf[address(msg.sender)])
                                numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = 0
                            else:
                                if block.number > test266151307():
                                    revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                if uint256(balanceOf[address(msg.sender)]) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                numCheckpoints[address(arg1)].field_0++
                                numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = uint32(block.number)
                                numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = Mask(224, 0, balanceOf[address(msg.sender)])
                                numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_32 = 0
                        emit DelegateVotesChanged(0, uint256(balanceOf[address(msg.sender)]), arg1);
                    else:
                        if numCheckpoints[address(arg1)].field_0 < 1:
                            revert with 'NH{q', 17
                        if numCheckpoints[address(arg1)].field_0 - 1 >= numCheckpoints[address(arg1)].field_0:
                            revert with 'NH{q', 50
                        if numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 > -uint256(balanceOf[address(msg.sender)]) - 1:
                            revert with 'NH{q', 17
                        if numCheckpoints[address(arg1)].field_0 <= 0:
                            if block.number > test266151307():
                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                            if numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 + uint256(balanceOf[address(msg.sender)]) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                            numCheckpoints[address(arg1)].field_0++
                            numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = uint32(block.number)
                            numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_32 = Mask(224, 0, numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 + uint256(balanceOf[address(msg.sender)]))
                        else:
                            if numCheckpoints[address(arg1)].field_0 < 1:
                                revert with 'NH{q', 17
                            if numCheckpoints[address(arg1)].field_0 - 1 >= numCheckpoints[address(arg1)].field_0:
                                revert with 'NH{q', 50
                            if numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 == block.number:
                                if numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 + uint256(balanceOf[address(msg.sender)]) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                                if numCheckpoints[address(arg1)].field_0 < 1:
                                    revert with 'NH{q', 17
                                if numCheckpoints[address(arg1)].field_0 - 1 >= numCheckpoints[address(arg1)].field_0:
                                    revert with 'NH{q', 50
                                numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = Mask(224, 0, numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 + uint256(balanceOf[address(msg.sender)]))
                            else:
                                if block.number > test266151307():
                                    revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                if numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 + uint256(balanceOf[address(msg.sender)]) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                numCheckpoints[address(arg1)].field_0++
                                numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = uint32(block.number)
                                numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_32 = Mask(224, 0, numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 + uint256(balanceOf[address(msg.sender)]))
                        emit DelegateVotesChanged(numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0, numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 + uint256(balanceOf[address(msg.sender)]), arg1);
            else:
                if not numCheckpoints[stor304[address(msg.sender)]].field_0:
                    if 0 < uint256(balanceOf[address(msg.sender)]):
                        revert with 'NH{q', 17
                    if numCheckpoints[stor304[address(msg.sender)]].field_0 <= 0:
                        if block.number > test266151307():
                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                        if -uint256(balanceOf[address(msg.sender)]) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                        numCheckpoints[stor304[address(msg.sender)]].field_0++
                        numCheckpoints[stor304[address(msg.sender)]][numCheckpoints[stor304[address(msg.sender)]].field_0].field_0 = uint32(block.number)
                        numCheckpoints[stor304[address(msg.sender)]][numCheckpoints[stor304[address(msg.sender)]].field_0].field_32 = Mask(224, 0, -uint256(balanceOf[address(msg.sender)]))
                        emit DelegateVotesChanged(0, -uint256(balanceOf[address(msg.sender)]), delegates[address(msg.sender)]);
                        if arg1:
                            if not numCheckpoints[address(arg1)].field_0:
                                if 0 > -uint256(balanceOf[address(msg.sender)]) - 1:
                                    revert with 'NH{q', 17
                                if numCheckpoints[address(arg1)].field_0 <= 0:
                                    if block.number > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                    if uint256(balanceOf[address(msg.sender)]) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                    numCheckpoints[address(arg1)].field_0++
                                    numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = uint32(block.number)
                                    numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = Mask(224, 0, balanceOf[address(msg.sender)])
                                    numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_32 = 0
                                else:
                                    if numCheckpoints[address(arg1)].field_0 < 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[address(arg1)].field_0 - 1 >= numCheckpoints[address(arg1)].field_0:
                                        revert with 'NH{q', 50
                                    if numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 == block.number:
                                        if uint256(balanceOf[address(msg.sender)]) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        if numCheckpoints[address(arg1)].field_0 < 1:
                                            revert with 'NH{q', 17
                                        if numCheckpoints[address(arg1)].field_0 - 1 >= numCheckpoints[address(arg1)].field_0:
                                            revert with 'NH{q', 50
                                        numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = Mask(224, 0, balanceOf[address(msg.sender)])
                                        numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = 0
                                    else:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if uint256(balanceOf[address(msg.sender)]) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        numCheckpoints[address(arg1)].field_0++
                                        numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = uint32(block.number)
                                        numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = Mask(224, 0, balanceOf[address(msg.sender)])
                                        numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_32 = 0
                                emit DelegateVotesChanged(0, uint256(balanceOf[address(msg.sender)]), arg1);
                            else:
                                if numCheckpoints[address(arg1)].field_0 < 1:
                                    revert with 'NH{q', 17
                                if numCheckpoints[address(arg1)].field_0 - 1 >= numCheckpoints[address(arg1)].field_0:
                                    revert with 'NH{q', 50
                                if numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 > -uint256(balanceOf[address(msg.sender)]) - 1:
                                    revert with 'NH{q', 17
                                if numCheckpoints[address(arg1)].field_0 <= 0:
                                    if block.number > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                    if numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 + uint256(balanceOf[address(msg.sender)]) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                    numCheckpoints[address(arg1)].field_0++
                                    numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = uint32(block.number)
                                    numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_32 = Mask(224, 0, numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 + uint256(balanceOf[address(msg.sender)]))
                                else:
                                    if numCheckpoints[address(arg1)].field_0 < 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[address(arg1)].field_0 - 1 >= numCheckpoints[address(arg1)].field_0:
                                        revert with 'NH{q', 50
                                    if numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 == block.number:
                                        if numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 + uint256(balanceOf[address(msg.sender)]) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        if numCheckpoints[address(arg1)].field_0 < 1:
                                            revert with 'NH{q', 17
                                        if numCheckpoints[address(arg1)].field_0 - 1 >= numCheckpoints[address(arg1)].field_0:
                                            revert with 'NH{q', 50
                                        numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = Mask(224, 0, numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 + uint256(balanceOf[address(msg.sender)]))
                                    else:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 + uint256(balanceOf[address(msg.sender)]) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        numCheckpoints[address(arg1)].field_0++
                                        numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = uint32(block.number)
                                        numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_32 = Mask(224, 0, numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 + uint256(balanceOf[address(msg.sender)]))
                                emit DelegateVotesChanged(numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0, numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 + uint256(balanceOf[address(msg.sender)]), arg1);
                    else:
                        if numCheckpoints[stor304[address(msg.sender)]].field_0 < 1:
                            revert with 'NH{q', 17
                        if numCheckpoints[stor304[address(msg.sender)]].field_0 - 1 >= numCheckpoints[stor304[address(msg.sender)]].field_0:
                            revert with 'NH{q', 50
                        if numCheckpoints[stor304[address(msg.sender)]][numCheckpoints[stor304[address(msg.sender)]].field_0].field_0 == block.number:
                            if -uint256(balanceOf[address(msg.sender)]) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                            if numCheckpoints[stor304[address(msg.sender)]].field_0 < 1:
                                revert with 'NH{q', 17
                            if numCheckpoints[stor304[address(msg.sender)]].field_0 - 1 >= numCheckpoints[stor304[address(msg.sender)]].field_0:
                                revert with 'NH{q', 50
                            numCheckpoints[stor304[address(msg.sender)]][numCheckpoints[stor304[address(msg.sender)]].field_0].field_0 = Mask(224, 0, -uint256(balanceOf[address(msg.sender)]))
                            emit DelegateVotesChanged(0, -uint256(balanceOf[address(msg.sender)]), delegates[address(msg.sender)]);
                            if arg1:
                                if not numCheckpoints[address(arg1)].field_0:
                                    if 0 > -uint256(balanceOf[address(msg.sender)]) - 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[address(arg1)].field_0 <= 0:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if uint256(balanceOf[address(msg.sender)]) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        numCheckpoints[address(arg1)].field_0++
                                        numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = uint32(block.number)
                                        numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = Mask(224, 0, balanceOf[address(msg.sender)])
                                        numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_32 = 0
                                    else:
                                        if numCheckpoints[address(arg1)].field_0 < 1:
                                            revert with 'NH{q', 17
                                        if numCheckpoints[address(arg1)].field_0 - 1 >= numCheckpoints[address(arg1)].field_0:
                                            revert with 'NH{q', 50
                                        if numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 == block.number:
                                            if uint256(balanceOf[address(msg.sender)]) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                                            if numCheckpoints[address(arg1)].field_0 < 1:
                                                revert with 'NH{q', 17
                                            if numCheckpoints[address(arg1)].field_0 - 1 >= numCheckpoints[address(arg1)].field_0:
                                                revert with 'NH{q', 50
                                            numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = Mask(224, 0, balanceOf[address(msg.sender)])
                                            numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = 0
                                        else:
                                            if block.number > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                            if uint256(balanceOf[address(msg.sender)]) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            numCheckpoints[address(arg1)].field_0++
                                            numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = uint32(block.number)
                                            numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = Mask(224, 0, balanceOf[address(msg.sender)])
                                            numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_32 = 0
                                    emit DelegateVotesChanged(0, uint256(balanceOf[address(msg.sender)]), arg1);
                                else:
                                    if numCheckpoints[address(arg1)].field_0 < 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[address(arg1)].field_0 - 1 >= numCheckpoints[address(arg1)].field_0:
                                        revert with 'NH{q', 50
                                    if numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 > -uint256(balanceOf[address(msg.sender)]) - 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[address(arg1)].field_0 <= 0:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 + uint256(balanceOf[address(msg.sender)]) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        numCheckpoints[address(arg1)].field_0++
                                        numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = uint32(block.number)
                                        numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_32 = Mask(224, 0, numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 + uint256(balanceOf[address(msg.sender)]))
                                    else:
                                        if numCheckpoints[address(arg1)].field_0 < 1:
                                            revert with 'NH{q', 17
                                        if numCheckpoints[address(arg1)].field_0 - 1 >= numCheckpoints[address(arg1)].field_0:
                                            revert with 'NH{q', 50
                                        if numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 == block.number:
                                            if numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 + uint256(balanceOf[address(msg.sender)]) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                                            if numCheckpoints[address(arg1)].field_0 < 1:
                                                revert with 'NH{q', 17
                                            if numCheckpoints[address(arg1)].field_0 - 1 >= numCheckpoints[address(arg1)].field_0:
                                                revert with 'NH{q', 50
                                            numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = Mask(224, 0, numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 + uint256(balanceOf[address(msg.sender)]))
                                        else:
                                            if block.number > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                            if numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 + uint256(balanceOf[address(msg.sender)]) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            numCheckpoints[address(arg1)].field_0++
                                            numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = uint32(block.number)
                                            numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_32 = Mask(224, 0, numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 + uint256(balanceOf[address(msg.sender)]))
                                    emit DelegateVotesChanged(numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0, numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 + uint256(balanceOf[address(msg.sender)]), arg1);
                        else:
                            if block.number > test266151307():
                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                            if -uint256(balanceOf[address(msg.sender)]) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                            numCheckpoints[stor304[address(msg.sender)]].field_0++
                            numCheckpoints[stor304[address(msg.sender)]][numCheckpoints[stor304[address(msg.sender)]].field_0].field_0 = uint32(block.number)
                            numCheckpoints[stor304[address(msg.sender)]][numCheckpoints[stor304[address(msg.sender)]].field_0].field_32 = Mask(224, 0, -uint256(balanceOf[address(msg.sender)]))
                            emit DelegateVotesChanged(0, -uint256(balanceOf[address(msg.sender)]), delegates[address(msg.sender)]);
                            if arg1:
                                if not numCheckpoints[address(arg1)].field_0:
                                    if 0 > -uint256(balanceOf[address(msg.sender)]) - 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[address(arg1)].field_0 <= 0:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if uint256(balanceOf[address(msg.sender)]) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        numCheckpoints[address(arg1)].field_0++
                                        numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = uint32(block.number)
                                        numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = Mask(224, 0, balanceOf[address(msg.sender)])
                                        numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_32 = 0
                                    else:
                                        if numCheckpoints[address(arg1)].field_0 < 1:
                                            revert with 'NH{q', 17
                                        if numCheckpoints[address(arg1)].field_0 - 1 >= numCheckpoints[address(arg1)].field_0:
                                            revert with 'NH{q', 50
                                        if numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 == block.number:
                                            if uint256(balanceOf[address(msg.sender)]) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            if numCheckpoints[address(arg1)].field_0 < 1:
                                                revert with 'NH{q', 17
                                            if numCheckpoints[address(arg1)].field_0 - 1 >= numCheckpoints[address(arg1)].field_0:
                                                revert with 'NH{q', 50
                                            numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = Mask(224, 0, balanceOf[address(msg.sender)])
                                            numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = 0
                                        else:
                                            if block.number > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                            if uint256(balanceOf[address(msg.sender)]) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            numCheckpoints[address(arg1)].field_0++
                                            numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = uint32(block.number)
                                            numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = Mask(224, 0, balanceOf[address(msg.sender)])
                                            numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_32 = 0
                                    emit DelegateVotesChanged(0, uint256(balanceOf[address(msg.sender)]), arg1);
                                else:
                                    if numCheckpoints[address(arg1)].field_0 < 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[address(arg1)].field_0 - 1 >= numCheckpoints[address(arg1)].field_0:
                                        revert with 'NH{q', 50
                                    if numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 > -uint256(balanceOf[address(msg.sender)]) - 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[address(arg1)].field_0 <= 0:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 + uint256(balanceOf[address(msg.sender)]) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        numCheckpoints[address(arg1)].field_0++
                                        numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = uint32(block.number)
                                        numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_32 = Mask(224, 0, numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 + uint256(balanceOf[address(msg.sender)]))
                                    else:
                                        if numCheckpoints[address(arg1)].field_0 < 1:
                                            revert with 'NH{q', 17
                                        if numCheckpoints[address(arg1)].field_0 - 1 >= numCheckpoints[address(arg1)].field_0:
                                            revert with 'NH{q', 50
                                        if numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 == block.number:
                                            if numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 + uint256(balanceOf[address(msg.sender)]) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            if numCheckpoints[address(arg1)].field_0 < 1:
                                                revert with 'NH{q', 17
                                            if numCheckpoints[address(arg1)].field_0 - 1 >= numCheckpoints[address(arg1)].field_0:
                                                revert with 'NH{q', 50
                                            numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = Mask(224, 0, numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 + uint256(balanceOf[address(msg.sender)]))
                                        else:
                                            if block.number > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                            if numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 + uint256(balanceOf[address(msg.sender)]) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            numCheckpoints[address(arg1)].field_0++
                                            numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = uint32(block.number)
                                            numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_32 = Mask(224, 0, numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 + uint256(balanceOf[address(msg.sender)]))
                                    emit DelegateVotesChanged(numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0, numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 + uint256(balanceOf[address(msg.sender)]), arg1);
                else:
                    if numCheckpoints[stor304[address(msg.sender)]].field_0 < 1:
                        revert with 'NH{q', 17
                    if numCheckpoints[stor304[address(msg.sender)]].field_0 - 1 >= numCheckpoints[stor304[address(msg.sender)]].field_0:
                        revert with 'NH{q', 50
                    if numCheckpoints[stor304[address(msg.sender)]][numCheckpoints[stor304[address(msg.sender)]].field_0].field_0 < uint256(balanceOf[address(msg.sender)]):
                        revert with 'NH{q', 17
                    if numCheckpoints[stor304[address(msg.sender)]].field_0 <= 0:
                        if block.number > test266151307():
                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                        if numCheckpoints[stor304[address(msg.sender)]][numCheckpoints[stor304[address(msg.sender)]].field_0].field_0 - uint256(balanceOf[address(msg.sender)]) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                        numCheckpoints[stor304[address(msg.sender)]].field_0++
                        numCheckpoints[stor304[address(msg.sender)]][numCheckpoints[stor304[address(msg.sender)]].field_0].field_0 = uint32(block.number)
                        numCheckpoints[stor304[address(msg.sender)]][numCheckpoints[stor304[address(msg.sender)]].field_0].field_32 = Mask(224, 0, numCheckpoints[stor304[address(msg.sender)]][numCheckpoints[stor304[address(msg.sender)]].field_0].field_0 - uint256(balanceOf[address(msg.sender)]))
                        emit DelegateVotesChanged(numCheckpoints[stor304[address(msg.sender)]][numCheckpoints[stor304[address(msg.sender)]].field_0].field_0, numCheckpoints[stor304[address(msg.sender)]][numCheckpoints[stor304[address(msg.sender)]].field_0].field_0 - uint256(balanceOf[address(msg.sender)]), delegates[address(msg.sender)]);
                        if arg1:
                            if not numCheckpoints[address(arg1)].field_0:
                                if 0 > -uint256(balanceOf[address(msg.sender)]) - 1:
                                    revert with 'NH{q', 17
                                if numCheckpoints[address(arg1)].field_0 <= 0:
                                    if block.number > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                    if uint256(balanceOf[address(msg.sender)]) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                    numCheckpoints[address(arg1)].field_0++
                                    numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = uint32(block.number)
                                    numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = Mask(224, 0, balanceOf[address(msg.sender)])
                                    numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_32 = 0
                                else:
                                    if numCheckpoints[address(arg1)].field_0 < 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[address(arg1)].field_0 - 1 >= numCheckpoints[address(arg1)].field_0:
                                        revert with 'NH{q', 50
                                    if numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 == block.number:
                                        if uint256(balanceOf[address(msg.sender)]) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        if numCheckpoints[address(arg1)].field_0 < 1:
                                            revert with 'NH{q', 17
                                        if numCheckpoints[address(arg1)].field_0 - 1 >= numCheckpoints[address(arg1)].field_0:
                                            revert with 'NH{q', 50
                                        numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = Mask(224, 0, balanceOf[address(msg.sender)])
                                        numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = 0
                                    else:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if uint256(balanceOf[address(msg.sender)]) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        numCheckpoints[address(arg1)].field_0++
                                        numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = uint32(block.number)
                                        numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = Mask(224, 0, balanceOf[address(msg.sender)])
                                        numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_32 = 0
                                emit DelegateVotesChanged(0, uint256(balanceOf[address(msg.sender)]), arg1);
                            else:
                                if numCheckpoints[address(arg1)].field_0 < 1:
                                    revert with 'NH{q', 17
                                if numCheckpoints[address(arg1)].field_0 - 1 >= numCheckpoints[address(arg1)].field_0:
                                    revert with 'NH{q', 50
                                if numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 > -uint256(balanceOf[address(msg.sender)]) - 1:
                                    revert with 'NH{q', 17
                                if numCheckpoints[address(arg1)].field_0 <= 0:
                                    if block.number > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                    if numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 + uint256(balanceOf[address(msg.sender)]) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                    numCheckpoints[address(arg1)].field_0++
                                    numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = uint32(block.number)
                                    numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_32 = Mask(224, 0, numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 + uint256(balanceOf[address(msg.sender)]))
                                else:
                                    if numCheckpoints[address(arg1)].field_0 < 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[address(arg1)].field_0 - 1 >= numCheckpoints[address(arg1)].field_0:
                                        revert with 'NH{q', 50
                                    if numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 == block.number:
                                        if numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 + uint256(balanceOf[address(msg.sender)]) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        if numCheckpoints[address(arg1)].field_0 < 1:
                                            revert with 'NH{q', 17
                                        if numCheckpoints[address(arg1)].field_0 - 1 >= numCheckpoints[address(arg1)].field_0:
                                            revert with 'NH{q', 50
                                        numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = Mask(224, 0, numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 + uint256(balanceOf[address(msg.sender)]))
                                    else:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 + uint256(balanceOf[address(msg.sender)]) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        numCheckpoints[address(arg1)].field_0++
                                        numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = uint32(block.number)
                                        numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_32 = Mask(224, 0, numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 + uint256(balanceOf[address(msg.sender)]))
                                emit DelegateVotesChanged(numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0, numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 + uint256(balanceOf[address(msg.sender)]), arg1);
                    else:
                        if numCheckpoints[stor304[address(msg.sender)]].field_0 < 1:
                            revert with 'NH{q', 17
                        if numCheckpoints[stor304[address(msg.sender)]].field_0 - 1 >= numCheckpoints[stor304[address(msg.sender)]].field_0:
                            revert with 'NH{q', 50
                        if numCheckpoints[stor304[address(msg.sender)]][numCheckpoints[stor304[address(msg.sender)]].field_0].field_0 == block.number:
                            if numCheckpoints[stor304[address(msg.sender)]][numCheckpoints[stor304[address(msg.sender)]].field_0].field_0 - uint256(balanceOf[address(msg.sender)]) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                            if numCheckpoints[stor304[address(msg.sender)]].field_0 < 1:
                                revert with 'NH{q', 17
                            if numCheckpoints[stor304[address(msg.sender)]].field_0 - 1 >= numCheckpoints[stor304[address(msg.sender)]].field_0:
                                revert with 'NH{q', 50
                            numCheckpoints[stor304[address(msg.sender)]][numCheckpoints[stor304[address(msg.sender)]].field_0].field_0 = Mask(224, 0, numCheckpoints[stor304[address(msg.sender)]][numCheckpoints[stor304[address(msg.sender)]].field_0].field_0 - uint256(balanceOf[address(msg.sender)]))
                            emit DelegateVotesChanged(numCheckpoints[stor304[address(msg.sender)]][numCheckpoints[stor304[address(msg.sender)]].field_0].field_0, numCheckpoints[stor304[address(msg.sender)]][numCheckpoints[stor304[address(msg.sender)]].field_0].field_0 - uint256(balanceOf[address(msg.sender)]), delegates[address(msg.sender)]);
                            if arg1:
                                if not numCheckpoints[address(arg1)].field_0:
                                    if 0 > -uint256(balanceOf[address(msg.sender)]) - 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[address(arg1)].field_0 <= 0:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if uint256(balanceOf[address(msg.sender)]) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        numCheckpoints[address(arg1)].field_0++
                                        numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = uint32(block.number)
                                        numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = Mask(224, 0, balanceOf[address(msg.sender)])
                                        numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_32 = 0
                                    else:
                                        if numCheckpoints[address(arg1)].field_0 < 1:
                                            revert with 'NH{q', 17
                                        if numCheckpoints[address(arg1)].field_0 - 1 >= numCheckpoints[address(arg1)].field_0:
                                            revert with 'NH{q', 50
                                        if numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 == block.number:
                                            if uint256(balanceOf[address(msg.sender)]) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                                            if numCheckpoints[address(arg1)].field_0 < 1:
                                                revert with 'NH{q', 17
                                            if numCheckpoints[address(arg1)].field_0 - 1 >= numCheckpoints[address(arg1)].field_0:
                                                revert with 'NH{q', 50
                                            numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = Mask(224, 0, balanceOf[address(msg.sender)])
                                            numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = 0
                                        else:
                                            if block.number > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                            if uint256(balanceOf[address(msg.sender)]) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            numCheckpoints[address(arg1)].field_0++
                                            numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = uint32(block.number)
                                            numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = Mask(224, 0, balanceOf[address(msg.sender)])
                                            numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_32 = 0
                                    emit DelegateVotesChanged(0, uint256(balanceOf[address(msg.sender)]), arg1);
                                else:
                                    if numCheckpoints[address(arg1)].field_0 < 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[address(arg1)].field_0 - 1 >= numCheckpoints[address(arg1)].field_0:
                                        revert with 'NH{q', 50
                                    if numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 > -uint256(balanceOf[address(msg.sender)]) - 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[address(arg1)].field_0 <= 0:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 + uint256(balanceOf[address(msg.sender)]) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        numCheckpoints[address(arg1)].field_0++
                                        numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = uint32(block.number)
                                        numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_32 = Mask(224, 0, numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 + uint256(balanceOf[address(msg.sender)]))
                                    else:
                                        if numCheckpoints[address(arg1)].field_0 < 1:
                                            revert with 'NH{q', 17
                                        if numCheckpoints[address(arg1)].field_0 - 1 >= numCheckpoints[address(arg1)].field_0:
                                            revert with 'NH{q', 50
                                        if numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 == block.number:
                                            if numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 + uint256(balanceOf[address(msg.sender)]) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                                            if numCheckpoints[address(arg1)].field_0 < 1:
                                                revert with 'NH{q', 17
                                            if numCheckpoints[address(arg1)].field_0 - 1 >= numCheckpoints[address(arg1)].field_0:
                                                revert with 'NH{q', 50
                                            numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = Mask(224, 0, numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 + uint256(balanceOf[address(msg.sender)]))
                                        else:
                                            if block.number > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                            if numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 + uint256(balanceOf[address(msg.sender)]) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            numCheckpoints[address(arg1)].field_0++
                                            numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = uint32(block.number)
                                            numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_32 = Mask(224, 0, numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 + uint256(balanceOf[address(msg.sender)]))
                                    emit DelegateVotesChanged(numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0, numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 + uint256(balanceOf[address(msg.sender)]), arg1);
                        else:
                            if block.number > test266151307():
                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                            if numCheckpoints[stor304[address(msg.sender)]][numCheckpoints[stor304[address(msg.sender)]].field_0].field_0 - uint256(balanceOf[address(msg.sender)]) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                            numCheckpoints[stor304[address(msg.sender)]].field_0++
                            numCheckpoints[stor304[address(msg.sender)]][numCheckpoints[stor304[address(msg.sender)]].field_0].field_0 = uint32(block.number)
                            numCheckpoints[stor304[address(msg.sender)]][numCheckpoints[stor304[address(msg.sender)]].field_0].field_32 = Mask(224, 0, numCheckpoints[stor304[address(msg.sender)]][numCheckpoints[stor304[address(msg.sender)]].field_0].field_0 - uint256(balanceOf[address(msg.sender)]))
                            emit DelegateVotesChanged(numCheckpoints[stor304[address(msg.sender)]][numCheckpoints[stor304[address(msg.sender)]].field_0].field_0, numCheckpoints[stor304[address(msg.sender)]][numCheckpoints[stor304[address(msg.sender)]].field_0].field_0 - uint256(balanceOf[address(msg.sender)]), delegates[address(msg.sender)]);
                            if arg1:
                                if not numCheckpoints[address(arg1)].field_0:
                                    if 0 > -uint256(balanceOf[address(msg.sender)]) - 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[address(arg1)].field_0 <= 0:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if uint256(balanceOf[address(msg.sender)]) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        numCheckpoints[address(arg1)].field_0++
                                        numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = uint32(block.number)
                                        numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = Mask(224, 0, balanceOf[address(msg.sender)])
                                        numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_32 = 0
                                    else:
                                        if numCheckpoints[address(arg1)].field_0 < 1:
                                            revert with 'NH{q', 17
                                        if numCheckpoints[address(arg1)].field_0 - 1 >= numCheckpoints[address(arg1)].field_0:
                                            revert with 'NH{q', 50
                                        if numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 == block.number:
                                            if uint256(balanceOf[address(msg.sender)]) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            if numCheckpoints[address(arg1)].field_0 < 1:
                                                revert with 'NH{q', 17
                                            if numCheckpoints[address(arg1)].field_0 - 1 >= numCheckpoints[address(arg1)].field_0:
                                                revert with 'NH{q', 50
                                            numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = Mask(224, 0, balanceOf[address(msg.sender)])
                                            numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = 0
                                        else:
                                            if block.number > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                            if uint256(balanceOf[address(msg.sender)]) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            numCheckpoints[address(arg1)].field_0++
                                            numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = uint32(block.number)
                                            numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = Mask(224, 0, balanceOf[address(msg.sender)])
                                            numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_32 = 0
                                    emit DelegateVotesChanged(0, uint256(balanceOf[address(msg.sender)]), arg1);
                                else:
                                    if numCheckpoints[address(arg1)].field_0 < 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[address(arg1)].field_0 - 1 >= numCheckpoints[address(arg1)].field_0:
                                        revert with 'NH{q', 50
                                    if numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 > -uint256(balanceOf[address(msg.sender)]) - 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[address(arg1)].field_0 <= 0:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 + uint256(balanceOf[address(msg.sender)]) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        numCheckpoints[address(arg1)].field_0++
                                        numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = uint32(block.number)
                                        numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_32 = Mask(224, 0, numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 + uint256(balanceOf[address(msg.sender)]))
                                    else:
                                        if numCheckpoints[address(arg1)].field_0 < 1:
                                            revert with 'NH{q', 17
                                        if numCheckpoints[address(arg1)].field_0 - 1 >= numCheckpoints[address(arg1)].field_0:
                                            revert with 'NH{q', 50
                                        if numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 == block.number:
                                            if numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 + uint256(balanceOf[address(msg.sender)]) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            if numCheckpoints[address(arg1)].field_0 < 1:
                                                revert with 'NH{q', 17
                                            if numCheckpoints[address(arg1)].field_0 - 1 >= numCheckpoints[address(arg1)].field_0:
                                                revert with 'NH{q', 50
                                            numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = Mask(224, 0, numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 + uint256(balanceOf[address(msg.sender)]))
                                        else:
                                            if block.number > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                            if numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 + uint256(balanceOf[address(msg.sender)]) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            numCheckpoints[address(arg1)].field_0++
                                            numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = uint32(block.number)
                                            numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_32 = Mask(224, 0, numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 + uint256(balanceOf[address(msg.sender)]))
                                    emit DelegateVotesChanged(numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0, numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 + uint256(balanceOf[address(msg.sender)]), arg1);
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
    if uint256(balanceOf[address(arg1)]) < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    uint256(balanceOf[address(arg1)]) -= arg3
    if uint256(balanceOf[address(arg2)]) > -arg3 - 1:
        revert with 'NH{q', 17
    uint256(balanceOf[address(arg2)]) += arg3
    emit Transfer(arg3, arg1, arg2);
    if delegates[address(arg1)] == delegates[address(arg2)]:
        if allowance[address(arg1)][address(msg.sender)] < arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    else:
        if arg3 <= 0:
            if allowance[address(arg1)][address(msg.sender)] < arg3:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
        else:
            if not delegates[address(arg1)]:
                if not delegates[address(arg2)]:
                    if allowance[address(arg1)][address(msg.sender)] < arg3:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                else:
                    if not numCheckpoints[stor304[address(arg2)]].field_0:
                        if 0 > -arg3 - 1:
                            revert with 'NH{q', 17
                        if numCheckpoints[stor304[address(arg2)]].field_0 <= 0:
                            if block.number > test266151307():
                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                            if arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                            numCheckpoints[stor304[address(arg2)]].field_0++
                            numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 = uint32(block.number)
                            numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_32 = Mask(224, 0, arg3)
                            emit DelegateVotesChanged(0, arg3, delegates[address(arg2)]);
                            if allowance[address(arg1)][address(msg.sender)] < arg3:
                                revert with 0, 'ERC20: transfer amount exceeds allowance'
                            if not arg1:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not msg.sender:
                                revert with 0, 'ERC20: approve to the zero address'
                        else:
                            if numCheckpoints[stor304[address(arg2)]].field_0 < 1:
                                revert with 'NH{q', 17
                            if numCheckpoints[stor304[address(arg2)]].field_0 - 1 >= numCheckpoints[stor304[address(arg2)]].field_0:
                                revert with 'NH{q', 50
                            if numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 == block.number:
                                if arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                                if numCheckpoints[stor304[address(arg2)]].field_0 < 1:
                                    revert with 'NH{q', 17
                                if numCheckpoints[stor304[address(arg2)]].field_0 - 1 >= numCheckpoints[stor304[address(arg2)]].field_0:
                                    revert with 'NH{q', 50
                                numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 = Mask(224, 0, arg3)
                                emit DelegateVotesChanged(0, arg3, delegates[address(arg2)]);
                                if allowance[address(arg1)][address(msg.sender)] < arg3:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                            else:
                                if block.number > test266151307():
                                    revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                if arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                numCheckpoints[stor304[address(arg2)]].field_0++
                                numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 = uint32(block.number)
                                numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_32 = Mask(224, 0, arg3)
                                emit DelegateVotesChanged(0, arg3, delegates[address(arg2)]);
                                if allowance[address(arg1)][address(msg.sender)] < arg3:
                                    revert with 0, 'ERC20: transfer amount exceeds allowance'
                                if not arg1:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not msg.sender:
                                    revert with 0, 'ERC20: approve to the zero address'
                    else:
                        if numCheckpoints[stor304[address(arg2)]].field_0 < 1:
                            revert with 'NH{q', 17
                        if numCheckpoints[stor304[address(arg2)]].field_0 - 1 >= numCheckpoints[stor304[address(arg2)]].field_0:
                            revert with 'NH{q', 50
                        if numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 > -arg3 - 1:
                            revert with 'NH{q', 17
                        if numCheckpoints[stor304[address(arg2)]].field_0 <= 0:
                            if block.number > test266151307():
                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                            if numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 + arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                            numCheckpoints[stor304[address(arg2)]].field_0++
                            numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 = uint32(block.number)
                            numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_32 = Mask(224, 0, numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 + arg3)
                            emit DelegateVotesChanged(numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0, numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 + arg3, delegates[address(arg2)]);
                            if allowance[address(arg1)][address(msg.sender)] < arg3:
                                revert with 0, 'ERC20: transfer amount exceeds allowance'
                            if not arg1:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not msg.sender:
                                revert with 0, 'ERC20: approve to the zero address'
                        else:
                            if numCheckpoints[stor304[address(arg2)]].field_0 < 1:
                                revert with 'NH{q', 17
                            if numCheckpoints[stor304[address(arg2)]].field_0 - 1 >= numCheckpoints[stor304[address(arg2)]].field_0:
                                revert with 'NH{q', 50
                            if numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 == block.number:
                                if numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 + arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                                if numCheckpoints[stor304[address(arg2)]].field_0 < 1:
                                    revert with 'NH{q', 17
                                if numCheckpoints[stor304[address(arg2)]].field_0 - 1 >= numCheckpoints[stor304[address(arg2)]].field_0:
                                    revert with 'NH{q', 50
                                numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 = Mask(224, 0, numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 + arg3)
                                emit DelegateVotesChanged(numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0, numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 + arg3, delegates[address(arg2)]);
                                if allowance[address(arg1)][address(msg.sender)] < arg3:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                            else:
                                if block.number > test266151307():
                                    revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                if numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 + arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                numCheckpoints[stor304[address(arg2)]].field_0++
                                numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 = uint32(block.number)
                                numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_32 = Mask(224, 0, numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 + arg3)
                                emit DelegateVotesChanged(numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0, numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 + arg3, delegates[address(arg2)]);
                                if allowance[address(arg1)][address(msg.sender)] < arg3:
                                    revert with 0, 'ERC20: transfer amount exceeds allowance'
                                if not arg1:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not msg.sender:
                                    revert with 0, 'ERC20: approve to the zero address'
            else:
                if not numCheckpoints[stor304[address(arg1)]].field_0:
                    if 0 < arg3:
                        revert with 'NH{q', 17
                    if numCheckpoints[stor304[address(arg1)]].field_0 <= 0:
                        if block.number > test266151307():
                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                        if -arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                        numCheckpoints[stor304[address(arg1)]].field_0++
                        numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = uint32(block.number)
                        numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_32 = Mask(224, 0, -arg3)
                        emit DelegateVotesChanged(0, -arg3, delegates[address(arg1)]);
                        if delegates[address(arg2)]:
                            if not numCheckpoints[stor304[address(arg2)]].field_0:
                                if 0 > -arg3 - 1:
                                    revert with 'NH{q', 17
                                if numCheckpoints[stor304[address(arg2)]].field_0 <= 0:
                                    if block.number > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                    if arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                    numCheckpoints[stor304[address(arg2)]].field_0++
                                    numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 = uint32(block.number)
                                    numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_32 = Mask(224, 0, arg3)
                                else:
                                    if numCheckpoints[stor304[address(arg2)]].field_0 < 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[stor304[address(arg2)]].field_0 - 1 >= numCheckpoints[stor304[address(arg2)]].field_0:
                                        revert with 'NH{q', 50
                                    if numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 == block.number:
                                        if arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        if numCheckpoints[stor304[address(arg2)]].field_0 < 1:
                                            revert with 'NH{q', 17
                                        if numCheckpoints[stor304[address(arg2)]].field_0 - 1 >= numCheckpoints[stor304[address(arg2)]].field_0:
                                            revert with 'NH{q', 50
                                        numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 = Mask(224, 0, arg3)
                                    else:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        numCheckpoints[stor304[address(arg2)]].field_0++
                                        numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 = uint32(block.number)
                                        numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_32 = Mask(224, 0, arg3)
                                emit DelegateVotesChanged(0, arg3, delegates[address(arg2)]);
                            else:
                                if numCheckpoints[stor304[address(arg2)]].field_0 < 1:
                                    revert with 'NH{q', 17
                                if numCheckpoints[stor304[address(arg2)]].field_0 - 1 >= numCheckpoints[stor304[address(arg2)]].field_0:
                                    revert with 'NH{q', 50
                                if numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 > -arg3 - 1:
                                    revert with 'NH{q', 17
                                if numCheckpoints[stor304[address(arg2)]].field_0 <= 0:
                                    if block.number > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                    if numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 + arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                    numCheckpoints[stor304[address(arg2)]].field_0++
                                    numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 = uint32(block.number)
                                    numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_32 = Mask(224, 0, numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 + arg3)
                                else:
                                    if numCheckpoints[stor304[address(arg2)]].field_0 < 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[stor304[address(arg2)]].field_0 - 1 >= numCheckpoints[stor304[address(arg2)]].field_0:
                                        revert with 'NH{q', 50
                                    if numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 == block.number:
                                        if numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 + arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        if numCheckpoints[stor304[address(arg2)]].field_0 < 1:
                                            revert with 'NH{q', 17
                                        if numCheckpoints[stor304[address(arg2)]].field_0 - 1 >= numCheckpoints[stor304[address(arg2)]].field_0:
                                            revert with 'NH{q', 50
                                        numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 = Mask(224, 0, numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 + arg3)
                                    else:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 + arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        numCheckpoints[stor304[address(arg2)]].field_0++
                                        numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 = uint32(block.number)
                                        numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_32 = Mask(224, 0, numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 + arg3)
                                emit DelegateVotesChanged(numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0, numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 + arg3, delegates[address(arg2)]);
                        if allowance[address(arg1)][address(msg.sender)] < arg3:
                            revert with 0, 'ERC20: transfer amount exceeds allowance'
                        if not arg1:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not msg.sender:
                            revert with 0, 'ERC20: approve to the zero address'
                    else:
                        if numCheckpoints[stor304[address(arg1)]].field_0 < 1:
                            revert with 'NH{q', 17
                        if numCheckpoints[stor304[address(arg1)]].field_0 - 1 >= numCheckpoints[stor304[address(arg1)]].field_0:
                            revert with 'NH{q', 50
                        if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 == block.number:
                            if -arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                            if numCheckpoints[stor304[address(arg1)]].field_0 < 1:
                                revert with 'NH{q', 17
                            if numCheckpoints[stor304[address(arg1)]].field_0 - 1 >= numCheckpoints[stor304[address(arg1)]].field_0:
                                revert with 'NH{q', 50
                            numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = Mask(224, 0, -arg3)
                            emit DelegateVotesChanged(0, -arg3, delegates[address(arg1)]);
                            if not delegates[address(arg2)]:
                                if allowance[address(arg1)][address(msg.sender)] < arg3:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                            else:
                                if not numCheckpoints[stor304[address(arg2)]].field_0:
                                    if 0 > -arg3 - 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[stor304[address(arg2)]].field_0 <= 0:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        numCheckpoints[stor304[address(arg2)]].field_0++
                                        numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 = uint32(block.number)
                                        numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_32 = Mask(224, 0, arg3)
                                        emit DelegateVotesChanged(0, arg3, delegates[address(arg2)]);
                                        if allowance[address(arg1)][address(msg.sender)] < arg3:
                                            revert with 0, 'ERC20: transfer amount exceeds allowance'
                                        if not arg1:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not msg.sender:
                                            revert with 0, 'ERC20: approve to the zero address'
                                    else:
                                        if numCheckpoints[stor304[address(arg2)]].field_0 < 1:
                                            revert with 'NH{q', 17
                                        if numCheckpoints[stor304[address(arg2)]].field_0 - 1 >= numCheckpoints[stor304[address(arg2)]].field_0:
                                            revert with 'NH{q', 50
                                        if numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 == block.number:
                                            if arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                                            if numCheckpoints[stor304[address(arg2)]].field_0 < 1:
                                                revert with 'NH{q', 17
                                            if numCheckpoints[stor304[address(arg2)]].field_0 - 1 >= numCheckpoints[stor304[address(arg2)]].field_0:
                                                revert with 'NH{q', 50
                                            numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 = Mask(224, 0, arg3)
                                            emit DelegateVotesChanged(0, arg3, delegates[address(arg2)]);
                                            if allowance[address(arg1)][address(msg.sender)] < arg3:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                                            if not arg1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                                            if not msg.sender:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                                        else:
                                            if block.number > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                            if arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            numCheckpoints[stor304[address(arg2)]].field_0++
                                            numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 = uint32(block.number)
                                            numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_32 = Mask(224, 0, arg3)
                                            emit DelegateVotesChanged(0, arg3, delegates[address(arg2)]);
                                            if allowance[address(arg1)][address(msg.sender)] < arg3:
                                                revert with 0, 'ERC20: transfer amount exceeds allowance'
                                            if not arg1:
                                                revert with 0, 'ERC20: approve from the zero address'
                                            if not msg.sender:
                                                revert with 0, 'ERC20: approve to the zero address'
                                else:
                                    if numCheckpoints[stor304[address(arg2)]].field_0 < 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[stor304[address(arg2)]].field_0 - 1 >= numCheckpoints[stor304[address(arg2)]].field_0:
                                        revert with 'NH{q', 50
                                    if numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 > -arg3 - 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[stor304[address(arg2)]].field_0 <= 0:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 + arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        numCheckpoints[stor304[address(arg2)]].field_0++
                                        numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 = uint32(block.number)
                                        numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_32 = Mask(224, 0, numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 + arg3)
                                        emit DelegateVotesChanged(numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0, numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 + arg3, delegates[address(arg2)]);
                                        if allowance[address(arg1)][address(msg.sender)] < arg3:
                                            revert with 0, 'ERC20: transfer amount exceeds allowance'
                                        if not arg1:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not msg.sender:
                                            revert with 0, 'ERC20: approve to the zero address'
                                    else:
                                        if numCheckpoints[stor304[address(arg2)]].field_0 < 1:
                                            revert with 'NH{q', 17
                                        if numCheckpoints[stor304[address(arg2)]].field_0 - 1 >= numCheckpoints[stor304[address(arg2)]].field_0:
                                            revert with 'NH{q', 50
                                        if numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 == block.number:
                                            if numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 + arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                                            if numCheckpoints[stor304[address(arg2)]].field_0 < 1:
                                                revert with 'NH{q', 17
                                            if numCheckpoints[stor304[address(arg2)]].field_0 - 1 >= numCheckpoints[stor304[address(arg2)]].field_0:
                                                revert with 'NH{q', 50
                                            numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 = Mask(224, 0, numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 + arg3)
                                            emit DelegateVotesChanged(numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0, numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 + arg3, delegates[address(arg2)]);
                                            if allowance[address(arg1)][address(msg.sender)] < arg3:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                                            if not arg1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                                            if not msg.sender:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                                        else:
                                            if block.number > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                            if numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 + arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            numCheckpoints[stor304[address(arg2)]].field_0++
                                            numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 = uint32(block.number)
                                            numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_32 = Mask(224, 0, numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 + arg3)
                                            emit DelegateVotesChanged(numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0, numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 + arg3, delegates[address(arg2)]);
                                            if allowance[address(arg1)][address(msg.sender)] < arg3:
                                                revert with 0, 'ERC20: transfer amount exceeds allowance'
                                            if not arg1:
                                                revert with 0, 'ERC20: approve from the zero address'
                                            if not msg.sender:
                                                revert with 0, 'ERC20: approve to the zero address'
                        else:
                            if block.number > test266151307():
                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                            if -arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                            numCheckpoints[stor304[address(arg1)]].field_0++
                            numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = uint32(block.number)
                            numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_32 = Mask(224, 0, -arg3)
                            emit DelegateVotesChanged(0, -arg3, delegates[address(arg1)]);
                            if delegates[address(arg2)]:
                                if not numCheckpoints[stor304[address(arg2)]].field_0:
                                    if 0 > -arg3 - 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[stor304[address(arg2)]].field_0 <= 0:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        numCheckpoints[stor304[address(arg2)]].field_0++
                                        numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 = uint32(block.number)
                                        numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_32 = Mask(224, 0, arg3)
                                    else:
                                        if numCheckpoints[stor304[address(arg2)]].field_0 < 1:
                                            revert with 'NH{q', 17
                                        if numCheckpoints[stor304[address(arg2)]].field_0 - 1 >= numCheckpoints[stor304[address(arg2)]].field_0:
                                            revert with 'NH{q', 50
                                        if numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 == block.number:
                                            if arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            if numCheckpoints[stor304[address(arg2)]].field_0 < 1:
                                                revert with 'NH{q', 17
                                            if numCheckpoints[stor304[address(arg2)]].field_0 - 1 >= numCheckpoints[stor304[address(arg2)]].field_0:
                                                revert with 'NH{q', 50
                                            numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 = Mask(224, 0, arg3)
                                        else:
                                            if block.number > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                            if arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            numCheckpoints[stor304[address(arg2)]].field_0++
                                            numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 = uint32(block.number)
                                            numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_32 = Mask(224, 0, arg3)
                                    emit DelegateVotesChanged(0, arg3, delegates[address(arg2)]);
                                else:
                                    if numCheckpoints[stor304[address(arg2)]].field_0 < 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[stor304[address(arg2)]].field_0 - 1 >= numCheckpoints[stor304[address(arg2)]].field_0:
                                        revert with 'NH{q', 50
                                    if numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 > -arg3 - 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[stor304[address(arg2)]].field_0 <= 0:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 + arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        numCheckpoints[stor304[address(arg2)]].field_0++
                                        numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 = uint32(block.number)
                                        numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_32 = Mask(224, 0, numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 + arg3)
                                    else:
                                        if numCheckpoints[stor304[address(arg2)]].field_0 < 1:
                                            revert with 'NH{q', 17
                                        if numCheckpoints[stor304[address(arg2)]].field_0 - 1 >= numCheckpoints[stor304[address(arg2)]].field_0:
                                            revert with 'NH{q', 50
                                        if numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 == block.number:
                                            if numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 + arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            if numCheckpoints[stor304[address(arg2)]].field_0 < 1:
                                                revert with 'NH{q', 17
                                            if numCheckpoints[stor304[address(arg2)]].field_0 - 1 >= numCheckpoints[stor304[address(arg2)]].field_0:
                                                revert with 'NH{q', 50
                                            numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 = Mask(224, 0, numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 + arg3)
                                        else:
                                            if block.number > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                            if numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 + arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            numCheckpoints[stor304[address(arg2)]].field_0++
                                            numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 = uint32(block.number)
                                            numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_32 = Mask(224, 0, numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 + arg3)
                                    emit DelegateVotesChanged(numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0, numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 + arg3, delegates[address(arg2)]);
                            if allowance[address(arg1)][address(msg.sender)] < arg3:
                                revert with 0, 'ERC20: transfer amount exceeds allowance'
                            if not arg1:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not msg.sender:
                                revert with 0, 'ERC20: approve to the zero address'
                else:
                    if numCheckpoints[stor304[address(arg1)]].field_0 < 1:
                        revert with 'NH{q', 17
                    if numCheckpoints[stor304[address(arg1)]].field_0 - 1 >= numCheckpoints[stor304[address(arg1)]].field_0:
                        revert with 'NH{q', 50
                    if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 < arg3:
                        revert with 'NH{q', 17
                    if numCheckpoints[stor304[address(arg1)]].field_0 <= 0:
                        if block.number > test266151307():
                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                        if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 - arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                        numCheckpoints[stor304[address(arg1)]].field_0++
                        numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = uint32(block.number)
                        numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_32 = Mask(224, 0, numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 - arg3)
                        emit DelegateVotesChanged(numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0, numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 - arg3, delegates[address(arg1)]);
                        if delegates[address(arg2)]:
                            if not numCheckpoints[stor304[address(arg2)]].field_0:
                                if 0 > -arg3 - 1:
                                    revert with 'NH{q', 17
                                if numCheckpoints[stor304[address(arg2)]].field_0 <= 0:
                                    if block.number > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                    if arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                    numCheckpoints[stor304[address(arg2)]].field_0++
                                    numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 = uint32(block.number)
                                    numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_32 = Mask(224, 0, arg3)
                                else:
                                    if numCheckpoints[stor304[address(arg2)]].field_0 < 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[stor304[address(arg2)]].field_0 - 1 >= numCheckpoints[stor304[address(arg2)]].field_0:
                                        revert with 'NH{q', 50
                                    if numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 == block.number:
                                        if arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        if numCheckpoints[stor304[address(arg2)]].field_0 < 1:
                                            revert with 'NH{q', 17
                                        if numCheckpoints[stor304[address(arg2)]].field_0 - 1 >= numCheckpoints[stor304[address(arg2)]].field_0:
                                            revert with 'NH{q', 50
                                        numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 = Mask(224, 0, arg3)
                                    else:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        numCheckpoints[stor304[address(arg2)]].field_0++
                                        numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 = uint32(block.number)
                                        numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_32 = Mask(224, 0, arg3)
                                emit DelegateVotesChanged(0, arg3, delegates[address(arg2)]);
                            else:
                                if numCheckpoints[stor304[address(arg2)]].field_0 < 1:
                                    revert with 'NH{q', 17
                                if numCheckpoints[stor304[address(arg2)]].field_0 - 1 >= numCheckpoints[stor304[address(arg2)]].field_0:
                                    revert with 'NH{q', 50
                                if numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 > -arg3 - 1:
                                    revert with 'NH{q', 17
                                if numCheckpoints[stor304[address(arg2)]].field_0 <= 0:
                                    if block.number > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                    if numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 + arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                    numCheckpoints[stor304[address(arg2)]].field_0++
                                    numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 = uint32(block.number)
                                    numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_32 = Mask(224, 0, numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 + arg3)
                                else:
                                    if numCheckpoints[stor304[address(arg2)]].field_0 < 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[stor304[address(arg2)]].field_0 - 1 >= numCheckpoints[stor304[address(arg2)]].field_0:
                                        revert with 'NH{q', 50
                                    if numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 == block.number:
                                        if numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 + arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        if numCheckpoints[stor304[address(arg2)]].field_0 < 1:
                                            revert with 'NH{q', 17
                                        if numCheckpoints[stor304[address(arg2)]].field_0 - 1 >= numCheckpoints[stor304[address(arg2)]].field_0:
                                            revert with 'NH{q', 50
                                        numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 = Mask(224, 0, numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 + arg3)
                                    else:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 + arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        numCheckpoints[stor304[address(arg2)]].field_0++
                                        numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 = uint32(block.number)
                                        numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_32 = Mask(224, 0, numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 + arg3)
                                emit DelegateVotesChanged(numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0, numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 + arg3, delegates[address(arg2)]);
                        if allowance[address(arg1)][address(msg.sender)] < arg3:
                            revert with 0, 'ERC20: transfer amount exceeds allowance'
                        if not arg1:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not msg.sender:
                            revert with 0, 'ERC20: approve to the zero address'
                    else:
                        if numCheckpoints[stor304[address(arg1)]].field_0 < 1:
                            revert with 'NH{q', 17
                        if numCheckpoints[stor304[address(arg1)]].field_0 - 1 >= numCheckpoints[stor304[address(arg1)]].field_0:
                            revert with 'NH{q', 50
                        if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 == block.number:
                            if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 - arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                            if numCheckpoints[stor304[address(arg1)]].field_0 < 1:
                                revert with 'NH{q', 17
                            if numCheckpoints[stor304[address(arg1)]].field_0 - 1 >= numCheckpoints[stor304[address(arg1)]].field_0:
                                revert with 'NH{q', 50
                            numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = Mask(224, 0, numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 - arg3)
                            emit DelegateVotesChanged(numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0, numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 - arg3, delegates[address(arg1)]);
                            if not delegates[address(arg2)]:
                                if allowance[address(arg1)][address(msg.sender)] < arg3:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                            else:
                                if not numCheckpoints[stor304[address(arg2)]].field_0:
                                    if 0 > -arg3 - 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[stor304[address(arg2)]].field_0 <= 0:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        numCheckpoints[stor304[address(arg2)]].field_0++
                                        numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 = uint32(block.number)
                                        numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_32 = Mask(224, 0, arg3)
                                        emit DelegateVotesChanged(0, arg3, delegates[address(arg2)]);
                                        if allowance[address(arg1)][address(msg.sender)] < arg3:
                                            revert with 0, 'ERC20: transfer amount exceeds allowance'
                                        if not arg1:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not msg.sender:
                                            revert with 0, 'ERC20: approve to the zero address'
                                    else:
                                        if numCheckpoints[stor304[address(arg2)]].field_0 < 1:
                                            revert with 'NH{q', 17
                                        if numCheckpoints[stor304[address(arg2)]].field_0 - 1 >= numCheckpoints[stor304[address(arg2)]].field_0:
                                            revert with 'NH{q', 50
                                        if numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 == block.number:
                                            if arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                                            if numCheckpoints[stor304[address(arg2)]].field_0 < 1:
                                                revert with 'NH{q', 17
                                            if numCheckpoints[stor304[address(arg2)]].field_0 - 1 >= numCheckpoints[stor304[address(arg2)]].field_0:
                                                revert with 'NH{q', 50
                                            numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 = Mask(224, 0, arg3)
                                            emit DelegateVotesChanged(0, arg3, delegates[address(arg2)]);
                                            if allowance[address(arg1)][address(msg.sender)] < arg3:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                                            if not arg1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                                            if not msg.sender:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                                        else:
                                            if block.number > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                            if arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            numCheckpoints[stor304[address(arg2)]].field_0++
                                            numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 = uint32(block.number)
                                            numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_32 = Mask(224, 0, arg3)
                                            emit DelegateVotesChanged(0, arg3, delegates[address(arg2)]);
                                            if allowance[address(arg1)][address(msg.sender)] < arg3:
                                                revert with 0, 'ERC20: transfer amount exceeds allowance'
                                            if not arg1:
                                                revert with 0, 'ERC20: approve from the zero address'
                                            if not msg.sender:
                                                revert with 0, 'ERC20: approve to the zero address'
                                else:
                                    if numCheckpoints[stor304[address(arg2)]].field_0 < 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[stor304[address(arg2)]].field_0 - 1 >= numCheckpoints[stor304[address(arg2)]].field_0:
                                        revert with 'NH{q', 50
                                    if numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 > -arg3 - 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[stor304[address(arg2)]].field_0 <= 0:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 + arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        numCheckpoints[stor304[address(arg2)]].field_0++
                                        numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 = uint32(block.number)
                                        numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_32 = Mask(224, 0, numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 + arg3)
                                        emit DelegateVotesChanged(numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0, numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 + arg3, delegates[address(arg2)]);
                                        if allowance[address(arg1)][address(msg.sender)] < arg3:
                                            revert with 0, 'ERC20: transfer amount exceeds allowance'
                                        if not arg1:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not msg.sender:
                                            revert with 0, 'ERC20: approve to the zero address'
                                    else:
                                        if numCheckpoints[stor304[address(arg2)]].field_0 < 1:
                                            revert with 'NH{q', 17
                                        if numCheckpoints[stor304[address(arg2)]].field_0 - 1 >= numCheckpoints[stor304[address(arg2)]].field_0:
                                            revert with 'NH{q', 50
                                        if numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 == block.number:
                                            if numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 + arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                                            if numCheckpoints[stor304[address(arg2)]].field_0 < 1:
                                                revert with 'NH{q', 17
                                            if numCheckpoints[stor304[address(arg2)]].field_0 - 1 >= numCheckpoints[stor304[address(arg2)]].field_0:
                                                revert with 'NH{q', 50
                                            numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 = Mask(224, 0, numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 + arg3)
                                            emit DelegateVotesChanged(numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0, numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 + arg3, delegates[address(arg2)]);
                                            if allowance[address(arg1)][address(msg.sender)] < arg3:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                                            if not arg1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                                            if not msg.sender:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                                        else:
                                            if block.number > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                            if numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 + arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            numCheckpoints[stor304[address(arg2)]].field_0++
                                            numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 = uint32(block.number)
                                            numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_32 = Mask(224, 0, numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 + arg3)
                                            emit DelegateVotesChanged(numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0, numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 + arg3, delegates[address(arg2)]);
                                            if allowance[address(arg1)][address(msg.sender)] < arg3:
                                                revert with 0, 'ERC20: transfer amount exceeds allowance'
                                            if not arg1:
                                                revert with 0, 'ERC20: approve from the zero address'
                                            if not msg.sender:
                                                revert with 0, 'ERC20: approve to the zero address'
                        else:
                            if block.number > test266151307():
                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                            if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 - arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                            numCheckpoints[stor304[address(arg1)]].field_0++
                            numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = uint32(block.number)
                            numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_32 = Mask(224, 0, numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 - arg3)
                            emit DelegateVotesChanged(numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0, numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 - arg3, delegates[address(arg1)]);
                            if delegates[address(arg2)]:
                                if not numCheckpoints[stor304[address(arg2)]].field_0:
                                    if 0 > -arg3 - 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[stor304[address(arg2)]].field_0 <= 0:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        numCheckpoints[stor304[address(arg2)]].field_0++
                                        numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 = uint32(block.number)
                                        numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_32 = Mask(224, 0, arg3)
                                    else:
                                        if numCheckpoints[stor304[address(arg2)]].field_0 < 1:
                                            revert with 'NH{q', 17
                                        if numCheckpoints[stor304[address(arg2)]].field_0 - 1 >= numCheckpoints[stor304[address(arg2)]].field_0:
                                            revert with 'NH{q', 50
                                        if numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 == block.number:
                                            if arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            if numCheckpoints[stor304[address(arg2)]].field_0 < 1:
                                                revert with 'NH{q', 17
                                            if numCheckpoints[stor304[address(arg2)]].field_0 - 1 >= numCheckpoints[stor304[address(arg2)]].field_0:
                                                revert with 'NH{q', 50
                                            numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 = Mask(224, 0, arg3)
                                        else:
                                            if block.number > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                            if arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            numCheckpoints[stor304[address(arg2)]].field_0++
                                            numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 = uint32(block.number)
                                            numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_32 = Mask(224, 0, arg3)
                                    emit DelegateVotesChanged(0, arg3, delegates[address(arg2)]);
                                else:
                                    if numCheckpoints[stor304[address(arg2)]].field_0 < 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[stor304[address(arg2)]].field_0 - 1 >= numCheckpoints[stor304[address(arg2)]].field_0:
                                        revert with 'NH{q', 50
                                    if numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 > -arg3 - 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[stor304[address(arg2)]].field_0 <= 0:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 + arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        numCheckpoints[stor304[address(arg2)]].field_0++
                                        numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 = uint32(block.number)
                                        numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_32 = Mask(224, 0, numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 + arg3)
                                    else:
                                        if numCheckpoints[stor304[address(arg2)]].field_0 < 1:
                                            revert with 'NH{q', 17
                                        if numCheckpoints[stor304[address(arg2)]].field_0 - 1 >= numCheckpoints[stor304[address(arg2)]].field_0:
                                            revert with 'NH{q', 50
                                        if numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 == block.number:
                                            if numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 + arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            if numCheckpoints[stor304[address(arg2)]].field_0 < 1:
                                                revert with 'NH{q', 17
                                            if numCheckpoints[stor304[address(arg2)]].field_0 - 1 >= numCheckpoints[stor304[address(arg2)]].field_0:
                                                revert with 'NH{q', 50
                                            numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 = Mask(224, 0, numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 + arg3)
                                        else:
                                            if block.number > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                            if numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 + arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            numCheckpoints[stor304[address(arg2)]].field_0++
                                            numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 = uint32(block.number)
                                            numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_32 = Mask(224, 0, numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 + arg3)
                                    emit DelegateVotesChanged(numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0, numCheckpoints[stor304[address(arg2)]][numCheckpoints[stor304[address(arg2)]].field_0].field_0 + arg3, delegates[address(arg2)]);
                            if allowance[address(arg1)][address(msg.sender)] < arg3:
                                revert with 0, 'ERC20: transfer amount exceeds allowance'
                            if not arg1:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not msg.sender:
                                revert with 0, 'ERC20: approve to the zero address'
    ('bool', 'msg.sender')
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if uint256(balanceOf[address(msg.sender)]) < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
    uint256(balanceOf[address(msg.sender)]) -= arg1
    if totalSupply < arg1:
        revert with 'NH{q', 17
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
    if delegates[address(msg.sender)] == delegates[0]:
        if not stor306.length:
            if 0 < arg1:
                revert with 'NH{q', 17
            if stor306.length <= 0:
                if block.number > test266151307():
                    revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                if -arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                stor306.length++
                stor306[stor306.length].field_0 = uint32(block.number)
                stor306[stor306.length].field_32 = Mask(224, 0, -arg1)
            else:
                if stor306.length < 1:
                    revert with 'NH{q', 17
                if stor306.length - 1 >= stor306.length:
                    revert with 'NH{q', 50
                if stor306[stor306.length].field_0 == block.number:
                    if -arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                    if stor306.length < 1:
                        revert with 'NH{q', 17
                    if stor306.length - 1 >= stor306.length:
                        revert with 'NH{q', 50
                    stor306[stor306.length].field_0 = Mask(224, 0, -arg1)
                else:
                    if block.number > test266151307():
                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                    if -arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                    stor306.length++
                    stor306[stor306.length].field_0 = uint32(block.number)
                    stor306[stor306.length].field_32 = Mask(224, 0, -arg1)
        else:
            if stor306.length < 1:
                revert with 'NH{q', 17
            if stor306.length - 1 >= stor306.length:
                revert with 'NH{q', 50
            if stor306[stor306.length].field_0 < arg1:
                revert with 'NH{q', 17
            if stor306.length <= 0:
                if block.number > test266151307():
                    revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                if stor306[stor306.length].field_0 - arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                stor306.length++
                stor306[stor306.length].field_0 = uint32(block.number)
                stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg1)
            else:
                if stor306.length < 1:
                    revert with 'NH{q', 17
                if stor306.length - 1 >= stor306.length:
                    revert with 'NH{q', 50
                if stor306[stor306.length].field_0 == block.number:
                    if stor306[stor306.length].field_0 - arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                    if stor306.length < 1:
                        revert with 'NH{q', 17
                    if stor306.length - 1 >= stor306.length:
                        revert with 'NH{q', 50
                    stor306[stor306.length].field_0 = Mask(224, 0, stor306[stor306.length].field_0 - arg1)
                else:
                    if block.number > test266151307():
                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                    if stor306[stor306.length].field_0 - arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                    stor306.length++
                    stor306[stor306.length].field_0 = uint32(block.number)
                    stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg1)
    else:
        if arg1 <= 0:
            if not stor306.length:
                if 0 < arg1:
                    revert with 'NH{q', 17
                if stor306.length <= 0:
                    if block.number > test266151307():
                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                    if -arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                    stor306.length++
                    stor306[stor306.length].field_0 = uint32(block.number)
                    stor306[stor306.length].field_32 = Mask(224, 0, -arg1)
                else:
                    if stor306.length < 1:
                        revert with 'NH{q', 17
                    if stor306.length - 1 >= stor306.length:
                        revert with 'NH{q', 50
                    if stor306[stor306.length].field_0 == block.number:
                        if -arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                        if stor306.length < 1:
                            revert with 'NH{q', 17
                        if stor306.length - 1 >= stor306.length:
                            revert with 'NH{q', 50
                        stor306[stor306.length].field_0 = Mask(224, 0, -arg1)
                    else:
                        if block.number > test266151307():
                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                        if -arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                        stor306.length++
                        stor306[stor306.length].field_0 = uint32(block.number)
                        stor306[stor306.length].field_32 = Mask(224, 0, -arg1)
            else:
                if stor306.length < 1:
                    revert with 'NH{q', 17
                if stor306.length - 1 >= stor306.length:
                    revert with 'NH{q', 50
                if stor306[stor306.length].field_0 < arg1:
                    revert with 'NH{q', 17
                if stor306.length <= 0:
                    if block.number > test266151307():
                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                    if stor306[stor306.length].field_0 - arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                    stor306.length++
                    stor306[stor306.length].field_0 = uint32(block.number)
                    stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg1)
                else:
                    if stor306.length < 1:
                        revert with 'NH{q', 17
                    if stor306.length - 1 >= stor306.length:
                        revert with 'NH{q', 50
                    if stor306[stor306.length].field_0 == block.number:
                        if stor306[stor306.length].field_0 - arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                        if stor306.length < 1:
                            revert with 'NH{q', 17
                        if stor306.length - 1 >= stor306.length:
                            revert with 'NH{q', 50
                        stor306[stor306.length].field_0 = Mask(224, 0, stor306[stor306.length].field_0 - arg1)
                    else:
                        if block.number > test266151307():
                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                        if stor306[stor306.length].field_0 - arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                        stor306.length++
                        stor306[stor306.length].field_0 = uint32(block.number)
                        stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg1)
        else:
            if not delegates[address(msg.sender)]:
                if not delegates[0]:
                    if not stor306.length:
                        if 0 < arg1:
                            revert with 'NH{q', 17
                        if stor306.length <= 0:
                            if block.number > test266151307():
                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                            if -arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                            stor306.length++
                            stor306[stor306.length].field_0 = uint32(block.number)
                            stor306[stor306.length].field_32 = Mask(224, 0, -arg1)
                        else:
                            if stor306.length < 1:
                                revert with 'NH{q', 17
                            if stor306.length - 1 >= stor306.length:
                                revert with 'NH{q', 50
                            if stor306[stor306.length].field_0 == block.number:
                                if -arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                                if stor306.length < 1:
                                    revert with 'NH{q', 17
                                if stor306.length - 1 >= stor306.length:
                                    revert with 'NH{q', 50
                                stor306[stor306.length].field_0 = Mask(224, 0, -arg1)
                            else:
                                if block.number > test266151307():
                                    revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                if -arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                stor306.length++
                                stor306[stor306.length].field_0 = uint32(block.number)
                                stor306[stor306.length].field_32 = Mask(224, 0, -arg1)
                    else:
                        if stor306.length < 1:
                            revert with 'NH{q', 17
                        if stor306.length - 1 >= stor306.length:
                            revert with 'NH{q', 50
                        if stor306[stor306.length].field_0 < arg1:
                            revert with 'NH{q', 17
                        if stor306.length <= 0:
                            if block.number > test266151307():
                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                            if stor306[stor306.length].field_0 - arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                            stor306.length++
                            stor306[stor306.length].field_0 = uint32(block.number)
                            stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg1)
                        else:
                            if stor306.length < 1:
                                revert with 'NH{q', 17
                            if stor306.length - 1 >= stor306.length:
                                revert with 'NH{q', 50
                            if stor306[stor306.length].field_0 == block.number:
                                if stor306[stor306.length].field_0 - arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                                if stor306.length < 1:
                                    revert with 'NH{q', 17
                                if stor306.length - 1 >= stor306.length:
                                    revert with 'NH{q', 50
                                stor306[stor306.length].field_0 = Mask(224, 0, stor306[stor306.length].field_0 - arg1)
                            else:
                                if block.number > test266151307():
                                    revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                if stor306[stor306.length].field_0 - arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                stor306.length++
                                stor306[stor306.length].field_0 = uint32(block.number)
                                stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg1)
                else:
                    if not numCheckpoints[stor304[0]].field_0:
                        if 0 > -arg1 - 1:
                            revert with 'NH{q', 17
                        if numCheckpoints[stor304[0]].field_0 <= 0:
                            if block.number > test266151307():
                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                            if arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                            numCheckpoints[stor304[0]].field_0++
                            numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 = uint32(block.number)
                            numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_32 = Mask(224, 0, arg1)
                            emit DelegateVotesChanged(0, arg1, delegates[0]);
                            if not stor306.length:
                                if 0 < arg1:
                                    revert with 'NH{q', 17
                                if stor306.length <= 0:
                                    if block.number > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                    if -arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                    stor306.length++
                                    stor306[stor306.length].field_0 = uint32(block.number)
                                    stor306[stor306.length].field_32 = Mask(224, 0, -arg1)
                                else:
                                    if stor306.length < 1:
                                        revert with 'NH{q', 17
                                    if stor306.length - 1 >= stor306.length:
                                        revert with 'NH{q', 50
                                    if stor306[stor306.length].field_0 == block.number:
                                        if -arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        if stor306.length < 1:
                                            revert with 'NH{q', 17
                                        if stor306.length - 1 >= stor306.length:
                                            revert with 'NH{q', 50
                                        stor306[stor306.length].field_0 = Mask(224, 0, -arg1)
                                    else:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if -arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        stor306.length++
                                        stor306[stor306.length].field_0 = uint32(block.number)
                                        stor306[stor306.length].field_32 = Mask(224, 0, -arg1)
                            else:
                                if stor306.length < 1:
                                    revert with 'NH{q', 17
                                if stor306.length - 1 >= stor306.length:
                                    revert with 'NH{q', 50
                                if stor306[stor306.length].field_0 < arg1:
                                    revert with 'NH{q', 17
                                if stor306.length <= 0:
                                    if block.number > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                    if stor306[stor306.length].field_0 - arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                    stor306.length++
                                    stor306[stor306.length].field_0 = uint32(block.number)
                                    stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg1)
                                else:
                                    if stor306.length < 1:
                                        revert with 'NH{q', 17
                                    if stor306.length - 1 >= stor306.length:
                                        revert with 'NH{q', 50
                                    if stor306[stor306.length].field_0 == block.number:
                                        if stor306[stor306.length].field_0 - arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        if stor306.length < 1:
                                            revert with 'NH{q', 17
                                        if stor306.length - 1 >= stor306.length:
                                            revert with 'NH{q', 50
                                        stor306[stor306.length].field_0 = Mask(224, 0, stor306[stor306.length].field_0 - arg1)
                                    else:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if stor306[stor306.length].field_0 - arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        stor306.length++
                                        stor306[stor306.length].field_0 = uint32(block.number)
                                        stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg1)
                        else:
                            if numCheckpoints[stor304[0]].field_0 < 1:
                                revert with 'NH{q', 17
                            if numCheckpoints[stor304[0]].field_0 - 1 >= numCheckpoints[stor304[0]].field_0:
                                revert with 'NH{q', 50
                            if numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 == block.number:
                                if arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                                if numCheckpoints[stor304[0]].field_0 < 1:
                                    revert with 'NH{q', 17
                                if numCheckpoints[stor304[0]].field_0 - 1 >= numCheckpoints[stor304[0]].field_0:
                                    revert with 'NH{q', 50
                                numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 = Mask(224, 0, arg1)
                                emit DelegateVotesChanged(0, arg1, delegates[0]);
                                if not stor306.length:
                                    if 0 < arg1:
                                        revert with 'NH{q', 17
                                    if stor306.length <= 0:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if -arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        stor306.length++
                                        stor306[stor306.length].field_0 = uint32(block.number)
                                        stor306[stor306.length].field_32 = Mask(224, 0, -arg1)
                                    else:
                                        if stor306.length < 1:
                                            revert with 'NH{q', 17
                                        if stor306.length - 1 >= stor306.length:
                                            revert with 'NH{q', 50
                                        if stor306[stor306.length].field_0 == block.number:
                                            if -arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                                            if stor306.length < 1:
                                                revert with 'NH{q', 17
                                            if stor306.length - 1 >= stor306.length:
                                                revert with 'NH{q', 50
                                            stor306[stor306.length].field_0 = Mask(224, 0, -arg1)
                                        else:
                                            if block.number > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                            if -arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            stor306.length++
                                            stor306[stor306.length].field_0 = uint32(block.number)
                                            stor306[stor306.length].field_32 = Mask(224, 0, -arg1)
                                else:
                                    if stor306.length < 1:
                                        revert with 'NH{q', 17
                                    if stor306.length - 1 >= stor306.length:
                                        revert with 'NH{q', 50
                                    if stor306[stor306.length].field_0 < arg1:
                                        revert with 'NH{q', 17
                                    if stor306.length <= 0:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if stor306[stor306.length].field_0 - arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        stor306.length++
                                        stor306[stor306.length].field_0 = uint32(block.number)
                                        stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg1)
                                    else:
                                        if stor306.length < 1:
                                            revert with 'NH{q', 17
                                        if stor306.length - 1 >= stor306.length:
                                            revert with 'NH{q', 50
                                        if stor306[stor306.length].field_0 == block.number:
                                            if stor306[stor306.length].field_0 - arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                                            if stor306.length < 1:
                                                revert with 'NH{q', 17
                                            if stor306.length - 1 >= stor306.length:
                                                revert with 'NH{q', 50
                                            stor306[stor306.length].field_0 = Mask(224, 0, stor306[stor306.length].field_0 - arg1)
                                        else:
                                            if block.number > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                            if stor306[stor306.length].field_0 - arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            stor306.length++
                                            stor306[stor306.length].field_0 = uint32(block.number)
                                            stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg1)
                            else:
                                if block.number > test266151307():
                                    revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                if arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                numCheckpoints[stor304[0]].field_0++
                                numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 = uint32(block.number)
                                numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_32 = Mask(224, 0, arg1)
                                emit DelegateVotesChanged(0, arg1, delegates[0]);
                                if not stor306.length:
                                    if 0 < arg1:
                                        revert with 'NH{q', 17
                                    if stor306.length <= 0:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if -arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        stor306.length++
                                        stor306[stor306.length].field_0 = uint32(block.number)
                                        stor306[stor306.length].field_32 = Mask(224, 0, -arg1)
                                    else:
                                        if stor306.length < 1:
                                            revert with 'NH{q', 17
                                        if stor306.length - 1 >= stor306.length:
                                            revert with 'NH{q', 50
                                        if stor306[stor306.length].field_0 == block.number:
                                            if -arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            if stor306.length < 1:
                                                revert with 'NH{q', 17
                                            if stor306.length - 1 >= stor306.length:
                                                revert with 'NH{q', 50
                                            stor306[stor306.length].field_0 = Mask(224, 0, -arg1)
                                        else:
                                            if block.number > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                            if -arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            stor306.length++
                                            stor306[stor306.length].field_0 = uint32(block.number)
                                            stor306[stor306.length].field_32 = Mask(224, 0, -arg1)
                                else:
                                    if stor306.length < 1:
                                        revert with 'NH{q', 17
                                    if stor306.length - 1 >= stor306.length:
                                        revert with 'NH{q', 50
                                    if stor306[stor306.length].field_0 < arg1:
                                        revert with 'NH{q', 17
                                    if stor306.length <= 0:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if stor306[stor306.length].field_0 - arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        stor306.length++
                                        stor306[stor306.length].field_0 = uint32(block.number)
                                        stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg1)
                                    else:
                                        if stor306.length < 1:
                                            revert with 'NH{q', 17
                                        if stor306.length - 1 >= stor306.length:
                                            revert with 'NH{q', 50
                                        if stor306[stor306.length].field_0 == block.number:
                                            if stor306[stor306.length].field_0 - arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            if stor306.length < 1:
                                                revert with 'NH{q', 17
                                            if stor306.length - 1 >= stor306.length:
                                                revert with 'NH{q', 50
                                            stor306[stor306.length].field_0 = Mask(224, 0, stor306[stor306.length].field_0 - arg1)
                                        else:
                                            if block.number > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                            if stor306[stor306.length].field_0 - arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            stor306.length++
                                            stor306[stor306.length].field_0 = uint32(block.number)
                                            stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg1)
                    else:
                        if numCheckpoints[stor304[0]].field_0 < 1:
                            revert with 'NH{q', 17
                        if numCheckpoints[stor304[0]].field_0 - 1 >= numCheckpoints[stor304[0]].field_0:
                            revert with 'NH{q', 50
                        if numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 > -arg1 - 1:
                            revert with 'NH{q', 17
                        if numCheckpoints[stor304[0]].field_0 <= 0:
                            if block.number > test266151307():
                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                            if numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                            numCheckpoints[stor304[0]].field_0++
                            numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 = uint32(block.number)
                            numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_32 = Mask(224, 0, numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg1)
                            emit DelegateVotesChanged(numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0, numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg1, delegates[0]);
                            if not stor306.length:
                                if 0 < arg1:
                                    revert with 'NH{q', 17
                                if stor306.length <= 0:
                                    if block.number > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                    if -arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                    stor306.length++
                                    stor306[stor306.length].field_0 = uint32(block.number)
                                    stor306[stor306.length].field_32 = Mask(224, 0, -arg1)
                                else:
                                    if stor306.length < 1:
                                        revert with 'NH{q', 17
                                    if stor306.length - 1 >= stor306.length:
                                        revert with 'NH{q', 50
                                    if stor306[stor306.length].field_0 == block.number:
                                        if -arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        if stor306.length < 1:
                                            revert with 'NH{q', 17
                                        if stor306.length - 1 >= stor306.length:
                                            revert with 'NH{q', 50
                                        stor306[stor306.length].field_0 = Mask(224, 0, -arg1)
                                    else:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if -arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        stor306.length++
                                        stor306[stor306.length].field_0 = uint32(block.number)
                                        stor306[stor306.length].field_32 = Mask(224, 0, -arg1)
                            else:
                                if stor306.length < 1:
                                    revert with 'NH{q', 17
                                if stor306.length - 1 >= stor306.length:
                                    revert with 'NH{q', 50
                                if stor306[stor306.length].field_0 < arg1:
                                    revert with 'NH{q', 17
                                if stor306.length <= 0:
                                    if block.number > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                    if stor306[stor306.length].field_0 - arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                    stor306.length++
                                    stor306[stor306.length].field_0 = uint32(block.number)
                                    stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg1)
                                else:
                                    if stor306.length < 1:
                                        revert with 'NH{q', 17
                                    if stor306.length - 1 >= stor306.length:
                                        revert with 'NH{q', 50
                                    if stor306[stor306.length].field_0 == block.number:
                                        if stor306[stor306.length].field_0 - arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        if stor306.length < 1:
                                            revert with 'NH{q', 17
                                        if stor306.length - 1 >= stor306.length:
                                            revert with 'NH{q', 50
                                        stor306[stor306.length].field_0 = Mask(224, 0, stor306[stor306.length].field_0 - arg1)
                                    else:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if stor306[stor306.length].field_0 - arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        stor306.length++
                                        stor306[stor306.length].field_0 = uint32(block.number)
                                        stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg1)
                        else:
                            if numCheckpoints[stor304[0]].field_0 < 1:
                                revert with 'NH{q', 17
                            if numCheckpoints[stor304[0]].field_0 - 1 >= numCheckpoints[stor304[0]].field_0:
                                revert with 'NH{q', 50
                            if numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 == block.number:
                                if numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                                if numCheckpoints[stor304[0]].field_0 < 1:
                                    revert with 'NH{q', 17
                                if numCheckpoints[stor304[0]].field_0 - 1 >= numCheckpoints[stor304[0]].field_0:
                                    revert with 'NH{q', 50
                                numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 = Mask(224, 0, numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg1)
                                emit DelegateVotesChanged(numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0, numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg1, delegates[0]);
                                if not stor306.length:
                                    if 0 < arg1:
                                        revert with 'NH{q', 17
                                    if stor306.length <= 0:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if -arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        stor306.length++
                                        stor306[stor306.length].field_0 = uint32(block.number)
                                        stor306[stor306.length].field_32 = Mask(224, 0, -arg1)
                                    else:
                                        if stor306.length < 1:
                                            revert with 'NH{q', 17
                                        if stor306.length - 1 >= stor306.length:
                                            revert with 'NH{q', 50
                                        if stor306[stor306.length].field_0 == block.number:
                                            if -arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                                            if stor306.length < 1:
                                                revert with 'NH{q', 17
                                            if stor306.length - 1 >= stor306.length:
                                                revert with 'NH{q', 50
                                            stor306[stor306.length].field_0 = Mask(224, 0, -arg1)
                                        else:
                                            if block.number > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                            if -arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            stor306.length++
                                            stor306[stor306.length].field_0 = uint32(block.number)
                                            stor306[stor306.length].field_32 = Mask(224, 0, -arg1)
                                else:
                                    if stor306.length < 1:
                                        revert with 'NH{q', 17
                                    if stor306.length - 1 >= stor306.length:
                                        revert with 'NH{q', 50
                                    if stor306[stor306.length].field_0 < arg1:
                                        revert with 'NH{q', 17
                                    if stor306.length <= 0:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if stor306[stor306.length].field_0 - arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        stor306.length++
                                        stor306[stor306.length].field_0 = uint32(block.number)
                                        stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg1)
                                    else:
                                        if stor306.length < 1:
                                            revert with 'NH{q', 17
                                        if stor306.length - 1 >= stor306.length:
                                            revert with 'NH{q', 50
                                        if stor306[stor306.length].field_0 == block.number:
                                            if stor306[stor306.length].field_0 - arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                                            if stor306.length < 1:
                                                revert with 'NH{q', 17
                                            if stor306.length - 1 >= stor306.length:
                                                revert with 'NH{q', 50
                                            stor306[stor306.length].field_0 = Mask(224, 0, stor306[stor306.length].field_0 - arg1)
                                        else:
                                            if block.number > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                            if stor306[stor306.length].field_0 - arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            stor306.length++
                                            stor306[stor306.length].field_0 = uint32(block.number)
                                            stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg1)
                            else:
                                if block.number > test266151307():
                                    revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                if numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                numCheckpoints[stor304[0]].field_0++
                                numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 = uint32(block.number)
                                numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_32 = Mask(224, 0, numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg1)
                                emit DelegateVotesChanged(numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0, numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg1, delegates[0]);
                                if not stor306.length:
                                    if 0 < arg1:
                                        revert with 'NH{q', 17
                                    if stor306.length <= 0:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if -arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        stor306.length++
                                        stor306[stor306.length].field_0 = uint32(block.number)
                                        stor306[stor306.length].field_32 = Mask(224, 0, -arg1)
                                    else:
                                        if stor306.length < 1:
                                            revert with 'NH{q', 17
                                        if stor306.length - 1 >= stor306.length:
                                            revert with 'NH{q', 50
                                        if stor306[stor306.length].field_0 == block.number:
                                            if -arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            if stor306.length < 1:
                                                revert with 'NH{q', 17
                                            if stor306.length - 1 >= stor306.length:
                                                revert with 'NH{q', 50
                                            stor306[stor306.length].field_0 = Mask(224, 0, -arg1)
                                        else:
                                            if block.number > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                            if -arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            stor306.length++
                                            stor306[stor306.length].field_0 = uint32(block.number)
                                            stor306[stor306.length].field_32 = Mask(224, 0, -arg1)
                                else:
                                    if stor306.length < 1:
                                        revert with 'NH{q', 17
                                    if stor306.length - 1 >= stor306.length:
                                        revert with 'NH{q', 50
                                    if stor306[stor306.length].field_0 < arg1:
                                        revert with 'NH{q', 17
                                    if stor306.length <= 0:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if stor306[stor306.length].field_0 - arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        stor306.length++
                                        stor306[stor306.length].field_0 = uint32(block.number)
                                        stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg1)
                                    else:
                                        if stor306.length < 1:
                                            revert with 'NH{q', 17
                                        if stor306.length - 1 >= stor306.length:
                                            revert with 'NH{q', 50
                                        if stor306[stor306.length].field_0 == block.number:
                                            if stor306[stor306.length].field_0 - arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            if stor306.length < 1:
                                                revert with 'NH{q', 17
                                            if stor306.length - 1 >= stor306.length:
                                                revert with 'NH{q', 50
                                            stor306[stor306.length].field_0 = Mask(224, 0, stor306[stor306.length].field_0 - arg1)
                                        else:
                                            if block.number > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                            if stor306[stor306.length].field_0 - arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            stor306.length++
                                            stor306[stor306.length].field_0 = uint32(block.number)
                                            stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg1)
            else:
                if not numCheckpoints[stor304[address(msg.sender)]].field_0:
                    if 0 < arg1:
                        revert with 'NH{q', 17
                    if numCheckpoints[stor304[address(msg.sender)]].field_0 <= 0:
                        if block.number > test266151307():
                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                        if -arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                        numCheckpoints[stor304[address(msg.sender)]].field_0++
                        numCheckpoints[stor304[address(msg.sender)]][numCheckpoints[stor304[address(msg.sender)]].field_0].field_0 = uint32(block.number)
                        numCheckpoints[stor304[address(msg.sender)]][numCheckpoints[stor304[address(msg.sender)]].field_0].field_32 = Mask(224, 0, -arg1)
                        emit DelegateVotesChanged(0, -arg1, delegates[address(msg.sender)]);
                        if delegates[0]:
                            if not numCheckpoints[stor304[0]].field_0:
                                if 0 > -arg1 - 1:
                                    revert with 'NH{q', 17
                                if numCheckpoints[stor304[0]].field_0 <= 0:
                                    if block.number > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                    if arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                    numCheckpoints[stor304[0]].field_0++
                                    numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 = uint32(block.number)
                                    numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_32 = Mask(224, 0, arg1)
                                else:
                                    if numCheckpoints[stor304[0]].field_0 < 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[stor304[0]].field_0 - 1 >= numCheckpoints[stor304[0]].field_0:
                                        revert with 'NH{q', 50
                                    if numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 == block.number:
                                        if arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        if numCheckpoints[stor304[0]].field_0 < 1:
                                            revert with 'NH{q', 17
                                        if numCheckpoints[stor304[0]].field_0 - 1 >= numCheckpoints[stor304[0]].field_0:
                                            revert with 'NH{q', 50
                                        numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 = Mask(224, 0, arg1)
                                    else:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        numCheckpoints[stor304[0]].field_0++
                                        numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 = uint32(block.number)
                                        numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_32 = Mask(224, 0, arg1)
                                emit DelegateVotesChanged(0, arg1, delegates[0]);
                            else:
                                if numCheckpoints[stor304[0]].field_0 < 1:
                                    revert with 'NH{q', 17
                                if numCheckpoints[stor304[0]].field_0 - 1 >= numCheckpoints[stor304[0]].field_0:
                                    revert with 'NH{q', 50
                                if numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 > -arg1 - 1:
                                    revert with 'NH{q', 17
                                if numCheckpoints[stor304[0]].field_0 <= 0:
                                    if block.number > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                    if numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                    numCheckpoints[stor304[0]].field_0++
                                    numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 = uint32(block.number)
                                    numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_32 = Mask(224, 0, numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg1)
                                else:
                                    if numCheckpoints[stor304[0]].field_0 < 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[stor304[0]].field_0 - 1 >= numCheckpoints[stor304[0]].field_0:
                                        revert with 'NH{q', 50
                                    if numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 == block.number:
                                        if numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        if numCheckpoints[stor304[0]].field_0 < 1:
                                            revert with 'NH{q', 17
                                        if numCheckpoints[stor304[0]].field_0 - 1 >= numCheckpoints[stor304[0]].field_0:
                                            revert with 'NH{q', 50
                                        numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 = Mask(224, 0, numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg1)
                                    else:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        numCheckpoints[stor304[0]].field_0++
                                        numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 = uint32(block.number)
                                        numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_32 = Mask(224, 0, numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg1)
                                emit DelegateVotesChanged(numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0, numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg1, delegates[0]);
                        if not stor306.length:
                            if 0 < arg1:
                                revert with 'NH{q', 17
                            if stor306.length <= 0:
                                if block.number > test266151307():
                                    revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                if -arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                stor306.length++
                                stor306[stor306.length].field_0 = uint32(block.number)
                                stor306[stor306.length].field_32 = Mask(224, 0, -arg1)
                            else:
                                if stor306.length < 1:
                                    revert with 'NH{q', 17
                                if stor306.length - 1 >= stor306.length:
                                    revert with 'NH{q', 50
                                if stor306[stor306.length].field_0 == block.number:
                                    if -arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                    if stor306.length < 1:
                                        revert with 'NH{q', 17
                                    if stor306.length - 1 >= stor306.length:
                                        revert with 'NH{q', 50
                                    stor306[stor306.length].field_0 = Mask(224, 0, -arg1)
                                else:
                                    if block.number > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                    if -arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                    stor306.length++
                                    stor306[stor306.length].field_0 = uint32(block.number)
                                    stor306[stor306.length].field_32 = Mask(224, 0, -arg1)
                        else:
                            if stor306.length < 1:
                                revert with 'NH{q', 17
                            if stor306.length - 1 >= stor306.length:
                                revert with 'NH{q', 50
                            if stor306[stor306.length].field_0 < arg1:
                                revert with 'NH{q', 17
                            if stor306.length <= 0:
                                if block.number > test266151307():
                                    revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                if stor306[stor306.length].field_0 - arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                stor306.length++
                                stor306[stor306.length].field_0 = uint32(block.number)
                                stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg1)
                            else:
                                if stor306.length < 1:
                                    revert with 'NH{q', 17
                                if stor306.length - 1 >= stor306.length:
                                    revert with 'NH{q', 50
                                if stor306[stor306.length].field_0 == block.number:
                                    if stor306[stor306.length].field_0 - arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                    if stor306.length < 1:
                                        revert with 'NH{q', 17
                                    if stor306.length - 1 >= stor306.length:
                                        revert with 'NH{q', 50
                                    stor306[stor306.length].field_0 = Mask(224, 0, stor306[stor306.length].field_0 - arg1)
                                else:
                                    if block.number > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                    if stor306[stor306.length].field_0 - arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                    stor306.length++
                                    stor306[stor306.length].field_0 = uint32(block.number)
                                    stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg1)
                    else:
                        if numCheckpoints[stor304[address(msg.sender)]].field_0 < 1:
                            revert with 'NH{q', 17
                        if numCheckpoints[stor304[address(msg.sender)]].field_0 - 1 >= numCheckpoints[stor304[address(msg.sender)]].field_0:
                            revert with 'NH{q', 50
                        if numCheckpoints[stor304[address(msg.sender)]][numCheckpoints[stor304[address(msg.sender)]].field_0].field_0 == block.number:
                            if -arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                            if numCheckpoints[stor304[address(msg.sender)]].field_0 < 1:
                                revert with 'NH{q', 17
                            if numCheckpoints[stor304[address(msg.sender)]].field_0 - 1 >= numCheckpoints[stor304[address(msg.sender)]].field_0:
                                revert with 'NH{q', 50
                            numCheckpoints[stor304[address(msg.sender)]][numCheckpoints[stor304[address(msg.sender)]].field_0].field_0 = Mask(224, 0, -arg1)
                            emit DelegateVotesChanged(0, -arg1, delegates[address(msg.sender)]);
                            if not delegates[0]:
                                if not stor306.length:
                                    if 0 < arg1:
                                        revert with 'NH{q', 17
                                    if stor306.length <= 0:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if -arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        stor306.length++
                                        stor306[stor306.length].field_0 = uint32(block.number)
                                        stor306[stor306.length].field_32 = Mask(224, 0, -arg1)
                                    else:
                                        if stor306.length < 1:
                                            revert with 'NH{q', 17
                                        if stor306.length - 1 >= stor306.length:
                                            revert with 'NH{q', 50
                                        if stor306[stor306.length].field_0 == block.number:
                                            if -arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                                            if stor306.length < 1:
                                                revert with 'NH{q', 17
                                            if stor306.length - 1 >= stor306.length:
                                                revert with 'NH{q', 50
                                            stor306[stor306.length].field_0 = Mask(224, 0, -arg1)
                                        else:
                                            if block.number > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                            if -arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            stor306.length++
                                            stor306[stor306.length].field_0 = uint32(block.number)
                                            stor306[stor306.length].field_32 = Mask(224, 0, -arg1)
                                else:
                                    if stor306.length < 1:
                                        revert with 'NH{q', 17
                                    if stor306.length - 1 >= stor306.length:
                                        revert with 'NH{q', 50
                                    if stor306[stor306.length].field_0 < arg1:
                                        revert with 'NH{q', 17
                                    if stor306.length <= 0:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if stor306[stor306.length].field_0 - arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        stor306.length++
                                        stor306[stor306.length].field_0 = uint32(block.number)
                                        stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg1)
                                    else:
                                        if stor306.length < 1:
                                            revert with 'NH{q', 17
                                        if stor306.length - 1 >= stor306.length:
                                            revert with 'NH{q', 50
                                        if stor306[stor306.length].field_0 == block.number:
                                            if stor306[stor306.length].field_0 - arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                                            if stor306.length < 1:
                                                revert with 'NH{q', 17
                                            if stor306.length - 1 >= stor306.length:
                                                revert with 'NH{q', 50
                                            stor306[stor306.length].field_0 = Mask(224, 0, stor306[stor306.length].field_0 - arg1)
                                        else:
                                            if block.number > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                            if stor306[stor306.length].field_0 - arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            stor306.length++
                                            stor306[stor306.length].field_0 = uint32(block.number)
                                            stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg1)
                            else:
                                if not numCheckpoints[stor304[0]].field_0:
                                    if 0 > -arg1 - 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[stor304[0]].field_0 <= 0:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        numCheckpoints[stor304[0]].field_0++
                                        numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 = uint32(block.number)
                                        numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_32 = Mask(224, 0, arg1)
                                        emit DelegateVotesChanged(0, arg1, delegates[0]);
                                        if not stor306.length:
                                            if 0 < arg1:
                                                revert with 'NH{q', 17
                                            if stor306.length <= 0:
                                                if block.number > test266151307():
                                                    revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                if -arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                stor306.length++
                                                stor306[stor306.length].field_0 = uint32(block.number)
                                                stor306[stor306.length].field_32 = Mask(224, 0, -arg1)
                                            else:
                                                if stor306.length < 1:
                                                    revert with 'NH{q', 17
                                                if stor306.length - 1 >= stor306.length:
                                                    revert with 'NH{q', 50
                                                if stor306[stor306.length].field_0 == block.number:
                                                    if -arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    if stor306.length < 1:
                                                        revert with 'NH{q', 17
                                                    if stor306.length - 1 >= stor306.length:
                                                        revert with 'NH{q', 50
                                                    stor306[stor306.length].field_0 = Mask(224, 0, -arg1)
                                                else:
                                                    if block.number > test266151307():
                                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                    if -arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    stor306.length++
                                                    stor306[stor306.length].field_0 = uint32(block.number)
                                                    stor306[stor306.length].field_32 = Mask(224, 0, -arg1)
                                        else:
                                            if stor306.length < 1:
                                                revert with 'NH{q', 17
                                            if stor306.length - 1 >= stor306.length:
                                                revert with 'NH{q', 50
                                            if stor306[stor306.length].field_0 < arg1:
                                                revert with 'NH{q', 17
                                            if stor306.length <= 0:
                                                if block.number > test266151307():
                                                    revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                if stor306[stor306.length].field_0 - arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                stor306.length++
                                                stor306[stor306.length].field_0 = uint32(block.number)
                                                stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg1)
                                            else:
                                                if stor306.length < 1:
                                                    revert with 'NH{q', 17
                                                if stor306.length - 1 >= stor306.length:
                                                    revert with 'NH{q', 50
                                                if stor306[stor306.length].field_0 == block.number:
                                                    if stor306[stor306.length].field_0 - arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    if stor306.length < 1:
                                                        revert with 'NH{q', 17
                                                    if stor306.length - 1 >= stor306.length:
                                                        revert with 'NH{q', 50
                                                    stor306[stor306.length].field_0 = Mask(224, 0, stor306[stor306.length].field_0 - arg1)
                                                else:
                                                    if block.number > test266151307():
                                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                    if stor306[stor306.length].field_0 - arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    stor306.length++
                                                    stor306[stor306.length].field_0 = uint32(block.number)
                                                    stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg1)
                                    else:
                                        if numCheckpoints[stor304[0]].field_0 < 1:
                                            revert with 'NH{q', 17
                                        if numCheckpoints[stor304[0]].field_0 - 1 >= numCheckpoints[stor304[0]].field_0:
                                            revert with 'NH{q', 50
                                        if numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 == block.number:
                                            if arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                                            if numCheckpoints[stor304[0]].field_0 < 1:
                                                revert with 'NH{q', 17
                                            if numCheckpoints[stor304[0]].field_0 - 1 >= numCheckpoints[stor304[0]].field_0:
                                                revert with 'NH{q', 50
                                            numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 = Mask(224, 0, arg1)
                                            emit DelegateVotesChanged(0, arg1, delegates[0]);
                                            if not stor306.length:
                                                if 0 < arg1:
                                                    revert with 'NH{q', 17
                                                if stor306.length <= 0:
                                                    if block.number > test266151307():
                                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                    if -arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    stor306.length++
                                                    stor306[stor306.length].field_0 = uint32(block.number)
                                                    stor306[stor306.length].field_32 = Mask(224, 0, -arg1)
                                                else:
                                                    if stor306.length < 1:
                                                        revert with 'NH{q', 17
                                                    if stor306.length - 1 >= stor306.length:
                                                        revert with 'NH{q', 50
                                                    if stor306[stor306.length].field_0 == block.number:
                                                        if -arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                                                        if stor306.length < 1:
                                                            revert with 'NH{q', 17
                                                        if stor306.length - 1 >= stor306.length:
                                                            revert with 'NH{q', 50
                                                        stor306[stor306.length].field_0 = Mask(224, 0, -arg1)
                                                    else:
                                                        if block.number > test266151307():
                                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                        if -arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                        stor306.length++
                                                        stor306[stor306.length].field_0 = uint32(block.number)
                                                        stor306[stor306.length].field_32 = Mask(224, 0, -arg1)
                                            else:
                                                if stor306.length < 1:
                                                    revert with 'NH{q', 17
                                                if stor306.length - 1 >= stor306.length:
                                                    revert with 'NH{q', 50
                                                if stor306[stor306.length].field_0 < arg1:
                                                    revert with 'NH{q', 17
                                                if stor306.length <= 0:
                                                    if block.number > test266151307():
                                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                    if stor306[stor306.length].field_0 - arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    stor306.length++
                                                    stor306[stor306.length].field_0 = uint32(block.number)
                                                    stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg1)
                                                else:
                                                    if stor306.length < 1:
                                                        revert with 'NH{q', 17
                                                    if stor306.length - 1 >= stor306.length:
                                                        revert with 'NH{q', 50
                                                    if stor306[stor306.length].field_0 == block.number:
                                                        if stor306[stor306.length].field_0 - arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                                                        if stor306.length < 1:
                                                            revert with 'NH{q', 17
                                                        if stor306.length - 1 >= stor306.length:
                                                            revert with 'NH{q', 50
                                                        stor306[stor306.length].field_0 = Mask(224, 0, stor306[stor306.length].field_0 - arg1)
                                                    else:
                                                        if block.number > test266151307():
                                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                        if stor306[stor306.length].field_0 - arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                        stor306.length++
                                                        stor306[stor306.length].field_0 = uint32(block.number)
                                                        stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg1)
                                        else:
                                            if block.number > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                            if arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            numCheckpoints[stor304[0]].field_0++
                                            numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 = uint32(block.number)
                                            numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_32 = Mask(224, 0, arg1)
                                            emit DelegateVotesChanged(0, arg1, delegates[0]);
                                            if not stor306.length:
                                                if 0 < arg1:
                                                    revert with 'NH{q', 17
                                                if stor306.length <= 0:
                                                    if block.number > test266151307():
                                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                    if -arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    stor306.length++
                                                    stor306[stor306.length].field_0 = uint32(block.number)
                                                    stor306[stor306.length].field_32 = Mask(224, 0, -arg1)
                                                else:
                                                    if stor306.length < 1:
                                                        revert with 'NH{q', 17
                                                    if stor306.length - 1 >= stor306.length:
                                                        revert with 'NH{q', 50
                                                    if stor306[stor306.length].field_0 == block.number:
                                                        if -arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                        if stor306.length < 1:
                                                            revert with 'NH{q', 17
                                                        if stor306.length - 1 >= stor306.length:
                                                            revert with 'NH{q', 50
                                                        stor306[stor306.length].field_0 = Mask(224, 0, -arg1)
                                                    else:
                                                        if block.number > test266151307():
                                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                        if -arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                        stor306.length++
                                                        stor306[stor306.length].field_0 = uint32(block.number)
                                                        stor306[stor306.length].field_32 = Mask(224, 0, -arg1)
                                            else:
                                                if stor306.length < 1:
                                                    revert with 'NH{q', 17
                                                if stor306.length - 1 >= stor306.length:
                                                    revert with 'NH{q', 50
                                                if stor306[stor306.length].field_0 < arg1:
                                                    revert with 'NH{q', 17
                                                if stor306.length <= 0:
                                                    if block.number > test266151307():
                                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                    if stor306[stor306.length].field_0 - arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    stor306.length++
                                                    stor306[stor306.length].field_0 = uint32(block.number)
                                                    stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg1)
                                                else:
                                                    if stor306.length < 1:
                                                        revert with 'NH{q', 17
                                                    if stor306.length - 1 >= stor306.length:
                                                        revert with 'NH{q', 50
                                                    if stor306[stor306.length].field_0 == block.number:
                                                        if stor306[stor306.length].field_0 - arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                        if stor306.length < 1:
                                                            revert with 'NH{q', 17
                                                        if stor306.length - 1 >= stor306.length:
                                                            revert with 'NH{q', 50
                                                        stor306[stor306.length].field_0 = Mask(224, 0, stor306[stor306.length].field_0 - arg1)
                                                    else:
                                                        if block.number > test266151307():
                                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                        if stor306[stor306.length].field_0 - arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                        stor306.length++
                                                        stor306[stor306.length].field_0 = uint32(block.number)
                                                        stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg1)
                                else:
                                    if numCheckpoints[stor304[0]].field_0 < 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[stor304[0]].field_0 - 1 >= numCheckpoints[stor304[0]].field_0:
                                        revert with 'NH{q', 50
                                    if numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 > -arg1 - 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[stor304[0]].field_0 <= 0:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        numCheckpoints[stor304[0]].field_0++
                                        numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 = uint32(block.number)
                                        numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_32 = Mask(224, 0, numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg1)
                                        emit DelegateVotesChanged(numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0, numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg1, delegates[0]);
                                        if not stor306.length:
                                            if 0 < arg1:
                                                revert with 'NH{q', 17
                                            if stor306.length <= 0:
                                                if block.number > test266151307():
                                                    revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                if -arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                stor306.length++
                                                stor306[stor306.length].field_0 = uint32(block.number)
                                                stor306[stor306.length].field_32 = Mask(224, 0, -arg1)
                                            else:
                                                if stor306.length < 1:
                                                    revert with 'NH{q', 17
                                                if stor306.length - 1 >= stor306.length:
                                                    revert with 'NH{q', 50
                                                if stor306[stor306.length].field_0 == block.number:
                                                    if -arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    if stor306.length < 1:
                                                        revert with 'NH{q', 17
                                                    if stor306.length - 1 >= stor306.length:
                                                        revert with 'NH{q', 50
                                                    stor306[stor306.length].field_0 = Mask(224, 0, -arg1)
                                                else:
                                                    if block.number > test266151307():
                                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                    if -arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    stor306.length++
                                                    stor306[stor306.length].field_0 = uint32(block.number)
                                                    stor306[stor306.length].field_32 = Mask(224, 0, -arg1)
                                        else:
                                            if stor306.length < 1:
                                                revert with 'NH{q', 17
                                            if stor306.length - 1 >= stor306.length:
                                                revert with 'NH{q', 50
                                            if stor306[stor306.length].field_0 < arg1:
                                                revert with 'NH{q', 17
                                            if stor306.length <= 0:
                                                if block.number > test266151307():
                                                    revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                if stor306[stor306.length].field_0 - arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                stor306.length++
                                                stor306[stor306.length].field_0 = uint32(block.number)
                                                stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg1)
                                            else:
                                                if stor306.length < 1:
                                                    revert with 'NH{q', 17
                                                if stor306.length - 1 >= stor306.length:
                                                    revert with 'NH{q', 50
                                                if stor306[stor306.length].field_0 == block.number:
                                                    if stor306[stor306.length].field_0 - arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    if stor306.length < 1:
                                                        revert with 'NH{q', 17
                                                    if stor306.length - 1 >= stor306.length:
                                                        revert with 'NH{q', 50
                                                    stor306[stor306.length].field_0 = Mask(224, 0, stor306[stor306.length].field_0 - arg1)
                                                else:
                                                    if block.number > test266151307():
                                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                    if stor306[stor306.length].field_0 - arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    stor306.length++
                                                    stor306[stor306.length].field_0 = uint32(block.number)
                                                    stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg1)
                                    else:
                                        if numCheckpoints[stor304[0]].field_0 < 1:
                                            revert with 'NH{q', 17
                                        if numCheckpoints[stor304[0]].field_0 - 1 >= numCheckpoints[stor304[0]].field_0:
                                            revert with 'NH{q', 50
                                        if numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 == block.number:
                                            if numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                                            if numCheckpoints[stor304[0]].field_0 < 1:
                                                revert with 'NH{q', 17
                                            if numCheckpoints[stor304[0]].field_0 - 1 >= numCheckpoints[stor304[0]].field_0:
                                                revert with 'NH{q', 50
                                            numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 = Mask(224, 0, numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg1)
                                            emit DelegateVotesChanged(numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0, numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg1, delegates[0]);
                                            if not stor306.length:
                                                if 0 < arg1:
                                                    revert with 'NH{q', 17
                                                if stor306.length <= 0:
                                                    if block.number > test266151307():
                                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                    if -arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    stor306.length++
                                                    stor306[stor306.length].field_0 = uint32(block.number)
                                                    stor306[stor306.length].field_32 = Mask(224, 0, -arg1)
                                                else:
                                                    if stor306.length < 1:
                                                        revert with 'NH{q', 17
                                                    if stor306.length - 1 >= stor306.length:
                                                        revert with 'NH{q', 50
                                                    if stor306[stor306.length].field_0 == block.number:
                                                        if -arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                                                        if stor306.length < 1:
                                                            revert with 'NH{q', 17
                                                        if stor306.length - 1 >= stor306.length:
                                                            revert with 'NH{q', 50
                                                        stor306[stor306.length].field_0 = Mask(224, 0, -arg1)
                                                    else:
                                                        if block.number > test266151307():
                                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                        if -arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                        stor306.length++
                                                        stor306[stor306.length].field_0 = uint32(block.number)
                                                        stor306[stor306.length].field_32 = Mask(224, 0, -arg1)
                                            else:
                                                if stor306.length < 1:
                                                    revert with 'NH{q', 17
                                                if stor306.length - 1 >= stor306.length:
                                                    revert with 'NH{q', 50
                                                if stor306[stor306.length].field_0 < arg1:
                                                    revert with 'NH{q', 17
                                                if stor306.length <= 0:
                                                    if block.number > test266151307():
                                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                    if stor306[stor306.length].field_0 - arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    stor306.length++
                                                    stor306[stor306.length].field_0 = uint32(block.number)
                                                    stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg1)
                                                else:
                                                    if stor306.length < 1:
                                                        revert with 'NH{q', 17
                                                    if stor306.length - 1 >= stor306.length:
                                                        revert with 'NH{q', 50
                                                    if stor306[stor306.length].field_0 == block.number:
                                                        if stor306[stor306.length].field_0 - arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                                                        if stor306.length < 1:
                                                            revert with 'NH{q', 17
                                                        if stor306.length - 1 >= stor306.length:
                                                            revert with 'NH{q', 50
                                                        stor306[stor306.length].field_0 = Mask(224, 0, stor306[stor306.length].field_0 - arg1)
                                                    else:
                                                        if block.number > test266151307():
                                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                        if stor306[stor306.length].field_0 - arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                        stor306.length++
                                                        stor306[stor306.length].field_0 = uint32(block.number)
                                                        stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg1)
                                        else:
                                            if block.number > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                            if numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            numCheckpoints[stor304[0]].field_0++
                                            numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 = uint32(block.number)
                                            numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_32 = Mask(224, 0, numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg1)
                                            emit DelegateVotesChanged(numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0, numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg1, delegates[0]);
                                            if not stor306.length:
                                                if 0 < arg1:
                                                    revert with 'NH{q', 17
                                                if stor306.length <= 0:
                                                    if block.number > test266151307():
                                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                    if -arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    stor306.length++
                                                    stor306[stor306.length].field_0 = uint32(block.number)
                                                    stor306[stor306.length].field_32 = Mask(224, 0, -arg1)
                                                else:
                                                    if stor306.length < 1:
                                                        revert with 'NH{q', 17
                                                    if stor306.length - 1 >= stor306.length:
                                                        revert with 'NH{q', 50
                                                    if stor306[stor306.length].field_0 == block.number:
                                                        if -arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                        if stor306.length < 1:
                                                            revert with 'NH{q', 17
                                                        if stor306.length - 1 >= stor306.length:
                                                            revert with 'NH{q', 50
                                                        stor306[stor306.length].field_0 = Mask(224, 0, -arg1)
                                                    else:
                                                        if block.number > test266151307():
                                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                        if -arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                        stor306.length++
                                                        stor306[stor306.length].field_0 = uint32(block.number)
                                                        stor306[stor306.length].field_32 = Mask(224, 0, -arg1)
                                            else:
                                                if stor306.length < 1:
                                                    revert with 'NH{q', 17
                                                if stor306.length - 1 >= stor306.length:
                                                    revert with 'NH{q', 50
                                                if stor306[stor306.length].field_0 < arg1:
                                                    revert with 'NH{q', 17
                                                if stor306.length <= 0:
                                                    if block.number > test266151307():
                                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                    if stor306[stor306.length].field_0 - arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    stor306.length++
                                                    stor306[stor306.length].field_0 = uint32(block.number)
                                                    stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg1)
                                                else:
                                                    if stor306.length < 1:
                                                        revert with 'NH{q', 17
                                                    if stor306.length - 1 >= stor306.length:
                                                        revert with 'NH{q', 50
                                                    if stor306[stor306.length].field_0 == block.number:
                                                        if stor306[stor306.length].field_0 - arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                        if stor306.length < 1:
                                                            revert with 'NH{q', 17
                                                        if stor306.length - 1 >= stor306.length:
                                                            revert with 'NH{q', 50
                                                        stor306[stor306.length].field_0 = Mask(224, 0, stor306[stor306.length].field_0 - arg1)
                                                    else:
                                                        if block.number > test266151307():
                                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                        if stor306[stor306.length].field_0 - arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                        stor306.length++
                                                        stor306[stor306.length].field_0 = uint32(block.number)
                                                        stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg1)
                        else:
                            if block.number > test266151307():
                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                            if -arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                            numCheckpoints[stor304[address(msg.sender)]].field_0++
                            numCheckpoints[stor304[address(msg.sender)]][numCheckpoints[stor304[address(msg.sender)]].field_0].field_0 = uint32(block.number)
                            numCheckpoints[stor304[address(msg.sender)]][numCheckpoints[stor304[address(msg.sender)]].field_0].field_32 = Mask(224, 0, -arg1)
                            emit DelegateVotesChanged(0, -arg1, delegates[address(msg.sender)]);
                            if delegates[0]:
                                if not numCheckpoints[stor304[0]].field_0:
                                    if 0 > -arg1 - 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[stor304[0]].field_0 <= 0:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        numCheckpoints[stor304[0]].field_0++
                                        numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 = uint32(block.number)
                                        numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_32 = Mask(224, 0, arg1)
                                    else:
                                        if numCheckpoints[stor304[0]].field_0 < 1:
                                            revert with 'NH{q', 17
                                        if numCheckpoints[stor304[0]].field_0 - 1 >= numCheckpoints[stor304[0]].field_0:
                                            revert with 'NH{q', 50
                                        if numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 == block.number:
                                            if arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            if numCheckpoints[stor304[0]].field_0 < 1:
                                                revert with 'NH{q', 17
                                            if numCheckpoints[stor304[0]].field_0 - 1 >= numCheckpoints[stor304[0]].field_0:
                                                revert with 'NH{q', 50
                                            numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 = Mask(224, 0, arg1)
                                        else:
                                            if block.number > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                            if arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            numCheckpoints[stor304[0]].field_0++
                                            numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 = uint32(block.number)
                                            numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_32 = Mask(224, 0, arg1)
                                    emit DelegateVotesChanged(0, arg1, delegates[0]);
                                else:
                                    if numCheckpoints[stor304[0]].field_0 < 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[stor304[0]].field_0 - 1 >= numCheckpoints[stor304[0]].field_0:
                                        revert with 'NH{q', 50
                                    if numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 > -arg1 - 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[stor304[0]].field_0 <= 0:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        numCheckpoints[stor304[0]].field_0++
                                        numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 = uint32(block.number)
                                        numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_32 = Mask(224, 0, numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg1)
                                    else:
                                        if numCheckpoints[stor304[0]].field_0 < 1:
                                            revert with 'NH{q', 17
                                        if numCheckpoints[stor304[0]].field_0 - 1 >= numCheckpoints[stor304[0]].field_0:
                                            revert with 'NH{q', 50
                                        if numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 == block.number:
                                            if numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            if numCheckpoints[stor304[0]].field_0 < 1:
                                                revert with 'NH{q', 17
                                            if numCheckpoints[stor304[0]].field_0 - 1 >= numCheckpoints[stor304[0]].field_0:
                                                revert with 'NH{q', 50
                                            numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 = Mask(224, 0, numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg1)
                                        else:
                                            if block.number > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                            if numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            numCheckpoints[stor304[0]].field_0++
                                            numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 = uint32(block.number)
                                            numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_32 = Mask(224, 0, numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg1)
                                    emit DelegateVotesChanged(numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0, numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg1, delegates[0]);
                            if not stor306.length:
                                if 0 < arg1:
                                    revert with 'NH{q', 17
                                if stor306.length <= 0:
                                    if block.number > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                    if -arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                    stor306.length++
                                    stor306[stor306.length].field_0 = uint32(block.number)
                                    stor306[stor306.length].field_32 = Mask(224, 0, -arg1)
                                else:
                                    if stor306.length < 1:
                                        revert with 'NH{q', 17
                                    if stor306.length - 1 >= stor306.length:
                                        revert with 'NH{q', 50
                                    if stor306[stor306.length].field_0 == block.number:
                                        if -arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        if stor306.length < 1:
                                            revert with 'NH{q', 17
                                        if stor306.length - 1 >= stor306.length:
                                            revert with 'NH{q', 50
                                        stor306[stor306.length].field_0 = Mask(224, 0, -arg1)
                                    else:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if -arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        stor306.length++
                                        stor306[stor306.length].field_0 = uint32(block.number)
                                        stor306[stor306.length].field_32 = Mask(224, 0, -arg1)
                            else:
                                if stor306.length < 1:
                                    revert with 'NH{q', 17
                                if stor306.length - 1 >= stor306.length:
                                    revert with 'NH{q', 50
                                if stor306[stor306.length].field_0 < arg1:
                                    revert with 'NH{q', 17
                                if stor306.length <= 0:
                                    if block.number > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                    if stor306[stor306.length].field_0 - arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                    stor306.length++
                                    stor306[stor306.length].field_0 = uint32(block.number)
                                    stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg1)
                                else:
                                    if stor306.length < 1:
                                        revert with 'NH{q', 17
                                    if stor306.length - 1 >= stor306.length:
                                        revert with 'NH{q', 50
                                    if stor306[stor306.length].field_0 == block.number:
                                        if stor306[stor306.length].field_0 - arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        if stor306.length < 1:
                                            revert with 'NH{q', 17
                                        if stor306.length - 1 >= stor306.length:
                                            revert with 'NH{q', 50
                                        stor306[stor306.length].field_0 = Mask(224, 0, stor306[stor306.length].field_0 - arg1)
                                    else:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if stor306[stor306.length].field_0 - arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        stor306.length++
                                        stor306[stor306.length].field_0 = uint32(block.number)
                                        stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg1)
                else:
                    if numCheckpoints[stor304[address(msg.sender)]].field_0 < 1:
                        revert with 'NH{q', 17
                    if numCheckpoints[stor304[address(msg.sender)]].field_0 - 1 >= numCheckpoints[stor304[address(msg.sender)]].field_0:
                        revert with 'NH{q', 50
                    if numCheckpoints[stor304[address(msg.sender)]][numCheckpoints[stor304[address(msg.sender)]].field_0].field_0 < arg1:
                        revert with 'NH{q', 17
                    if numCheckpoints[stor304[address(msg.sender)]].field_0 <= 0:
                        if block.number > test266151307():
                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                        if numCheckpoints[stor304[address(msg.sender)]][numCheckpoints[stor304[address(msg.sender)]].field_0].field_0 - arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                        numCheckpoints[stor304[address(msg.sender)]].field_0++
                        numCheckpoints[stor304[address(msg.sender)]][numCheckpoints[stor304[address(msg.sender)]].field_0].field_0 = uint32(block.number)
                        numCheckpoints[stor304[address(msg.sender)]][numCheckpoints[stor304[address(msg.sender)]].field_0].field_32 = Mask(224, 0, numCheckpoints[stor304[address(msg.sender)]][numCheckpoints[stor304[address(msg.sender)]].field_0].field_0 - arg1)
                        emit DelegateVotesChanged(numCheckpoints[stor304[address(msg.sender)]][numCheckpoints[stor304[address(msg.sender)]].field_0].field_0, numCheckpoints[stor304[address(msg.sender)]][numCheckpoints[stor304[address(msg.sender)]].field_0].field_0 - arg1, delegates[address(msg.sender)]);
                        if delegates[0]:
                            if not numCheckpoints[stor304[0]].field_0:
                                if 0 > -arg1 - 1:
                                    revert with 'NH{q', 17
                                if numCheckpoints[stor304[0]].field_0 <= 0:
                                    if block.number > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                    if arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                    numCheckpoints[stor304[0]].field_0++
                                    numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 = uint32(block.number)
                                    numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_32 = Mask(224, 0, arg1)
                                else:
                                    if numCheckpoints[stor304[0]].field_0 < 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[stor304[0]].field_0 - 1 >= numCheckpoints[stor304[0]].field_0:
                                        revert with 'NH{q', 50
                                    if numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 == block.number:
                                        if arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        if numCheckpoints[stor304[0]].field_0 < 1:
                                            revert with 'NH{q', 17
                                        if numCheckpoints[stor304[0]].field_0 - 1 >= numCheckpoints[stor304[0]].field_0:
                                            revert with 'NH{q', 50
                                        numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 = Mask(224, 0, arg1)
                                    else:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        numCheckpoints[stor304[0]].field_0++
                                        numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 = uint32(block.number)
                                        numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_32 = Mask(224, 0, arg1)
                                emit DelegateVotesChanged(0, arg1, delegates[0]);
                            else:
                                if numCheckpoints[stor304[0]].field_0 < 1:
                                    revert with 'NH{q', 17
                                if numCheckpoints[stor304[0]].field_0 - 1 >= numCheckpoints[stor304[0]].field_0:
                                    revert with 'NH{q', 50
                                if numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 > -arg1 - 1:
                                    revert with 'NH{q', 17
                                if numCheckpoints[stor304[0]].field_0 <= 0:
                                    if block.number > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                    if numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                    numCheckpoints[stor304[0]].field_0++
                                    numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 = uint32(block.number)
                                    numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_32 = Mask(224, 0, numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg1)
                                else:
                                    if numCheckpoints[stor304[0]].field_0 < 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[stor304[0]].field_0 - 1 >= numCheckpoints[stor304[0]].field_0:
                                        revert with 'NH{q', 50
                                    if numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 == block.number:
                                        if numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        if numCheckpoints[stor304[0]].field_0 < 1:
                                            revert with 'NH{q', 17
                                        if numCheckpoints[stor304[0]].field_0 - 1 >= numCheckpoints[stor304[0]].field_0:
                                            revert with 'NH{q', 50
                                        numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 = Mask(224, 0, numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg1)
                                    else:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        numCheckpoints[stor304[0]].field_0++
                                        numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 = uint32(block.number)
                                        numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_32 = Mask(224, 0, numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg1)
                                emit DelegateVotesChanged(numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0, numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg1, delegates[0]);
                        if not stor306.length:
                            if 0 < arg1:
                                revert with 'NH{q', 17
                            if stor306.length <= 0:
                                if block.number > test266151307():
                                    revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                if -arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                stor306.length++
                                stor306[stor306.length].field_0 = uint32(block.number)
                                stor306[stor306.length].field_32 = Mask(224, 0, -arg1)
                            else:
                                if stor306.length < 1:
                                    revert with 'NH{q', 17
                                if stor306.length - 1 >= stor306.length:
                                    revert with 'NH{q', 50
                                if stor306[stor306.length].field_0 == block.number:
                                    if -arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                    if stor306.length < 1:
                                        revert with 'NH{q', 17
                                    if stor306.length - 1 >= stor306.length:
                                        revert with 'NH{q', 50
                                    stor306[stor306.length].field_0 = Mask(224, 0, -arg1)
                                else:
                                    if block.number > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                    if -arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                    stor306.length++
                                    stor306[stor306.length].field_0 = uint32(block.number)
                                    stor306[stor306.length].field_32 = Mask(224, 0, -arg1)
                        else:
                            if stor306.length < 1:
                                revert with 'NH{q', 17
                            if stor306.length - 1 >= stor306.length:
                                revert with 'NH{q', 50
                            if stor306[stor306.length].field_0 < arg1:
                                revert with 'NH{q', 17
                            if stor306.length <= 0:
                                if block.number > test266151307():
                                    revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                if stor306[stor306.length].field_0 - arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                stor306.length++
                                stor306[stor306.length].field_0 = uint32(block.number)
                                stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg1)
                            else:
                                if stor306.length < 1:
                                    revert with 'NH{q', 17
                                if stor306.length - 1 >= stor306.length:
                                    revert with 'NH{q', 50
                                if stor306[stor306.length].field_0 == block.number:
                                    if stor306[stor306.length].field_0 - arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                    if stor306.length < 1:
                                        revert with 'NH{q', 17
                                    if stor306.length - 1 >= stor306.length:
                                        revert with 'NH{q', 50
                                    stor306[stor306.length].field_0 = Mask(224, 0, stor306[stor306.length].field_0 - arg1)
                                else:
                                    if block.number > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                    if stor306[stor306.length].field_0 - arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                    stor306.length++
                                    stor306[stor306.length].field_0 = uint32(block.number)
                                    stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg1)
                    else:
                        if numCheckpoints[stor304[address(msg.sender)]].field_0 < 1:
                            revert with 'NH{q', 17
                        if numCheckpoints[stor304[address(msg.sender)]].field_0 - 1 >= numCheckpoints[stor304[address(msg.sender)]].field_0:
                            revert with 'NH{q', 50
                        if numCheckpoints[stor304[address(msg.sender)]][numCheckpoints[stor304[address(msg.sender)]].field_0].field_0 == block.number:
                            if numCheckpoints[stor304[address(msg.sender)]][numCheckpoints[stor304[address(msg.sender)]].field_0].field_0 - arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                            if numCheckpoints[stor304[address(msg.sender)]].field_0 < 1:
                                revert with 'NH{q', 17
                            if numCheckpoints[stor304[address(msg.sender)]].field_0 - 1 >= numCheckpoints[stor304[address(msg.sender)]].field_0:
                                revert with 'NH{q', 50
                            numCheckpoints[stor304[address(msg.sender)]][numCheckpoints[stor304[address(msg.sender)]].field_0].field_0 = Mask(224, 0, numCheckpoints[stor304[address(msg.sender)]][numCheckpoints[stor304[address(msg.sender)]].field_0].field_0 - arg1)
                            emit DelegateVotesChanged(numCheckpoints[stor304[address(msg.sender)]][numCheckpoints[stor304[address(msg.sender)]].field_0].field_0, numCheckpoints[stor304[address(msg.sender)]][numCheckpoints[stor304[address(msg.sender)]].field_0].field_0 - arg1, delegates[address(msg.sender)]);
                            if not delegates[0]:
                                if not stor306.length:
                                    if 0 < arg1:
                                        revert with 'NH{q', 17
                                    if stor306.length <= 0:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if -arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        stor306.length++
                                        stor306[stor306.length].field_0 = uint32(block.number)
                                        stor306[stor306.length].field_32 = Mask(224, 0, -arg1)
                                    else:
                                        if stor306.length < 1:
                                            revert with 'NH{q', 17
                                        if stor306.length - 1 >= stor306.length:
                                            revert with 'NH{q', 50
                                        if stor306[stor306.length].field_0 == block.number:
                                            if -arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                                            if stor306.length < 1:
                                                revert with 'NH{q', 17
                                            if stor306.length - 1 >= stor306.length:
                                                revert with 'NH{q', 50
                                            stor306[stor306.length].field_0 = Mask(224, 0, -arg1)
                                        else:
                                            if block.number > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                            if -arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            stor306.length++
                                            stor306[stor306.length].field_0 = uint32(block.number)
                                            stor306[stor306.length].field_32 = Mask(224, 0, -arg1)
                                else:
                                    if stor306.length < 1:
                                        revert with 'NH{q', 17
                                    if stor306.length - 1 >= stor306.length:
                                        revert with 'NH{q', 50
                                    if stor306[stor306.length].field_0 < arg1:
                                        revert with 'NH{q', 17
                                    if stor306.length <= 0:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if stor306[stor306.length].field_0 - arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        stor306.length++
                                        stor306[stor306.length].field_0 = uint32(block.number)
                                        stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg1)
                                    else:
                                        if stor306.length < 1:
                                            revert with 'NH{q', 17
                                        if stor306.length - 1 >= stor306.length:
                                            revert with 'NH{q', 50
                                        if stor306[stor306.length].field_0 == block.number:
                                            if stor306[stor306.length].field_0 - arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                                            if stor306.length < 1:
                                                revert with 'NH{q', 17
                                            if stor306.length - 1 >= stor306.length:
                                                revert with 'NH{q', 50
                                            stor306[stor306.length].field_0 = Mask(224, 0, stor306[stor306.length].field_0 - arg1)
                                        else:
                                            if block.number > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                            if stor306[stor306.length].field_0 - arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            stor306.length++
                                            stor306[stor306.length].field_0 = uint32(block.number)
                                            stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg1)
                            else:
                                if not numCheckpoints[stor304[0]].field_0:
                                    if 0 > -arg1 - 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[stor304[0]].field_0 <= 0:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        numCheckpoints[stor304[0]].field_0++
                                        numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 = uint32(block.number)
                                        numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_32 = Mask(224, 0, arg1)
                                        emit DelegateVotesChanged(0, arg1, delegates[0]);
                                        if not stor306.length:
                                            if 0 < arg1:
                                                revert with 'NH{q', 17
                                            if stor306.length <= 0:
                                                if block.number > test266151307():
                                                    revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                if -arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                stor306.length++
                                                stor306[stor306.length].field_0 = uint32(block.number)
                                                stor306[stor306.length].field_32 = Mask(224, 0, -arg1)
                                            else:
                                                if stor306.length < 1:
                                                    revert with 'NH{q', 17
                                                if stor306.length - 1 >= stor306.length:
                                                    revert with 'NH{q', 50
                                                if stor306[stor306.length].field_0 == block.number:
                                                    if -arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    if stor306.length < 1:
                                                        revert with 'NH{q', 17
                                                    if stor306.length - 1 >= stor306.length:
                                                        revert with 'NH{q', 50
                                                    stor306[stor306.length].field_0 = Mask(224, 0, -arg1)
                                                else:
                                                    if block.number > test266151307():
                                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                    if -arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    stor306.length++
                                                    stor306[stor306.length].field_0 = uint32(block.number)
                                                    stor306[stor306.length].field_32 = Mask(224, 0, -arg1)
                                        else:
                                            if stor306.length < 1:
                                                revert with 'NH{q', 17
                                            if stor306.length - 1 >= stor306.length:
                                                revert with 'NH{q', 50
                                            if stor306[stor306.length].field_0 < arg1:
                                                revert with 'NH{q', 17
                                            if stor306.length <= 0:
                                                if block.number > test266151307():
                                                    revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                if stor306[stor306.length].field_0 - arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                stor306.length++
                                                stor306[stor306.length].field_0 = uint32(block.number)
                                                stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg1)
                                            else:
                                                if stor306.length < 1:
                                                    revert with 'NH{q', 17
                                                if stor306.length - 1 >= stor306.length:
                                                    revert with 'NH{q', 50
                                                if stor306[stor306.length].field_0 == block.number:
                                                    if stor306[stor306.length].field_0 - arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    if stor306.length < 1:
                                                        revert with 'NH{q', 17
                                                    if stor306.length - 1 >= stor306.length:
                                                        revert with 'NH{q', 50
                                                    stor306[stor306.length].field_0 = Mask(224, 0, stor306[stor306.length].field_0 - arg1)
                                                else:
                                                    if block.number > test266151307():
                                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                    if stor306[stor306.length].field_0 - arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    stor306.length++
                                                    stor306[stor306.length].field_0 = uint32(block.number)
                                                    stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg1)
                                    else:
                                        if numCheckpoints[stor304[0]].field_0 < 1:
                                            revert with 'NH{q', 17
                                        if numCheckpoints[stor304[0]].field_0 - 1 >= numCheckpoints[stor304[0]].field_0:
                                            revert with 'NH{q', 50
                                        if numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 == block.number:
                                            if arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                                            if numCheckpoints[stor304[0]].field_0 < 1:
                                                revert with 'NH{q', 17
                                            if numCheckpoints[stor304[0]].field_0 - 1 >= numCheckpoints[stor304[0]].field_0:
                                                revert with 'NH{q', 50
                                            numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 = Mask(224, 0, arg1)
                                            emit DelegateVotesChanged(0, arg1, delegates[0]);
                                            if not stor306.length:
                                                if 0 < arg1:
                                                    revert with 'NH{q', 17
                                                if stor306.length <= 0:
                                                    if block.number > test266151307():
                                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                    if -arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    stor306.length++
                                                    stor306[stor306.length].field_0 = uint32(block.number)
                                                    stor306[stor306.length].field_32 = Mask(224, 0, -arg1)
                                                else:
                                                    if stor306.length < 1:
                                                        revert with 'NH{q', 17
                                                    if stor306.length - 1 >= stor306.length:
                                                        revert with 'NH{q', 50
                                                    if stor306[stor306.length].field_0 == block.number:
                                                        if -arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                                                        if stor306.length < 1:
                                                            revert with 'NH{q', 17
                                                        if stor306.length - 1 >= stor306.length:
                                                            revert with 'NH{q', 50
                                                        stor306[stor306.length].field_0 = Mask(224, 0, -arg1)
                                                    else:
                                                        if block.number > test266151307():
                                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                        if -arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                        stor306.length++
                                                        stor306[stor306.length].field_0 = uint32(block.number)
                                                        stor306[stor306.length].field_32 = Mask(224, 0, -arg1)
                                            else:
                                                if stor306.length < 1:
                                                    revert with 'NH{q', 17
                                                if stor306.length - 1 >= stor306.length:
                                                    revert with 'NH{q', 50
                                                if stor306[stor306.length].field_0 < arg1:
                                                    revert with 'NH{q', 17
                                                if stor306.length <= 0:
                                                    if block.number > test266151307():
                                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                    if stor306[stor306.length].field_0 - arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    stor306.length++
                                                    stor306[stor306.length].field_0 = uint32(block.number)
                                                    stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg1)
                                                else:
                                                    if stor306.length < 1:
                                                        revert with 'NH{q', 17
                                                    if stor306.length - 1 >= stor306.length:
                                                        revert with 'NH{q', 50
                                                    if stor306[stor306.length].field_0 == block.number:
                                                        if stor306[stor306.length].field_0 - arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                                                        if stor306.length < 1:
                                                            revert with 'NH{q', 17
                                                        if stor306.length - 1 >= stor306.length:
                                                            revert with 'NH{q', 50
                                                        stor306[stor306.length].field_0 = Mask(224, 0, stor306[stor306.length].field_0 - arg1)
                                                    else:
                                                        if block.number > test266151307():
                                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                        if stor306[stor306.length].field_0 - arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                        stor306.length++
                                                        stor306[stor306.length].field_0 = uint32(block.number)
                                                        stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg1)
                                        else:
                                            if block.number > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                            if arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            numCheckpoints[stor304[0]].field_0++
                                            numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 = uint32(block.number)
                                            numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_32 = Mask(224, 0, arg1)
                                            emit DelegateVotesChanged(0, arg1, delegates[0]);
                                            if not stor306.length:
                                                if 0 < arg1:
                                                    revert with 'NH{q', 17
                                                if stor306.length <= 0:
                                                    if block.number > test266151307():
                                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                    if -arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    stor306.length++
                                                    stor306[stor306.length].field_0 = uint32(block.number)
                                                    stor306[stor306.length].field_32 = Mask(224, 0, -arg1)
                                                else:
                                                    if stor306.length < 1:
                                                        revert with 'NH{q', 17
                                                    if stor306.length - 1 >= stor306.length:
                                                        revert with 'NH{q', 50
                                                    if stor306[stor306.length].field_0 == block.number:
                                                        if -arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                        if stor306.length < 1:
                                                            revert with 'NH{q', 17
                                                        if stor306.length - 1 >= stor306.length:
                                                            revert with 'NH{q', 50
                                                        stor306[stor306.length].field_0 = Mask(224, 0, -arg1)
                                                    else:
                                                        if block.number > test266151307():
                                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                        if -arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                        stor306.length++
                                                        stor306[stor306.length].field_0 = uint32(block.number)
                                                        stor306[stor306.length].field_32 = Mask(224, 0, -arg1)
                                            else:
                                                if stor306.length < 1:
                                                    revert with 'NH{q', 17
                                                if stor306.length - 1 >= stor306.length:
                                                    revert with 'NH{q', 50
                                                if stor306[stor306.length].field_0 < arg1:
                                                    revert with 'NH{q', 17
                                                if stor306.length <= 0:
                                                    if block.number > test266151307():
                                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                    if stor306[stor306.length].field_0 - arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    stor306.length++
                                                    stor306[stor306.length].field_0 = uint32(block.number)
                                                    stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg1)
                                                else:
                                                    if stor306.length < 1:
                                                        revert with 'NH{q', 17
                                                    if stor306.length - 1 >= stor306.length:
                                                        revert with 'NH{q', 50
                                                    if stor306[stor306.length].field_0 == block.number:
                                                        if stor306[stor306.length].field_0 - arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                        if stor306.length < 1:
                                                            revert with 'NH{q', 17
                                                        if stor306.length - 1 >= stor306.length:
                                                            revert with 'NH{q', 50
                                                        stor306[stor306.length].field_0 = Mask(224, 0, stor306[stor306.length].field_0 - arg1)
                                                    else:
                                                        if block.number > test266151307():
                                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                        if stor306[stor306.length].field_0 - arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                        stor306.length++
                                                        stor306[stor306.length].field_0 = uint32(block.number)
                                                        stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg1)
                                else:
                                    if numCheckpoints[stor304[0]].field_0 < 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[stor304[0]].field_0 - 1 >= numCheckpoints[stor304[0]].field_0:
                                        revert with 'NH{q', 50
                                    if numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 > -arg1 - 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[stor304[0]].field_0 <= 0:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        numCheckpoints[stor304[0]].field_0++
                                        numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 = uint32(block.number)
                                        numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_32 = Mask(224, 0, numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg1)
                                        emit DelegateVotesChanged(numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0, numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg1, delegates[0]);
                                        if not stor306.length:
                                            if 0 < arg1:
                                                revert with 'NH{q', 17
                                            if stor306.length <= 0:
                                                if block.number > test266151307():
                                                    revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                if -arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                stor306.length++
                                                stor306[stor306.length].field_0 = uint32(block.number)
                                                stor306[stor306.length].field_32 = Mask(224, 0, -arg1)
                                            else:
                                                if stor306.length < 1:
                                                    revert with 'NH{q', 17
                                                if stor306.length - 1 >= stor306.length:
                                                    revert with 'NH{q', 50
                                                if stor306[stor306.length].field_0 == block.number:
                                                    if -arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    if stor306.length < 1:
                                                        revert with 'NH{q', 17
                                                    if stor306.length - 1 >= stor306.length:
                                                        revert with 'NH{q', 50
                                                    stor306[stor306.length].field_0 = Mask(224, 0, -arg1)
                                                else:
                                                    if block.number > test266151307():
                                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                    if -arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    stor306.length++
                                                    stor306[stor306.length].field_0 = uint32(block.number)
                                                    stor306[stor306.length].field_32 = Mask(224, 0, -arg1)
                                        else:
                                            if stor306.length < 1:
                                                revert with 'NH{q', 17
                                            if stor306.length - 1 >= stor306.length:
                                                revert with 'NH{q', 50
                                            if stor306[stor306.length].field_0 < arg1:
                                                revert with 'NH{q', 17
                                            if stor306.length <= 0:
                                                if block.number > test266151307():
                                                    revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                if stor306[stor306.length].field_0 - arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                stor306.length++
                                                stor306[stor306.length].field_0 = uint32(block.number)
                                                stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg1)
                                            else:
                                                if stor306.length < 1:
                                                    revert with 'NH{q', 17
                                                if stor306.length - 1 >= stor306.length:
                                                    revert with 'NH{q', 50
                                                if stor306[stor306.length].field_0 == block.number:
                                                    if stor306[stor306.length].field_0 - arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    if stor306.length < 1:
                                                        revert with 'NH{q', 17
                                                    if stor306.length - 1 >= stor306.length:
                                                        revert with 'NH{q', 50
                                                    stor306[stor306.length].field_0 = Mask(224, 0, stor306[stor306.length].field_0 - arg1)
                                                else:
                                                    if block.number > test266151307():
                                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                    if stor306[stor306.length].field_0 - arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    stor306.length++
                                                    stor306[stor306.length].field_0 = uint32(block.number)
                                                    stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg1)
                                    else:
                                        if numCheckpoints[stor304[0]].field_0 < 1:
                                            revert with 'NH{q', 17
                                        if numCheckpoints[stor304[0]].field_0 - 1 >= numCheckpoints[stor304[0]].field_0:
                                            revert with 'NH{q', 50
                                        if numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 == block.number:
                                            if numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                                            if numCheckpoints[stor304[0]].field_0 < 1:
                                                revert with 'NH{q', 17
                                            if numCheckpoints[stor304[0]].field_0 - 1 >= numCheckpoints[stor304[0]].field_0:
                                                revert with 'NH{q', 50
                                            numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 = Mask(224, 0, numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg1)
                                            emit DelegateVotesChanged(numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0, numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg1, delegates[0]);
                                            if not stor306.length:
                                                if 0 < arg1:
                                                    revert with 'NH{q', 17
                                                if stor306.length <= 0:
                                                    if block.number > test266151307():
                                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                    if -arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    stor306.length++
                                                    stor306[stor306.length].field_0 = uint32(block.number)
                                                    stor306[stor306.length].field_32 = Mask(224, 0, -arg1)
                                                else:
                                                    if stor306.length < 1:
                                                        revert with 'NH{q', 17
                                                    if stor306.length - 1 >= stor306.length:
                                                        revert with 'NH{q', 50
                                                    if stor306[stor306.length].field_0 == block.number:
                                                        if -arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                                                        if stor306.length < 1:
                                                            revert with 'NH{q', 17
                                                        if stor306.length - 1 >= stor306.length:
                                                            revert with 'NH{q', 50
                                                        stor306[stor306.length].field_0 = Mask(224, 0, -arg1)
                                                    else:
                                                        if block.number > test266151307():
                                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                        if -arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                        stor306.length++
                                                        stor306[stor306.length].field_0 = uint32(block.number)
                                                        stor306[stor306.length].field_32 = Mask(224, 0, -arg1)
                                            else:
                                                if stor306.length < 1:
                                                    revert with 'NH{q', 17
                                                if stor306.length - 1 >= stor306.length:
                                                    revert with 'NH{q', 50
                                                if stor306[stor306.length].field_0 < arg1:
                                                    revert with 'NH{q', 17
                                                if stor306.length <= 0:
                                                    if block.number > test266151307():
                                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                    if stor306[stor306.length].field_0 - arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    stor306.length++
                                                    stor306[stor306.length].field_0 = uint32(block.number)
                                                    stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg1)
                                                else:
                                                    if stor306.length < 1:
                                                        revert with 'NH{q', 17
                                                    if stor306.length - 1 >= stor306.length:
                                                        revert with 'NH{q', 50
                                                    if stor306[stor306.length].field_0 == block.number:
                                                        if stor306[stor306.length].field_0 - arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                                                        if stor306.length < 1:
                                                            revert with 'NH{q', 17
                                                        if stor306.length - 1 >= stor306.length:
                                                            revert with 'NH{q', 50
                                                        stor306[stor306.length].field_0 = Mask(224, 0, stor306[stor306.length].field_0 - arg1)
                                                    else:
                                                        if block.number > test266151307():
                                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                        if stor306[stor306.length].field_0 - arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                        stor306.length++
                                                        stor306[stor306.length].field_0 = uint32(block.number)
                                                        stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg1)
                                        else:
                                            if block.number > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                            if numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            numCheckpoints[stor304[0]].field_0++
                                            numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 = uint32(block.number)
                                            numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_32 = Mask(224, 0, numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg1)
                                            emit DelegateVotesChanged(numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0, numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg1, delegates[0]);
                                            if not stor306.length:
                                                if 0 < arg1:
                                                    revert with 'NH{q', 17
                                                if stor306.length <= 0:
                                                    if block.number > test266151307():
                                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                    if -arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    stor306.length++
                                                    stor306[stor306.length].field_0 = uint32(block.number)
                                                    stor306[stor306.length].field_32 = Mask(224, 0, -arg1)
                                                else:
                                                    if stor306.length < 1:
                                                        revert with 'NH{q', 17
                                                    if stor306.length - 1 >= stor306.length:
                                                        revert with 'NH{q', 50
                                                    if stor306[stor306.length].field_0 == block.number:
                                                        if -arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                        if stor306.length < 1:
                                                            revert with 'NH{q', 17
                                                        if stor306.length - 1 >= stor306.length:
                                                            revert with 'NH{q', 50
                                                        stor306[stor306.length].field_0 = Mask(224, 0, -arg1)
                                                    else:
                                                        if block.number > test266151307():
                                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                        if -arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                        stor306.length++
                                                        stor306[stor306.length].field_0 = uint32(block.number)
                                                        stor306[stor306.length].field_32 = Mask(224, 0, -arg1)
                                            else:
                                                if stor306.length < 1:
                                                    revert with 'NH{q', 17
                                                if stor306.length - 1 >= stor306.length:
                                                    revert with 'NH{q', 50
                                                if stor306[stor306.length].field_0 < arg1:
                                                    revert with 'NH{q', 17
                                                if stor306.length <= 0:
                                                    if block.number > test266151307():
                                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                    if stor306[stor306.length].field_0 - arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    stor306.length++
                                                    stor306[stor306.length].field_0 = uint32(block.number)
                                                    stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg1)
                                                else:
                                                    if stor306.length < 1:
                                                        revert with 'NH{q', 17
                                                    if stor306.length - 1 >= stor306.length:
                                                        revert with 'NH{q', 50
                                                    if stor306[stor306.length].field_0 == block.number:
                                                        if stor306[stor306.length].field_0 - arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                        if stor306.length < 1:
                                                            revert with 'NH{q', 17
                                                        if stor306.length - 1 >= stor306.length:
                                                            revert with 'NH{q', 50
                                                        stor306[stor306.length].field_0 = Mask(224, 0, stor306[stor306.length].field_0 - arg1)
                                                    else:
                                                        if block.number > test266151307():
                                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                        if stor306[stor306.length].field_0 - arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                        stor306.length++
                                                        stor306[stor306.length].field_0 = uint32(block.number)
                                                        stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg1)
                        else:
                            if block.number > test266151307():
                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                            if numCheckpoints[stor304[address(msg.sender)]][numCheckpoints[stor304[address(msg.sender)]].field_0].field_0 - arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                            numCheckpoints[stor304[address(msg.sender)]].field_0++
                            numCheckpoints[stor304[address(msg.sender)]][numCheckpoints[stor304[address(msg.sender)]].field_0].field_0 = uint32(block.number)
                            numCheckpoints[stor304[address(msg.sender)]][numCheckpoints[stor304[address(msg.sender)]].field_0].field_32 = Mask(224, 0, numCheckpoints[stor304[address(msg.sender)]][numCheckpoints[stor304[address(msg.sender)]].field_0].field_0 - arg1)
                            emit DelegateVotesChanged(numCheckpoints[stor304[address(msg.sender)]][numCheckpoints[stor304[address(msg.sender)]].field_0].field_0, numCheckpoints[stor304[address(msg.sender)]][numCheckpoints[stor304[address(msg.sender)]].field_0].field_0 - arg1, delegates[address(msg.sender)]);
                            if delegates[0]:
                                if not numCheckpoints[stor304[0]].field_0:
                                    if 0 > -arg1 - 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[stor304[0]].field_0 <= 0:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        numCheckpoints[stor304[0]].field_0++
                                        numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 = uint32(block.number)
                                        numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_32 = Mask(224, 0, arg1)
                                    else:
                                        if numCheckpoints[stor304[0]].field_0 < 1:
                                            revert with 'NH{q', 17
                                        if numCheckpoints[stor304[0]].field_0 - 1 >= numCheckpoints[stor304[0]].field_0:
                                            revert with 'NH{q', 50
                                        if numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 == block.number:
                                            if arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            if numCheckpoints[stor304[0]].field_0 < 1:
                                                revert with 'NH{q', 17
                                            if numCheckpoints[stor304[0]].field_0 - 1 >= numCheckpoints[stor304[0]].field_0:
                                                revert with 'NH{q', 50
                                            numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 = Mask(224, 0, arg1)
                                        else:
                                            if block.number > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                            if arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            numCheckpoints[stor304[0]].field_0++
                                            numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 = uint32(block.number)
                                            numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_32 = Mask(224, 0, arg1)
                                    emit DelegateVotesChanged(0, arg1, delegates[0]);
                                else:
                                    if numCheckpoints[stor304[0]].field_0 < 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[stor304[0]].field_0 - 1 >= numCheckpoints[stor304[0]].field_0:
                                        revert with 'NH{q', 50
                                    if numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 > -arg1 - 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[stor304[0]].field_0 <= 0:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        numCheckpoints[stor304[0]].field_0++
                                        numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 = uint32(block.number)
                                        numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_32 = Mask(224, 0, numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg1)
                                    else:
                                        if numCheckpoints[stor304[0]].field_0 < 1:
                                            revert with 'NH{q', 17
                                        if numCheckpoints[stor304[0]].field_0 - 1 >= numCheckpoints[stor304[0]].field_0:
                                            revert with 'NH{q', 50
                                        if numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 == block.number:
                                            if numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            if numCheckpoints[stor304[0]].field_0 < 1:
                                                revert with 'NH{q', 17
                                            if numCheckpoints[stor304[0]].field_0 - 1 >= numCheckpoints[stor304[0]].field_0:
                                                revert with 'NH{q', 50
                                            numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 = Mask(224, 0, numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg1)
                                        else:
                                            if block.number > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                            if numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            numCheckpoints[stor304[0]].field_0++
                                            numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 = uint32(block.number)
                                            numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_32 = Mask(224, 0, numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg1)
                                    emit DelegateVotesChanged(numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0, numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg1, delegates[0]);
                            if not stor306.length:
                                if 0 < arg1:
                                    revert with 'NH{q', 17
                                if stor306.length <= 0:
                                    if block.number > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                    if -arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                    stor306.length++
                                    stor306[stor306.length].field_0 = uint32(block.number)
                                    stor306[stor306.length].field_32 = Mask(224, 0, -arg1)
                                else:
                                    if stor306.length < 1:
                                        revert with 'NH{q', 17
                                    if stor306.length - 1 >= stor306.length:
                                        revert with 'NH{q', 50
                                    if stor306[stor306.length].field_0 == block.number:
                                        if -arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        if stor306.length < 1:
                                            revert with 'NH{q', 17
                                        if stor306.length - 1 >= stor306.length:
                                            revert with 'NH{q', 50
                                        stor306[stor306.length].field_0 = Mask(224, 0, -arg1)
                                    else:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if -arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        stor306.length++
                                        stor306[stor306.length].field_0 = uint32(block.number)
                                        stor306[stor306.length].field_32 = Mask(224, 0, -arg1)
                            else:
                                if stor306.length < 1:
                                    revert with 'NH{q', 17
                                if stor306.length - 1 >= stor306.length:
                                    revert with 'NH{q', 50
                                if stor306[stor306.length].field_0 < arg1:
                                    revert with 'NH{q', 17
                                if stor306.length <= 0:
                                    if block.number > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                    if stor306[stor306.length].field_0 - arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                    stor306.length++
                                    stor306[stor306.length].field_0 = uint32(block.number)
                                    stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg1)
                                else:
                                    if stor306.length < 1:
                                        revert with 'NH{q', 17
                                    if stor306.length - 1 >= stor306.length:
                                        revert with 'NH{q', 50
                                    if stor306[stor306.length].field_0 == block.number:
                                        if stor306[stor306.length].field_0 - arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        if stor306.length < 1:
                                            revert with 'NH{q', 17
                                        if stor306.length - 1 >= stor306.length:
                                            revert with 'NH{q', 50
                                        stor306[stor306.length].field_0 = Mask(224, 0, stor306[stor306.length].field_0 - arg1)
                                    else:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if stor306[stor306.length].field_0 - arg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        stor306.length++
                                        stor306[stor306.length].field_0 = uint32(block.number)
                                        stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg1)
}

function burnFrom(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
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
    if uint256(balanceOf[address(arg1)]) < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
    uint256(balanceOf[address(arg1)]) -= arg2
    if totalSupply < arg2:
        revert with 'NH{q', 17
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
    if delegates[address(arg1)] == delegates[0]:
        if not stor306.length:
            if 0 < arg2:
                revert with 'NH{q', 17
            if stor306.length <= 0:
                if block.number > test266151307():
                    revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                if -arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                stor306.length++
                stor306[stor306.length].field_0 = uint32(block.number)
                stor306[stor306.length].field_32 = Mask(224, 0, -arg2)
            else:
                if stor306.length < 1:
                    revert with 'NH{q', 17
                if stor306.length - 1 >= stor306.length:
                    revert with 'NH{q', 50
                if stor306[stor306.length].field_0 == block.number:
                    if -arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                    if stor306.length < 1:
                        revert with 'NH{q', 17
                    if stor306.length - 1 >= stor306.length:
                        revert with 'NH{q', 50
                    stor306[stor306.length].field_0 = Mask(224, 0, -arg2)
                else:
                    if block.number > test266151307():
                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                    if -arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                    stor306.length++
                    stor306[stor306.length].field_0 = uint32(block.number)
                    stor306[stor306.length].field_32 = Mask(224, 0, -arg2)
        else:
            if stor306.length < 1:
                revert with 'NH{q', 17
            if stor306.length - 1 >= stor306.length:
                revert with 'NH{q', 50
            if stor306[stor306.length].field_0 < arg2:
                revert with 'NH{q', 17
            if stor306.length <= 0:
                if block.number > test266151307():
                    revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                if stor306[stor306.length].field_0 - arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                stor306.length++
                stor306[stor306.length].field_0 = uint32(block.number)
                stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg2)
            else:
                if stor306.length < 1:
                    revert with 'NH{q', 17
                if stor306.length - 1 >= stor306.length:
                    revert with 'NH{q', 50
                if stor306[stor306.length].field_0 == block.number:
                    if stor306[stor306.length].field_0 - arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                    if stor306.length < 1:
                        revert with 'NH{q', 17
                    if stor306.length - 1 >= stor306.length:
                        revert with 'NH{q', 50
                    stor306[stor306.length].field_0 = Mask(224, 0, stor306[stor306.length].field_0 - arg2)
                else:
                    if block.number > test266151307():
                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                    if stor306[stor306.length].field_0 - arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                    stor306.length++
                    stor306[stor306.length].field_0 = uint32(block.number)
                    stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg2)
    else:
        if arg2 <= 0:
            if not stor306.length:
                if 0 < arg2:
                    revert with 'NH{q', 17
                if stor306.length <= 0:
                    if block.number > test266151307():
                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                    if -arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                    stor306.length++
                    stor306[stor306.length].field_0 = uint32(block.number)
                    stor306[stor306.length].field_32 = Mask(224, 0, -arg2)
                else:
                    if stor306.length < 1:
                        revert with 'NH{q', 17
                    if stor306.length - 1 >= stor306.length:
                        revert with 'NH{q', 50
                    if stor306[stor306.length].field_0 == block.number:
                        if -arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                        if stor306.length < 1:
                            revert with 'NH{q', 17
                        if stor306.length - 1 >= stor306.length:
                            revert with 'NH{q', 50
                        stor306[stor306.length].field_0 = Mask(224, 0, -arg2)
                    else:
                        if block.number > test266151307():
                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                        if -arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                        stor306.length++
                        stor306[stor306.length].field_0 = uint32(block.number)
                        stor306[stor306.length].field_32 = Mask(224, 0, -arg2)
            else:
                if stor306.length < 1:
                    revert with 'NH{q', 17
                if stor306.length - 1 >= stor306.length:
                    revert with 'NH{q', 50
                if stor306[stor306.length].field_0 < arg2:
                    revert with 'NH{q', 17
                if stor306.length <= 0:
                    if block.number > test266151307():
                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                    if stor306[stor306.length].field_0 - arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                    stor306.length++
                    stor306[stor306.length].field_0 = uint32(block.number)
                    stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg2)
                else:
                    if stor306.length < 1:
                        revert with 'NH{q', 17
                    if stor306.length - 1 >= stor306.length:
                        revert with 'NH{q', 50
                    if stor306[stor306.length].field_0 == block.number:
                        if stor306[stor306.length].field_0 - arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                        if stor306.length < 1:
                            revert with 'NH{q', 17
                        if stor306.length - 1 >= stor306.length:
                            revert with 'NH{q', 50
                        stor306[stor306.length].field_0 = Mask(224, 0, stor306[stor306.length].field_0 - arg2)
                    else:
                        if block.number > test266151307():
                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                        if stor306[stor306.length].field_0 - arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                        stor306.length++
                        stor306[stor306.length].field_0 = uint32(block.number)
                        stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg2)
        else:
            if not delegates[address(arg1)]:
                if not delegates[0]:
                    if not stor306.length:
                        if 0 < arg2:
                            revert with 'NH{q', 17
                        if stor306.length <= 0:
                            if block.number > test266151307():
                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                            if -arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                            stor306.length++
                            stor306[stor306.length].field_0 = uint32(block.number)
                            stor306[stor306.length].field_32 = Mask(224, 0, -arg2)
                        else:
                            if stor306.length < 1:
                                revert with 'NH{q', 17
                            if stor306.length - 1 >= stor306.length:
                                revert with 'NH{q', 50
                            if stor306[stor306.length].field_0 == block.number:
                                if -arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                                if stor306.length < 1:
                                    revert with 'NH{q', 17
                                if stor306.length - 1 >= stor306.length:
                                    revert with 'NH{q', 50
                                stor306[stor306.length].field_0 = Mask(224, 0, -arg2)
                            else:
                                if block.number > test266151307():
                                    revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                if -arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                stor306.length++
                                stor306[stor306.length].field_0 = uint32(block.number)
                                stor306[stor306.length].field_32 = Mask(224, 0, -arg2)
                    else:
                        if stor306.length < 1:
                            revert with 'NH{q', 17
                        if stor306.length - 1 >= stor306.length:
                            revert with 'NH{q', 50
                        if stor306[stor306.length].field_0 < arg2:
                            revert with 'NH{q', 17
                        if stor306.length <= 0:
                            if block.number > test266151307():
                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                            if stor306[stor306.length].field_0 - arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                            stor306.length++
                            stor306[stor306.length].field_0 = uint32(block.number)
                            stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg2)
                        else:
                            if stor306.length < 1:
                                revert with 'NH{q', 17
                            if stor306.length - 1 >= stor306.length:
                                revert with 'NH{q', 50
                            if stor306[stor306.length].field_0 == block.number:
                                if stor306[stor306.length].field_0 - arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                                if stor306.length < 1:
                                    revert with 'NH{q', 17
                                if stor306.length - 1 >= stor306.length:
                                    revert with 'NH{q', 50
                                stor306[stor306.length].field_0 = Mask(224, 0, stor306[stor306.length].field_0 - arg2)
                            else:
                                if block.number > test266151307():
                                    revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                if stor306[stor306.length].field_0 - arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                stor306.length++
                                stor306[stor306.length].field_0 = uint32(block.number)
                                stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg2)
                else:
                    if not numCheckpoints[stor304[0]].field_0:
                        if 0 > -arg2 - 1:
                            revert with 'NH{q', 17
                        if numCheckpoints[stor304[0]].field_0 <= 0:
                            if block.number > test266151307():
                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                            if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                            numCheckpoints[stor304[0]].field_0++
                            numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 = uint32(block.number)
                            numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_32 = Mask(224, 0, arg2)
                            emit DelegateVotesChanged(0, arg2, delegates[0]);
                            if not stor306.length:
                                if 0 < arg2:
                                    revert with 'NH{q', 17
                                if stor306.length <= 0:
                                    if block.number > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                    if -arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                    stor306.length++
                                    stor306[stor306.length].field_0 = uint32(block.number)
                                    stor306[stor306.length].field_32 = Mask(224, 0, -arg2)
                                else:
                                    if stor306.length < 1:
                                        revert with 'NH{q', 17
                                    if stor306.length - 1 >= stor306.length:
                                        revert with 'NH{q', 50
                                    if stor306[stor306.length].field_0 == block.number:
                                        if -arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        if stor306.length < 1:
                                            revert with 'NH{q', 17
                                        if stor306.length - 1 >= stor306.length:
                                            revert with 'NH{q', 50
                                        stor306[stor306.length].field_0 = Mask(224, 0, -arg2)
                                    else:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if -arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        stor306.length++
                                        stor306[stor306.length].field_0 = uint32(block.number)
                                        stor306[stor306.length].field_32 = Mask(224, 0, -arg2)
                            else:
                                if stor306.length < 1:
                                    revert with 'NH{q', 17
                                if stor306.length - 1 >= stor306.length:
                                    revert with 'NH{q', 50
                                if stor306[stor306.length].field_0 < arg2:
                                    revert with 'NH{q', 17
                                if stor306.length <= 0:
                                    if block.number > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                    if stor306[stor306.length].field_0 - arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                    stor306.length++
                                    stor306[stor306.length].field_0 = uint32(block.number)
                                    stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg2)
                                else:
                                    if stor306.length < 1:
                                        revert with 'NH{q', 17
                                    if stor306.length - 1 >= stor306.length:
                                        revert with 'NH{q', 50
                                    if stor306[stor306.length].field_0 == block.number:
                                        if stor306[stor306.length].field_0 - arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        if stor306.length < 1:
                                            revert with 'NH{q', 17
                                        if stor306.length - 1 >= stor306.length:
                                            revert with 'NH{q', 50
                                        stor306[stor306.length].field_0 = Mask(224, 0, stor306[stor306.length].field_0 - arg2)
                                    else:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if stor306[stor306.length].field_0 - arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        stor306.length++
                                        stor306[stor306.length].field_0 = uint32(block.number)
                                        stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg2)
                        else:
                            if numCheckpoints[stor304[0]].field_0 < 1:
                                revert with 'NH{q', 17
                            if numCheckpoints[stor304[0]].field_0 - 1 >= numCheckpoints[stor304[0]].field_0:
                                revert with 'NH{q', 50
                            if numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 == block.number:
                                if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                                if numCheckpoints[stor304[0]].field_0 < 1:
                                    revert with 'NH{q', 17
                                if numCheckpoints[stor304[0]].field_0 - 1 >= numCheckpoints[stor304[0]].field_0:
                                    revert with 'NH{q', 50
                                numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 = Mask(224, 0, arg2)
                                emit DelegateVotesChanged(0, arg2, delegates[0]);
                                if not stor306.length:
                                    if 0 < arg2:
                                        revert with 'NH{q', 17
                                    if stor306.length <= 0:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if -arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        stor306.length++
                                        stor306[stor306.length].field_0 = uint32(block.number)
                                        stor306[stor306.length].field_32 = Mask(224, 0, -arg2)
                                    else:
                                        if stor306.length < 1:
                                            revert with 'NH{q', 17
                                        if stor306.length - 1 >= stor306.length:
                                            revert with 'NH{q', 50
                                        if stor306[stor306.length].field_0 == block.number:
                                            if -arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                                            if stor306.length < 1:
                                                revert with 'NH{q', 17
                                            if stor306.length - 1 >= stor306.length:
                                                revert with 'NH{q', 50
                                            stor306[stor306.length].field_0 = Mask(224, 0, -arg2)
                                        else:
                                            if block.number > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                            if -arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            stor306.length++
                                            stor306[stor306.length].field_0 = uint32(block.number)
                                            stor306[stor306.length].field_32 = Mask(224, 0, -arg2)
                                else:
                                    if stor306.length < 1:
                                        revert with 'NH{q', 17
                                    if stor306.length - 1 >= stor306.length:
                                        revert with 'NH{q', 50
                                    if stor306[stor306.length].field_0 < arg2:
                                        revert with 'NH{q', 17
                                    if stor306.length <= 0:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if stor306[stor306.length].field_0 - arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        stor306.length++
                                        stor306[stor306.length].field_0 = uint32(block.number)
                                        stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg2)
                                    else:
                                        if stor306.length < 1:
                                            revert with 'NH{q', 17
                                        if stor306.length - 1 >= stor306.length:
                                            revert with 'NH{q', 50
                                        if stor306[stor306.length].field_0 == block.number:
                                            if stor306[stor306.length].field_0 - arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                                            if stor306.length < 1:
                                                revert with 'NH{q', 17
                                            if stor306.length - 1 >= stor306.length:
                                                revert with 'NH{q', 50
                                            stor306[stor306.length].field_0 = Mask(224, 0, stor306[stor306.length].field_0 - arg2)
                                        else:
                                            if block.number > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                            if stor306[stor306.length].field_0 - arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            stor306.length++
                                            stor306[stor306.length].field_0 = uint32(block.number)
                                            stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg2)
                            else:
                                if block.number > test266151307():
                                    revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                numCheckpoints[stor304[0]].field_0++
                                numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 = uint32(block.number)
                                numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_32 = Mask(224, 0, arg2)
                                emit DelegateVotesChanged(0, arg2, delegates[0]);
                                if not stor306.length:
                                    if 0 < arg2:
                                        revert with 'NH{q', 17
                                    if stor306.length <= 0:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if -arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        stor306.length++
                                        stor306[stor306.length].field_0 = uint32(block.number)
                                        stor306[stor306.length].field_32 = Mask(224, 0, -arg2)
                                    else:
                                        if stor306.length < 1:
                                            revert with 'NH{q', 17
                                        if stor306.length - 1 >= stor306.length:
                                            revert with 'NH{q', 50
                                        if stor306[stor306.length].field_0 == block.number:
                                            if -arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            if stor306.length < 1:
                                                revert with 'NH{q', 17
                                            if stor306.length - 1 >= stor306.length:
                                                revert with 'NH{q', 50
                                            stor306[stor306.length].field_0 = Mask(224, 0, -arg2)
                                        else:
                                            if block.number > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                            if -arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            stor306.length++
                                            stor306[stor306.length].field_0 = uint32(block.number)
                                            stor306[stor306.length].field_32 = Mask(224, 0, -arg2)
                                else:
                                    if stor306.length < 1:
                                        revert with 'NH{q', 17
                                    if stor306.length - 1 >= stor306.length:
                                        revert with 'NH{q', 50
                                    if stor306[stor306.length].field_0 < arg2:
                                        revert with 'NH{q', 17
                                    if stor306.length <= 0:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if stor306[stor306.length].field_0 - arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        stor306.length++
                                        stor306[stor306.length].field_0 = uint32(block.number)
                                        stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg2)
                                    else:
                                        if stor306.length < 1:
                                            revert with 'NH{q', 17
                                        if stor306.length - 1 >= stor306.length:
                                            revert with 'NH{q', 50
                                        if stor306[stor306.length].field_0 == block.number:
                                            if stor306[stor306.length].field_0 - arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            if stor306.length < 1:
                                                revert with 'NH{q', 17
                                            if stor306.length - 1 >= stor306.length:
                                                revert with 'NH{q', 50
                                            stor306[stor306.length].field_0 = Mask(224, 0, stor306[stor306.length].field_0 - arg2)
                                        else:
                                            if block.number > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                            if stor306[stor306.length].field_0 - arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            stor306.length++
                                            stor306[stor306.length].field_0 = uint32(block.number)
                                            stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg2)
                    else:
                        if numCheckpoints[stor304[0]].field_0 < 1:
                            revert with 'NH{q', 17
                        if numCheckpoints[stor304[0]].field_0 - 1 >= numCheckpoints[stor304[0]].field_0:
                            revert with 'NH{q', 50
                        if numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 > -arg2 - 1:
                            revert with 'NH{q', 17
                        if numCheckpoints[stor304[0]].field_0 <= 0:
                            if block.number > test266151307():
                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                            if numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                            numCheckpoints[stor304[0]].field_0++
                            numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 = uint32(block.number)
                            numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_32 = Mask(224, 0, numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg2)
                            emit DelegateVotesChanged(numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0, numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg2, delegates[0]);
                            if not stor306.length:
                                if 0 < arg2:
                                    revert with 'NH{q', 17
                                if stor306.length <= 0:
                                    if block.number > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                    if -arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                    stor306.length++
                                    stor306[stor306.length].field_0 = uint32(block.number)
                                    stor306[stor306.length].field_32 = Mask(224, 0, -arg2)
                                else:
                                    if stor306.length < 1:
                                        revert with 'NH{q', 17
                                    if stor306.length - 1 >= stor306.length:
                                        revert with 'NH{q', 50
                                    if stor306[stor306.length].field_0 == block.number:
                                        if -arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        if stor306.length < 1:
                                            revert with 'NH{q', 17
                                        if stor306.length - 1 >= stor306.length:
                                            revert with 'NH{q', 50
                                        stor306[stor306.length].field_0 = Mask(224, 0, -arg2)
                                    else:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if -arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        stor306.length++
                                        stor306[stor306.length].field_0 = uint32(block.number)
                                        stor306[stor306.length].field_32 = Mask(224, 0, -arg2)
                            else:
                                if stor306.length < 1:
                                    revert with 'NH{q', 17
                                if stor306.length - 1 >= stor306.length:
                                    revert with 'NH{q', 50
                                if stor306[stor306.length].field_0 < arg2:
                                    revert with 'NH{q', 17
                                if stor306.length <= 0:
                                    if block.number > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                    if stor306[stor306.length].field_0 - arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                    stor306.length++
                                    stor306[stor306.length].field_0 = uint32(block.number)
                                    stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg2)
                                else:
                                    if stor306.length < 1:
                                        revert with 'NH{q', 17
                                    if stor306.length - 1 >= stor306.length:
                                        revert with 'NH{q', 50
                                    if stor306[stor306.length].field_0 == block.number:
                                        if stor306[stor306.length].field_0 - arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        if stor306.length < 1:
                                            revert with 'NH{q', 17
                                        if stor306.length - 1 >= stor306.length:
                                            revert with 'NH{q', 50
                                        stor306[stor306.length].field_0 = Mask(224, 0, stor306[stor306.length].field_0 - arg2)
                                    else:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if stor306[stor306.length].field_0 - arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        stor306.length++
                                        stor306[stor306.length].field_0 = uint32(block.number)
                                        stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg2)
                        else:
                            if numCheckpoints[stor304[0]].field_0 < 1:
                                revert with 'NH{q', 17
                            if numCheckpoints[stor304[0]].field_0 - 1 >= numCheckpoints[stor304[0]].field_0:
                                revert with 'NH{q', 50
                            if numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 == block.number:
                                if numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                                if numCheckpoints[stor304[0]].field_0 < 1:
                                    revert with 'NH{q', 17
                                if numCheckpoints[stor304[0]].field_0 - 1 >= numCheckpoints[stor304[0]].field_0:
                                    revert with 'NH{q', 50
                                numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 = Mask(224, 0, numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg2)
                                emit DelegateVotesChanged(numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0, numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg2, delegates[0]);
                                if not stor306.length:
                                    if 0 < arg2:
                                        revert with 'NH{q', 17
                                    if stor306.length <= 0:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if -arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        stor306.length++
                                        stor306[stor306.length].field_0 = uint32(block.number)
                                        stor306[stor306.length].field_32 = Mask(224, 0, -arg2)
                                    else:
                                        if stor306.length < 1:
                                            revert with 'NH{q', 17
                                        if stor306.length - 1 >= stor306.length:
                                            revert with 'NH{q', 50
                                        if stor306[stor306.length].field_0 == block.number:
                                            if -arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                                            if stor306.length < 1:
                                                revert with 'NH{q', 17
                                            if stor306.length - 1 >= stor306.length:
                                                revert with 'NH{q', 50
                                            stor306[stor306.length].field_0 = Mask(224, 0, -arg2)
                                        else:
                                            if block.number > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                            if -arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            stor306.length++
                                            stor306[stor306.length].field_0 = uint32(block.number)
                                            stor306[stor306.length].field_32 = Mask(224, 0, -arg2)
                                else:
                                    if stor306.length < 1:
                                        revert with 'NH{q', 17
                                    if stor306.length - 1 >= stor306.length:
                                        revert with 'NH{q', 50
                                    if stor306[stor306.length].field_0 < arg2:
                                        revert with 'NH{q', 17
                                    if stor306.length <= 0:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if stor306[stor306.length].field_0 - arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        stor306.length++
                                        stor306[stor306.length].field_0 = uint32(block.number)
                                        stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg2)
                                    else:
                                        if stor306.length < 1:
                                            revert with 'NH{q', 17
                                        if stor306.length - 1 >= stor306.length:
                                            revert with 'NH{q', 50
                                        if stor306[stor306.length].field_0 == block.number:
                                            if stor306[stor306.length].field_0 - arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                                            if stor306.length < 1:
                                                revert with 'NH{q', 17
                                            if stor306.length - 1 >= stor306.length:
                                                revert with 'NH{q', 50
                                            stor306[stor306.length].field_0 = Mask(224, 0, stor306[stor306.length].field_0 - arg2)
                                        else:
                                            if block.number > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                            if stor306[stor306.length].field_0 - arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            stor306.length++
                                            stor306[stor306.length].field_0 = uint32(block.number)
                                            stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg2)
                            else:
                                if block.number > test266151307():
                                    revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                if numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                numCheckpoints[stor304[0]].field_0++
                                numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 = uint32(block.number)
                                numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_32 = Mask(224, 0, numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg2)
                                emit DelegateVotesChanged(numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0, numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg2, delegates[0]);
                                if not stor306.length:
                                    if 0 < arg2:
                                        revert with 'NH{q', 17
                                    if stor306.length <= 0:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if -arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        stor306.length++
                                        stor306[stor306.length].field_0 = uint32(block.number)
                                        stor306[stor306.length].field_32 = Mask(224, 0, -arg2)
                                    else:
                                        if stor306.length < 1:
                                            revert with 'NH{q', 17
                                        if stor306.length - 1 >= stor306.length:
                                            revert with 'NH{q', 50
                                        if stor306[stor306.length].field_0 == block.number:
                                            if -arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            if stor306.length < 1:
                                                revert with 'NH{q', 17
                                            if stor306.length - 1 >= stor306.length:
                                                revert with 'NH{q', 50
                                            stor306[stor306.length].field_0 = Mask(224, 0, -arg2)
                                        else:
                                            if block.number > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                            if -arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            stor306.length++
                                            stor306[stor306.length].field_0 = uint32(block.number)
                                            stor306[stor306.length].field_32 = Mask(224, 0, -arg2)
                                else:
                                    if stor306.length < 1:
                                        revert with 'NH{q', 17
                                    if stor306.length - 1 >= stor306.length:
                                        revert with 'NH{q', 50
                                    if stor306[stor306.length].field_0 < arg2:
                                        revert with 'NH{q', 17
                                    if stor306.length <= 0:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if stor306[stor306.length].field_0 - arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        stor306.length++
                                        stor306[stor306.length].field_0 = uint32(block.number)
                                        stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg2)
                                    else:
                                        if stor306.length < 1:
                                            revert with 'NH{q', 17
                                        if stor306.length - 1 >= stor306.length:
                                            revert with 'NH{q', 50
                                        if stor306[stor306.length].field_0 == block.number:
                                            if stor306[stor306.length].field_0 - arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            if stor306.length < 1:
                                                revert with 'NH{q', 17
                                            if stor306.length - 1 >= stor306.length:
                                                revert with 'NH{q', 50
                                            stor306[stor306.length].field_0 = Mask(224, 0, stor306[stor306.length].field_0 - arg2)
                                        else:
                                            if block.number > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                            if stor306[stor306.length].field_0 - arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            stor306.length++
                                            stor306[stor306.length].field_0 = uint32(block.number)
                                            stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg2)
            else:
                if not numCheckpoints[stor304[address(arg1)]].field_0:
                    if 0 < arg2:
                        revert with 'NH{q', 17
                    if numCheckpoints[stor304[address(arg1)]].field_0 <= 0:
                        if block.number > test266151307():
                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                        if -arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                        numCheckpoints[stor304[address(arg1)]].field_0++
                        numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = uint32(block.number)
                        numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_32 = Mask(224, 0, -arg2)
                        emit DelegateVotesChanged(0, -arg2, delegates[address(arg1)]);
                        if delegates[0]:
                            if not numCheckpoints[stor304[0]].field_0:
                                if 0 > -arg2 - 1:
                                    revert with 'NH{q', 17
                                if numCheckpoints[stor304[0]].field_0 <= 0:
                                    if block.number > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                    if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                    numCheckpoints[stor304[0]].field_0++
                                    numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 = uint32(block.number)
                                    numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_32 = Mask(224, 0, arg2)
                                else:
                                    if numCheckpoints[stor304[0]].field_0 < 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[stor304[0]].field_0 - 1 >= numCheckpoints[stor304[0]].field_0:
                                        revert with 'NH{q', 50
                                    if numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 == block.number:
                                        if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        if numCheckpoints[stor304[0]].field_0 < 1:
                                            revert with 'NH{q', 17
                                        if numCheckpoints[stor304[0]].field_0 - 1 >= numCheckpoints[stor304[0]].field_0:
                                            revert with 'NH{q', 50
                                        numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 = Mask(224, 0, arg2)
                                    else:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        numCheckpoints[stor304[0]].field_0++
                                        numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 = uint32(block.number)
                                        numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_32 = Mask(224, 0, arg2)
                                emit DelegateVotesChanged(0, arg2, delegates[0]);
                            else:
                                if numCheckpoints[stor304[0]].field_0 < 1:
                                    revert with 'NH{q', 17
                                if numCheckpoints[stor304[0]].field_0 - 1 >= numCheckpoints[stor304[0]].field_0:
                                    revert with 'NH{q', 50
                                if numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 > -arg2 - 1:
                                    revert with 'NH{q', 17
                                if numCheckpoints[stor304[0]].field_0 <= 0:
                                    if block.number > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                    if numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                    numCheckpoints[stor304[0]].field_0++
                                    numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 = uint32(block.number)
                                    numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_32 = Mask(224, 0, numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg2)
                                else:
                                    if numCheckpoints[stor304[0]].field_0 < 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[stor304[0]].field_0 - 1 >= numCheckpoints[stor304[0]].field_0:
                                        revert with 'NH{q', 50
                                    if numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 == block.number:
                                        if numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        if numCheckpoints[stor304[0]].field_0 < 1:
                                            revert with 'NH{q', 17
                                        if numCheckpoints[stor304[0]].field_0 - 1 >= numCheckpoints[stor304[0]].field_0:
                                            revert with 'NH{q', 50
                                        numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 = Mask(224, 0, numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg2)
                                    else:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        numCheckpoints[stor304[0]].field_0++
                                        numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 = uint32(block.number)
                                        numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_32 = Mask(224, 0, numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg2)
                                emit DelegateVotesChanged(numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0, numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg2, delegates[0]);
                        if not stor306.length:
                            if 0 < arg2:
                                revert with 'NH{q', 17
                            if stor306.length <= 0:
                                if block.number > test266151307():
                                    revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                if -arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                stor306.length++
                                stor306[stor306.length].field_0 = uint32(block.number)
                                stor306[stor306.length].field_32 = Mask(224, 0, -arg2)
                            else:
                                if stor306.length < 1:
                                    revert with 'NH{q', 17
                                if stor306.length - 1 >= stor306.length:
                                    revert with 'NH{q', 50
                                if stor306[stor306.length].field_0 == block.number:
                                    if -arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                    if stor306.length < 1:
                                        revert with 'NH{q', 17
                                    if stor306.length - 1 >= stor306.length:
                                        revert with 'NH{q', 50
                                    stor306[stor306.length].field_0 = Mask(224, 0, -arg2)
                                else:
                                    if block.number > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                    if -arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                    stor306.length++
                                    stor306[stor306.length].field_0 = uint32(block.number)
                                    stor306[stor306.length].field_32 = Mask(224, 0, -arg2)
                        else:
                            if stor306.length < 1:
                                revert with 'NH{q', 17
                            if stor306.length - 1 >= stor306.length:
                                revert with 'NH{q', 50
                            if stor306[stor306.length].field_0 < arg2:
                                revert with 'NH{q', 17
                            if stor306.length <= 0:
                                if block.number > test266151307():
                                    revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                if stor306[stor306.length].field_0 - arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                stor306.length++
                                stor306[stor306.length].field_0 = uint32(block.number)
                                stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg2)
                            else:
                                if stor306.length < 1:
                                    revert with 'NH{q', 17
                                if stor306.length - 1 >= stor306.length:
                                    revert with 'NH{q', 50
                                if stor306[stor306.length].field_0 == block.number:
                                    if stor306[stor306.length].field_0 - arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                    if stor306.length < 1:
                                        revert with 'NH{q', 17
                                    if stor306.length - 1 >= stor306.length:
                                        revert with 'NH{q', 50
                                    stor306[stor306.length].field_0 = Mask(224, 0, stor306[stor306.length].field_0 - arg2)
                                else:
                                    if block.number > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                    if stor306[stor306.length].field_0 - arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                    stor306.length++
                                    stor306[stor306.length].field_0 = uint32(block.number)
                                    stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg2)
                    else:
                        if numCheckpoints[stor304[address(arg1)]].field_0 < 1:
                            revert with 'NH{q', 17
                        if numCheckpoints[stor304[address(arg1)]].field_0 - 1 >= numCheckpoints[stor304[address(arg1)]].field_0:
                            revert with 'NH{q', 50
                        if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 == block.number:
                            if -arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                            if numCheckpoints[stor304[address(arg1)]].field_0 < 1:
                                revert with 'NH{q', 17
                            if numCheckpoints[stor304[address(arg1)]].field_0 - 1 >= numCheckpoints[stor304[address(arg1)]].field_0:
                                revert with 'NH{q', 50
                            numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = Mask(224, 0, -arg2)
                            emit DelegateVotesChanged(0, -arg2, delegates[address(arg1)]);
                            if not delegates[0]:
                                if not stor306.length:
                                    if 0 < arg2:
                                        revert with 'NH{q', 17
                                    if stor306.length <= 0:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if -arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        stor306.length++
                                        stor306[stor306.length].field_0 = uint32(block.number)
                                        stor306[stor306.length].field_32 = Mask(224, 0, -arg2)
                                    else:
                                        if stor306.length < 1:
                                            revert with 'NH{q', 17
                                        if stor306.length - 1 >= stor306.length:
                                            revert with 'NH{q', 50
                                        if stor306[stor306.length].field_0 == block.number:
                                            if -arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                                            if stor306.length < 1:
                                                revert with 'NH{q', 17
                                            if stor306.length - 1 >= stor306.length:
                                                revert with 'NH{q', 50
                                            stor306[stor306.length].field_0 = Mask(224, 0, -arg2)
                                        else:
                                            if block.number > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                            if -arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            stor306.length++
                                            stor306[stor306.length].field_0 = uint32(block.number)
                                            stor306[stor306.length].field_32 = Mask(224, 0, -arg2)
                                else:
                                    if stor306.length < 1:
                                        revert with 'NH{q', 17
                                    if stor306.length - 1 >= stor306.length:
                                        revert with 'NH{q', 50
                                    if stor306[stor306.length].field_0 < arg2:
                                        revert with 'NH{q', 17
                                    if stor306.length <= 0:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if stor306[stor306.length].field_0 - arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        stor306.length++
                                        stor306[stor306.length].field_0 = uint32(block.number)
                                        stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg2)
                                    else:
                                        if stor306.length < 1:
                                            revert with 'NH{q', 17
                                        if stor306.length - 1 >= stor306.length:
                                            revert with 'NH{q', 50
                                        if stor306[stor306.length].field_0 == block.number:
                                            if stor306[stor306.length].field_0 - arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                                            if stor306.length < 1:
                                                revert with 'NH{q', 17
                                            if stor306.length - 1 >= stor306.length:
                                                revert with 'NH{q', 50
                                            stor306[stor306.length].field_0 = Mask(224, 0, stor306[stor306.length].field_0 - arg2)
                                        else:
                                            if block.number > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                            if stor306[stor306.length].field_0 - arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            stor306.length++
                                            stor306[stor306.length].field_0 = uint32(block.number)
                                            stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg2)
                            else:
                                if not numCheckpoints[stor304[0]].field_0:
                                    if 0 > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[stor304[0]].field_0 <= 0:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        numCheckpoints[stor304[0]].field_0++
                                        numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 = uint32(block.number)
                                        numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_32 = Mask(224, 0, arg2)
                                        emit DelegateVotesChanged(0, arg2, delegates[0]);
                                        if not stor306.length:
                                            if 0 < arg2:
                                                revert with 'NH{q', 17
                                            if stor306.length <= 0:
                                                if block.number > test266151307():
                                                    revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                if -arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                stor306.length++
                                                stor306[stor306.length].field_0 = uint32(block.number)
                                                stor306[stor306.length].field_32 = Mask(224, 0, -arg2)
                                            else:
                                                if stor306.length < 1:
                                                    revert with 'NH{q', 17
                                                if stor306.length - 1 >= stor306.length:
                                                    revert with 'NH{q', 50
                                                if stor306[stor306.length].field_0 == block.number:
                                                    if -arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    if stor306.length < 1:
                                                        revert with 'NH{q', 17
                                                    if stor306.length - 1 >= stor306.length:
                                                        revert with 'NH{q', 50
                                                    stor306[stor306.length].field_0 = Mask(224, 0, -arg2)
                                                else:
                                                    if block.number > test266151307():
                                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                    if -arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    stor306.length++
                                                    stor306[stor306.length].field_0 = uint32(block.number)
                                                    stor306[stor306.length].field_32 = Mask(224, 0, -arg2)
                                        else:
                                            if stor306.length < 1:
                                                revert with 'NH{q', 17
                                            if stor306.length - 1 >= stor306.length:
                                                revert with 'NH{q', 50
                                            if stor306[stor306.length].field_0 < arg2:
                                                revert with 'NH{q', 17
                                            if stor306.length <= 0:
                                                if block.number > test266151307():
                                                    revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                if stor306[stor306.length].field_0 - arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                stor306.length++
                                                stor306[stor306.length].field_0 = uint32(block.number)
                                                stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg2)
                                            else:
                                                if stor306.length < 1:
                                                    revert with 'NH{q', 17
                                                if stor306.length - 1 >= stor306.length:
                                                    revert with 'NH{q', 50
                                                if stor306[stor306.length].field_0 == block.number:
                                                    if stor306[stor306.length].field_0 - arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    if stor306.length < 1:
                                                        revert with 'NH{q', 17
                                                    if stor306.length - 1 >= stor306.length:
                                                        revert with 'NH{q', 50
                                                    stor306[stor306.length].field_0 = Mask(224, 0, stor306[stor306.length].field_0 - arg2)
                                                else:
                                                    if block.number > test266151307():
                                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                    if stor306[stor306.length].field_0 - arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    stor306.length++
                                                    stor306[stor306.length].field_0 = uint32(block.number)
                                                    stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg2)
                                    else:
                                        if numCheckpoints[stor304[0]].field_0 < 1:
                                            revert with 'NH{q', 17
                                        if numCheckpoints[stor304[0]].field_0 - 1 >= numCheckpoints[stor304[0]].field_0:
                                            revert with 'NH{q', 50
                                        if numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 == block.number:
                                            if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                                            if numCheckpoints[stor304[0]].field_0 < 1:
                                                revert with 'NH{q', 17
                                            if numCheckpoints[stor304[0]].field_0 - 1 >= numCheckpoints[stor304[0]].field_0:
                                                revert with 'NH{q', 50
                                            numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 = Mask(224, 0, arg2)
                                            emit DelegateVotesChanged(0, arg2, delegates[0]);
                                            if not stor306.length:
                                                if 0 < arg2:
                                                    revert with 'NH{q', 17
                                                if stor306.length <= 0:
                                                    if block.number > test266151307():
                                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                    if -arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    stor306.length++
                                                    stor306[stor306.length].field_0 = uint32(block.number)
                                                    stor306[stor306.length].field_32 = Mask(224, 0, -arg2)
                                                else:
                                                    if stor306.length < 1:
                                                        revert with 'NH{q', 17
                                                    if stor306.length - 1 >= stor306.length:
                                                        revert with 'NH{q', 50
                                                    if stor306[stor306.length].field_0 == block.number:
                                                        if -arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                                                        if stor306.length < 1:
                                                            revert with 'NH{q', 17
                                                        if stor306.length - 1 >= stor306.length:
                                                            revert with 'NH{q', 50
                                                        stor306[stor306.length].field_0 = Mask(224, 0, -arg2)
                                                    else:
                                                        if block.number > test266151307():
                                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                        if -arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                        stor306.length++
                                                        stor306[stor306.length].field_0 = uint32(block.number)
                                                        stor306[stor306.length].field_32 = Mask(224, 0, -arg2)
                                            else:
                                                if stor306.length < 1:
                                                    revert with 'NH{q', 17
                                                if stor306.length - 1 >= stor306.length:
                                                    revert with 'NH{q', 50
                                                if stor306[stor306.length].field_0 < arg2:
                                                    revert with 'NH{q', 17
                                                if stor306.length <= 0:
                                                    if block.number > test266151307():
                                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                    if stor306[stor306.length].field_0 - arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    stor306.length++
                                                    stor306[stor306.length].field_0 = uint32(block.number)
                                                    stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg2)
                                                else:
                                                    if stor306.length < 1:
                                                        revert with 'NH{q', 17
                                                    if stor306.length - 1 >= stor306.length:
                                                        revert with 'NH{q', 50
                                                    if stor306[stor306.length].field_0 == block.number:
                                                        if stor306[stor306.length].field_0 - arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                                                        if stor306.length < 1:
                                                            revert with 'NH{q', 17
                                                        if stor306.length - 1 >= stor306.length:
                                                            revert with 'NH{q', 50
                                                        stor306[stor306.length].field_0 = Mask(224, 0, stor306[stor306.length].field_0 - arg2)
                                                    else:
                                                        if block.number > test266151307():
                                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                        if stor306[stor306.length].field_0 - arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                        stor306.length++
                                                        stor306[stor306.length].field_0 = uint32(block.number)
                                                        stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg2)
                                        else:
                                            if block.number > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                            if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            numCheckpoints[stor304[0]].field_0++
                                            numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 = uint32(block.number)
                                            numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_32 = Mask(224, 0, arg2)
                                            emit DelegateVotesChanged(0, arg2, delegates[0]);
                                            if not stor306.length:
                                                if 0 < arg2:
                                                    revert with 'NH{q', 17
                                                if stor306.length <= 0:
                                                    if block.number > test266151307():
                                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                    if -arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    stor306.length++
                                                    stor306[stor306.length].field_0 = uint32(block.number)
                                                    stor306[stor306.length].field_32 = Mask(224, 0, -arg2)
                                                else:
                                                    if stor306.length < 1:
                                                        revert with 'NH{q', 17
                                                    if stor306.length - 1 >= stor306.length:
                                                        revert with 'NH{q', 50
                                                    if stor306[stor306.length].field_0 == block.number:
                                                        if -arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                        if stor306.length < 1:
                                                            revert with 'NH{q', 17
                                                        if stor306.length - 1 >= stor306.length:
                                                            revert with 'NH{q', 50
                                                        stor306[stor306.length].field_0 = Mask(224, 0, -arg2)
                                                    else:
                                                        if block.number > test266151307():
                                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                        if -arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                        stor306.length++
                                                        stor306[stor306.length].field_0 = uint32(block.number)
                                                        stor306[stor306.length].field_32 = Mask(224, 0, -arg2)
                                            else:
                                                if stor306.length < 1:
                                                    revert with 'NH{q', 17
                                                if stor306.length - 1 >= stor306.length:
                                                    revert with 'NH{q', 50
                                                if stor306[stor306.length].field_0 < arg2:
                                                    revert with 'NH{q', 17
                                                if stor306.length <= 0:
                                                    if block.number > test266151307():
                                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                    if stor306[stor306.length].field_0 - arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    stor306.length++
                                                    stor306[stor306.length].field_0 = uint32(block.number)
                                                    stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg2)
                                                else:
                                                    if stor306.length < 1:
                                                        revert with 'NH{q', 17
                                                    if stor306.length - 1 >= stor306.length:
                                                        revert with 'NH{q', 50
                                                    if stor306[stor306.length].field_0 == block.number:
                                                        if stor306[stor306.length].field_0 - arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                        if stor306.length < 1:
                                                            revert with 'NH{q', 17
                                                        if stor306.length - 1 >= stor306.length:
                                                            revert with 'NH{q', 50
                                                        stor306[stor306.length].field_0 = Mask(224, 0, stor306[stor306.length].field_0 - arg2)
                                                    else:
                                                        if block.number > test266151307():
                                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                        if stor306[stor306.length].field_0 - arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                        stor306.length++
                                                        stor306[stor306.length].field_0 = uint32(block.number)
                                                        stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg2)
                                else:
                                    if numCheckpoints[stor304[0]].field_0 < 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[stor304[0]].field_0 - 1 >= numCheckpoints[stor304[0]].field_0:
                                        revert with 'NH{q', 50
                                    if numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[stor304[0]].field_0 <= 0:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        numCheckpoints[stor304[0]].field_0++
                                        numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 = uint32(block.number)
                                        numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_32 = Mask(224, 0, numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg2)
                                        emit DelegateVotesChanged(numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0, numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg2, delegates[0]);
                                        if not stor306.length:
                                            if 0 < arg2:
                                                revert with 'NH{q', 17
                                            if stor306.length <= 0:
                                                if block.number > test266151307():
                                                    revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                if -arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                stor306.length++
                                                stor306[stor306.length].field_0 = uint32(block.number)
                                                stor306[stor306.length].field_32 = Mask(224, 0, -arg2)
                                            else:
                                                if stor306.length < 1:
                                                    revert with 'NH{q', 17
                                                if stor306.length - 1 >= stor306.length:
                                                    revert with 'NH{q', 50
                                                if stor306[stor306.length].field_0 == block.number:
                                                    if -arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    if stor306.length < 1:
                                                        revert with 'NH{q', 17
                                                    if stor306.length - 1 >= stor306.length:
                                                        revert with 'NH{q', 50
                                                    stor306[stor306.length].field_0 = Mask(224, 0, -arg2)
                                                else:
                                                    if block.number > test266151307():
                                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                    if -arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    stor306.length++
                                                    stor306[stor306.length].field_0 = uint32(block.number)
                                                    stor306[stor306.length].field_32 = Mask(224, 0, -arg2)
                                        else:
                                            if stor306.length < 1:
                                                revert with 'NH{q', 17
                                            if stor306.length - 1 >= stor306.length:
                                                revert with 'NH{q', 50
                                            if stor306[stor306.length].field_0 < arg2:
                                                revert with 'NH{q', 17
                                            if stor306.length <= 0:
                                                if block.number > test266151307():
                                                    revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                if stor306[stor306.length].field_0 - arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                stor306.length++
                                                stor306[stor306.length].field_0 = uint32(block.number)
                                                stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg2)
                                            else:
                                                if stor306.length < 1:
                                                    revert with 'NH{q', 17
                                                if stor306.length - 1 >= stor306.length:
                                                    revert with 'NH{q', 50
                                                if stor306[stor306.length].field_0 == block.number:
                                                    if stor306[stor306.length].field_0 - arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    if stor306.length < 1:
                                                        revert with 'NH{q', 17
                                                    if stor306.length - 1 >= stor306.length:
                                                        revert with 'NH{q', 50
                                                    stor306[stor306.length].field_0 = Mask(224, 0, stor306[stor306.length].field_0 - arg2)
                                                else:
                                                    if block.number > test266151307():
                                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                    if stor306[stor306.length].field_0 - arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    stor306.length++
                                                    stor306[stor306.length].field_0 = uint32(block.number)
                                                    stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg2)
                                    else:
                                        if numCheckpoints[stor304[0]].field_0 < 1:
                                            revert with 'NH{q', 17
                                        if numCheckpoints[stor304[0]].field_0 - 1 >= numCheckpoints[stor304[0]].field_0:
                                            revert with 'NH{q', 50
                                        if numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 == block.number:
                                            if numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                                            if numCheckpoints[stor304[0]].field_0 < 1:
                                                revert with 'NH{q', 17
                                            if numCheckpoints[stor304[0]].field_0 - 1 >= numCheckpoints[stor304[0]].field_0:
                                                revert with 'NH{q', 50
                                            numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 = Mask(224, 0, numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg2)
                                            emit DelegateVotesChanged(numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0, numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg2, delegates[0]);
                                            if not stor306.length:
                                                if 0 < arg2:
                                                    revert with 'NH{q', 17
                                                if stor306.length <= 0:
                                                    if block.number > test266151307():
                                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                    if -arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    stor306.length++
                                                    stor306[stor306.length].field_0 = uint32(block.number)
                                                    stor306[stor306.length].field_32 = Mask(224, 0, -arg2)
                                                else:
                                                    if stor306.length < 1:
                                                        revert with 'NH{q', 17
                                                    if stor306.length - 1 >= stor306.length:
                                                        revert with 'NH{q', 50
                                                    if stor306[stor306.length].field_0 == block.number:
                                                        if -arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                                                        if stor306.length < 1:
                                                            revert with 'NH{q', 17
                                                        if stor306.length - 1 >= stor306.length:
                                                            revert with 'NH{q', 50
                                                        stor306[stor306.length].field_0 = Mask(224, 0, -arg2)
                                                    else:
                                                        if block.number > test266151307():
                                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                        if -arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                        stor306.length++
                                                        stor306[stor306.length].field_0 = uint32(block.number)
                                                        stor306[stor306.length].field_32 = Mask(224, 0, -arg2)
                                            else:
                                                if stor306.length < 1:
                                                    revert with 'NH{q', 17
                                                if stor306.length - 1 >= stor306.length:
                                                    revert with 'NH{q', 50
                                                if stor306[stor306.length].field_0 < arg2:
                                                    revert with 'NH{q', 17
                                                if stor306.length <= 0:
                                                    if block.number > test266151307():
                                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                    if stor306[stor306.length].field_0 - arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    stor306.length++
                                                    stor306[stor306.length].field_0 = uint32(block.number)
                                                    stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg2)
                                                else:
                                                    if stor306.length < 1:
                                                        revert with 'NH{q', 17
                                                    if stor306.length - 1 >= stor306.length:
                                                        revert with 'NH{q', 50
                                                    if stor306[stor306.length].field_0 == block.number:
                                                        if stor306[stor306.length].field_0 - arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                                                        if stor306.length < 1:
                                                            revert with 'NH{q', 17
                                                        if stor306.length - 1 >= stor306.length:
                                                            revert with 'NH{q', 50
                                                        stor306[stor306.length].field_0 = Mask(224, 0, stor306[stor306.length].field_0 - arg2)
                                                    else:
                                                        if block.number > test266151307():
                                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                        if stor306[stor306.length].field_0 - arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                        stor306.length++
                                                        stor306[stor306.length].field_0 = uint32(block.number)
                                                        stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg2)
                                        else:
                                            if block.number > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                            if numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            numCheckpoints[stor304[0]].field_0++
                                            numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 = uint32(block.number)
                                            numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_32 = Mask(224, 0, numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg2)
                                            emit DelegateVotesChanged(numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0, numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg2, delegates[0]);
                                            if not stor306.length:
                                                if 0 < arg2:
                                                    revert with 'NH{q', 17
                                                if stor306.length <= 0:
                                                    if block.number > test266151307():
                                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                    if -arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    stor306.length++
                                                    stor306[stor306.length].field_0 = uint32(block.number)
                                                    stor306[stor306.length].field_32 = Mask(224, 0, -arg2)
                                                else:
                                                    if stor306.length < 1:
                                                        revert with 'NH{q', 17
                                                    if stor306.length - 1 >= stor306.length:
                                                        revert with 'NH{q', 50
                                                    if stor306[stor306.length].field_0 == block.number:
                                                        if -arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                        if stor306.length < 1:
                                                            revert with 'NH{q', 17
                                                        if stor306.length - 1 >= stor306.length:
                                                            revert with 'NH{q', 50
                                                        stor306[stor306.length].field_0 = Mask(224, 0, -arg2)
                                                    else:
                                                        if block.number > test266151307():
                                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                        if -arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                        stor306.length++
                                                        stor306[stor306.length].field_0 = uint32(block.number)
                                                        stor306[stor306.length].field_32 = Mask(224, 0, -arg2)
                                            else:
                                                if stor306.length < 1:
                                                    revert with 'NH{q', 17
                                                if stor306.length - 1 >= stor306.length:
                                                    revert with 'NH{q', 50
                                                if stor306[stor306.length].field_0 < arg2:
                                                    revert with 'NH{q', 17
                                                if stor306.length <= 0:
                                                    if block.number > test266151307():
                                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                    if stor306[stor306.length].field_0 - arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    stor306.length++
                                                    stor306[stor306.length].field_0 = uint32(block.number)
                                                    stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg2)
                                                else:
                                                    if stor306.length < 1:
                                                        revert with 'NH{q', 17
                                                    if stor306.length - 1 >= stor306.length:
                                                        revert with 'NH{q', 50
                                                    if stor306[stor306.length].field_0 == block.number:
                                                        if stor306[stor306.length].field_0 - arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                        if stor306.length < 1:
                                                            revert with 'NH{q', 17
                                                        if stor306.length - 1 >= stor306.length:
                                                            revert with 'NH{q', 50
                                                        stor306[stor306.length].field_0 = Mask(224, 0, stor306[stor306.length].field_0 - arg2)
                                                    else:
                                                        if block.number > test266151307():
                                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                        if stor306[stor306.length].field_0 - arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                        stor306.length++
                                                        stor306[stor306.length].field_0 = uint32(block.number)
                                                        stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg2)
                        else:
                            if block.number > test266151307():
                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                            if -arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                            numCheckpoints[stor304[address(arg1)]].field_0++
                            numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = uint32(block.number)
                            numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_32 = Mask(224, 0, -arg2)
                            emit DelegateVotesChanged(0, -arg2, delegates[address(arg1)]);
                            if delegates[0]:
                                if not numCheckpoints[stor304[0]].field_0:
                                    if 0 > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[stor304[0]].field_0 <= 0:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        numCheckpoints[stor304[0]].field_0++
                                        numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 = uint32(block.number)
                                        numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_32 = Mask(224, 0, arg2)
                                    else:
                                        if numCheckpoints[stor304[0]].field_0 < 1:
                                            revert with 'NH{q', 17
                                        if numCheckpoints[stor304[0]].field_0 - 1 >= numCheckpoints[stor304[0]].field_0:
                                            revert with 'NH{q', 50
                                        if numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 == block.number:
                                            if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            if numCheckpoints[stor304[0]].field_0 < 1:
                                                revert with 'NH{q', 17
                                            if numCheckpoints[stor304[0]].field_0 - 1 >= numCheckpoints[stor304[0]].field_0:
                                                revert with 'NH{q', 50
                                            numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 = Mask(224, 0, arg2)
                                        else:
                                            if block.number > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                            if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            numCheckpoints[stor304[0]].field_0++
                                            numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 = uint32(block.number)
                                            numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_32 = Mask(224, 0, arg2)
                                    emit DelegateVotesChanged(0, arg2, delegates[0]);
                                else:
                                    if numCheckpoints[stor304[0]].field_0 < 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[stor304[0]].field_0 - 1 >= numCheckpoints[stor304[0]].field_0:
                                        revert with 'NH{q', 50
                                    if numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[stor304[0]].field_0 <= 0:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        numCheckpoints[stor304[0]].field_0++
                                        numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 = uint32(block.number)
                                        numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_32 = Mask(224, 0, numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg2)
                                    else:
                                        if numCheckpoints[stor304[0]].field_0 < 1:
                                            revert with 'NH{q', 17
                                        if numCheckpoints[stor304[0]].field_0 - 1 >= numCheckpoints[stor304[0]].field_0:
                                            revert with 'NH{q', 50
                                        if numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 == block.number:
                                            if numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            if numCheckpoints[stor304[0]].field_0 < 1:
                                                revert with 'NH{q', 17
                                            if numCheckpoints[stor304[0]].field_0 - 1 >= numCheckpoints[stor304[0]].field_0:
                                                revert with 'NH{q', 50
                                            numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 = Mask(224, 0, numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg2)
                                        else:
                                            if block.number > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                            if numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            numCheckpoints[stor304[0]].field_0++
                                            numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 = uint32(block.number)
                                            numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_32 = Mask(224, 0, numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg2)
                                    emit DelegateVotesChanged(numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0, numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg2, delegates[0]);
                            if not stor306.length:
                                if 0 < arg2:
                                    revert with 'NH{q', 17
                                if stor306.length <= 0:
                                    if block.number > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                    if -arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                    stor306.length++
                                    stor306[stor306.length].field_0 = uint32(block.number)
                                    stor306[stor306.length].field_32 = Mask(224, 0, -arg2)
                                else:
                                    if stor306.length < 1:
                                        revert with 'NH{q', 17
                                    if stor306.length - 1 >= stor306.length:
                                        revert with 'NH{q', 50
                                    if stor306[stor306.length].field_0 == block.number:
                                        if -arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        if stor306.length < 1:
                                            revert with 'NH{q', 17
                                        if stor306.length - 1 >= stor306.length:
                                            revert with 'NH{q', 50
                                        stor306[stor306.length].field_0 = Mask(224, 0, -arg2)
                                    else:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if -arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        stor306.length++
                                        stor306[stor306.length].field_0 = uint32(block.number)
                                        stor306[stor306.length].field_32 = Mask(224, 0, -arg2)
                            else:
                                if stor306.length < 1:
                                    revert with 'NH{q', 17
                                if stor306.length - 1 >= stor306.length:
                                    revert with 'NH{q', 50
                                if stor306[stor306.length].field_0 < arg2:
                                    revert with 'NH{q', 17
                                if stor306.length <= 0:
                                    if block.number > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                    if stor306[stor306.length].field_0 - arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                    stor306.length++
                                    stor306[stor306.length].field_0 = uint32(block.number)
                                    stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg2)
                                else:
                                    if stor306.length < 1:
                                        revert with 'NH{q', 17
                                    if stor306.length - 1 >= stor306.length:
                                        revert with 'NH{q', 50
                                    if stor306[stor306.length].field_0 == block.number:
                                        if stor306[stor306.length].field_0 - arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        if stor306.length < 1:
                                            revert with 'NH{q', 17
                                        if stor306.length - 1 >= stor306.length:
                                            revert with 'NH{q', 50
                                        stor306[stor306.length].field_0 = Mask(224, 0, stor306[stor306.length].field_0 - arg2)
                                    else:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if stor306[stor306.length].field_0 - arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        stor306.length++
                                        stor306[stor306.length].field_0 = uint32(block.number)
                                        stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg2)
                else:
                    if numCheckpoints[stor304[address(arg1)]].field_0 < 1:
                        revert with 'NH{q', 17
                    if numCheckpoints[stor304[address(arg1)]].field_0 - 1 >= numCheckpoints[stor304[address(arg1)]].field_0:
                        revert with 'NH{q', 50
                    if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 < arg2:
                        revert with 'NH{q', 17
                    if numCheckpoints[stor304[address(arg1)]].field_0 <= 0:
                        if block.number > test266151307():
                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                        if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 - arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                        numCheckpoints[stor304[address(arg1)]].field_0++
                        numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = uint32(block.number)
                        numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_32 = Mask(224, 0, numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 - arg2)
                        emit DelegateVotesChanged(numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0, numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 - arg2, delegates[address(arg1)]);
                        if delegates[0]:
                            if not numCheckpoints[stor304[0]].field_0:
                                if 0 > -arg2 - 1:
                                    revert with 'NH{q', 17
                                if numCheckpoints[stor304[0]].field_0 <= 0:
                                    if block.number > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                    if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                    numCheckpoints[stor304[0]].field_0++
                                    numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 = uint32(block.number)
                                    numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_32 = Mask(224, 0, arg2)
                                else:
                                    if numCheckpoints[stor304[0]].field_0 < 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[stor304[0]].field_0 - 1 >= numCheckpoints[stor304[0]].field_0:
                                        revert with 'NH{q', 50
                                    if numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 == block.number:
                                        if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        if numCheckpoints[stor304[0]].field_0 < 1:
                                            revert with 'NH{q', 17
                                        if numCheckpoints[stor304[0]].field_0 - 1 >= numCheckpoints[stor304[0]].field_0:
                                            revert with 'NH{q', 50
                                        numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 = Mask(224, 0, arg2)
                                    else:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        numCheckpoints[stor304[0]].field_0++
                                        numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 = uint32(block.number)
                                        numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_32 = Mask(224, 0, arg2)
                                emit DelegateVotesChanged(0, arg2, delegates[0]);
                            else:
                                if numCheckpoints[stor304[0]].field_0 < 1:
                                    revert with 'NH{q', 17
                                if numCheckpoints[stor304[0]].field_0 - 1 >= numCheckpoints[stor304[0]].field_0:
                                    revert with 'NH{q', 50
                                if numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 > -arg2 - 1:
                                    revert with 'NH{q', 17
                                if numCheckpoints[stor304[0]].field_0 <= 0:
                                    if block.number > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                    if numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                    numCheckpoints[stor304[0]].field_0++
                                    numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 = uint32(block.number)
                                    numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_32 = Mask(224, 0, numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg2)
                                else:
                                    if numCheckpoints[stor304[0]].field_0 < 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[stor304[0]].field_0 - 1 >= numCheckpoints[stor304[0]].field_0:
                                        revert with 'NH{q', 50
                                    if numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 == block.number:
                                        if numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        if numCheckpoints[stor304[0]].field_0 < 1:
                                            revert with 'NH{q', 17
                                        if numCheckpoints[stor304[0]].field_0 - 1 >= numCheckpoints[stor304[0]].field_0:
                                            revert with 'NH{q', 50
                                        numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 = Mask(224, 0, numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg2)
                                    else:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        numCheckpoints[stor304[0]].field_0++
                                        numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 = uint32(block.number)
                                        numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_32 = Mask(224, 0, numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg2)
                                emit DelegateVotesChanged(numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0, numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg2, delegates[0]);
                        if not stor306.length:
                            if 0 < arg2:
                                revert with 'NH{q', 17
                            if stor306.length <= 0:
                                if block.number > test266151307():
                                    revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                if -arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                stor306.length++
                                stor306[stor306.length].field_0 = uint32(block.number)
                                stor306[stor306.length].field_32 = Mask(224, 0, -arg2)
                            else:
                                if stor306.length < 1:
                                    revert with 'NH{q', 17
                                if stor306.length - 1 >= stor306.length:
                                    revert with 'NH{q', 50
                                if stor306[stor306.length].field_0 == block.number:
                                    if -arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                    if stor306.length < 1:
                                        revert with 'NH{q', 17
                                    if stor306.length - 1 >= stor306.length:
                                        revert with 'NH{q', 50
                                    stor306[stor306.length].field_0 = Mask(224, 0, -arg2)
                                else:
                                    if block.number > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                    if -arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                    stor306.length++
                                    stor306[stor306.length].field_0 = uint32(block.number)
                                    stor306[stor306.length].field_32 = Mask(224, 0, -arg2)
                        else:
                            if stor306.length < 1:
                                revert with 'NH{q', 17
                            if stor306.length - 1 >= stor306.length:
                                revert with 'NH{q', 50
                            if stor306[stor306.length].field_0 < arg2:
                                revert with 'NH{q', 17
                            if stor306.length <= 0:
                                if block.number > test266151307():
                                    revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                if stor306[stor306.length].field_0 - arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                stor306.length++
                                stor306[stor306.length].field_0 = uint32(block.number)
                                stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg2)
                            else:
                                if stor306.length < 1:
                                    revert with 'NH{q', 17
                                if stor306.length - 1 >= stor306.length:
                                    revert with 'NH{q', 50
                                if stor306[stor306.length].field_0 == block.number:
                                    if stor306[stor306.length].field_0 - arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                    if stor306.length < 1:
                                        revert with 'NH{q', 17
                                    if stor306.length - 1 >= stor306.length:
                                        revert with 'NH{q', 50
                                    stor306[stor306.length].field_0 = Mask(224, 0, stor306[stor306.length].field_0 - arg2)
                                else:
                                    if block.number > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                    if stor306[stor306.length].field_0 - arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                    stor306.length++
                                    stor306[stor306.length].field_0 = uint32(block.number)
                                    stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg2)
                    else:
                        if numCheckpoints[stor304[address(arg1)]].field_0 < 1:
                            revert with 'NH{q', 17
                        if numCheckpoints[stor304[address(arg1)]].field_0 - 1 >= numCheckpoints[stor304[address(arg1)]].field_0:
                            revert with 'NH{q', 50
                        if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 == block.number:
                            if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 - arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                            if numCheckpoints[stor304[address(arg1)]].field_0 < 1:
                                revert with 'NH{q', 17
                            if numCheckpoints[stor304[address(arg1)]].field_0 - 1 >= numCheckpoints[stor304[address(arg1)]].field_0:
                                revert with 'NH{q', 50
                            numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = Mask(224, 0, numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 - arg2)
                            emit DelegateVotesChanged(numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0, numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 - arg2, delegates[address(arg1)]);
                            if not delegates[0]:
                                if not stor306.length:
                                    if 0 < arg2:
                                        revert with 'NH{q', 17
                                    if stor306.length <= 0:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if -arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        stor306.length++
                                        stor306[stor306.length].field_0 = uint32(block.number)
                                        stor306[stor306.length].field_32 = Mask(224, 0, -arg2)
                                    else:
                                        if stor306.length < 1:
                                            revert with 'NH{q', 17
                                        if stor306.length - 1 >= stor306.length:
                                            revert with 'NH{q', 50
                                        if stor306[stor306.length].field_0 == block.number:
                                            if -arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                                            if stor306.length < 1:
                                                revert with 'NH{q', 17
                                            if stor306.length - 1 >= stor306.length:
                                                revert with 'NH{q', 50
                                            stor306[stor306.length].field_0 = Mask(224, 0, -arg2)
                                        else:
                                            if block.number > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                            if -arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            stor306.length++
                                            stor306[stor306.length].field_0 = uint32(block.number)
                                            stor306[stor306.length].field_32 = Mask(224, 0, -arg2)
                                else:
                                    if stor306.length < 1:
                                        revert with 'NH{q', 17
                                    if stor306.length - 1 >= stor306.length:
                                        revert with 'NH{q', 50
                                    if stor306[stor306.length].field_0 < arg2:
                                        revert with 'NH{q', 17
                                    if stor306.length <= 0:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if stor306[stor306.length].field_0 - arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        stor306.length++
                                        stor306[stor306.length].field_0 = uint32(block.number)
                                        stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg2)
                                    else:
                                        if stor306.length < 1:
                                            revert with 'NH{q', 17
                                        if stor306.length - 1 >= stor306.length:
                                            revert with 'NH{q', 50
                                        if stor306[stor306.length].field_0 == block.number:
                                            if stor306[stor306.length].field_0 - arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                                            if stor306.length < 1:
                                                revert with 'NH{q', 17
                                            if stor306.length - 1 >= stor306.length:
                                                revert with 'NH{q', 50
                                            stor306[stor306.length].field_0 = Mask(224, 0, stor306[stor306.length].field_0 - arg2)
                                        else:
                                            if block.number > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                            if stor306[stor306.length].field_0 - arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            stor306.length++
                                            stor306[stor306.length].field_0 = uint32(block.number)
                                            stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg2)
                            else:
                                if not numCheckpoints[stor304[0]].field_0:
                                    if 0 > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[stor304[0]].field_0 <= 0:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        numCheckpoints[stor304[0]].field_0++
                                        numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 = uint32(block.number)
                                        numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_32 = Mask(224, 0, arg2)
                                        emit DelegateVotesChanged(0, arg2, delegates[0]);
                                        if not stor306.length:
                                            if 0 < arg2:
                                                revert with 'NH{q', 17
                                            if stor306.length <= 0:
                                                if block.number > test266151307():
                                                    revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                if -arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                stor306.length++
                                                stor306[stor306.length].field_0 = uint32(block.number)
                                                stor306[stor306.length].field_32 = Mask(224, 0, -arg2)
                                            else:
                                                if stor306.length < 1:
                                                    revert with 'NH{q', 17
                                                if stor306.length - 1 >= stor306.length:
                                                    revert with 'NH{q', 50
                                                if stor306[stor306.length].field_0 == block.number:
                                                    if -arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    if stor306.length < 1:
                                                        revert with 'NH{q', 17
                                                    if stor306.length - 1 >= stor306.length:
                                                        revert with 'NH{q', 50
                                                    stor306[stor306.length].field_0 = Mask(224, 0, -arg2)
                                                else:
                                                    if block.number > test266151307():
                                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                    if -arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    stor306.length++
                                                    stor306[stor306.length].field_0 = uint32(block.number)
                                                    stor306[stor306.length].field_32 = Mask(224, 0, -arg2)
                                        else:
                                            if stor306.length < 1:
                                                revert with 'NH{q', 17
                                            if stor306.length - 1 >= stor306.length:
                                                revert with 'NH{q', 50
                                            if stor306[stor306.length].field_0 < arg2:
                                                revert with 'NH{q', 17
                                            if stor306.length <= 0:
                                                if block.number > test266151307():
                                                    revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                if stor306[stor306.length].field_0 - arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                stor306.length++
                                                stor306[stor306.length].field_0 = uint32(block.number)
                                                stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg2)
                                            else:
                                                if stor306.length < 1:
                                                    revert with 'NH{q', 17
                                                if stor306.length - 1 >= stor306.length:
                                                    revert with 'NH{q', 50
                                                if stor306[stor306.length].field_0 == block.number:
                                                    if stor306[stor306.length].field_0 - arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    if stor306.length < 1:
                                                        revert with 'NH{q', 17
                                                    if stor306.length - 1 >= stor306.length:
                                                        revert with 'NH{q', 50
                                                    stor306[stor306.length].field_0 = Mask(224, 0, stor306[stor306.length].field_0 - arg2)
                                                else:
                                                    if block.number > test266151307():
                                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                    if stor306[stor306.length].field_0 - arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    stor306.length++
                                                    stor306[stor306.length].field_0 = uint32(block.number)
                                                    stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg2)
                                    else:
                                        if numCheckpoints[stor304[0]].field_0 < 1:
                                            revert with 'NH{q', 17
                                        if numCheckpoints[stor304[0]].field_0 - 1 >= numCheckpoints[stor304[0]].field_0:
                                            revert with 'NH{q', 50
                                        if numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 == block.number:
                                            if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                                            if numCheckpoints[stor304[0]].field_0 < 1:
                                                revert with 'NH{q', 17
                                            if numCheckpoints[stor304[0]].field_0 - 1 >= numCheckpoints[stor304[0]].field_0:
                                                revert with 'NH{q', 50
                                            numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 = Mask(224, 0, arg2)
                                            emit DelegateVotesChanged(0, arg2, delegates[0]);
                                            if not stor306.length:
                                                if 0 < arg2:
                                                    revert with 'NH{q', 17
                                                if stor306.length <= 0:
                                                    if block.number > test266151307():
                                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                    if -arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    stor306.length++
                                                    stor306[stor306.length].field_0 = uint32(block.number)
                                                    stor306[stor306.length].field_32 = Mask(224, 0, -arg2)
                                                else:
                                                    if stor306.length < 1:
                                                        revert with 'NH{q', 17
                                                    if stor306.length - 1 >= stor306.length:
                                                        revert with 'NH{q', 50
                                                    if stor306[stor306.length].field_0 == block.number:
                                                        if -arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                                                        if stor306.length < 1:
                                                            revert with 'NH{q', 17
                                                        if stor306.length - 1 >= stor306.length:
                                                            revert with 'NH{q', 50
                                                        stor306[stor306.length].field_0 = Mask(224, 0, -arg2)
                                                    else:
                                                        if block.number > test266151307():
                                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                        if -arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                        stor306.length++
                                                        stor306[stor306.length].field_0 = uint32(block.number)
                                                        stor306[stor306.length].field_32 = Mask(224, 0, -arg2)
                                            else:
                                                if stor306.length < 1:
                                                    revert with 'NH{q', 17
                                                if stor306.length - 1 >= stor306.length:
                                                    revert with 'NH{q', 50
                                                if stor306[stor306.length].field_0 < arg2:
                                                    revert with 'NH{q', 17
                                                if stor306.length <= 0:
                                                    if block.number > test266151307():
                                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                    if stor306[stor306.length].field_0 - arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    stor306.length++
                                                    stor306[stor306.length].field_0 = uint32(block.number)
                                                    stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg2)
                                                else:
                                                    if stor306.length < 1:
                                                        revert with 'NH{q', 17
                                                    if stor306.length - 1 >= stor306.length:
                                                        revert with 'NH{q', 50
                                                    if stor306[stor306.length].field_0 == block.number:
                                                        if stor306[stor306.length].field_0 - arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                                                        if stor306.length < 1:
                                                            revert with 'NH{q', 17
                                                        if stor306.length - 1 >= stor306.length:
                                                            revert with 'NH{q', 50
                                                        stor306[stor306.length].field_0 = Mask(224, 0, stor306[stor306.length].field_0 - arg2)
                                                    else:
                                                        if block.number > test266151307():
                                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                        if stor306[stor306.length].field_0 - arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                        stor306.length++
                                                        stor306[stor306.length].field_0 = uint32(block.number)
                                                        stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg2)
                                        else:
                                            if block.number > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                            if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            numCheckpoints[stor304[0]].field_0++
                                            numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 = uint32(block.number)
                                            numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_32 = Mask(224, 0, arg2)
                                            emit DelegateVotesChanged(0, arg2, delegates[0]);
                                            if not stor306.length:
                                                if 0 < arg2:
                                                    revert with 'NH{q', 17
                                                if stor306.length <= 0:
                                                    if block.number > test266151307():
                                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                    if -arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    stor306.length++
                                                    stor306[stor306.length].field_0 = uint32(block.number)
                                                    stor306[stor306.length].field_32 = Mask(224, 0, -arg2)
                                                else:
                                                    if stor306.length < 1:
                                                        revert with 'NH{q', 17
                                                    if stor306.length - 1 >= stor306.length:
                                                        revert with 'NH{q', 50
                                                    if stor306[stor306.length].field_0 == block.number:
                                                        if -arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                        if stor306.length < 1:
                                                            revert with 'NH{q', 17
                                                        if stor306.length - 1 >= stor306.length:
                                                            revert with 'NH{q', 50
                                                        stor306[stor306.length].field_0 = Mask(224, 0, -arg2)
                                                    else:
                                                        if block.number > test266151307():
                                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                        if -arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                        stor306.length++
                                                        stor306[stor306.length].field_0 = uint32(block.number)
                                                        stor306[stor306.length].field_32 = Mask(224, 0, -arg2)
                                            else:
                                                if stor306.length < 1:
                                                    revert with 'NH{q', 17
                                                if stor306.length - 1 >= stor306.length:
                                                    revert with 'NH{q', 50
                                                if stor306[stor306.length].field_0 < arg2:
                                                    revert with 'NH{q', 17
                                                if stor306.length <= 0:
                                                    if block.number > test266151307():
                                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                    if stor306[stor306.length].field_0 - arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    stor306.length++
                                                    stor306[stor306.length].field_0 = uint32(block.number)
                                                    stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg2)
                                                else:
                                                    if stor306.length < 1:
                                                        revert with 'NH{q', 17
                                                    if stor306.length - 1 >= stor306.length:
                                                        revert with 'NH{q', 50
                                                    if stor306[stor306.length].field_0 == block.number:
                                                        if stor306[stor306.length].field_0 - arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                        if stor306.length < 1:
                                                            revert with 'NH{q', 17
                                                        if stor306.length - 1 >= stor306.length:
                                                            revert with 'NH{q', 50
                                                        stor306[stor306.length].field_0 = Mask(224, 0, stor306[stor306.length].field_0 - arg2)
                                                    else:
                                                        if block.number > test266151307():
                                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                        if stor306[stor306.length].field_0 - arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                        stor306.length++
                                                        stor306[stor306.length].field_0 = uint32(block.number)
                                                        stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg2)
                                else:
                                    if numCheckpoints[stor304[0]].field_0 < 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[stor304[0]].field_0 - 1 >= numCheckpoints[stor304[0]].field_0:
                                        revert with 'NH{q', 50
                                    if numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[stor304[0]].field_0 <= 0:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        numCheckpoints[stor304[0]].field_0++
                                        numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 = uint32(block.number)
                                        numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_32 = Mask(224, 0, numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg2)
                                        emit DelegateVotesChanged(numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0, numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg2, delegates[0]);
                                        if not stor306.length:
                                            if 0 < arg2:
                                                revert with 'NH{q', 17
                                            if stor306.length <= 0:
                                                if block.number > test266151307():
                                                    revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                if -arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                stor306.length++
                                                stor306[stor306.length].field_0 = uint32(block.number)
                                                stor306[stor306.length].field_32 = Mask(224, 0, -arg2)
                                            else:
                                                if stor306.length < 1:
                                                    revert with 'NH{q', 17
                                                if stor306.length - 1 >= stor306.length:
                                                    revert with 'NH{q', 50
                                                if stor306[stor306.length].field_0 == block.number:
                                                    if -arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    if stor306.length < 1:
                                                        revert with 'NH{q', 17
                                                    if stor306.length - 1 >= stor306.length:
                                                        revert with 'NH{q', 50
                                                    stor306[stor306.length].field_0 = Mask(224, 0, -arg2)
                                                else:
                                                    if block.number > test266151307():
                                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                    if -arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    stor306.length++
                                                    stor306[stor306.length].field_0 = uint32(block.number)
                                                    stor306[stor306.length].field_32 = Mask(224, 0, -arg2)
                                        else:
                                            if stor306.length < 1:
                                                revert with 'NH{q', 17
                                            if stor306.length - 1 >= stor306.length:
                                                revert with 'NH{q', 50
                                            if stor306[stor306.length].field_0 < arg2:
                                                revert with 'NH{q', 17
                                            if stor306.length <= 0:
                                                if block.number > test266151307():
                                                    revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                if stor306[stor306.length].field_0 - arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                stor306.length++
                                                stor306[stor306.length].field_0 = uint32(block.number)
                                                stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg2)
                                            else:
                                                if stor306.length < 1:
                                                    revert with 'NH{q', 17
                                                if stor306.length - 1 >= stor306.length:
                                                    revert with 'NH{q', 50
                                                if stor306[stor306.length].field_0 == block.number:
                                                    if stor306[stor306.length].field_0 - arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    if stor306.length < 1:
                                                        revert with 'NH{q', 17
                                                    if stor306.length - 1 >= stor306.length:
                                                        revert with 'NH{q', 50
                                                    stor306[stor306.length].field_0 = Mask(224, 0, stor306[stor306.length].field_0 - arg2)
                                                else:
                                                    if block.number > test266151307():
                                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                    if stor306[stor306.length].field_0 - arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    stor306.length++
                                                    stor306[stor306.length].field_0 = uint32(block.number)
                                                    stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg2)
                                    else:
                                        if numCheckpoints[stor304[0]].field_0 < 1:
                                            revert with 'NH{q', 17
                                        if numCheckpoints[stor304[0]].field_0 - 1 >= numCheckpoints[stor304[0]].field_0:
                                            revert with 'NH{q', 50
                                        if numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 == block.number:
                                            if numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                                            if numCheckpoints[stor304[0]].field_0 < 1:
                                                revert with 'NH{q', 17
                                            if numCheckpoints[stor304[0]].field_0 - 1 >= numCheckpoints[stor304[0]].field_0:
                                                revert with 'NH{q', 50
                                            numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 = Mask(224, 0, numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg2)
                                            emit DelegateVotesChanged(numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0, numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg2, delegates[0]);
                                            if not stor306.length:
                                                if 0 < arg2:
                                                    revert with 'NH{q', 17
                                                if stor306.length <= 0:
                                                    if block.number > test266151307():
                                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                    if -arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    stor306.length++
                                                    stor306[stor306.length].field_0 = uint32(block.number)
                                                    stor306[stor306.length].field_32 = Mask(224, 0, -arg2)
                                                else:
                                                    if stor306.length < 1:
                                                        revert with 'NH{q', 17
                                                    if stor306.length - 1 >= stor306.length:
                                                        revert with 'NH{q', 50
                                                    if stor306[stor306.length].field_0 == block.number:
                                                        if -arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                                                        if stor306.length < 1:
                                                            revert with 'NH{q', 17
                                                        if stor306.length - 1 >= stor306.length:
                                                            revert with 'NH{q', 50
                                                        stor306[stor306.length].field_0 = Mask(224, 0, -arg2)
                                                    else:
                                                        if block.number > test266151307():
                                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                        if -arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                        stor306.length++
                                                        stor306[stor306.length].field_0 = uint32(block.number)
                                                        stor306[stor306.length].field_32 = Mask(224, 0, -arg2)
                                            else:
                                                if stor306.length < 1:
                                                    revert with 'NH{q', 17
                                                if stor306.length - 1 >= stor306.length:
                                                    revert with 'NH{q', 50
                                                if stor306[stor306.length].field_0 < arg2:
                                                    revert with 'NH{q', 17
                                                if stor306.length <= 0:
                                                    if block.number > test266151307():
                                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                    if stor306[stor306.length].field_0 - arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    stor306.length++
                                                    stor306[stor306.length].field_0 = uint32(block.number)
                                                    stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg2)
                                                else:
                                                    if stor306.length < 1:
                                                        revert with 'NH{q', 17
                                                    if stor306.length - 1 >= stor306.length:
                                                        revert with 'NH{q', 50
                                                    if stor306[stor306.length].field_0 == block.number:
                                                        if stor306[stor306.length].field_0 - arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                                                        if stor306.length < 1:
                                                            revert with 'NH{q', 17
                                                        if stor306.length - 1 >= stor306.length:
                                                            revert with 'NH{q', 50
                                                        stor306[stor306.length].field_0 = Mask(224, 0, stor306[stor306.length].field_0 - arg2)
                                                    else:
                                                        if block.number > test266151307():
                                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                        if stor306[stor306.length].field_0 - arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                        stor306.length++
                                                        stor306[stor306.length].field_0 = uint32(block.number)
                                                        stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg2)
                                        else:
                                            if block.number > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                            if numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            numCheckpoints[stor304[0]].field_0++
                                            numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 = uint32(block.number)
                                            numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_32 = Mask(224, 0, numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg2)
                                            emit DelegateVotesChanged(numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0, numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg2, delegates[0]);
                                            if not stor306.length:
                                                if 0 < arg2:
                                                    revert with 'NH{q', 17
                                                if stor306.length <= 0:
                                                    if block.number > test266151307():
                                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                    if -arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    stor306.length++
                                                    stor306[stor306.length].field_0 = uint32(block.number)
                                                    stor306[stor306.length].field_32 = Mask(224, 0, -arg2)
                                                else:
                                                    if stor306.length < 1:
                                                        revert with 'NH{q', 17
                                                    if stor306.length - 1 >= stor306.length:
                                                        revert with 'NH{q', 50
                                                    if stor306[stor306.length].field_0 == block.number:
                                                        if -arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                        if stor306.length < 1:
                                                            revert with 'NH{q', 17
                                                        if stor306.length - 1 >= stor306.length:
                                                            revert with 'NH{q', 50
                                                        stor306[stor306.length].field_0 = Mask(224, 0, -arg2)
                                                    else:
                                                        if block.number > test266151307():
                                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                        if -arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                        stor306.length++
                                                        stor306[stor306.length].field_0 = uint32(block.number)
                                                        stor306[stor306.length].field_32 = Mask(224, 0, -arg2)
                                            else:
                                                if stor306.length < 1:
                                                    revert with 'NH{q', 17
                                                if stor306.length - 1 >= stor306.length:
                                                    revert with 'NH{q', 50
                                                if stor306[stor306.length].field_0 < arg2:
                                                    revert with 'NH{q', 17
                                                if stor306.length <= 0:
                                                    if block.number > test266151307():
                                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                    if stor306[stor306.length].field_0 - arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    stor306.length++
                                                    stor306[stor306.length].field_0 = uint32(block.number)
                                                    stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg2)
                                                else:
                                                    if stor306.length < 1:
                                                        revert with 'NH{q', 17
                                                    if stor306.length - 1 >= stor306.length:
                                                        revert with 'NH{q', 50
                                                    if stor306[stor306.length].field_0 == block.number:
                                                        if stor306[stor306.length].field_0 - arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                        if stor306.length < 1:
                                                            revert with 'NH{q', 17
                                                        if stor306.length - 1 >= stor306.length:
                                                            revert with 'NH{q', 50
                                                        stor306[stor306.length].field_0 = Mask(224, 0, stor306[stor306.length].field_0 - arg2)
                                                    else:
                                                        if block.number > test266151307():
                                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                        if stor306[stor306.length].field_0 - arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                        stor306.length++
                                                        stor306[stor306.length].field_0 = uint32(block.number)
                                                        stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg2)
                        else:
                            if block.number > test266151307():
                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                            if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 - arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                            numCheckpoints[stor304[address(arg1)]].field_0++
                            numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = uint32(block.number)
                            numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_32 = Mask(224, 0, numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 - arg2)
                            emit DelegateVotesChanged(numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0, numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 - arg2, delegates[address(arg1)]);
                            if delegates[0]:
                                if not numCheckpoints[stor304[0]].field_0:
                                    if 0 > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[stor304[0]].field_0 <= 0:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        numCheckpoints[stor304[0]].field_0++
                                        numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 = uint32(block.number)
                                        numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_32 = Mask(224, 0, arg2)
                                    else:
                                        if numCheckpoints[stor304[0]].field_0 < 1:
                                            revert with 'NH{q', 17
                                        if numCheckpoints[stor304[0]].field_0 - 1 >= numCheckpoints[stor304[0]].field_0:
                                            revert with 'NH{q', 50
                                        if numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 == block.number:
                                            if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            if numCheckpoints[stor304[0]].field_0 < 1:
                                                revert with 'NH{q', 17
                                            if numCheckpoints[stor304[0]].field_0 - 1 >= numCheckpoints[stor304[0]].field_0:
                                                revert with 'NH{q', 50
                                            numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 = Mask(224, 0, arg2)
                                        else:
                                            if block.number > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                            if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            numCheckpoints[stor304[0]].field_0++
                                            numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 = uint32(block.number)
                                            numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_32 = Mask(224, 0, arg2)
                                    emit DelegateVotesChanged(0, arg2, delegates[0]);
                                else:
                                    if numCheckpoints[stor304[0]].field_0 < 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[stor304[0]].field_0 - 1 >= numCheckpoints[stor304[0]].field_0:
                                        revert with 'NH{q', 50
                                    if numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[stor304[0]].field_0 <= 0:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        numCheckpoints[stor304[0]].field_0++
                                        numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 = uint32(block.number)
                                        numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_32 = Mask(224, 0, numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg2)
                                    else:
                                        if numCheckpoints[stor304[0]].field_0 < 1:
                                            revert with 'NH{q', 17
                                        if numCheckpoints[stor304[0]].field_0 - 1 >= numCheckpoints[stor304[0]].field_0:
                                            revert with 'NH{q', 50
                                        if numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 == block.number:
                                            if numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            if numCheckpoints[stor304[0]].field_0 < 1:
                                                revert with 'NH{q', 17
                                            if numCheckpoints[stor304[0]].field_0 - 1 >= numCheckpoints[stor304[0]].field_0:
                                                revert with 'NH{q', 50
                                            numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 = Mask(224, 0, numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg2)
                                        else:
                                            if block.number > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                            if numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            numCheckpoints[stor304[0]].field_0++
                                            numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 = uint32(block.number)
                                            numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_32 = Mask(224, 0, numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg2)
                                    emit DelegateVotesChanged(numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0, numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 + arg2, delegates[0]);
                            if not stor306.length:
                                if 0 < arg2:
                                    revert with 'NH{q', 17
                                if stor306.length <= 0:
                                    if block.number > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                    if -arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                    stor306.length++
                                    stor306[stor306.length].field_0 = uint32(block.number)
                                    stor306[stor306.length].field_32 = Mask(224, 0, -arg2)
                                else:
                                    if stor306.length < 1:
                                        revert with 'NH{q', 17
                                    if stor306.length - 1 >= stor306.length:
                                        revert with 'NH{q', 50
                                    if stor306[stor306.length].field_0 == block.number:
                                        if -arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        if stor306.length < 1:
                                            revert with 'NH{q', 17
                                        if stor306.length - 1 >= stor306.length:
                                            revert with 'NH{q', 50
                                        stor306[stor306.length].field_0 = Mask(224, 0, -arg2)
                                    else:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if -arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        stor306.length++
                                        stor306[stor306.length].field_0 = uint32(block.number)
                                        stor306[stor306.length].field_32 = Mask(224, 0, -arg2)
                            else:
                                if stor306.length < 1:
                                    revert with 'NH{q', 17
                                if stor306.length - 1 >= stor306.length:
                                    revert with 'NH{q', 50
                                if stor306[stor306.length].field_0 < arg2:
                                    revert with 'NH{q', 17
                                if stor306.length <= 0:
                                    if block.number > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                    if stor306[stor306.length].field_0 - arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                    stor306.length++
                                    stor306[stor306.length].field_0 = uint32(block.number)
                                    stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg2)
                                else:
                                    if stor306.length < 1:
                                        revert with 'NH{q', 17
                                    if stor306.length - 1 >= stor306.length:
                                        revert with 'NH{q', 50
                                    if stor306[stor306.length].field_0 == block.number:
                                        if stor306[stor306.length].field_0 - arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        if stor306.length < 1:
                                            revert with 'NH{q', 17
                                        if stor306.length - 1 >= stor306.length:
                                            revert with 'NH{q', 50
                                        stor306[stor306.length].field_0 = Mask(224, 0, stor306[stor306.length].field_0 - arg2)
                                    else:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if stor306[stor306.length].field_0 - arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        stor306.length++
                                        stor306[stor306.length].field_0 = uint32(block.number)
                                        stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 - arg2)
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > -arg2 - 1:
        revert with 'NH{q', 17
    totalSupply += arg2
    if uint256(balanceOf[address(arg1)]) > -arg2 - 1:
        revert with 'NH{q', 17
    uint256(balanceOf[address(arg1)]) += arg2
    emit Transfer(arg2, 0, arg1);
    if delegates[0] == delegates[address(arg1)]:
        if totalSupply > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20Votes: total supply risks overflowing votes'
        if not stor306.length:
            if 0 > -arg2 - 1:
                revert with 'NH{q', 17
            if stor306.length <= 0:
                if block.number > test266151307():
                    revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                stor306.length++
                stor306[stor306.length].field_0 = uint32(block.number)
                stor306[stor306.length].field_32 = Mask(224, 0, arg2)
            else:
                if stor306.length < 1:
                    revert with 'NH{q', 17
                if stor306.length - 1 >= stor306.length:
                    revert with 'NH{q', 50
                if stor306[stor306.length].field_0 == block.number:
                    if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                    if stor306.length < 1:
                        revert with 'NH{q', 17
                    if stor306.length - 1 >= stor306.length:
                        revert with 'NH{q', 50
                    stor306[stor306.length].field_0 = Mask(224, 0, arg2)
                else:
                    if block.number > test266151307():
                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                    if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                    stor306.length++
                    stor306[stor306.length].field_0 = uint32(block.number)
                    stor306[stor306.length].field_32 = Mask(224, 0, arg2)
        else:
            if stor306.length < 1:
                revert with 'NH{q', 17
            if stor306.length - 1 >= stor306.length:
                revert with 'NH{q', 50
            if stor306[stor306.length].field_0 > -arg2 - 1:
                revert with 'NH{q', 17
            if stor306.length <= 0:
                if block.number > test266151307():
                    revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                if stor306[stor306.length].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                stor306.length++
                stor306[stor306.length].field_0 = uint32(block.number)
                stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 + arg2)
            else:
                if stor306.length < 1:
                    revert with 'NH{q', 17
                if stor306.length - 1 >= stor306.length:
                    revert with 'NH{q', 50
                if stor306[stor306.length].field_0 == block.number:
                    if stor306[stor306.length].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                    if stor306.length < 1:
                        revert with 'NH{q', 17
                    if stor306.length - 1 >= stor306.length:
                        revert with 'NH{q', 50
                    stor306[stor306.length].field_0 = Mask(224, 0, stor306[stor306.length].field_0 + arg2)
                else:
                    if block.number > test266151307():
                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                    if stor306[stor306.length].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                    stor306.length++
                    stor306[stor306.length].field_0 = uint32(block.number)
                    stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 + arg2)
    else:
        if arg2 <= 0:
            if totalSupply > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20Votes: total supply risks overflowing votes'
            if not stor306.length:
                if 0 > -arg2 - 1:
                    revert with 'NH{q', 17
                if stor306.length <= 0:
                    if block.number > test266151307():
                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                    if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                    stor306.length++
                    stor306[stor306.length].field_0 = uint32(block.number)
                    stor306[stor306.length].field_32 = Mask(224, 0, arg2)
                else:
                    if stor306.length < 1:
                        revert with 'NH{q', 17
                    if stor306.length - 1 >= stor306.length:
                        revert with 'NH{q', 50
                    if stor306[stor306.length].field_0 == block.number:
                        if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                        if stor306.length < 1:
                            revert with 'NH{q', 17
                        if stor306.length - 1 >= stor306.length:
                            revert with 'NH{q', 50
                        stor306[stor306.length].field_0 = Mask(224, 0, arg2)
                    else:
                        if block.number > test266151307():
                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                        if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                        stor306.length++
                        stor306[stor306.length].field_0 = uint32(block.number)
                        stor306[stor306.length].field_32 = Mask(224, 0, arg2)
            else:
                if stor306.length < 1:
                    revert with 'NH{q', 17
                if stor306.length - 1 >= stor306.length:
                    revert with 'NH{q', 50
                if stor306[stor306.length].field_0 > -arg2 - 1:
                    revert with 'NH{q', 17
                if stor306.length <= 0:
                    if block.number > test266151307():
                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                    if stor306[stor306.length].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                    stor306.length++
                    stor306[stor306.length].field_0 = uint32(block.number)
                    stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 + arg2)
                else:
                    if stor306.length < 1:
                        revert with 'NH{q', 17
                    if stor306.length - 1 >= stor306.length:
                        revert with 'NH{q', 50
                    if stor306[stor306.length].field_0 == block.number:
                        if stor306[stor306.length].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                        if stor306.length < 1:
                            revert with 'NH{q', 17
                        if stor306.length - 1 >= stor306.length:
                            revert with 'NH{q', 50
                        stor306[stor306.length].field_0 = Mask(224, 0, stor306[stor306.length].field_0 + arg2)
                    else:
                        if block.number > test266151307():
                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                        if stor306[stor306.length].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                        stor306.length++
                        stor306[stor306.length].field_0 = uint32(block.number)
                        stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 + arg2)
        else:
            if not delegates[0]:
                if not delegates[address(arg1)]:
                    if totalSupply > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20Votes: total supply risks overflowing votes'
                    if not stor306.length:
                        if 0 > -arg2 - 1:
                            revert with 'NH{q', 17
                        if stor306.length <= 0:
                            if block.number > test266151307():
                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                            if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                            stor306.length++
                            stor306[stor306.length].field_0 = uint32(block.number)
                            stor306[stor306.length].field_32 = Mask(224, 0, arg2)
                        else:
                            if stor306.length < 1:
                                revert with 'NH{q', 17
                            if stor306.length - 1 >= stor306.length:
                                revert with 'NH{q', 50
                            if stor306[stor306.length].field_0 == block.number:
                                if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                                if stor306.length < 1:
                                    revert with 'NH{q', 17
                                if stor306.length - 1 >= stor306.length:
                                    revert with 'NH{q', 50
                                stor306[stor306.length].field_0 = Mask(224, 0, arg2)
                            else:
                                if block.number > test266151307():
                                    revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                stor306.length++
                                stor306[stor306.length].field_0 = uint32(block.number)
                                stor306[stor306.length].field_32 = Mask(224, 0, arg2)
                    else:
                        if stor306.length < 1:
                            revert with 'NH{q', 17
                        if stor306.length - 1 >= stor306.length:
                            revert with 'NH{q', 50
                        if stor306[stor306.length].field_0 > -arg2 - 1:
                            revert with 'NH{q', 17
                        if stor306.length <= 0:
                            if block.number > test266151307():
                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                            if stor306[stor306.length].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                            stor306.length++
                            stor306[stor306.length].field_0 = uint32(block.number)
                            stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 + arg2)
                        else:
                            if stor306.length < 1:
                                revert with 'NH{q', 17
                            if stor306.length - 1 >= stor306.length:
                                revert with 'NH{q', 50
                            if stor306[stor306.length].field_0 == block.number:
                                if stor306[stor306.length].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                                if stor306.length < 1:
                                    revert with 'NH{q', 17
                                if stor306.length - 1 >= stor306.length:
                                    revert with 'NH{q', 50
                                stor306[stor306.length].field_0 = Mask(224, 0, stor306[stor306.length].field_0 + arg2)
                            else:
                                if block.number > test266151307():
                                    revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                if stor306[stor306.length].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                stor306.length++
                                stor306[stor306.length].field_0 = uint32(block.number)
                                stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 + arg2)
                else:
                    if not numCheckpoints[stor304[address(arg1)]].field_0:
                        if 0 > -arg2 - 1:
                            revert with 'NH{q', 17
                        if numCheckpoints[stor304[address(arg1)]].field_0 <= 0:
                            if block.number > test266151307():
                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                            if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                            numCheckpoints[stor304[address(arg1)]].field_0++
                            numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = uint32(block.number)
                            numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_32 = Mask(224, 0, arg2)
                            emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
                            if totalSupply > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 'ERC20Votes: total supply risks overflowing votes'
                            if not stor306.length:
                                if 0 > -arg2 - 1:
                                    revert with 'NH{q', 17
                                if stor306.length <= 0:
                                    if block.number > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                    if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                    stor306.length++
                                    stor306[stor306.length].field_0 = uint32(block.number)
                                    stor306[stor306.length].field_32 = Mask(224, 0, arg2)
                                else:
                                    if stor306.length < 1:
                                        revert with 'NH{q', 17
                                    if stor306.length - 1 >= stor306.length:
                                        revert with 'NH{q', 50
                                    if stor306[stor306.length].field_0 == block.number:
                                        if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        if stor306.length < 1:
                                            revert with 'NH{q', 17
                                        if stor306.length - 1 >= stor306.length:
                                            revert with 'NH{q', 50
                                        stor306[stor306.length].field_0 = Mask(224, 0, arg2)
                                    else:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        stor306.length++
                                        stor306[stor306.length].field_0 = uint32(block.number)
                                        stor306[stor306.length].field_32 = Mask(224, 0, arg2)
                            else:
                                if stor306.length < 1:
                                    revert with 'NH{q', 17
                                if stor306.length - 1 >= stor306.length:
                                    revert with 'NH{q', 50
                                if stor306[stor306.length].field_0 > -arg2 - 1:
                                    revert with 'NH{q', 17
                                if stor306.length <= 0:
                                    if block.number > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                    if stor306[stor306.length].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                    stor306.length++
                                    stor306[stor306.length].field_0 = uint32(block.number)
                                    stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 + arg2)
                                else:
                                    if stor306.length < 1:
                                        revert with 'NH{q', 17
                                    if stor306.length - 1 >= stor306.length:
                                        revert with 'NH{q', 50
                                    if stor306[stor306.length].field_0 == block.number:
                                        if stor306[stor306.length].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        if stor306.length < 1:
                                            revert with 'NH{q', 17
                                        if stor306.length - 1 >= stor306.length:
                                            revert with 'NH{q', 50
                                        stor306[stor306.length].field_0 = Mask(224, 0, stor306[stor306.length].field_0 + arg2)
                                    else:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if stor306[stor306.length].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        stor306.length++
                                        stor306[stor306.length].field_0 = uint32(block.number)
                                        stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 + arg2)
                        else:
                            if numCheckpoints[stor304[address(arg1)]].field_0 < 1:
                                revert with 'NH{q', 17
                            if numCheckpoints[stor304[address(arg1)]].field_0 - 1 >= numCheckpoints[stor304[address(arg1)]].field_0:
                                revert with 'NH{q', 50
                            if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 == block.number:
                                if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                                if numCheckpoints[stor304[address(arg1)]].field_0 < 1:
                                    revert with 'NH{q', 17
                                if numCheckpoints[stor304[address(arg1)]].field_0 - 1 >= numCheckpoints[stor304[address(arg1)]].field_0:
                                    revert with 'NH{q', 50
                                numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = Mask(224, 0, arg2)
                                emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
                                if totalSupply > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20Votes: total supply risks overflowing votes'
                                if not stor306.length:
                                    if 0 > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    if stor306.length <= 0:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        stor306.length++
                                        stor306[stor306.length].field_0 = uint32(block.number)
                                        stor306[stor306.length].field_32 = Mask(224, 0, arg2)
                                    else:
                                        if stor306.length < 1:
                                            revert with 'NH{q', 17
                                        if stor306.length - 1 >= stor306.length:
                                            revert with 'NH{q', 50
                                        if stor306[stor306.length].field_0 == block.number:
                                            if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                                            if stor306.length < 1:
                                                revert with 'NH{q', 17
                                            if stor306.length - 1 >= stor306.length:
                                                revert with 'NH{q', 50
                                            stor306[stor306.length].field_0 = Mask(224, 0, arg2)
                                        else:
                                            if block.number > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                            if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            stor306.length++
                                            stor306[stor306.length].field_0 = uint32(block.number)
                                            stor306[stor306.length].field_32 = Mask(224, 0, arg2)
                                else:
                                    if stor306.length < 1:
                                        revert with 'NH{q', 17
                                    if stor306.length - 1 >= stor306.length:
                                        revert with 'NH{q', 50
                                    if stor306[stor306.length].field_0 > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    if stor306.length <= 0:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if stor306[stor306.length].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        stor306.length++
                                        stor306[stor306.length].field_0 = uint32(block.number)
                                        stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 + arg2)
                                    else:
                                        if stor306.length < 1:
                                            revert with 'NH{q', 17
                                        if stor306.length - 1 >= stor306.length:
                                            revert with 'NH{q', 50
                                        if stor306[stor306.length].field_0 == block.number:
                                            if stor306[stor306.length].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                                            if stor306.length < 1:
                                                revert with 'NH{q', 17
                                            if stor306.length - 1 >= stor306.length:
                                                revert with 'NH{q', 50
                                            stor306[stor306.length].field_0 = Mask(224, 0, stor306[stor306.length].field_0 + arg2)
                                        else:
                                            if block.number > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                            if stor306[stor306.length].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            stor306.length++
                                            stor306[stor306.length].field_0 = uint32(block.number)
                                            stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 + arg2)
                            else:
                                if block.number > test266151307():
                                    revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                numCheckpoints[stor304[address(arg1)]].field_0++
                                numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = uint32(block.number)
                                numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_32 = Mask(224, 0, arg2)
                                emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
                                if totalSupply > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0, 'ERC20Votes: total supply risks overflowing votes'
                                if not stor306.length:
                                    if 0 > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    if stor306.length <= 0:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        stor306.length++
                                        stor306[stor306.length].field_0 = uint32(block.number)
                                        stor306[stor306.length].field_32 = Mask(224, 0, arg2)
                                    else:
                                        if stor306.length < 1:
                                            revert with 'NH{q', 17
                                        if stor306.length - 1 >= stor306.length:
                                            revert with 'NH{q', 50
                                        if stor306[stor306.length].field_0 == block.number:
                                            if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            if stor306.length < 1:
                                                revert with 'NH{q', 17
                                            if stor306.length - 1 >= stor306.length:
                                                revert with 'NH{q', 50
                                            stor306[stor306.length].field_0 = Mask(224, 0, arg2)
                                        else:
                                            if block.number > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                            if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            stor306.length++
                                            stor306[stor306.length].field_0 = uint32(block.number)
                                            stor306[stor306.length].field_32 = Mask(224, 0, arg2)
                                else:
                                    if stor306.length < 1:
                                        revert with 'NH{q', 17
                                    if stor306.length - 1 >= stor306.length:
                                        revert with 'NH{q', 50
                                    if stor306[stor306.length].field_0 > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    if stor306.length <= 0:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if stor306[stor306.length].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        stor306.length++
                                        stor306[stor306.length].field_0 = uint32(block.number)
                                        stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 + arg2)
                                    else:
                                        if stor306.length < 1:
                                            revert with 'NH{q', 17
                                        if stor306.length - 1 >= stor306.length:
                                            revert with 'NH{q', 50
                                        if stor306[stor306.length].field_0 == block.number:
                                            if stor306[stor306.length].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            if stor306.length < 1:
                                                revert with 'NH{q', 17
                                            if stor306.length - 1 >= stor306.length:
                                                revert with 'NH{q', 50
                                            stor306[stor306.length].field_0 = Mask(224, 0, stor306[stor306.length].field_0 + arg2)
                                        else:
                                            if block.number > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                            if stor306[stor306.length].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            stor306.length++
                                            stor306[stor306.length].field_0 = uint32(block.number)
                                            stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 + arg2)
                    else:
                        if numCheckpoints[stor304[address(arg1)]].field_0 < 1:
                            revert with 'NH{q', 17
                        if numCheckpoints[stor304[address(arg1)]].field_0 - 1 >= numCheckpoints[stor304[address(arg1)]].field_0:
                            revert with 'NH{q', 50
                        if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 > -arg2 - 1:
                            revert with 'NH{q', 17
                        if numCheckpoints[stor304[address(arg1)]].field_0 <= 0:
                            if block.number > test266151307():
                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                            if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                            numCheckpoints[stor304[address(arg1)]].field_0++
                            numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = uint32(block.number)
                            numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_32 = Mask(224, 0, numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2)
                            emit DelegateVotesChanged(numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0, numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2, delegates[address(arg1)]);
                            if totalSupply > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 'ERC20Votes: total supply risks overflowing votes'
                            if not stor306.length:
                                if 0 > -arg2 - 1:
                                    revert with 'NH{q', 17
                                if stor306.length <= 0:
                                    if block.number > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                    if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                    stor306.length++
                                    stor306[stor306.length].field_0 = uint32(block.number)
                                    stor306[stor306.length].field_32 = Mask(224, 0, arg2)
                                else:
                                    if stor306.length < 1:
                                        revert with 'NH{q', 17
                                    if stor306.length - 1 >= stor306.length:
                                        revert with 'NH{q', 50
                                    if stor306[stor306.length].field_0 == block.number:
                                        if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        if stor306.length < 1:
                                            revert with 'NH{q', 17
                                        if stor306.length - 1 >= stor306.length:
                                            revert with 'NH{q', 50
                                        stor306[stor306.length].field_0 = Mask(224, 0, arg2)
                                    else:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        stor306.length++
                                        stor306[stor306.length].field_0 = uint32(block.number)
                                        stor306[stor306.length].field_32 = Mask(224, 0, arg2)
                            else:
                                if stor306.length < 1:
                                    revert with 'NH{q', 17
                                if stor306.length - 1 >= stor306.length:
                                    revert with 'NH{q', 50
                                if stor306[stor306.length].field_0 > -arg2 - 1:
                                    revert with 'NH{q', 17
                                if stor306.length <= 0:
                                    if block.number > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                    if stor306[stor306.length].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                    stor306.length++
                                    stor306[stor306.length].field_0 = uint32(block.number)
                                    stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 + arg2)
                                else:
                                    if stor306.length < 1:
                                        revert with 'NH{q', 17
                                    if stor306.length - 1 >= stor306.length:
                                        revert with 'NH{q', 50
                                    if stor306[stor306.length].field_0 == block.number:
                                        if stor306[stor306.length].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        if stor306.length < 1:
                                            revert with 'NH{q', 17
                                        if stor306.length - 1 >= stor306.length:
                                            revert with 'NH{q', 50
                                        stor306[stor306.length].field_0 = Mask(224, 0, stor306[stor306.length].field_0 + arg2)
                                    else:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if stor306[stor306.length].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        stor306.length++
                                        stor306[stor306.length].field_0 = uint32(block.number)
                                        stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 + arg2)
                        else:
                            if numCheckpoints[stor304[address(arg1)]].field_0 < 1:
                                revert with 'NH{q', 17
                            if numCheckpoints[stor304[address(arg1)]].field_0 - 1 >= numCheckpoints[stor304[address(arg1)]].field_0:
                                revert with 'NH{q', 50
                            if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 == block.number:
                                if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                                if numCheckpoints[stor304[address(arg1)]].field_0 < 1:
                                    revert with 'NH{q', 17
                                if numCheckpoints[stor304[address(arg1)]].field_0 - 1 >= numCheckpoints[stor304[address(arg1)]].field_0:
                                    revert with 'NH{q', 50
                                numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = Mask(224, 0, numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2)
                                emit DelegateVotesChanged(numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0, numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2, delegates[address(arg1)]);
                                if totalSupply > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20Votes: total supply risks overflowing votes'
                                if not stor306.length:
                                    if 0 > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    if stor306.length <= 0:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        stor306.length++
                                        stor306[stor306.length].field_0 = uint32(block.number)
                                        stor306[stor306.length].field_32 = Mask(224, 0, arg2)
                                    else:
                                        if stor306.length < 1:
                                            revert with 'NH{q', 17
                                        if stor306.length - 1 >= stor306.length:
                                            revert with 'NH{q', 50
                                        if stor306[stor306.length].field_0 == block.number:
                                            if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                                            if stor306.length < 1:
                                                revert with 'NH{q', 17
                                            if stor306.length - 1 >= stor306.length:
                                                revert with 'NH{q', 50
                                            stor306[stor306.length].field_0 = Mask(224, 0, arg2)
                                        else:
                                            if block.number > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                            if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            stor306.length++
                                            stor306[stor306.length].field_0 = uint32(block.number)
                                            stor306[stor306.length].field_32 = Mask(224, 0, arg2)
                                else:
                                    if stor306.length < 1:
                                        revert with 'NH{q', 17
                                    if stor306.length - 1 >= stor306.length:
                                        revert with 'NH{q', 50
                                    if stor306[stor306.length].field_0 > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    if stor306.length <= 0:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if stor306[stor306.length].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        stor306.length++
                                        stor306[stor306.length].field_0 = uint32(block.number)
                                        stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 + arg2)
                                    else:
                                        if stor306.length < 1:
                                            revert with 'NH{q', 17
                                        if stor306.length - 1 >= stor306.length:
                                            revert with 'NH{q', 50
                                        if stor306[stor306.length].field_0 == block.number:
                                            if stor306[stor306.length].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                                            if stor306.length < 1:
                                                revert with 'NH{q', 17
                                            if stor306.length - 1 >= stor306.length:
                                                revert with 'NH{q', 50
                                            stor306[stor306.length].field_0 = Mask(224, 0, stor306[stor306.length].field_0 + arg2)
                                        else:
                                            if block.number > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                            if stor306[stor306.length].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            stor306.length++
                                            stor306[stor306.length].field_0 = uint32(block.number)
                                            stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 + arg2)
                            else:
                                if block.number > test266151307():
                                    revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                numCheckpoints[stor304[address(arg1)]].field_0++
                                numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = uint32(block.number)
                                numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_32 = Mask(224, 0, numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2)
                                emit DelegateVotesChanged(numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0, numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2, delegates[address(arg1)]);
                                if totalSupply > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0, 'ERC20Votes: total supply risks overflowing votes'
                                if not stor306.length:
                                    if 0 > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    if stor306.length <= 0:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        stor306.length++
                                        stor306[stor306.length].field_0 = uint32(block.number)
                                        stor306[stor306.length].field_32 = Mask(224, 0, arg2)
                                    else:
                                        if stor306.length < 1:
                                            revert with 'NH{q', 17
                                        if stor306.length - 1 >= stor306.length:
                                            revert with 'NH{q', 50
                                        if stor306[stor306.length].field_0 == block.number:
                                            if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            if stor306.length < 1:
                                                revert with 'NH{q', 17
                                            if stor306.length - 1 >= stor306.length:
                                                revert with 'NH{q', 50
                                            stor306[stor306.length].field_0 = Mask(224, 0, arg2)
                                        else:
                                            if block.number > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                            if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            stor306.length++
                                            stor306[stor306.length].field_0 = uint32(block.number)
                                            stor306[stor306.length].field_32 = Mask(224, 0, arg2)
                                else:
                                    if stor306.length < 1:
                                        revert with 'NH{q', 17
                                    if stor306.length - 1 >= stor306.length:
                                        revert with 'NH{q', 50
                                    if stor306[stor306.length].field_0 > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    if stor306.length <= 0:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if stor306[stor306.length].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        stor306.length++
                                        stor306[stor306.length].field_0 = uint32(block.number)
                                        stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 + arg2)
                                    else:
                                        if stor306.length < 1:
                                            revert with 'NH{q', 17
                                        if stor306.length - 1 >= stor306.length:
                                            revert with 'NH{q', 50
                                        if stor306[stor306.length].field_0 == block.number:
                                            if stor306[stor306.length].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            if stor306.length < 1:
                                                revert with 'NH{q', 17
                                            if stor306.length - 1 >= stor306.length:
                                                revert with 'NH{q', 50
                                            stor306[stor306.length].field_0 = Mask(224, 0, stor306[stor306.length].field_0 + arg2)
                                        else:
                                            if block.number > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                            if stor306[stor306.length].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            stor306.length++
                                            stor306[stor306.length].field_0 = uint32(block.number)
                                            stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 + arg2)
            else:
                if not numCheckpoints[stor304[0]].field_0:
                    if 0 < arg2:
                        revert with 'NH{q', 17
                    if numCheckpoints[stor304[0]].field_0 <= 0:
                        if block.number > test266151307():
                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                        if -arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                        numCheckpoints[stor304[0]].field_0++
                        numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 = uint32(block.number)
                        numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_32 = Mask(224, 0, -arg2)
                        emit DelegateVotesChanged(0, -arg2, delegates[0]);
                        if delegates[address(arg1)]:
                            if not numCheckpoints[stor304[address(arg1)]].field_0:
                                if 0 > -arg2 - 1:
                                    revert with 'NH{q', 17
                                if numCheckpoints[stor304[address(arg1)]].field_0 <= 0:
                                    if block.number > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                    if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                    numCheckpoints[stor304[address(arg1)]].field_0++
                                    numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = uint32(block.number)
                                    numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_32 = Mask(224, 0, arg2)
                                else:
                                    if numCheckpoints[stor304[address(arg1)]].field_0 < 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[stor304[address(arg1)]].field_0 - 1 >= numCheckpoints[stor304[address(arg1)]].field_0:
                                        revert with 'NH{q', 50
                                    if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 == block.number:
                                        if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        if numCheckpoints[stor304[address(arg1)]].field_0 < 1:
                                            revert with 'NH{q', 17
                                        if numCheckpoints[stor304[address(arg1)]].field_0 - 1 >= numCheckpoints[stor304[address(arg1)]].field_0:
                                            revert with 'NH{q', 50
                                        numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = Mask(224, 0, arg2)
                                    else:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        numCheckpoints[stor304[address(arg1)]].field_0++
                                        numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = uint32(block.number)
                                        numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_32 = Mask(224, 0, arg2)
                                emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
                            else:
                                if numCheckpoints[stor304[address(arg1)]].field_0 < 1:
                                    revert with 'NH{q', 17
                                if numCheckpoints[stor304[address(arg1)]].field_0 - 1 >= numCheckpoints[stor304[address(arg1)]].field_0:
                                    revert with 'NH{q', 50
                                if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 > -arg2 - 1:
                                    revert with 'NH{q', 17
                                if numCheckpoints[stor304[address(arg1)]].field_0 <= 0:
                                    if block.number > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                    if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                    numCheckpoints[stor304[address(arg1)]].field_0++
                                    numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = uint32(block.number)
                                    numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_32 = Mask(224, 0, numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2)
                                else:
                                    if numCheckpoints[stor304[address(arg1)]].field_0 < 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[stor304[address(arg1)]].field_0 - 1 >= numCheckpoints[stor304[address(arg1)]].field_0:
                                        revert with 'NH{q', 50
                                    if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 == block.number:
                                        if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        if numCheckpoints[stor304[address(arg1)]].field_0 < 1:
                                            revert with 'NH{q', 17
                                        if numCheckpoints[stor304[address(arg1)]].field_0 - 1 >= numCheckpoints[stor304[address(arg1)]].field_0:
                                            revert with 'NH{q', 50
                                        numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = Mask(224, 0, numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2)
                                    else:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        numCheckpoints[stor304[address(arg1)]].field_0++
                                        numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = uint32(block.number)
                                        numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_32 = Mask(224, 0, numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2)
                                emit DelegateVotesChanged(numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0, numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2, delegates[address(arg1)]);
                        if totalSupply > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 'ERC20Votes: total supply risks overflowing votes'
                        if not stor306.length:
                            if 0 > -arg2 - 1:
                                revert with 'NH{q', 17
                            if stor306.length <= 0:
                                if block.number > test266151307():
                                    revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                stor306.length++
                                stor306[stor306.length].field_0 = uint32(block.number)
                                stor306[stor306.length].field_32 = Mask(224, 0, arg2)
                            else:
                                if stor306.length < 1:
                                    revert with 'NH{q', 17
                                if stor306.length - 1 >= stor306.length:
                                    revert with 'NH{q', 50
                                if stor306[stor306.length].field_0 == block.number:
                                    if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                    if stor306.length < 1:
                                        revert with 'NH{q', 17
                                    if stor306.length - 1 >= stor306.length:
                                        revert with 'NH{q', 50
                                    stor306[stor306.length].field_0 = Mask(224, 0, arg2)
                                else:
                                    if block.number > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                    if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                    stor306.length++
                                    stor306[stor306.length].field_0 = uint32(block.number)
                                    stor306[stor306.length].field_32 = Mask(224, 0, arg2)
                        else:
                            if stor306.length < 1:
                                revert with 'NH{q', 17
                            if stor306.length - 1 >= stor306.length:
                                revert with 'NH{q', 50
                            if stor306[stor306.length].field_0 > -arg2 - 1:
                                revert with 'NH{q', 17
                            if stor306.length <= 0:
                                if block.number > test266151307():
                                    revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                if stor306[stor306.length].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                stor306.length++
                                stor306[stor306.length].field_0 = uint32(block.number)
                                stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 + arg2)
                            else:
                                if stor306.length < 1:
                                    revert with 'NH{q', 17
                                if stor306.length - 1 >= stor306.length:
                                    revert with 'NH{q', 50
                                if stor306[stor306.length].field_0 == block.number:
                                    if stor306[stor306.length].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                    if stor306.length < 1:
                                        revert with 'NH{q', 17
                                    if stor306.length - 1 >= stor306.length:
                                        revert with 'NH{q', 50
                                    stor306[stor306.length].field_0 = Mask(224, 0, stor306[stor306.length].field_0 + arg2)
                                else:
                                    if block.number > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                    if stor306[stor306.length].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                    stor306.length++
                                    stor306[stor306.length].field_0 = uint32(block.number)
                                    stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 + arg2)
                    else:
                        if numCheckpoints[stor304[0]].field_0 < 1:
                            revert with 'NH{q', 17
                        if numCheckpoints[stor304[0]].field_0 - 1 >= numCheckpoints[stor304[0]].field_0:
                            revert with 'NH{q', 50
                        if numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 == block.number:
                            if -arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                            if numCheckpoints[stor304[0]].field_0 < 1:
                                revert with 'NH{q', 17
                            if numCheckpoints[stor304[0]].field_0 - 1 >= numCheckpoints[stor304[0]].field_0:
                                revert with 'NH{q', 50
                            numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 = Mask(224, 0, -arg2)
                            emit DelegateVotesChanged(0, -arg2, delegates[0]);
                            if not delegates[address(arg1)]:
                                if totalSupply > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20Votes: total supply risks overflowing votes'
                                if not stor306.length:
                                    if 0 > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    if stor306.length <= 0:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        stor306.length++
                                        stor306[stor306.length].field_0 = uint32(block.number)
                                        stor306[stor306.length].field_32 = Mask(224, 0, arg2)
                                    else:
                                        if stor306.length < 1:
                                            revert with 'NH{q', 17
                                        if stor306.length - 1 >= stor306.length:
                                            revert with 'NH{q', 50
                                        if stor306[stor306.length].field_0 == block.number:
                                            if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                                            if stor306.length < 1:
                                                revert with 'NH{q', 17
                                            if stor306.length - 1 >= stor306.length:
                                                revert with 'NH{q', 50
                                            stor306[stor306.length].field_0 = Mask(224, 0, arg2)
                                        else:
                                            if block.number > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                            if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            stor306.length++
                                            stor306[stor306.length].field_0 = uint32(block.number)
                                            stor306[stor306.length].field_32 = Mask(224, 0, arg2)
                                else:
                                    if stor306.length < 1:
                                        revert with 'NH{q', 17
                                    if stor306.length - 1 >= stor306.length:
                                        revert with 'NH{q', 50
                                    if stor306[stor306.length].field_0 > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    if stor306.length <= 0:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if stor306[stor306.length].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        stor306.length++
                                        stor306[stor306.length].field_0 = uint32(block.number)
                                        stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 + arg2)
                                    else:
                                        if stor306.length < 1:
                                            revert with 'NH{q', 17
                                        if stor306.length - 1 >= stor306.length:
                                            revert with 'NH{q', 50
                                        if stor306[stor306.length].field_0 == block.number:
                                            if stor306[stor306.length].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                                            if stor306.length < 1:
                                                revert with 'NH{q', 17
                                            if stor306.length - 1 >= stor306.length:
                                                revert with 'NH{q', 50
                                            stor306[stor306.length].field_0 = Mask(224, 0, stor306[stor306.length].field_0 + arg2)
                                        else:
                                            if block.number > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                            if stor306[stor306.length].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            stor306.length++
                                            stor306[stor306.length].field_0 = uint32(block.number)
                                            stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 + arg2)
                            else:
                                if not numCheckpoints[stor304[address(arg1)]].field_0:
                                    if 0 > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[stor304[address(arg1)]].field_0 <= 0:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        numCheckpoints[stor304[address(arg1)]].field_0++
                                        numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = uint32(block.number)
                                        numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_32 = Mask(224, 0, arg2)
                                        emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
                                        if totalSupply > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'ERC20Votes: total supply risks overflowing votes'
                                        if not stor306.length:
                                            if 0 > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            if stor306.length <= 0:
                                                if block.number > test266151307():
                                                    revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                stor306.length++
                                                stor306[stor306.length].field_0 = uint32(block.number)
                                                stor306[stor306.length].field_32 = Mask(224, 0, arg2)
                                            else:
                                                if stor306.length < 1:
                                                    revert with 'NH{q', 17
                                                if stor306.length - 1 >= stor306.length:
                                                    revert with 'NH{q', 50
                                                if stor306[stor306.length].field_0 == block.number:
                                                    if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    if stor306.length < 1:
                                                        revert with 'NH{q', 17
                                                    if stor306.length - 1 >= stor306.length:
                                                        revert with 'NH{q', 50
                                                    stor306[stor306.length].field_0 = Mask(224, 0, arg2)
                                                else:
                                                    if block.number > test266151307():
                                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                    if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    stor306.length++
                                                    stor306[stor306.length].field_0 = uint32(block.number)
                                                    stor306[stor306.length].field_32 = Mask(224, 0, arg2)
                                        else:
                                            if stor306.length < 1:
                                                revert with 'NH{q', 17
                                            if stor306.length - 1 >= stor306.length:
                                                revert with 'NH{q', 50
                                            if stor306[stor306.length].field_0 > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            if stor306.length <= 0:
                                                if block.number > test266151307():
                                                    revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                if stor306[stor306.length].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                stor306.length++
                                                stor306[stor306.length].field_0 = uint32(block.number)
                                                stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 + arg2)
                                            else:
                                                if stor306.length < 1:
                                                    revert with 'NH{q', 17
                                                if stor306.length - 1 >= stor306.length:
                                                    revert with 'NH{q', 50
                                                if stor306[stor306.length].field_0 == block.number:
                                                    if stor306[stor306.length].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    if stor306.length < 1:
                                                        revert with 'NH{q', 17
                                                    if stor306.length - 1 >= stor306.length:
                                                        revert with 'NH{q', 50
                                                    stor306[stor306.length].field_0 = Mask(224, 0, stor306[stor306.length].field_0 + arg2)
                                                else:
                                                    if block.number > test266151307():
                                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                    if stor306[stor306.length].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    stor306.length++
                                                    stor306[stor306.length].field_0 = uint32(block.number)
                                                    stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 + arg2)
                                    else:
                                        if numCheckpoints[stor304[address(arg1)]].field_0 < 1:
                                            revert with 'NH{q', 17
                                        if numCheckpoints[stor304[address(arg1)]].field_0 - 1 >= numCheckpoints[stor304[address(arg1)]].field_0:
                                            revert with 'NH{q', 50
                                        if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 == block.number:
                                            if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                                            if numCheckpoints[stor304[address(arg1)]].field_0 < 1:
                                                revert with 'NH{q', 17
                                            if numCheckpoints[stor304[address(arg1)]].field_0 - 1 >= numCheckpoints[stor304[address(arg1)]].field_0:
                                                revert with 'NH{q', 50
                                            numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = Mask(224, 0, arg2)
                                            emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
                                            if totalSupply > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20Votes: total supply risks overflowing votes'
                                            if not stor306.length:
                                                if 0 > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                if stor306.length <= 0:
                                                    if block.number > test266151307():
                                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                    if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    stor306.length++
                                                    stor306[stor306.length].field_0 = uint32(block.number)
                                                    stor306[stor306.length].field_32 = Mask(224, 0, arg2)
                                                else:
                                                    if stor306.length < 1:
                                                        revert with 'NH{q', 17
                                                    if stor306.length - 1 >= stor306.length:
                                                        revert with 'NH{q', 50
                                                    if stor306[stor306.length].field_0 == block.number:
                                                        if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                                                        if stor306.length < 1:
                                                            revert with 'NH{q', 17
                                                        if stor306.length - 1 >= stor306.length:
                                                            revert with 'NH{q', 50
                                                        stor306[stor306.length].field_0 = Mask(224, 0, arg2)
                                                    else:
                                                        if block.number > test266151307():
                                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                        if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                        stor306.length++
                                                        stor306[stor306.length].field_0 = uint32(block.number)
                                                        stor306[stor306.length].field_32 = Mask(224, 0, arg2)
                                            else:
                                                if stor306.length < 1:
                                                    revert with 'NH{q', 17
                                                if stor306.length - 1 >= stor306.length:
                                                    revert with 'NH{q', 50
                                                if stor306[stor306.length].field_0 > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                if stor306.length <= 0:
                                                    if block.number > test266151307():
                                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                    if stor306[stor306.length].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    stor306.length++
                                                    stor306[stor306.length].field_0 = uint32(block.number)
                                                    stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 + arg2)
                                                else:
                                                    if stor306.length < 1:
                                                        revert with 'NH{q', 17
                                                    if stor306.length - 1 >= stor306.length:
                                                        revert with 'NH{q', 50
                                                    if stor306[stor306.length].field_0 == block.number:
                                                        if stor306[stor306.length].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                                                        if stor306.length < 1:
                                                            revert with 'NH{q', 17
                                                        if stor306.length - 1 >= stor306.length:
                                                            revert with 'NH{q', 50
                                                        stor306[stor306.length].field_0 = Mask(224, 0, stor306[stor306.length].field_0 + arg2)
                                                    else:
                                                        if block.number > test266151307():
                                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                        if stor306[stor306.length].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                        stor306.length++
                                                        stor306[stor306.length].field_0 = uint32(block.number)
                                                        stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 + arg2)
                                        else:
                                            if block.number > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                            if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            numCheckpoints[stor304[address(arg1)]].field_0++
                                            numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = uint32(block.number)
                                            numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_32 = Mask(224, 0, arg2)
                                            emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
                                            if totalSupply > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'ERC20Votes: total supply risks overflowing votes'
                                            if not stor306.length:
                                                if 0 > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                if stor306.length <= 0:
                                                    if block.number > test266151307():
                                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                    if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    stor306.length++
                                                    stor306[stor306.length].field_0 = uint32(block.number)
                                                    stor306[stor306.length].field_32 = Mask(224, 0, arg2)
                                                else:
                                                    if stor306.length < 1:
                                                        revert with 'NH{q', 17
                                                    if stor306.length - 1 >= stor306.length:
                                                        revert with 'NH{q', 50
                                                    if stor306[stor306.length].field_0 == block.number:
                                                        if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                        if stor306.length < 1:
                                                            revert with 'NH{q', 17
                                                        if stor306.length - 1 >= stor306.length:
                                                            revert with 'NH{q', 50
                                                        stor306[stor306.length].field_0 = Mask(224, 0, arg2)
                                                    else:
                                                        if block.number > test266151307():
                                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                        if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                        stor306.length++
                                                        stor306[stor306.length].field_0 = uint32(block.number)
                                                        stor306[stor306.length].field_32 = Mask(224, 0, arg2)
                                            else:
                                                if stor306.length < 1:
                                                    revert with 'NH{q', 17
                                                if stor306.length - 1 >= stor306.length:
                                                    revert with 'NH{q', 50
                                                if stor306[stor306.length].field_0 > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                if stor306.length <= 0:
                                                    if block.number > test266151307():
                                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                    if stor306[stor306.length].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    stor306.length++
                                                    stor306[stor306.length].field_0 = uint32(block.number)
                                                    stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 + arg2)
                                                else:
                                                    if stor306.length < 1:
                                                        revert with 'NH{q', 17
                                                    if stor306.length - 1 >= stor306.length:
                                                        revert with 'NH{q', 50
                                                    if stor306[stor306.length].field_0 == block.number:
                                                        if stor306[stor306.length].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                        if stor306.length < 1:
                                                            revert with 'NH{q', 17
                                                        if stor306.length - 1 >= stor306.length:
                                                            revert with 'NH{q', 50
                                                        stor306[stor306.length].field_0 = Mask(224, 0, stor306[stor306.length].field_0 + arg2)
                                                    else:
                                                        if block.number > test266151307():
                                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                        if stor306[stor306.length].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                        stor306.length++
                                                        stor306[stor306.length].field_0 = uint32(block.number)
                                                        stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 + arg2)
                                else:
                                    if numCheckpoints[stor304[address(arg1)]].field_0 < 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[stor304[address(arg1)]].field_0 - 1 >= numCheckpoints[stor304[address(arg1)]].field_0:
                                        revert with 'NH{q', 50
                                    if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[stor304[address(arg1)]].field_0 <= 0:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        numCheckpoints[stor304[address(arg1)]].field_0++
                                        numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = uint32(block.number)
                                        numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_32 = Mask(224, 0, numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2)
                                        emit DelegateVotesChanged(numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0, numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2, delegates[address(arg1)]);
                                        if totalSupply > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'ERC20Votes: total supply risks overflowing votes'
                                        if not stor306.length:
                                            if 0 > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            if stor306.length <= 0:
                                                if block.number > test266151307():
                                                    revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                stor306.length++
                                                stor306[stor306.length].field_0 = uint32(block.number)
                                                stor306[stor306.length].field_32 = Mask(224, 0, arg2)
                                            else:
                                                if stor306.length < 1:
                                                    revert with 'NH{q', 17
                                                if stor306.length - 1 >= stor306.length:
                                                    revert with 'NH{q', 50
                                                if stor306[stor306.length].field_0 == block.number:
                                                    if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    if stor306.length < 1:
                                                        revert with 'NH{q', 17
                                                    if stor306.length - 1 >= stor306.length:
                                                        revert with 'NH{q', 50
                                                    stor306[stor306.length].field_0 = Mask(224, 0, arg2)
                                                else:
                                                    if block.number > test266151307():
                                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                    if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    stor306.length++
                                                    stor306[stor306.length].field_0 = uint32(block.number)
                                                    stor306[stor306.length].field_32 = Mask(224, 0, arg2)
                                        else:
                                            if stor306.length < 1:
                                                revert with 'NH{q', 17
                                            if stor306.length - 1 >= stor306.length:
                                                revert with 'NH{q', 50
                                            if stor306[stor306.length].field_0 > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            if stor306.length <= 0:
                                                if block.number > test266151307():
                                                    revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                if stor306[stor306.length].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                stor306.length++
                                                stor306[stor306.length].field_0 = uint32(block.number)
                                                stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 + arg2)
                                            else:
                                                if stor306.length < 1:
                                                    revert with 'NH{q', 17
                                                if stor306.length - 1 >= stor306.length:
                                                    revert with 'NH{q', 50
                                                if stor306[stor306.length].field_0 == block.number:
                                                    if stor306[stor306.length].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    if stor306.length < 1:
                                                        revert with 'NH{q', 17
                                                    if stor306.length - 1 >= stor306.length:
                                                        revert with 'NH{q', 50
                                                    stor306[stor306.length].field_0 = Mask(224, 0, stor306[stor306.length].field_0 + arg2)
                                                else:
                                                    if block.number > test266151307():
                                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                    if stor306[stor306.length].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    stor306.length++
                                                    stor306[stor306.length].field_0 = uint32(block.number)
                                                    stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 + arg2)
                                    else:
                                        if numCheckpoints[stor304[address(arg1)]].field_0 < 1:
                                            revert with 'NH{q', 17
                                        if numCheckpoints[stor304[address(arg1)]].field_0 - 1 >= numCheckpoints[stor304[address(arg1)]].field_0:
                                            revert with 'NH{q', 50
                                        if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 == block.number:
                                            if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                                            if numCheckpoints[stor304[address(arg1)]].field_0 < 1:
                                                revert with 'NH{q', 17
                                            if numCheckpoints[stor304[address(arg1)]].field_0 - 1 >= numCheckpoints[stor304[address(arg1)]].field_0:
                                                revert with 'NH{q', 50
                                            numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = Mask(224, 0, numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2)
                                            emit DelegateVotesChanged(numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0, numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2, delegates[address(arg1)]);
                                            if totalSupply > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20Votes: total supply risks overflowing votes'
                                            if not stor306.length:
                                                if 0 > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                if stor306.length <= 0:
                                                    if block.number > test266151307():
                                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                    if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    stor306.length++
                                                    stor306[stor306.length].field_0 = uint32(block.number)
                                                    stor306[stor306.length].field_32 = Mask(224, 0, arg2)
                                                else:
                                                    if stor306.length < 1:
                                                        revert with 'NH{q', 17
                                                    if stor306.length - 1 >= stor306.length:
                                                        revert with 'NH{q', 50
                                                    if stor306[stor306.length].field_0 == block.number:
                                                        if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                                                        if stor306.length < 1:
                                                            revert with 'NH{q', 17
                                                        if stor306.length - 1 >= stor306.length:
                                                            revert with 'NH{q', 50
                                                        stor306[stor306.length].field_0 = Mask(224, 0, arg2)
                                                    else:
                                                        if block.number > test266151307():
                                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                        if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                        stor306.length++
                                                        stor306[stor306.length].field_0 = uint32(block.number)
                                                        stor306[stor306.length].field_32 = Mask(224, 0, arg2)
                                            else:
                                                if stor306.length < 1:
                                                    revert with 'NH{q', 17
                                                if stor306.length - 1 >= stor306.length:
                                                    revert with 'NH{q', 50
                                                if stor306[stor306.length].field_0 > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                if stor306.length <= 0:
                                                    if block.number > test266151307():
                                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                    if stor306[stor306.length].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    stor306.length++
                                                    stor306[stor306.length].field_0 = uint32(block.number)
                                                    stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 + arg2)
                                                else:
                                                    if stor306.length < 1:
                                                        revert with 'NH{q', 17
                                                    if stor306.length - 1 >= stor306.length:
                                                        revert with 'NH{q', 50
                                                    if stor306[stor306.length].field_0 == block.number:
                                                        if stor306[stor306.length].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                                                        if stor306.length < 1:
                                                            revert with 'NH{q', 17
                                                        if stor306.length - 1 >= stor306.length:
                                                            revert with 'NH{q', 50
                                                        stor306[stor306.length].field_0 = Mask(224, 0, stor306[stor306.length].field_0 + arg2)
                                                    else:
                                                        if block.number > test266151307():
                                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                        if stor306[stor306.length].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                        stor306.length++
                                                        stor306[stor306.length].field_0 = uint32(block.number)
                                                        stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 + arg2)
                                        else:
                                            if block.number > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                            if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            numCheckpoints[stor304[address(arg1)]].field_0++
                                            numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = uint32(block.number)
                                            numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_32 = Mask(224, 0, numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2)
                                            emit DelegateVotesChanged(numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0, numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2, delegates[address(arg1)]);
                                            if totalSupply > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'ERC20Votes: total supply risks overflowing votes'
                                            if not stor306.length:
                                                if 0 > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                if stor306.length <= 0:
                                                    if block.number > test266151307():
                                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                    if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    stor306.length++
                                                    stor306[stor306.length].field_0 = uint32(block.number)
                                                    stor306[stor306.length].field_32 = Mask(224, 0, arg2)
                                                else:
                                                    if stor306.length < 1:
                                                        revert with 'NH{q', 17
                                                    if stor306.length - 1 >= stor306.length:
                                                        revert with 'NH{q', 50
                                                    if stor306[stor306.length].field_0 == block.number:
                                                        if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                        if stor306.length < 1:
                                                            revert with 'NH{q', 17
                                                        if stor306.length - 1 >= stor306.length:
                                                            revert with 'NH{q', 50
                                                        stor306[stor306.length].field_0 = Mask(224, 0, arg2)
                                                    else:
                                                        if block.number > test266151307():
                                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                        if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                        stor306.length++
                                                        stor306[stor306.length].field_0 = uint32(block.number)
                                                        stor306[stor306.length].field_32 = Mask(224, 0, arg2)
                                            else:
                                                if stor306.length < 1:
                                                    revert with 'NH{q', 17
                                                if stor306.length - 1 >= stor306.length:
                                                    revert with 'NH{q', 50
                                                if stor306[stor306.length].field_0 > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                if stor306.length <= 0:
                                                    if block.number > test266151307():
                                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                    if stor306[stor306.length].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    stor306.length++
                                                    stor306[stor306.length].field_0 = uint32(block.number)
                                                    stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 + arg2)
                                                else:
                                                    if stor306.length < 1:
                                                        revert with 'NH{q', 17
                                                    if stor306.length - 1 >= stor306.length:
                                                        revert with 'NH{q', 50
                                                    if stor306[stor306.length].field_0 == block.number:
                                                        if stor306[stor306.length].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                        if stor306.length < 1:
                                                            revert with 'NH{q', 17
                                                        if stor306.length - 1 >= stor306.length:
                                                            revert with 'NH{q', 50
                                                        stor306[stor306.length].field_0 = Mask(224, 0, stor306[stor306.length].field_0 + arg2)
                                                    else:
                                                        if block.number > test266151307():
                                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                        if stor306[stor306.length].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                        stor306.length++
                                                        stor306[stor306.length].field_0 = uint32(block.number)
                                                        stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 + arg2)
                        else:
                            if block.number > test266151307():
                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                            if -arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                            numCheckpoints[stor304[0]].field_0++
                            numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 = uint32(block.number)
                            numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_32 = Mask(224, 0, -arg2)
                            emit DelegateVotesChanged(0, -arg2, delegates[0]);
                            if delegates[address(arg1)]:
                                if not numCheckpoints[stor304[address(arg1)]].field_0:
                                    if 0 > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[stor304[address(arg1)]].field_0 <= 0:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        numCheckpoints[stor304[address(arg1)]].field_0++
                                        numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = uint32(block.number)
                                        numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_32 = Mask(224, 0, arg2)
                                    else:
                                        if numCheckpoints[stor304[address(arg1)]].field_0 < 1:
                                            revert with 'NH{q', 17
                                        if numCheckpoints[stor304[address(arg1)]].field_0 - 1 >= numCheckpoints[stor304[address(arg1)]].field_0:
                                            revert with 'NH{q', 50
                                        if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 == block.number:
                                            if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            if numCheckpoints[stor304[address(arg1)]].field_0 < 1:
                                                revert with 'NH{q', 17
                                            if numCheckpoints[stor304[address(arg1)]].field_0 - 1 >= numCheckpoints[stor304[address(arg1)]].field_0:
                                                revert with 'NH{q', 50
                                            numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = Mask(224, 0, arg2)
                                        else:
                                            if block.number > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                            if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            numCheckpoints[stor304[address(arg1)]].field_0++
                                            numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = uint32(block.number)
                                            numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_32 = Mask(224, 0, arg2)
                                    emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
                                else:
                                    if numCheckpoints[stor304[address(arg1)]].field_0 < 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[stor304[address(arg1)]].field_0 - 1 >= numCheckpoints[stor304[address(arg1)]].field_0:
                                        revert with 'NH{q', 50
                                    if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[stor304[address(arg1)]].field_0 <= 0:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        numCheckpoints[stor304[address(arg1)]].field_0++
                                        numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = uint32(block.number)
                                        numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_32 = Mask(224, 0, numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2)
                                    else:
                                        if numCheckpoints[stor304[address(arg1)]].field_0 < 1:
                                            revert with 'NH{q', 17
                                        if numCheckpoints[stor304[address(arg1)]].field_0 - 1 >= numCheckpoints[stor304[address(arg1)]].field_0:
                                            revert with 'NH{q', 50
                                        if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 == block.number:
                                            if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            if numCheckpoints[stor304[address(arg1)]].field_0 < 1:
                                                revert with 'NH{q', 17
                                            if numCheckpoints[stor304[address(arg1)]].field_0 - 1 >= numCheckpoints[stor304[address(arg1)]].field_0:
                                                revert with 'NH{q', 50
                                            numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = Mask(224, 0, numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2)
                                        else:
                                            if block.number > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                            if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            numCheckpoints[stor304[address(arg1)]].field_0++
                                            numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = uint32(block.number)
                                            numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_32 = Mask(224, 0, numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2)
                                    emit DelegateVotesChanged(numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0, numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2, delegates[address(arg1)]);
                            if totalSupply > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 'ERC20Votes: total supply risks overflowing votes'
                            if not stor306.length:
                                if 0 > -arg2 - 1:
                                    revert with 'NH{q', 17
                                if stor306.length <= 0:
                                    if block.number > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                    if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                    stor306.length++
                                    stor306[stor306.length].field_0 = uint32(block.number)
                                    stor306[stor306.length].field_32 = Mask(224, 0, arg2)
                                else:
                                    if stor306.length < 1:
                                        revert with 'NH{q', 17
                                    if stor306.length - 1 >= stor306.length:
                                        revert with 'NH{q', 50
                                    if stor306[stor306.length].field_0 == block.number:
                                        if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        if stor306.length < 1:
                                            revert with 'NH{q', 17
                                        if stor306.length - 1 >= stor306.length:
                                            revert with 'NH{q', 50
                                        stor306[stor306.length].field_0 = Mask(224, 0, arg2)
                                    else:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        stor306.length++
                                        stor306[stor306.length].field_0 = uint32(block.number)
                                        stor306[stor306.length].field_32 = Mask(224, 0, arg2)
                            else:
                                if stor306.length < 1:
                                    revert with 'NH{q', 17
                                if stor306.length - 1 >= stor306.length:
                                    revert with 'NH{q', 50
                                if stor306[stor306.length].field_0 > -arg2 - 1:
                                    revert with 'NH{q', 17
                                if stor306.length <= 0:
                                    if block.number > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                    if stor306[stor306.length].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                    stor306.length++
                                    stor306[stor306.length].field_0 = uint32(block.number)
                                    stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 + arg2)
                                else:
                                    if stor306.length < 1:
                                        revert with 'NH{q', 17
                                    if stor306.length - 1 >= stor306.length:
                                        revert with 'NH{q', 50
                                    if stor306[stor306.length].field_0 == block.number:
                                        if stor306[stor306.length].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        if stor306.length < 1:
                                            revert with 'NH{q', 17
                                        if stor306.length - 1 >= stor306.length:
                                            revert with 'NH{q', 50
                                        stor306[stor306.length].field_0 = Mask(224, 0, stor306[stor306.length].field_0 + arg2)
                                    else:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if stor306[stor306.length].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        stor306.length++
                                        stor306[stor306.length].field_0 = uint32(block.number)
                                        stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 + arg2)
                else:
                    if numCheckpoints[stor304[0]].field_0 < 1:
                        revert with 'NH{q', 17
                    if numCheckpoints[stor304[0]].field_0 - 1 >= numCheckpoints[stor304[0]].field_0:
                        revert with 'NH{q', 50
                    if numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 < arg2:
                        revert with 'NH{q', 17
                    if numCheckpoints[stor304[0]].field_0 <= 0:
                        if block.number > test266151307():
                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                        if numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 - arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                        numCheckpoints[stor304[0]].field_0++
                        numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 = uint32(block.number)
                        numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_32 = Mask(224, 0, numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 - arg2)
                        emit DelegateVotesChanged(numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0, numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 - arg2, delegates[0]);
                        if delegates[address(arg1)]:
                            if not numCheckpoints[stor304[address(arg1)]].field_0:
                                if 0 > -arg2 - 1:
                                    revert with 'NH{q', 17
                                if numCheckpoints[stor304[address(arg1)]].field_0 <= 0:
                                    if block.number > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                    if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                    numCheckpoints[stor304[address(arg1)]].field_0++
                                    numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = uint32(block.number)
                                    numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_32 = Mask(224, 0, arg2)
                                else:
                                    if numCheckpoints[stor304[address(arg1)]].field_0 < 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[stor304[address(arg1)]].field_0 - 1 >= numCheckpoints[stor304[address(arg1)]].field_0:
                                        revert with 'NH{q', 50
                                    if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 == block.number:
                                        if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        if numCheckpoints[stor304[address(arg1)]].field_0 < 1:
                                            revert with 'NH{q', 17
                                        if numCheckpoints[stor304[address(arg1)]].field_0 - 1 >= numCheckpoints[stor304[address(arg1)]].field_0:
                                            revert with 'NH{q', 50
                                        numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = Mask(224, 0, arg2)
                                    else:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        numCheckpoints[stor304[address(arg1)]].field_0++
                                        numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = uint32(block.number)
                                        numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_32 = Mask(224, 0, arg2)
                                emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
                            else:
                                if numCheckpoints[stor304[address(arg1)]].field_0 < 1:
                                    revert with 'NH{q', 17
                                if numCheckpoints[stor304[address(arg1)]].field_0 - 1 >= numCheckpoints[stor304[address(arg1)]].field_0:
                                    revert with 'NH{q', 50
                                if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 > -arg2 - 1:
                                    revert with 'NH{q', 17
                                if numCheckpoints[stor304[address(arg1)]].field_0 <= 0:
                                    if block.number > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                    if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                    numCheckpoints[stor304[address(arg1)]].field_0++
                                    numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = uint32(block.number)
                                    numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_32 = Mask(224, 0, numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2)
                                else:
                                    if numCheckpoints[stor304[address(arg1)]].field_0 < 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[stor304[address(arg1)]].field_0 - 1 >= numCheckpoints[stor304[address(arg1)]].field_0:
                                        revert with 'NH{q', 50
                                    if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 == block.number:
                                        if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        if numCheckpoints[stor304[address(arg1)]].field_0 < 1:
                                            revert with 'NH{q', 17
                                        if numCheckpoints[stor304[address(arg1)]].field_0 - 1 >= numCheckpoints[stor304[address(arg1)]].field_0:
                                            revert with 'NH{q', 50
                                        numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = Mask(224, 0, numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2)
                                    else:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        numCheckpoints[stor304[address(arg1)]].field_0++
                                        numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = uint32(block.number)
                                        numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_32 = Mask(224, 0, numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2)
                                emit DelegateVotesChanged(numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0, numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2, delegates[address(arg1)]);
                        if totalSupply > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 'ERC20Votes: total supply risks overflowing votes'
                        if not stor306.length:
                            if 0 > -arg2 - 1:
                                revert with 'NH{q', 17
                            if stor306.length <= 0:
                                if block.number > test266151307():
                                    revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                stor306.length++
                                stor306[stor306.length].field_0 = uint32(block.number)
                                stor306[stor306.length].field_32 = Mask(224, 0, arg2)
                            else:
                                if stor306.length < 1:
                                    revert with 'NH{q', 17
                                if stor306.length - 1 >= stor306.length:
                                    revert with 'NH{q', 50
                                if stor306[stor306.length].field_0 == block.number:
                                    if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                    if stor306.length < 1:
                                        revert with 'NH{q', 17
                                    if stor306.length - 1 >= stor306.length:
                                        revert with 'NH{q', 50
                                    stor306[stor306.length].field_0 = Mask(224, 0, arg2)
                                else:
                                    if block.number > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                    if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                    stor306.length++
                                    stor306[stor306.length].field_0 = uint32(block.number)
                                    stor306[stor306.length].field_32 = Mask(224, 0, arg2)
                        else:
                            if stor306.length < 1:
                                revert with 'NH{q', 17
                            if stor306.length - 1 >= stor306.length:
                                revert with 'NH{q', 50
                            if stor306[stor306.length].field_0 > -arg2 - 1:
                                revert with 'NH{q', 17
                            if stor306.length <= 0:
                                if block.number > test266151307():
                                    revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                if stor306[stor306.length].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                stor306.length++
                                stor306[stor306.length].field_0 = uint32(block.number)
                                stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 + arg2)
                            else:
                                if stor306.length < 1:
                                    revert with 'NH{q', 17
                                if stor306.length - 1 >= stor306.length:
                                    revert with 'NH{q', 50
                                if stor306[stor306.length].field_0 == block.number:
                                    if stor306[stor306.length].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                    if stor306.length < 1:
                                        revert with 'NH{q', 17
                                    if stor306.length - 1 >= stor306.length:
                                        revert with 'NH{q', 50
                                    stor306[stor306.length].field_0 = Mask(224, 0, stor306[stor306.length].field_0 + arg2)
                                else:
                                    if block.number > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                    if stor306[stor306.length].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                    stor306.length++
                                    stor306[stor306.length].field_0 = uint32(block.number)
                                    stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 + arg2)
                    else:
                        if numCheckpoints[stor304[0]].field_0 < 1:
                            revert with 'NH{q', 17
                        if numCheckpoints[stor304[0]].field_0 - 1 >= numCheckpoints[stor304[0]].field_0:
                            revert with 'NH{q', 50
                        if numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 == block.number:
                            if numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 - arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                            if numCheckpoints[stor304[0]].field_0 < 1:
                                revert with 'NH{q', 17
                            if numCheckpoints[stor304[0]].field_0 - 1 >= numCheckpoints[stor304[0]].field_0:
                                revert with 'NH{q', 50
                            numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 = Mask(224, 0, numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 - arg2)
                            emit DelegateVotesChanged(numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0, numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 - arg2, delegates[0]);
                            if not delegates[address(arg1)]:
                                if totalSupply > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20Votes: total supply risks overflowing votes'
                                if not stor306.length:
                                    if 0 > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    if stor306.length <= 0:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        stor306.length++
                                        stor306[stor306.length].field_0 = uint32(block.number)
                                        stor306[stor306.length].field_32 = Mask(224, 0, arg2)
                                    else:
                                        if stor306.length < 1:
                                            revert with 'NH{q', 17
                                        if stor306.length - 1 >= stor306.length:
                                            revert with 'NH{q', 50
                                        if stor306[stor306.length].field_0 == block.number:
                                            if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                                            if stor306.length < 1:
                                                revert with 'NH{q', 17
                                            if stor306.length - 1 >= stor306.length:
                                                revert with 'NH{q', 50
                                            stor306[stor306.length].field_0 = Mask(224, 0, arg2)
                                        else:
                                            if block.number > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                            if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            stor306.length++
                                            stor306[stor306.length].field_0 = uint32(block.number)
                                            stor306[stor306.length].field_32 = Mask(224, 0, arg2)
                                else:
                                    if stor306.length < 1:
                                        revert with 'NH{q', 17
                                    if stor306.length - 1 >= stor306.length:
                                        revert with 'NH{q', 50
                                    if stor306[stor306.length].field_0 > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    if stor306.length <= 0:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if stor306[stor306.length].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        stor306.length++
                                        stor306[stor306.length].field_0 = uint32(block.number)
                                        stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 + arg2)
                                    else:
                                        if stor306.length < 1:
                                            revert with 'NH{q', 17
                                        if stor306.length - 1 >= stor306.length:
                                            revert with 'NH{q', 50
                                        if stor306[stor306.length].field_0 == block.number:
                                            if stor306[stor306.length].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                                            if stor306.length < 1:
                                                revert with 'NH{q', 17
                                            if stor306.length - 1 >= stor306.length:
                                                revert with 'NH{q', 50
                                            stor306[stor306.length].field_0 = Mask(224, 0, stor306[stor306.length].field_0 + arg2)
                                        else:
                                            if block.number > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                            if stor306[stor306.length].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            stor306.length++
                                            stor306[stor306.length].field_0 = uint32(block.number)
                                            stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 + arg2)
                            else:
                                if not numCheckpoints[stor304[address(arg1)]].field_0:
                                    if 0 > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[stor304[address(arg1)]].field_0 <= 0:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        numCheckpoints[stor304[address(arg1)]].field_0++
                                        numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = uint32(block.number)
                                        numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_32 = Mask(224, 0, arg2)
                                        emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
                                        if totalSupply > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'ERC20Votes: total supply risks overflowing votes'
                                        if not stor306.length:
                                            if 0 > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            if stor306.length <= 0:
                                                if block.number > test266151307():
                                                    revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                stor306.length++
                                                stor306[stor306.length].field_0 = uint32(block.number)
                                                stor306[stor306.length].field_32 = Mask(224, 0, arg2)
                                            else:
                                                if stor306.length < 1:
                                                    revert with 'NH{q', 17
                                                if stor306.length - 1 >= stor306.length:
                                                    revert with 'NH{q', 50
                                                if stor306[stor306.length].field_0 == block.number:
                                                    if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    if stor306.length < 1:
                                                        revert with 'NH{q', 17
                                                    if stor306.length - 1 >= stor306.length:
                                                        revert with 'NH{q', 50
                                                    stor306[stor306.length].field_0 = Mask(224, 0, arg2)
                                                else:
                                                    if block.number > test266151307():
                                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                    if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    stor306.length++
                                                    stor306[stor306.length].field_0 = uint32(block.number)
                                                    stor306[stor306.length].field_32 = Mask(224, 0, arg2)
                                        else:
                                            if stor306.length < 1:
                                                revert with 'NH{q', 17
                                            if stor306.length - 1 >= stor306.length:
                                                revert with 'NH{q', 50
                                            if stor306[stor306.length].field_0 > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            if stor306.length <= 0:
                                                if block.number > test266151307():
                                                    revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                if stor306[stor306.length].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                stor306.length++
                                                stor306[stor306.length].field_0 = uint32(block.number)
                                                stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 + arg2)
                                            else:
                                                if stor306.length < 1:
                                                    revert with 'NH{q', 17
                                                if stor306.length - 1 >= stor306.length:
                                                    revert with 'NH{q', 50
                                                if stor306[stor306.length].field_0 == block.number:
                                                    if stor306[stor306.length].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    if stor306.length < 1:
                                                        revert with 'NH{q', 17
                                                    if stor306.length - 1 >= stor306.length:
                                                        revert with 'NH{q', 50
                                                    stor306[stor306.length].field_0 = Mask(224, 0, stor306[stor306.length].field_0 + arg2)
                                                else:
                                                    if block.number > test266151307():
                                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                    if stor306[stor306.length].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    stor306.length++
                                                    stor306[stor306.length].field_0 = uint32(block.number)
                                                    stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 + arg2)
                                    else:
                                        if numCheckpoints[stor304[address(arg1)]].field_0 < 1:
                                            revert with 'NH{q', 17
                                        if numCheckpoints[stor304[address(arg1)]].field_0 - 1 >= numCheckpoints[stor304[address(arg1)]].field_0:
                                            revert with 'NH{q', 50
                                        if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 == block.number:
                                            if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                                            if numCheckpoints[stor304[address(arg1)]].field_0 < 1:
                                                revert with 'NH{q', 17
                                            if numCheckpoints[stor304[address(arg1)]].field_0 - 1 >= numCheckpoints[stor304[address(arg1)]].field_0:
                                                revert with 'NH{q', 50
                                            numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = Mask(224, 0, arg2)
                                            emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
                                            if totalSupply > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20Votes: total supply risks overflowing votes'
                                            if not stor306.length:
                                                if 0 > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                if stor306.length <= 0:
                                                    if block.number > test266151307():
                                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                    if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    stor306.length++
                                                    stor306[stor306.length].field_0 = uint32(block.number)
                                                    stor306[stor306.length].field_32 = Mask(224, 0, arg2)
                                                else:
                                                    if stor306.length < 1:
                                                        revert with 'NH{q', 17
                                                    if stor306.length - 1 >= stor306.length:
                                                        revert with 'NH{q', 50
                                                    if stor306[stor306.length].field_0 == block.number:
                                                        if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                                                        if stor306.length < 1:
                                                            revert with 'NH{q', 17
                                                        if stor306.length - 1 >= stor306.length:
                                                            revert with 'NH{q', 50
                                                        stor306[stor306.length].field_0 = Mask(224, 0, arg2)
                                                    else:
                                                        if block.number > test266151307():
                                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                        if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                        stor306.length++
                                                        stor306[stor306.length].field_0 = uint32(block.number)
                                                        stor306[stor306.length].field_32 = Mask(224, 0, arg2)
                                            else:
                                                if stor306.length < 1:
                                                    revert with 'NH{q', 17
                                                if stor306.length - 1 >= stor306.length:
                                                    revert with 'NH{q', 50
                                                if stor306[stor306.length].field_0 > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                if stor306.length <= 0:
                                                    if block.number > test266151307():
                                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                    if stor306[stor306.length].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    stor306.length++
                                                    stor306[stor306.length].field_0 = uint32(block.number)
                                                    stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 + arg2)
                                                else:
                                                    if stor306.length < 1:
                                                        revert with 'NH{q', 17
                                                    if stor306.length - 1 >= stor306.length:
                                                        revert with 'NH{q', 50
                                                    if stor306[stor306.length].field_0 == block.number:
                                                        if stor306[stor306.length].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                                                        if stor306.length < 1:
                                                            revert with 'NH{q', 17
                                                        if stor306.length - 1 >= stor306.length:
                                                            revert with 'NH{q', 50
                                                        stor306[stor306.length].field_0 = Mask(224, 0, stor306[stor306.length].field_0 + arg2)
                                                    else:
                                                        if block.number > test266151307():
                                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                        if stor306[stor306.length].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                        stor306.length++
                                                        stor306[stor306.length].field_0 = uint32(block.number)
                                                        stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 + arg2)
                                        else:
                                            if block.number > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                            if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            numCheckpoints[stor304[address(arg1)]].field_0++
                                            numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = uint32(block.number)
                                            numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_32 = Mask(224, 0, arg2)
                                            emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
                                            if totalSupply > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'ERC20Votes: total supply risks overflowing votes'
                                            if not stor306.length:
                                                if 0 > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                if stor306.length <= 0:
                                                    if block.number > test266151307():
                                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                    if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    stor306.length++
                                                    stor306[stor306.length].field_0 = uint32(block.number)
                                                    stor306[stor306.length].field_32 = Mask(224, 0, arg2)
                                                else:
                                                    if stor306.length < 1:
                                                        revert with 'NH{q', 17
                                                    if stor306.length - 1 >= stor306.length:
                                                        revert with 'NH{q', 50
                                                    if stor306[stor306.length].field_0 == block.number:
                                                        if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                        if stor306.length < 1:
                                                            revert with 'NH{q', 17
                                                        if stor306.length - 1 >= stor306.length:
                                                            revert with 'NH{q', 50
                                                        stor306[stor306.length].field_0 = Mask(224, 0, arg2)
                                                    else:
                                                        if block.number > test266151307():
                                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                        if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                        stor306.length++
                                                        stor306[stor306.length].field_0 = uint32(block.number)
                                                        stor306[stor306.length].field_32 = Mask(224, 0, arg2)
                                            else:
                                                if stor306.length < 1:
                                                    revert with 'NH{q', 17
                                                if stor306.length - 1 >= stor306.length:
                                                    revert with 'NH{q', 50
                                                if stor306[stor306.length].field_0 > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                if stor306.length <= 0:
                                                    if block.number > test266151307():
                                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                    if stor306[stor306.length].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    stor306.length++
                                                    stor306[stor306.length].field_0 = uint32(block.number)
                                                    stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 + arg2)
                                                else:
                                                    if stor306.length < 1:
                                                        revert with 'NH{q', 17
                                                    if stor306.length - 1 >= stor306.length:
                                                        revert with 'NH{q', 50
                                                    if stor306[stor306.length].field_0 == block.number:
                                                        if stor306[stor306.length].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                        if stor306.length < 1:
                                                            revert with 'NH{q', 17
                                                        if stor306.length - 1 >= stor306.length:
                                                            revert with 'NH{q', 50
                                                        stor306[stor306.length].field_0 = Mask(224, 0, stor306[stor306.length].field_0 + arg2)
                                                    else:
                                                        if block.number > test266151307():
                                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                        if stor306[stor306.length].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                        stor306.length++
                                                        stor306[stor306.length].field_0 = uint32(block.number)
                                                        stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 + arg2)
                                else:
                                    if numCheckpoints[stor304[address(arg1)]].field_0 < 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[stor304[address(arg1)]].field_0 - 1 >= numCheckpoints[stor304[address(arg1)]].field_0:
                                        revert with 'NH{q', 50
                                    if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[stor304[address(arg1)]].field_0 <= 0:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        numCheckpoints[stor304[address(arg1)]].field_0++
                                        numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = uint32(block.number)
                                        numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_32 = Mask(224, 0, numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2)
                                        emit DelegateVotesChanged(numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0, numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2, delegates[address(arg1)]);
                                        if totalSupply > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'ERC20Votes: total supply risks overflowing votes'
                                        if not stor306.length:
                                            if 0 > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            if stor306.length <= 0:
                                                if block.number > test266151307():
                                                    revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                stor306.length++
                                                stor306[stor306.length].field_0 = uint32(block.number)
                                                stor306[stor306.length].field_32 = Mask(224, 0, arg2)
                                            else:
                                                if stor306.length < 1:
                                                    revert with 'NH{q', 17
                                                if stor306.length - 1 >= stor306.length:
                                                    revert with 'NH{q', 50
                                                if stor306[stor306.length].field_0 == block.number:
                                                    if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    if stor306.length < 1:
                                                        revert with 'NH{q', 17
                                                    if stor306.length - 1 >= stor306.length:
                                                        revert with 'NH{q', 50
                                                    stor306[stor306.length].field_0 = Mask(224, 0, arg2)
                                                else:
                                                    if block.number > test266151307():
                                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                    if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    stor306.length++
                                                    stor306[stor306.length].field_0 = uint32(block.number)
                                                    stor306[stor306.length].field_32 = Mask(224, 0, arg2)
                                        else:
                                            if stor306.length < 1:
                                                revert with 'NH{q', 17
                                            if stor306.length - 1 >= stor306.length:
                                                revert with 'NH{q', 50
                                            if stor306[stor306.length].field_0 > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            if stor306.length <= 0:
                                                if block.number > test266151307():
                                                    revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                if stor306[stor306.length].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                stor306.length++
                                                stor306[stor306.length].field_0 = uint32(block.number)
                                                stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 + arg2)
                                            else:
                                                if stor306.length < 1:
                                                    revert with 'NH{q', 17
                                                if stor306.length - 1 >= stor306.length:
                                                    revert with 'NH{q', 50
                                                if stor306[stor306.length].field_0 == block.number:
                                                    if stor306[stor306.length].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    if stor306.length < 1:
                                                        revert with 'NH{q', 17
                                                    if stor306.length - 1 >= stor306.length:
                                                        revert with 'NH{q', 50
                                                    stor306[stor306.length].field_0 = Mask(224, 0, stor306[stor306.length].field_0 + arg2)
                                                else:
                                                    if block.number > test266151307():
                                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                    if stor306[stor306.length].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    stor306.length++
                                                    stor306[stor306.length].field_0 = uint32(block.number)
                                                    stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 + arg2)
                                    else:
                                        if numCheckpoints[stor304[address(arg1)]].field_0 < 1:
                                            revert with 'NH{q', 17
                                        if numCheckpoints[stor304[address(arg1)]].field_0 - 1 >= numCheckpoints[stor304[address(arg1)]].field_0:
                                            revert with 'NH{q', 50
                                        if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 == block.number:
                                            if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                                            if numCheckpoints[stor304[address(arg1)]].field_0 < 1:
                                                revert with 'NH{q', 17
                                            if numCheckpoints[stor304[address(arg1)]].field_0 - 1 >= numCheckpoints[stor304[address(arg1)]].field_0:
                                                revert with 'NH{q', 50
                                            numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = Mask(224, 0, numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2)
                                            emit DelegateVotesChanged(numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0, numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2, delegates[address(arg1)]);
                                            if totalSupply > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20Votes: total supply risks overflowing votes'
                                            if not stor306.length:
                                                if 0 > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                if stor306.length <= 0:
                                                    if block.number > test266151307():
                                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                    if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    stor306.length++
                                                    stor306[stor306.length].field_0 = uint32(block.number)
                                                    stor306[stor306.length].field_32 = Mask(224, 0, arg2)
                                                else:
                                                    if stor306.length < 1:
                                                        revert with 'NH{q', 17
                                                    if stor306.length - 1 >= stor306.length:
                                                        revert with 'NH{q', 50
                                                    if stor306[stor306.length].field_0 == block.number:
                                                        if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                                                        if stor306.length < 1:
                                                            revert with 'NH{q', 17
                                                        if stor306.length - 1 >= stor306.length:
                                                            revert with 'NH{q', 50
                                                        stor306[stor306.length].field_0 = Mask(224, 0, arg2)
                                                    else:
                                                        if block.number > test266151307():
                                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                        if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                        stor306.length++
                                                        stor306[stor306.length].field_0 = uint32(block.number)
                                                        stor306[stor306.length].field_32 = Mask(224, 0, arg2)
                                            else:
                                                if stor306.length < 1:
                                                    revert with 'NH{q', 17
                                                if stor306.length - 1 >= stor306.length:
                                                    revert with 'NH{q', 50
                                                if stor306[stor306.length].field_0 > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                if stor306.length <= 0:
                                                    if block.number > test266151307():
                                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                    if stor306[stor306.length].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    stor306.length++
                                                    stor306[stor306.length].field_0 = uint32(block.number)
                                                    stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 + arg2)
                                                else:
                                                    if stor306.length < 1:
                                                        revert with 'NH{q', 17
                                                    if stor306.length - 1 >= stor306.length:
                                                        revert with 'NH{q', 50
                                                    if stor306[stor306.length].field_0 == block.number:
                                                        if stor306[stor306.length].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 224 bits'
                                                        if stor306.length < 1:
                                                            revert with 'NH{q', 17
                                                        if stor306.length - 1 >= stor306.length:
                                                            revert with 'NH{q', 50
                                                        stor306[stor306.length].field_0 = Mask(224, 0, stor306[stor306.length].field_0 + arg2)
                                                    else:
                                                        if block.number > test266151307():
                                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                        if stor306[stor306.length].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                        stor306.length++
                                                        stor306[stor306.length].field_0 = uint32(block.number)
                                                        stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 + arg2)
                                        else:
                                            if block.number > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                            if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            numCheckpoints[stor304[address(arg1)]].field_0++
                                            numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = uint32(block.number)
                                            numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_32 = Mask(224, 0, numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2)
                                            emit DelegateVotesChanged(numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0, numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2, delegates[address(arg1)]);
                                            if totalSupply > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'ERC20Votes: total supply risks overflowing votes'
                                            if not stor306.length:
                                                if 0 > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                if stor306.length <= 0:
                                                    if block.number > test266151307():
                                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                    if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    stor306.length++
                                                    stor306[stor306.length].field_0 = uint32(block.number)
                                                    stor306[stor306.length].field_32 = Mask(224, 0, arg2)
                                                else:
                                                    if stor306.length < 1:
                                                        revert with 'NH{q', 17
                                                    if stor306.length - 1 >= stor306.length:
                                                        revert with 'NH{q', 50
                                                    if stor306[stor306.length].field_0 == block.number:
                                                        if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                        if stor306.length < 1:
                                                            revert with 'NH{q', 17
                                                        if stor306.length - 1 >= stor306.length:
                                                            revert with 'NH{q', 50
                                                        stor306[stor306.length].field_0 = Mask(224, 0, arg2)
                                                    else:
                                                        if block.number > test266151307():
                                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                        if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                        stor306.length++
                                                        stor306[stor306.length].field_0 = uint32(block.number)
                                                        stor306[stor306.length].field_32 = Mask(224, 0, arg2)
                                            else:
                                                if stor306.length < 1:
                                                    revert with 'NH{q', 17
                                                if stor306.length - 1 >= stor306.length:
                                                    revert with 'NH{q', 50
                                                if stor306[stor306.length].field_0 > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                if stor306.length <= 0:
                                                    if block.number > test266151307():
                                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                    if stor306[stor306.length].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                    stor306.length++
                                                    stor306[stor306.length].field_0 = uint32(block.number)
                                                    stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 + arg2)
                                                else:
                                                    if stor306.length < 1:
                                                        revert with 'NH{q', 17
                                                    if stor306.length - 1 >= stor306.length:
                                                        revert with 'NH{q', 50
                                                    if stor306[stor306.length].field_0 == block.number:
                                                        if stor306[stor306.length].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                        if stor306.length < 1:
                                                            revert with 'NH{q', 17
                                                        if stor306.length - 1 >= stor306.length:
                                                            revert with 'NH{q', 50
                                                        stor306[stor306.length].field_0 = Mask(224, 0, stor306[stor306.length].field_0 + arg2)
                                                    else:
                                                        if block.number > test266151307():
                                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                                        if stor306[stor306.length].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                                        stor306.length++
                                                        stor306[stor306.length].field_0 = uint32(block.number)
                                                        stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 + arg2)
                        else:
                            if block.number > test266151307():
                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                            if numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 - arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                            numCheckpoints[stor304[0]].field_0++
                            numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 = uint32(block.number)
                            numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_32 = Mask(224, 0, numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 - arg2)
                            emit DelegateVotesChanged(numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0, numCheckpoints[stor304[0]][numCheckpoints[stor304[0]].field_0].field_0 - arg2, delegates[0]);
                            if delegates[address(arg1)]:
                                if not numCheckpoints[stor304[address(arg1)]].field_0:
                                    if 0 > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[stor304[address(arg1)]].field_0 <= 0:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        numCheckpoints[stor304[address(arg1)]].field_0++
                                        numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = uint32(block.number)
                                        numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_32 = Mask(224, 0, arg2)
                                    else:
                                        if numCheckpoints[stor304[address(arg1)]].field_0 < 1:
                                            revert with 'NH{q', 17
                                        if numCheckpoints[stor304[address(arg1)]].field_0 - 1 >= numCheckpoints[stor304[address(arg1)]].field_0:
                                            revert with 'NH{q', 50
                                        if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 == block.number:
                                            if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            if numCheckpoints[stor304[address(arg1)]].field_0 < 1:
                                                revert with 'NH{q', 17
                                            if numCheckpoints[stor304[address(arg1)]].field_0 - 1 >= numCheckpoints[stor304[address(arg1)]].field_0:
                                                revert with 'NH{q', 50
                                            numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = Mask(224, 0, arg2)
                                        else:
                                            if block.number > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                            if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            numCheckpoints[stor304[address(arg1)]].field_0++
                                            numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = uint32(block.number)
                                            numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_32 = Mask(224, 0, arg2)
                                    emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
                                else:
                                    if numCheckpoints[stor304[address(arg1)]].field_0 < 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[stor304[address(arg1)]].field_0 - 1 >= numCheckpoints[stor304[address(arg1)]].field_0:
                                        revert with 'NH{q', 50
                                    if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    if numCheckpoints[stor304[address(arg1)]].field_0 <= 0:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        numCheckpoints[stor304[address(arg1)]].field_0++
                                        numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = uint32(block.number)
                                        numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_32 = Mask(224, 0, numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2)
                                    else:
                                        if numCheckpoints[stor304[address(arg1)]].field_0 < 1:
                                            revert with 'NH{q', 17
                                        if numCheckpoints[stor304[address(arg1)]].field_0 - 1 >= numCheckpoints[stor304[address(arg1)]].field_0:
                                            revert with 'NH{q', 50
                                        if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 == block.number:
                                            if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            if numCheckpoints[stor304[address(arg1)]].field_0 < 1:
                                                revert with 'NH{q', 17
                                            if numCheckpoints[stor304[address(arg1)]].field_0 - 1 >= numCheckpoints[stor304[address(arg1)]].field_0:
                                                revert with 'NH{q', 50
                                            numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = Mask(224, 0, numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2)
                                        else:
                                            if block.number > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                            if numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                            numCheckpoints[stor304[address(arg1)]].field_0++
                                            numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 = uint32(block.number)
                                            numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_32 = Mask(224, 0, numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2)
                                    emit DelegateVotesChanged(numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0, numCheckpoints[stor304[address(arg1)]][numCheckpoints[stor304[address(arg1)]].field_0].field_0 + arg2, delegates[address(arg1)]);
                            if totalSupply > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 'ERC20Votes: total supply risks overflowing votes'
                            if not stor306.length:
                                if 0 > -arg2 - 1:
                                    revert with 'NH{q', 17
                                if stor306.length <= 0:
                                    if block.number > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                    if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                    stor306.length++
                                    stor306[stor306.length].field_0 = uint32(block.number)
                                    stor306[stor306.length].field_32 = Mask(224, 0, arg2)
                                else:
                                    if stor306.length < 1:
                                        revert with 'NH{q', 17
                                    if stor306.length - 1 >= stor306.length:
                                        revert with 'NH{q', 50
                                    if stor306[stor306.length].field_0 == block.number:
                                        if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        if stor306.length < 1:
                                            revert with 'NH{q', 17
                                        if stor306.length - 1 >= stor306.length:
                                            revert with 'NH{q', 50
                                        stor306[stor306.length].field_0 = Mask(224, 0, arg2)
                                    else:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        stor306.length++
                                        stor306[stor306.length].field_0 = uint32(block.number)
                                        stor306[stor306.length].field_32 = Mask(224, 0, arg2)
                            else:
                                if stor306.length < 1:
                                    revert with 'NH{q', 17
                                if stor306.length - 1 >= stor306.length:
                                    revert with 'NH{q', 50
                                if stor306[stor306.length].field_0 > -arg2 - 1:
                                    revert with 'NH{q', 17
                                if stor306.length <= 0:
                                    if block.number > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                    if stor306[stor306.length].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                    stor306.length++
                                    stor306[stor306.length].field_0 = uint32(block.number)
                                    stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 + arg2)
                                else:
                                    if stor306.length < 1:
                                        revert with 'NH{q', 17
                                    if stor306.length - 1 >= stor306.length:
                                        revert with 'NH{q', 50
                                    if stor306[stor306.length].field_0 == block.number:
                                        if stor306[stor306.length].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        if stor306.length < 1:
                                            revert with 'NH{q', 17
                                        if stor306.length - 1 >= stor306.length:
                                            revert with 'NH{q', 50
                                        stor306[stor306.length].field_0 = Mask(224, 0, stor306[stor306.length].field_0 + arg2)
                                    else:
                                        if block.number > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 32 bits'
                                        if stor306[stor306.length].field_0 + arg2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'SafeCast: value doesn't fit in 224 bits'
                                        stor306.length++
                                        stor306[stor306.length].field_0 = uint32(block.number)
                                        stor306[stor306.length].field_32 = Mask(224, 0, stor306[stor306.length].field_0 + arg2)
}



}
