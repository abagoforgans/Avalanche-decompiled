contract main {




// =====================  Runtime code  =====================


#
#  - initialize()
#
const decimals = 18


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor54;
array of struct stor55;
array of struct stor151;
array of uint256 stor152;
array of uint256 stor153;
uint256 stor154;
address owner;
uint8 paused;
uint256 stor301;
uint256 stor302;
mapping of uint256 nonces;
uint256 stor354;

function totalSupply() payable {
    return totalSupply
}

function paused() payable {
    return bool(paused)
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
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

function _fallback() payable {
    revert
}

function snapshot() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor154++
    emit Snapshot(stor154);
}

function DOMAIN_SEPARATOR() payable {
    return sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, stor301, stor302, chainid, this.address)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function pause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
}

function unpause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
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

function totalSupplyAt(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 <= 0:
        revert with 0, 'ERC20Snapshot: id is 0'
    if arg1 > stor154:
        revert with 0, 'ERC20Snapshot: nonexistent id'
    if stor152.length:
        idx = stor152.length
        while 0 < idx:
            if 0 > -(0 xor idx / 2) - 1:
                revert with 'NH{q', 17
            if 0 xor idx / 2 >= stor152.length:
                revert with 'NH{q', 50
            mem[0] = 152
            if stor152[0.5 / 0 xor idx] > arg1:
                idx = 0 xor idx / 2
                continue 
            if 0 xor idx / 2 > -2:
                revert with 'NH{q', 17
            idx = idx
            continue 
    if 0 == stor152.length:
        return totalSupply
    if 0 >= stor153.length:
        revert with 'NH{q', 50
    return stor153
}

function balanceOfAt(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    mem[0] = arg1
    if arg2 <= 0:
        revert with 0, 'ERC20Snapshot: id is 0'
    if arg2 > stor154:
        revert with 0, 'ERC20Snapshot: nonexistent id'
    if stor151[address(arg1)].field_0:
        idx = stor151[mem[0]].field_0
        while 0 < idx:
            if 0 > -(0 xor idx / 2) - 1:
                revert with 'NH{q', 17
            if 0 xor idx / 2 >= stor151[address(arg1)].field_0:
                revert with 'NH{q', 50
            mem[0] = sha3(address(arg1), 151)
            if stor151[address(arg1)][0.5 / 0 xor idx].field_0 > arg2:
                idx = 0 xor idx / 2
                continue 
            if 0 xor idx / 2 > -2:
                revert with 'NH{q', 17
            idx = idx
            continue 
    if 0 == stor151[address(arg1)].field_0:
        return balanceOf[address(arg1)]
    if 0 >= stor151[address(arg1)].field_256:
        revert with 'NH{q', 50
    return stor151[address(arg1)][1].field_0
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
    signer = erecover(sha3(0, sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, stor301, stor302, chainid, this.address), sha3(stor354, address(arg1), address(arg2), arg3, nonces[address(arg1)], arg4)), arg5 << 248, arg6, arg7) 
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

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if paused:
        revert with 0, 'Pausable: paused'
    if msg.sender:
        if not stor151[address(msg.sender)].field_0:
            if 0 < stor154:
                stor151[address(msg.sender)].field_0++
                stor151[address(msg.sender)][stor151[address(msg.sender)].field_0].field_0 = stor154
                stor151[address(msg.sender)].field_256++
                stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor151', 151))) + stor151[address(msg.sender)].field_256].field_0 = balanceOf[address(msg.sender)]
        else:
            if stor151[address(msg.sender)].field_0 < 1:
                revert with 'NH{q', 17
            if stor151[address(msg.sender)].field_0 - 1 >= stor151[address(msg.sender)].field_0:
                revert with 'NH{q', 50
            if stor151[address(msg.sender)][stor151[address(msg.sender)].field_0].field_0 < stor154:
                stor151[address(msg.sender)].field_0++
                stor151[address(msg.sender)][stor151[address(msg.sender)].field_0].field_0 = stor154
                stor151[address(msg.sender)].field_256++
                stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor151', 151))) + stor151[address(msg.sender)].field_256].field_0 = balanceOf[address(msg.sender)]
    else:
        if not stor151[0].field_0:
            if 0 < stor154:
                stor151[0].field_0++
                stor151[0][stor151[0].field_0].field_0 = stor154
                stor151[0].field_256++
                stor[('array', 1, ('map', 0, ('name', 'stor151', 151))) + stor151[0].field_256].field_0 = balanceOf[0]
        else:
            if stor151[0].field_0 < 1:
                revert with 'NH{q', 17
            if stor151[0].field_0 - 1 >= stor151[0].field_0:
                revert with 'NH{q', 50
            if stor151[0][stor151[0].field_0].field_0 < stor154:
                stor151[0].field_0++
                stor151[0][stor151[0].field_0].field_0 = stor154
                stor151[0].field_256++
                stor[('array', 1, ('map', 0, ('name', 'stor151', 151))) + stor151[0].field_256].field_0 = balanceOf[0]
    if not stor152.length:
        if 0 < stor154:
            stor152.length++
            stor152[stor152.length] = stor154
            stor153.length++
            stor153[stor153.length] = totalSupply
    else:
        if stor152.length < 1:
            revert with 'NH{q', 17
        if stor152.length - 1 >= stor152.length:
            revert with 'NH{q', 50
        if stor152[stor152.length] < stor154:
            stor152.length++
            stor152[stor152.length] = stor154
            stor153.length++
            stor153[stor153.length] = totalSupply
    if balanceOf[address(msg.sender)] < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg1
    if totalSupply < arg1:
        revert with 'NH{q', 17
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
}

