contract main {




// =====================  Runtime code  =====================


address owner;
uint256 lastSync;
mapping of uint8 stor2;
mapping of uint256 priorMints;
array of struct stor4;
array of struct globalBoosts;

function priorMints(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return priorMints[arg1]
}

function lastSync() payable {
    return lastSync
}

function isOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor2[arg1])
}

function globalBoosts(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < globalBoosts.length
    return globalBoosts[arg1].field_0, globalBoosts[arg1].field_256
}

function owner() payable {
    return owner
}

function pools(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor4[arg1].field_256)
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

function addPool(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4[address(arg1)].field_256 = 1
}

function whiteListOperator(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2[address(arg1)] = uint8(arg2)
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

function updateLocalBoost(address arg1, address arg2, uint256[] arg3, uint256[] arg4) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg4.length != arg3.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Deflector::addLocalBoost: Incorrect cost & percentage length'
    idx = 0
    while idx < arg3.length:
        _11 = mem[64]
        mem[64] = mem[64] + 64
        mem[_11] = cd[((32 * idx) + arg3 + 36)]
        require idx < arg4.length
        mem[_11 + 32] = cd[((32 * idx) + arg4 + 36)]
        mem[32] = sha3(address(arg1), 4) + 3
        require idx < stor4[address(arg1)][3][address(arg2)].field_0
        mem[0] = sha3(address(arg2), sha3(address(arg1), 4) + 3)
        stor4[address(arg1)][3][address(arg2)][idx].field_0 = cd[((32 * idx) + arg3 + 36)]
        stor4[address(arg1)][3][address(arg2)][idx].field_256 = cd[((32 * idx) + arg4 + 36)]
        idx = idx + 1
        continue 
}

function calculateCost(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Deflector::calculateCost: Incorrect Level Specified'
    if arg3 > stor4[msg.sender][3][address(arg2)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Deflector::calculateCost: Incorrect Level Specified'
    if not stor4[msg.sender][2][address(arg1)][1][address(arg2)].field_0:
        require arg3 - 1 < stor4[msg.sender][3][address(arg2)].field_0
        if 0 > stor4[msg.sender][3][address(arg2)][arg3 - 1].field_0:
            revert with 0, 'SafeMath: subtraction overflow'
        return stor4[msg.sender][3][address(arg2)][arg3 - 1].field_0
    require stor4[msg.sender][2][address(arg1)][1][address(arg2)].field_0 - 1 < stor4[msg.sender][3][address(arg2)].field_0
    require arg3 - 1 < stor4[msg.sender][3][address(arg2)].field_0
    if stor4[msg.sender][3][address(arg2)][stor4[msg.sender][2][address(arg1)][1][address(arg2)].field_0 - 1].field_0 > stor4[msg.sender][3][address(arg2)][arg3 - 1].field_0:
        revert with 0, 'SafeMath: subtraction overflow'
    return (stor4[msg.sender][3][address(arg2)][arg3 - 1].field_0 - stor4[msg.sender][3][address(arg2)][stor4[msg.sender][2][address(arg1)][1][address(arg2)].field_0 - 1].field_0)
}

function syncPriorMints(address[] arg1, uint256[] arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 >= 96 and (32 * arg1.length) + 128 <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require (32 * arg2.length) + 160 >= 128 and (32 * arg1.length) + (32 * arg2.length) + 160 <= test266151307()
    mem[(32 * arg1.length) + 128] = arg2.length
    require calldata.size >= arg2 + (32 * arg2.length) + 36
    idx = 0
    s = arg2 + 36
    t = (32 * arg1.length) + 160
    while idx < arg2.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if not stor2[msg.sender]:
        revert with 0, 'Deflector::onlyOperator: Only operator can take action'
    if arg1.length != arg2.length:
        revert with 0, 'Sync: Invalid array length'
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 3
        priorMints[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + (32 * arg1.length) + 160]
        idx = idx + 1
        continue 
    lastSync = arg3
}

function addLocalBoost(address arg1, address arg2, uint256[] arg3, uint256[] arg4) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg4.length != arg3.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Deflector::addLocalBoost: Incorrect cost & percentage length'
    if stor4[address(arg1)][3][address(arg2)].field_0:
        idx = 0
        while idx < arg3.length:
            mem[0] = arg2
            mem[32] = sha3(address(arg1), 4) + 3
            _19 = mem[64]
            mem[64] = mem[64] + 64
            mem[_19] = cd[((32 * idx) + arg3 + 36)]
            require idx < arg4.length
            mem[_19 + 32] = cd[((32 * idx) + arg4 + 36)]
            stor4[address(arg1)][3][address(arg2)].field_0++
            mem[0] = sha3(address(arg2), sha3(address(arg1), 4) + 3)
            stor4[address(arg1)][3][address(arg2)][stor4[address(arg1)][3][address(arg2)].field_0].field_0 = cd[((32 * idx) + arg3 + 36)]
            stor4[address(arg1)][3][address(arg2)][stor4[address(arg1)][3][address(arg2)].field_0].field_256 = cd[((32 * idx) + arg4 + 36)]
            idx = idx + 1
            continue 
    else:
        stor4[address(arg1)].field_0++
        stor4[address(arg1)][stor4[address(arg1)].field_0].field_0 = arg2
        idx = 0
        while idx < arg3.length:
            mem[0] = arg2
            mem[32] = sha3(address(arg1), 4) + 3
            _21 = mem[64]
            mem[64] = mem[64] + 64
            mem[_21] = cd[((32 * idx) + arg3 + 36)]
            require idx < arg4.length
            mem[_21 + 32] = cd[((32 * idx) + arg4 + 36)]
            stor4[address(arg1)][3][address(arg2)].field_0++
            mem[0] = sha3(address(arg2), sha3(address(arg1), 4) + 3)
            stor4[address(arg1)][3][address(arg2)][stor4[address(arg1)][3][address(arg2)].field_0].field_0 = cd[((32 * idx) + arg3 + 36)]
            stor4[address(arg1)][3][address(arg2)][stor4[address(arg1)][3][address(arg2)].field_0].field_256 = cd[((32 * idx) + arg4 + 36)]
            idx = idx + 1
            continue 
}

