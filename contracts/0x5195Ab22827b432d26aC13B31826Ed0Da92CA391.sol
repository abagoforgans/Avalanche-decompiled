contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
uint8 stor2;
mapping of struct stor3;

function paused() payable {
    return bool(stor2)
}

function owner() payable {
    return owner
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

function setPaused(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        if not stor2:
            revert with 0, 'Pausable: not paused'
        stor2 = 0
        emit Unpaused(msg.sender);
    else:
        if stor2:
            revert with 0, 'Pausable: paused'
        stor2 = 1
        emit Paused(msg.sender);
}

function sub_fbee436d(?) payable {
    if stor2:
        revert with 0, 'Pausable: paused'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if tx.origin != msg.sender:
        revert with 0, 'Name: Only EOA'
    if stor3[msg.sender].field_0:
        if stor3[msg.sender].field_0 == uint255(stor3[msg.sender].field_0) * 0.5 < 32:
            revert with 0, 34
        stor3[msg.sender].field_0 = 0
        if 31 < uint255(stor3[msg.sender].field_0) * 0.5:
            idx = 0
            while (uint255(stor3[msg.sender].field_0) * 0.5) + 31 / 32 > idx:
                stor3[msg.sender][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor3[msg.sender].field_0 == stor3[msg.sender].field_1 < 32:
            revert with 0, 34
        stor3[msg.sender].field_0 = 0
        if 31 < stor3[msg.sender].field_1:
            idx = 0
            while stor3[msg.sender].field_1 + 31 / 32 > idx:
                stor3[msg.sender][idx].field_0 = 0
                idx = idx + 1
                continue 
    emit 0xd5c8b3cd: msg.sender
    stor1 = 1
}

function sub_a86028a9(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor3[address(arg1)].field_0:
        if stor3[address(arg1)].field_0 == uint255(stor3[address(arg1)].field_0) * 0.5 < 32:
            revert with 0, 34
        if arg2.length:
            stor3[address(arg1)][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor3[address(arg1)].field_0 = 0
            idx = 0
            while (uint255(stor3[address(arg1)].field_0) * 0.5) + 31 / 32 > idx:
                stor3[address(arg1)][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor3[address(arg1)].field_0 == stor3[address(arg1)].field_1 < 32:
            revert with 0, 34
        if arg2.length:
            stor3[address(arg1)][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor3[address(arg1)].field_0 = 0
            idx = 0
            while stor3[address(arg1)].field_1 + 31 / 32 > idx:
                stor3[address(arg1)][idx].field_0 = 0
                idx = idx + 1
                continue 
}

function setName(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if stor2:
        revert with 0, 'Pausable: paused'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if tx.origin != msg.sender:
        revert with 0, 'Name: Only EOA'
    if stor3[msg.sender].field_0:
        if stor3[msg.sender].field_0 == uint255(stor3[msg.sender].field_0) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor3[msg.sender][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor3[msg.sender].field_0 = 0
            idx = 0
            while (uint255(stor3[msg.sender].field_0) * 0.5) + 31 / 32 > idx:
                stor3[msg.sender][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor3[msg.sender].field_0 == stor3[msg.sender].field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor3[msg.sender][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor3[msg.sender].field_0 = 0
            idx = 0
            while stor3[msg.sender].field_1 + 31 / 32 > idx:
                stor3[msg.sender][idx].field_0 = 0
                idx = idx + 1
                continue 
    emit NameSet(Array(len=arg1.length, data=arg1[all]), msg.sender);
    stor1 = 1
}

function sub_f753fc0a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor3[arg1].field_0:
        if stor3[arg1].field_0 == uint255(stor3[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if stor3[arg1].field_0:
            if stor3[arg1].field_0 == uint255(stor3[arg1].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor3[arg1].field_0):
                if 31 < uint255(stor3[arg1].field_0) * 0.5:
                    mem[128] = stor3[arg1].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor3[arg1].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor3[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3[arg1].field_0), data=mem[128 len ceil32(uint255(stor3[arg1].field_0) * 0.5)])
                mem[128] = 256 * stor3[arg1].field_8
        else:
            if stor3[arg1].field_0 == stor3[arg1].field_1 < 32:
                revert with 0, 34
            if stor3[arg1].field_1:
                if 31 < stor3[arg1].field_1:
                    mem[128] = stor3[arg1].field_0
                    idx = 128
                    s = 0
                    while stor3[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor3[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3[arg1].field_0), data=mem[128 len ceil32(uint255(stor3[arg1].field_0) * 0.5)])
                mem[128] = 256 * stor3[arg1].field_8
        mem[ceil32(uint255(stor3[arg1].field_0) * 0.5) + 192 len ceil32(uint255(stor3[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor3[arg1].field_0) * 0.5)]
        if ceil32(uint255(stor3[arg1].field_0) * 0.5) > uint255(stor3[arg1].field_0) * 0.5:
            mem[ceil32(uint255(stor3[arg1].field_0) * 0.5) + (uint255(stor3[arg1].field_0) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3[arg1].field_0), data=mem[128 len ceil32(uint255(stor3[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor3[arg1].field_0) * 0.5)) + 192 len 2 * ceil32(uint255(stor3[arg1].field_0) * 0.5)]), 
    if stor3[arg1].field_0 == stor3[arg1].field_1 < 32:
        revert with 0, 34
    if stor3[arg1].field_0:
        if stor3[arg1].field_0 == uint255(stor3[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor3[arg1].field_0):
            if 31 < uint255(stor3[arg1].field_0) * 0.5:
                mem[128] = stor3[arg1].field_0
                idx = 128
                s = 0
                while (uint255(stor3[arg1].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor3[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3[arg1].field_0, data=mem[128 len ceil32(stor3[arg1].field_1)])
            mem[128] = 256 * stor3[arg1].field_8
    else:
        if stor3[arg1].field_0 == stor3[arg1].field_1 < 32:
            revert with 0, 34
        if stor3[arg1].field_1:
            if 31 < stor3[arg1].field_1:
                mem[128] = stor3[arg1].field_0
                idx = 128
                s = 0
                while stor3[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor3[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3[arg1].field_0, data=mem[128 len ceil32(stor3[arg1].field_1)])
            mem[128] = 256 * stor3[arg1].field_8
    mem[ceil32(stor3[arg1].field_1) + 192 len ceil32(stor3[arg1].field_1)] = mem[128 len ceil32(stor3[arg1].field_1)]
    if ceil32(stor3[arg1].field_1) > stor3[arg1].field_1:
        mem[ceil32(stor3[arg1].field_1) + stor3[arg1].field_1 + 192] = 0
    return Array(len=stor3[arg1].field_0, data=mem[128 len ceil32(stor3[arg1].field_1)], mem[(2 * ceil32(stor3[arg1].field_1)) + 192 len 2 * ceil32(stor3[arg1].field_1)]), 
}



}