function burnFrom(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(arg1)][address(msg.sender)] != -1:
        if allowance[address(arg1)][address(msg.sender)] < arg2:
            revert with 0, 'ERC20: insufficient allowance'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
        allowance[address(arg1)][address(msg.sender)] -= arg2
        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if paused:
        revert with 0, 'Pausable: paused'
    if arg1:
        if not stor151[address(arg1)].field_0:
            if 0 < stor154:
                stor151[address(arg1)].field_0++
                stor151[address(arg1)][stor151[address(arg1)].field_0].field_0 = stor154
                stor151[address(arg1)].field_256++
                stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor151', 151))) + stor151[address(arg1)].field_256].field_0 = balanceOf[address(arg1)]
        else:
            if stor151[address(arg1)].field_0 < 1:
                revert with 'NH{q', 17
            if stor151[address(arg1)].field_0 - 1 >= stor151[address(arg1)].field_0:
                revert with 'NH{q', 50
            if stor151[address(arg1)][stor151[address(arg1)].field_0].field_0 < stor154:
                stor151[address(arg1)].field_0++
                stor151[address(arg1)][stor151[address(arg1)].field_0].field_0 = stor154
                stor151[address(arg1)].field_256++
                stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor151', 151))) + stor151[address(arg1)].field_256].field_0 = balanceOf[address(arg1)]
    else:
        if not stor151[0].field_0:
            if 0 < stor154:
                stor151[0].field_0++
                stor151[0][stor151[0].field_0].field_0 = stor154
                stor151[0].field_256++
                stor[('array', 1, ('map', 0, ('name', 'stor151', 151))) + stor151[0].field_256].field_0 = balanceOf[0]
        else:
            if stor151[0].field_0 < 1:
                revert with 'NH{q', 17
            if stor151[0].field_0 - 1 >= stor151[0].field_0:
                revert with 'NH{q', 50
            if stor151[0][stor151[0].field_0].field_0 < stor154:
                stor151[0].field_0++
                stor151[0][stor151[0].field_0].field_0 = stor154
                stor151[0].field_256++
                stor[('array', 1, ('map', 0, ('name', 'stor151', 151))) + stor151[0].field_256].field_0 = balanceOf[0]
    if not stor152.length:
        if 0 < stor154:
            stor152.length++
            stor152[stor152.length] = stor154
            stor153.length++
            stor153[stor153.length] = totalSupply
    else:
        if stor152.length < 1:
            revert with 'NH{q', 17
        if stor152.length - 1 >= stor152.length:
            revert with 'NH{q', 50
        if stor152[stor152.length] < stor154:
            stor152.length++
            stor152[stor152.length] = stor154
            stor153.length++
            stor153[stor153.length] = totalSupply
    if balanceOf[address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
    balanceOf[address(arg1)] -= arg2
    if totalSupply < arg2:
        revert with 'NH{q', 17
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
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
    if paused:
        revert with 0, 'Pausable: paused'
    if not msg.sender:
        if not stor151[address(arg1)].field_0:
            if 0 < stor154:
                stor151[address(arg1)].field_0++
                stor151[address(arg1)][stor151[address(arg1)].field_0].field_0 = stor154
                stor151[address(arg1)].field_256++
                stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor151', 151))) + stor151[address(arg1)].field_256].field_0 = balanceOf[address(arg1)]
        else:
            if stor151[address(arg1)].field_0 < 1:
                revert with 'NH{q', 17
            if stor151[address(arg1)].field_0 - 1 >= stor151[address(arg1)].field_0:
                revert with 'NH{q', 50
            if stor151[address(arg1)][stor151[address(arg1)].field_0].field_0 < stor154:
                stor151[address(arg1)].field_0++
                stor151[address(arg1)][stor151[address(arg1)].field_0].field_0 = stor154
                stor151[address(arg1)].field_256++
                stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor151', 151))) + stor151[address(arg1)].field_256].field_0 = balanceOf[address(arg1)]
        if not stor152.length:
            if 0 < stor154:
                stor152.length++
                stor152[stor152.length] = stor154
                stor153.length++
                stor153[stor153.length] = totalSupply
        else:
            if stor152.length < 1:
                revert with 'NH{q', 17
            if stor152.length - 1 >= stor152.length:
                revert with 'NH{q', 50
            if stor152[stor152.length] < stor154:
                stor152.length++
                stor152[stor152.length] = stor154
                stor153.length++
                stor153[stor153.length] = totalSupply
    else:
        if not stor151[address(msg.sender)].field_0:
            if 0 < stor154:
                stor151[address(msg.sender)].field_0++
                stor151[address(msg.sender)][stor151[address(msg.sender)].field_0].field_0 = stor154
                stor151[address(msg.sender)].field_256++
                stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor151', 151))) + stor151[address(msg.sender)].field_256].field_0 = balanceOf[address(msg.sender)]
        else:
            if stor151[address(msg.sender)].field_0 < 1:
                revert with 'NH{q', 17
            if stor151[address(msg.sender)].field_0 - 1 >= stor151[address(msg.sender)].field_0:
                revert with 'NH{q', 50
            if stor151[address(msg.sender)][stor151[address(msg.sender)].field_0].field_0 < stor154:
                stor151[address(msg.sender)].field_0++
                stor151[address(msg.sender)][stor151[address(msg.sender)].field_0].field_0 = stor154
                stor151[address(msg.sender)].field_256++
                stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor151', 151))) + stor151[address(msg.sender)].field_256].field_0 = balanceOf[address(msg.sender)]
        if arg1:
            if not stor151[address(arg1)].field_0:
                if 0 < stor154:
                    stor151[address(arg1)].field_0++
                    stor151[address(arg1)][stor151[address(arg1)].field_0].field_0 = stor154
                    stor151[address(arg1)].field_256++
                    stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor151', 151))) + stor151[address(arg1)].field_256].field_0 = balanceOf[address(arg1)]
            else:
                if stor151[address(arg1)].field_0 < 1:
                    revert with 'NH{q', 17
                if stor151[address(arg1)].field_0 - 1 >= stor151[address(arg1)].field_0:
                    revert with 'NH{q', 50
                if stor151[address(arg1)][stor151[address(arg1)].field_0].field_0 < stor154:
                    stor151[address(arg1)].field_0++
                    stor151[address(arg1)][stor151[address(arg1)].field_0].field_0 = stor154
                    stor151[address(arg1)].field_256++
                    stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor151', 151))) + stor151[address(arg1)].field_256].field_0 = balanceOf[address(arg1)]
        else:
            if not stor152.length:
                if 0 < stor154:
                    stor152.length++
                    stor152[stor152.length] = stor154
                    stor153.length++
                    stor153[stor153.length] = totalSupply
            else:
                if stor152.length < 1:
                    revert with 'NH{q', 17
                if stor152.length - 1 >= stor152.length:
                    revert with 'NH{q', 50
                if stor152[stor152.length] < stor154:
                    stor152.length++
                    stor152[stor152.length] = stor154
                    stor153.length++
                    stor153[stor153.length] = totalSupply
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
    if paused:
        revert with 0, 'Pausable: paused'
    if not arg1:
        if not stor151[address(arg2)].field_0:
            if 0 < stor154:
                stor151[address(arg2)].field_0++
                stor151[address(arg2)][stor151[address(arg2)].field_0].field_0 = stor154
                stor151[address(arg2)].field_256++
                stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'stor151', 151))) + stor151[address(arg2)].field_256].field_0 = balanceOf[address(arg2)]
        else:
            if stor151[address(arg2)].field_0 < 1:
                revert with 'NH{q', 17
            if stor151[address(arg2)].field_0 - 1 >= stor151[address(arg2)].field_0:
                revert with 'NH{q', 50
            if stor151[address(arg2)][stor151[address(arg2)].field_0].field_0 < stor154:
                stor151[address(arg2)].field_0++
                stor151[address(arg2)][stor151[address(arg2)].field_0].field_0 = stor154
                stor151[address(arg2)].field_256++
                stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'stor151', 151))) + stor151[address(arg2)].field_256].field_0 = balanceOf[address(arg2)]
        if not stor152.length:
            if 0 < stor154:
                stor152.length++
                stor152[stor152.length] = stor154
                stor153.length++
                stor153[stor153.length] = totalSupply
        else:
            if stor152.length < 1:
                revert with 'NH{q', 17
            if stor152.length - 1 >= stor152.length:
                revert with 'NH{q', 50
            if stor152[stor152.length] < stor154:
                stor152.length++
                stor152[stor152.length] = stor154
                stor153.length++
                stor153[stor153.length] = totalSupply
    else:
        if not stor151[address(arg1)].field_0:
            if 0 < stor154:
                stor151[address(arg1)].field_0++
                stor151[address(arg1)][stor151[address(arg1)].field_0].field_0 = stor154
                stor151[address(arg1)].field_256++
                stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor151', 151))) + stor151[address(arg1)].field_256].field_0 = balanceOf[address(arg1)]
        else:
            if stor151[address(arg1)].field_0 < 1:
                revert with 'NH{q', 17
            if stor151[address(arg1)].field_0 - 1 >= stor151[address(arg1)].field_0:
                revert with 'NH{q', 50
            if stor151[address(arg1)][stor151[address(arg1)].field_0].field_0 < stor154:
                stor151[address(arg1)].field_0++
                stor151[address(arg1)][stor151[address(arg1)].field_0].field_0 = stor154
                stor151[address(arg1)].field_256++
                stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor151', 151))) + stor151[address(arg1)].field_256].field_0 = balanceOf[address(arg1)]
        if arg2:
            if not stor151[address(arg2)].field_0:
                if 0 < stor154:
                    stor151[address(arg2)].field_0++
                    stor151[address(arg2)][stor151[address(arg2)].field_0].field_0 = stor154
                    stor151[address(arg2)].field_256++
                    stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'stor151', 151))) + stor151[address(arg2)].field_256].field_0 = balanceOf[address(arg2)]
            else:
                if stor151[address(arg2)].field_0 < 1:
                    revert with 'NH{q', 17
                if stor151[address(arg2)].field_0 - 1 >= stor151[address(arg2)].field_0:
                    revert with 'NH{q', 50
                if stor151[address(arg2)][stor151[address(arg2)].field_0].field_0 < stor154:
                    stor151[address(arg2)].field_0++
                    stor151[address(arg2)][stor151[address(arg2)].field_0].field_0 = stor154
                    stor151[address(arg2)].field_256++
                    stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'stor151', 151))) + stor151[address(arg2)].field_256].field_0 = balanceOf[address(arg2)]
        else:
            if not stor152.length:
                if 0 < stor154:
                    stor152.length++
                    stor152[stor152.length] = stor154
                    stor153.length++
                    stor153[stor153.length] = totalSupply
            else:
                if stor152.length < 1:
                    revert with 'NH{q', 17
                if stor152.length - 1 >= stor152.length:
                    revert with 'NH{q', 50
                if stor152[stor152.length] < stor154:
                    stor152.length++
                    stor152[stor152.length] = stor154
                    stor153.length++
                    stor153[stor153.length] = totalSupply
    if balanceOf[address(arg1)] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(arg1)] -= arg3
    if balanceOf[address(arg2)] > -arg3 - 1:
        revert with 'NH{q', 17
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