function calculateBoostedBalance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    idx = 0
    while idx < globalBoosts.length:
        mem[0] = 5
        if priorMints[address(arg1)] >= globalBoosts[idx].field_0:
            idx = idx + 1
            continue 
        if not idx:
            idx = 0
            while idx < stor4[msg.sender].field_0:
                mem[0] = stor4[msg.sender][idx].field_0
                mem[32] = sha3(address(arg1), sha3(msg.sender, 4) + 2) + 1
                if stor4[msg.sender][2][address(arg1)][1][stor4[msg.sender][idx].field_0].field_0:
                    mem[32] = sha3(msg.sender, 4) + 3
                    require stor4[msg.sender][2][address(arg1)][1][stor4[msg.sender][idx].field_0].field_0 - 1 < stor4[msg.sender][3][stor4[msg.sender][idx].field_0].field_0
                    mem[0] = sha3(stor4[msg.sender][idx].field_0, sha3(msg.sender, 4) + 3)
                idx = idx + 1
                continue 
            if arg2:
                if 0 / arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            return 0
        require idx - 1 < globalBoosts.length
        s = 0
        while s < stor4[msg.sender].field_0:
            mem[0] = stor4[msg.sender][s].field_0
            mem[32] = sha3(address(arg1), sha3(msg.sender, 4) + 2) + 1
            if stor4[msg.sender][2][address(arg1)][1][stor4[msg.sender][s].field_0].field_0:
                mem[32] = sha3(msg.sender, 4) + 3
                require stor4[msg.sender][2][address(arg1)][1][stor4[msg.sender][s].field_0].field_0 - 1 < stor4[msg.sender][3][stor4[msg.sender][s].field_0].field_0
                mem[0] = sha3(stor4[msg.sender][s].field_0, sha3(msg.sender, 4) + 3)
            s = s + 1
            continue 
        if not arg2:
            return 0
        if globalBoosts[idx - 1].field_256 * arg2 / arg2 != globalBoosts[idx - 1].field_256:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        return (globalBoosts[idx - 1].field_256 * arg2 / 1000)
    if not idx:
        idx = 0
        while idx < stor4[msg.sender].field_0:
            mem[0] = stor4[msg.sender][idx].field_0
            mem[32] = sha3(address(arg1), sha3(msg.sender, 4) + 2) + 1
            if stor4[msg.sender][2][address(arg1)][1][stor4[msg.sender][idx].field_0].field_0:
                mem[32] = sha3(msg.sender, 4) + 3
                require stor4[msg.sender][2][address(arg1)][1][stor4[msg.sender][idx].field_0].field_0 - 1 < stor4[msg.sender][3][stor4[msg.sender][idx].field_0].field_0
                mem[0] = sha3(stor4[msg.sender][idx].field_0, sha3(msg.sender, 4) + 3)
            idx = idx + 1
            continue 
        if arg2:
            if 0 / arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        return 0
    require idx - 1 < globalBoosts.length
    s = 0
    while s < stor4[msg.sender].field_0:
        mem[0] = stor4[msg.sender][s].field_0
        mem[32] = sha3(address(arg1), sha3(msg.sender, 4) + 2) + 1
        if stor4[msg.sender][2][address(arg1)][1][stor4[msg.sender][s].field_0].field_0:
            mem[32] = sha3(msg.sender, 4) + 3
            require stor4[msg.sender][2][address(arg1)][1][stor4[msg.sender][s].field_0].field_0 - 1 < stor4[msg.sender][3][stor4[msg.sender][s].field_0].field_0
            mem[0] = sha3(stor4[msg.sender][s].field_0, sha3(msg.sender, 4) + 3)
        s = s + 1
        continue 
    if not arg2:
        return 0
    if globalBoosts[idx - 1].field_256 * arg2 / arg2 != globalBoosts[idx - 1].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    return (globalBoosts[idx - 1].field_256 * arg2 / 1000)
}

function updateLevel(address arg1, address arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    if not stor4[msg.sender].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Deflector::onlyPool: Insufficient Privileges'
    if not stor4[msg.sender][2][address(arg1)][1][address(arg2)].field_0:
        stor4[msg.sender][2][address(arg1)].field_0++
        stor4[msg.sender][2][address(arg1)][stor4[msg.sender][2][address(arg1)].field_0].field_0 = arg2
    stor4[msg.sender][2][address(arg1)][1][address(arg2)].field_0 = arg3
    idx = 0
    while idx < globalBoosts.length:
        mem[0] = 5
        if priorMints[address(arg1)] >= globalBoosts[idx].field_0:
            idx = idx + 1
            continue 
        if not idx:
            idx = 0
            while idx < stor4[msg.sender].field_0:
                mem[0] = stor4[msg.sender][idx].field_0
                mem[32] = sha3(address(arg1), sha3(msg.sender, 4) + 2) + 1
                if stor4[msg.sender][2][address(arg1)][1][stor4[msg.sender][idx].field_0].field_0:
                    mem[32] = sha3(msg.sender, 4) + 3
                    require stor4[msg.sender][2][address(arg1)][1][stor4[msg.sender][idx].field_0].field_0 - 1 < stor4[msg.sender][3][stor4[msg.sender][idx].field_0].field_0
                    mem[0] = sha3(stor4[msg.sender][idx].field_0, sha3(msg.sender, 4) + 3)
                idx = idx + 1
                continue 
            if arg4:
                if 0 / arg4:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            return 0
        require idx - 1 < globalBoosts.length
        s = 0
        while s < stor4[msg.sender].field_0:
            mem[0] = stor4[msg.sender][s].field_0
            mem[32] = sha3(address(arg1), sha3(msg.sender, 4) + 2) + 1
            if stor4[msg.sender][2][address(arg1)][1][stor4[msg.sender][s].field_0].field_0:
                mem[32] = sha3(msg.sender, 4) + 3
                require stor4[msg.sender][2][address(arg1)][1][stor4[msg.sender][s].field_0].field_0 - 1 < stor4[msg.sender][3][stor4[msg.sender][s].field_0].field_0
                mem[0] = sha3(stor4[msg.sender][s].field_0, sha3(msg.sender, 4) + 3)
            s = s + 1
            continue 
        if not arg4:
            return 0
        if globalBoosts[idx - 1].field_256 * arg4 / arg4 != globalBoosts[idx - 1].field_256:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        return (globalBoosts[idx - 1].field_256 * arg4 / 1000)
    if not idx:
        idx = 0
        while idx < stor4[msg.sender].field_0:
            mem[0] = stor4[msg.sender][idx].field_0
            mem[32] = sha3(address(arg1), sha3(msg.sender, 4) + 2) + 1
            if stor4[msg.sender][2][address(arg1)][1][stor4[msg.sender][idx].field_0].field_0:
                mem[32] = sha3(msg.sender, 4) + 3
                require stor4[msg.sender][2][address(arg1)][1][stor4[msg.sender][idx].field_0].field_0 - 1 < stor4[msg.sender][3][stor4[msg.sender][idx].field_0].field_0
                mem[0] = sha3(stor4[msg.sender][idx].field_0, sha3(msg.sender, 4) + 3)
            idx = idx + 1
            continue 
        if arg4:
            if 0 / arg4:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        return 0
    require idx - 1 < globalBoosts.length
    s = 0
    while s < stor4[msg.sender].field_0:
        mem[0] = stor4[msg.sender][s].field_0
        mem[32] = sha3(address(arg1), sha3(msg.sender, 4) + 2) + 1
        if stor4[msg.sender][2][address(arg1)][1][stor4[msg.sender][s].field_0].field_0:
            mem[32] = sha3(msg.sender, 4) + 3
            require stor4[msg.sender][2][address(arg1)][1][stor4[msg.sender][s].field_0].field_0 - 1 < stor4[msg.sender][3][stor4[msg.sender][s].field_0].field_0
            mem[0] = sha3(stor4[msg.sender][s].field_0, sha3(msg.sender, 4) + 3)
        s = s + 1
        continue 
    if not arg4:
        return 0
    if globalBoosts[idx - 1].field_256 * arg4 / arg4 != globalBoosts[idx - 1].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    return (globalBoosts[idx - 1].field_256 * arg4 / 1000)
}



}
