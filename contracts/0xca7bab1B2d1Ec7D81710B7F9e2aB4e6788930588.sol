contract main {




// =====================  Runtime code  =====================


const MAX_OWNER_COUNT = 50


mapping of struct stor0;
array of uint8 stor1;
mapping of uint8 stor2;
array of struct owners;
uint256 required;
uint256 transactionCount;
uint256 secondsTimeLocked;
mapping of uint256 confirmationTimes;
mapping of struct functionCallTimeLocks;

function owners(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < owners.length
    return address(owners[arg1].field_0)
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor2[arg1])
}

function confirmations(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(uint8(stor1[arg1][arg2]))
}

function secondsTimeLocked() {
    return secondsTimeLocked
}

function functionCallTimeLocks(bytes4 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == Mask(32, 224, arg1)
    require arg2 == arg2
    return bool(uint8(functionCallTimeLocks[arg1][arg2].field_0)), uint128(functionCallTimeLocks[arg1][arg2].field_8)
}

function transactionCount() {
    return transactionCount
}

function confirmationTimes(uint256 arg1) {
    require calldata.size - 4 >= 32
    return confirmationTimes[arg1]
}

function required() {
    return required
}

function _fallback() payable {
    if msg.value:
        emit Deposit(msg.value, msg.sender);
}

function changeTimeLock(uint256 arg1) {
    require calldata.size - 4 >= 32
    if msg.sender != this.address:
        revert with 0, 'ONLY_CALLABLE_BY_WALLET'
    secondsTimeLocked = arg1
    emit TimeLockChange(arg1);
}

function revokeConfirmation(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor2[msg.sender]:
        revert with 0, 'OWNER_DOESNT_EXIST'
    if not uint8(stor1[arg1][msg.sender]):
        revert with 0, 'TX_NOT_CONFIRMED'
    if uint8(stor0[arg1].field_768):
        revert with 0, 'TX_ALREADY_EXECUTED'
    uint8(stor1[arg1][msg.sender]) = 0
    emit Revocation(msg.sender, arg1);
}

function getConfirmationCount(uint256 arg1) {
    require calldata.size - 4 >= 32
    idx = 0
    s = 0
    while idx < owners.length:
        mem[0] = address(owners[idx].field_0)
        mem[32] = sha3(arg1, 1)
        if not uint8(stor1[arg1][address(stor3[idx].field_0)]):
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    return s
}

function changeRequirement(uint256 arg1) {
    require calldata.size - 4 >= 32
    if msg.sender != this.address:
        revert with 0, 'ONLY_CALLABLE_BY_WALLET'
    if owners.length > 50:
        revert with 0, 'INVALID_REQUIREMENTS'
    if arg1 > owners.length:
        revert with 0, 'INVALID_REQUIREMENTS'
    if not arg1:
        revert with 0, 'INVALID_REQUIREMENTS'
    if not owners.length:
        revert with 0, 'INVALID_REQUIREMENTS'
    required = arg1
    emit RequirementChange(arg1);
}

function transactions(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[128] = stor0[arg1][2].field_0
    idx = 128
    s = 0
    while stor0[arg1][2].length + 96 > idx:
        mem[idx + 32] = stor0[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return address(stor0[arg1].field_0), 
           stor0[arg1].field_256,
           Array(len=stor0[arg1][2].length, data=mem[128 len ceil32(stor0[arg1][2].length)]),
           bool(uint8(stor0[arg1].field_768))
}

function isConfirmed(uint256 arg1) {
    require calldata.size - 4 >= 32
    idx = 0
    s = 0
    while idx < owners.length:
        mem[0] = address(owners[idx].field_0)
        mem[32] = sha3(arg1, 1)
        if not uint8(stor1[arg1][address(stor3[idx].field_0)]):
            if s != required:
                idx = idx + 1
                s = s
                continue 
        else:
            if s + 1 != required:
                idx = idx + 1
                s = s + 1
                continue 
        return 1
    return 0
}

function addOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if msg.sender != this.address:
        revert with 0, 'ONLY_CALLABLE_BY_WALLET'
    if stor2[address(arg1)]:
        revert with 0, 'OWNER_EXISTS'
    if not arg1:
        revert with 0, 'NULL_ADDRESS'
    if owners.length + 1 > 50:
        revert with 0, 'INVALID_REQUIREMENTS'
    if required > owners.length + 1:
        revert with 0, 'INVALID_REQUIREMENTS'
    if not required:
        revert with 0, 'INVALID_REQUIREMENTS'
    if not owners.length + 1:
        revert with 0, 'INVALID_REQUIREMENTS'
    stor2[address(arg1)] = 1
    owners.length++
    address(owners[owners.length].field_0) = arg1
    emit OwnerAddition(arg1);
}

function replaceOwner(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender != this.address:
        revert with 0, 'ONLY_CALLABLE_BY_WALLET'
    if not stor2[address(arg1)]:
        revert with 0, 'OWNER_DOESNT_EXIST'
    if stor2[address(arg2)]:
        revert with 0, 'OWNER_EXISTS'
    idx = 0
    while idx < owners.length:
        mem[0] = 3
        if address(owners[idx].field_0) != arg1:
            idx = idx + 1
            continue 
        require idx < owners.length
        address(owners[idx].field_0) = arg2
        stor2[address(arg1)] = 0
        stor2[arg2] = 1
        emit OwnerRemoval(arg1);
        emit OwnerAddition(arg2);
    stor2[address(arg1)] = 0
    stor2[arg2] = 1
    emit OwnerRemoval(arg1);
    emit OwnerAddition(arg2);
}

function getTransactionCount(bool arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    idx = 0
    s = 0
    while idx < transactionCount:
        if not arg1:
            if not arg2:
                idx = idx + 1
                s = s
                continue 
            mem[0] = idx
            mem[32] = 0
            if not uint8(stor0[idx].field_768):
                idx = idx + 1
                s = s
                continue 
        else:
            mem[0] = idx
            mem[32] = 0
            if uint8(stor0[idx].field_768):
                if not arg2:
                    idx = idx + 1
                    s = s
                    continue 
                mem[0] = idx
                mem[32] = 0
                if not uint8(stor0[idx].field_768):
                    idx = idx + 1
                    s = s
                    continue 
        idx = idx + 1
        s = s + 1
        continue 
    return s
}

function registerFunctionCall(bool arg1, bytes4 arg2, address arg3, uint128 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == Mask(32, 224, arg2)
    require arg3 == arg3
    require arg4 == arg4
    if msg.sender != this.address:
        revert with 0, 'ONLY_CALLABLE_BY_WALLET'
    uint8(functionCallTimeLocks[Mask(32, 224, arg2)][address(arg3)].field_0) = uint8(arg1)
    if arg1:
        uint128(functionCallTimeLocks[Mask(32, 224, arg2)][address(arg3)].field_8) = arg4
        Mask(120, 0, functionCallTimeLocks[Mask(32, 224, arg2)][address(arg3)].field_136) = Mask(120, 136, arg1) >> 136
        emit FunctionCallTimeLockRegistration(Mask(32, 224, arg2), address(arg3), arg1, arg4);
    else:
        uint128(functionCallTimeLocks[Mask(32, 224, arg2)][address(arg3)].field_8) = 0
        Mask(120, 0, functionCallTimeLocks[Mask(32, 224, arg2)][address(arg3)].field_136) = Mask(120, 136, arg1) >> 136
        functionCallTimeLocks[Mask(32, 224, arg2)][address(arg3)].field_256 % 1 = 0
        emit FunctionCallTimeLockRegistration(Mask(32, 224, arg2), address(arg3), arg1, 0);
}

function getOwners() {
    mem[64] = (32 * owners.length) + 128
    mem[96] = owners.length
    if not owners.length:
        mem[(32 * owners.length) + 128] = 32
        mem[(32 * owners.length) + 160] = owners.length
        idx = 0
        s = (32 * owners.length) + 192
        t = 128
        while idx < owners.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * owners.length) + 128
           len (96 * owners.length) + 64
    mem[128] = address(owners.field_0)
    idx = 128
    s = 0
    while (32 * owners.length) + 96 > idx:
        mem[idx + 32] = address(owners[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * owners.length) + 128] = 32
    mem[(32 * owners.length) + 160] = owners.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < owners.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * owners.length) + -mem[64] + 192
}

function getConfirmations(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[96] = owners.length
    if owners.length:
        mem[128 len 32 * owners.length] = code.data[11815 len 32 * owners.length]
    idx = 0
    s = 0
    while idx < owners.length:
        mem[0] = address(owners[idx].field_0)
        mem[32] = sha3(arg1, 1)
        if not uint8(stor1[arg1][address(stor3[idx].field_0)]):
            idx = idx + 1
            s = s
            continue 
        require idx < owners.length
        mem[0] = 3
        require s < owners.length
        mem[(32 * s) + 128] = address(owners[idx].field_0)
        idx = idx + 1
        s = s + 1
        continue 
    mem[(32 * owners.length) + 128] = s
    mem[64] = (32 * owners.length) + (32 * s) + 160
    if s:
        mem[(32 * owners.length) + 160 len 32 * s] = code.data[11815 len 32 * s]
    t = 0
    while t < s:
        require t < owners.length
        require t < s
        mem[(32 * t) + (32 * owners.length) + 160] = mem[(32 * t) + 140 len 20]
        t = t + 1
        continue 
    mem[(32 * owners.length) + (32 * s) + 160] = 32
    mem[(32 * owners.length) + (32 * s) + 192] = s
    t = 0
    u = mem[64] + 64
    v = (32 * owners.length) + 160
    while t < s:
        mem[u] = mem[v + 12 len 20]
        t = t + 1
        u = u + 32
        v = v + 32
        continue 
    return memory
      from mem[64]
       len (32 * owners.length) + (64 * s) + -mem[64] + 224
}

function confirmTransaction(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor2[msg.sender]:
        revert with 0, 'OWNER_DOESNT_EXIST'
    if not address(stor0[arg1].field_0):
        revert with 0, 'TX_DOESNT_EXIST'
    if uint8(stor1[arg1][msg.sender]):
        revert with 0, 'TX_ALREADY_CONFIRMED'
    idx = 0
    s = 0
    while idx < owners.length:
        mem[0] = address(owners[idx].field_0)
        mem[32] = sha3(arg1, 1)
        if not uint8(stor1[arg1][address(stor3[idx].field_0)]):
            if s != required:
                idx = idx + 1
                s = s
                continue 
        else:
            if s + 1 != required:
                idx = idx + 1
                s = s + 1
                continue 
        uint8(stor1[arg1][msg.sender]) = 1
        emit Confirmation(msg.sender, arg1);
    uint8(stor1[arg1][msg.sender]) = 1
    emit Confirmation(msg.sender, arg1);
    idx = 0
    s = 0
    while idx < owners.length:
        mem[0] = address(owners[idx].field_0)
        mem[32] = sha3(arg1, 1)
        if not uint8(stor1[arg1][address(stor3[idx].field_0)]):
            if s != required:
                idx = idx + 1
                s = s
                continue 
        else:
            if s + 1 != required:
                idx = idx + 1
                s = s + 1
                continue 
        confirmationTimes[arg1] = block.timestamp
        emit ConfirmationTimeSet(block.timestamp, arg1);
}

function getTransactionIds(uint256 arg1, uint256 arg2, bool arg3, bool arg4) {
    require calldata.size - 4 >= 128
    require arg3 == arg3
    require arg4 == arg4
    if transactionCount:
        mem[128 len 32 * transactionCount] = code.data[11815 len 32 * transactionCount]
    idx = 0
    s = 0
    while idx < transactionCount:
        if not arg3:
            if not arg4:
                idx = idx + 1
                s = s
                continue 
            mem[0] = idx
            mem[32] = 0
            if not uint8(stor0[idx].field_768):
                idx = idx + 1
                s = s
                continue 
        else:
            mem[0] = idx
            mem[32] = 0
            if uint8(stor0[idx].field_768):
                if not arg4:
                    idx = idx + 1
                    s = s
                    continue 
                mem[0] = idx
                mem[32] = 0
                if not uint8(stor0[idx].field_768):
                    idx = idx + 1
                    s = s
                    continue 
        require s < transactionCount
        mem[(32 * s) + 128] = idx
        idx = idx + 1
        s = s + 1
        continue 
    mem[(32 * transactionCount) + 128] = arg2 - arg1
    if arg2 - arg1:
        mem[(32 * transactionCount) + 160 len 32 * arg2 - arg1] = code.data[11815 len 32 * arg2 - arg1]
    idx = arg1
    while idx < arg2:
        require idx < transactionCount
        require idx - arg1 < mem[(32 * transactionCount) + 128]
        mem[(32 * idx - arg1) + (32 * transactionCount) + 160] = mem[(32 * idx) + 128]
        idx = idx + 1
        continue 
    mem[(32 * transactionCount) + (32 * arg2 - arg1) + 160] = 32
    mem[(32 * transactionCount) + (32 * arg2 - arg1) + 192] = mem[(32 * transactionCount) + 128]
    mem[(32 * transactionCount) + (32 * arg2 - arg1) + 224 len 32 * mem[(32 * transactionCount) + 128]] = mem[(32 * transactionCount) + 160 len 32 * mem[(32 * transactionCount) + 128]]
    return Array(len=mem[(32 * transactionCount) + 128], data=mem[(32 * transactionCount) + (32 * arg2 - arg1) + 224 len 32 * mem[(32 * transactionCount) + 128]]), 
}

function submitTransaction(address arg1, uint256 arg2, bytes arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require ceil32(arg3.length) + 128 >= 96 and ceil32(arg3.length) + 128 <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    if not arg1:
        revert with 0, 'NULL_ADDRESS'
    address(stor0[stor5].field_0) = arg1
    stor0[stor5].field_256 = arg2
    stor0[stor5][2][].field_0 = Array(len=arg3.length, data=arg3[all])
    uint8(stor0[stor5].field_768) = 0
    transactionCount++
    emit Submission(transactionCount);
    if not stor2[msg.sender]:
        revert with 0, 'OWNER_DOESNT_EXIST'
    if not address(stor0[stor5].field_0):
        revert with 0, 'TX_DOESNT_EXIST'
    if uint8(stor1[stor5][msg.sender]):
        revert with 0, 'TX_ALREADY_CONFIRMED'
    idx = 0
    s = 0
    while idx < owners.length:
        mem[0] = address(owners[idx].field_0)
        mem[32] = sha3(transactionCount, 1)
        if not uint8(stor1[stor5][address(stor3[idx].field_0)]):
            if s != required:
                idx = idx + 1
                s = s
                continue 
        else:
            if s + 1 != required:
                idx = idx + 1
                s = s + 1
                continue 
        uint8(stor1[stor5][msg.sender]) = 1
        emit Confirmation(msg.sender, transactionCount);
        return transactionCount
    uint8(stor1[stor5][msg.sender]) = 1
    emit Confirmation(msg.sender, transactionCount);
    idx = 0
    s = 0
    while idx < owners.length:
        mem[0] = address(owners[idx].field_0)
        mem[32] = sha3(transactionCount, 1)
        if not uint8(stor1[stor5][address(stor3[idx].field_0)]):
            if s != required:
                idx = idx + 1
                s = s
                continue 
        else:
            if s + 1 != required:
                idx = idx + 1
                s = s + 1
                continue 
        confirmationTimes[stor5] = block.timestamp
        emit ConfirmationTimeSet(block.timestamp, transactionCount);
        return transactionCount
    return transactionCount
}

function removeOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if msg.sender != this.address:
        revert with 0, 'ONLY_CALLABLE_BY_WALLET'
    if not stor2[address(arg1)]:
        revert with 0, 'OWNER_DOESNT_EXIST'
    stor2[address(arg1)] = 0
    idx = 0
    while idx < owners.length - 1:
        require idx < owners.length
        mem[0] = 3
        if address(owners[idx].field_0) != arg1:
            idx = idx + 1
            continue 
        require owners.length - 1 < owners.length
        require idx < owners.length
        address(owners[idx].field_0) = address(owners[owners.length].field_0)
        owners.length--
        if owners.length > owners.length - 1:
            idx = owners.length + sha3(3) - 1
            while sha3(3) + owners.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        if required > owners.length:
            if msg.sender != this.address:
                revert with 0, 'ONLY_CALLABLE_BY_WALLET'
            if owners.length > 50:
                revert with 0, 'INVALID_REQUIREMENTS'
            if owners.length > owners.length:
                revert with 0, 'INVALID_REQUIREMENTS'
            if not owners.length:
                revert with 0, 'INVALID_REQUIREMENTS'
            if not owners.length:
                revert with 0, 'INVALID_REQUIREMENTS'
            required = owners.length
            emit RequirementChange(owners.length);
        emit OwnerRemoval(arg1);
    owners.length--
    if owners.length > owners.length - 1:
        idx = owners.length - 1
        while owners.length > idx:
            owners[idx].field_0 = 0
            idx = idx + 1
            continue 
    if required > owners.length:
        if msg.sender != this.address:
            revert with 0, 'ONLY_CALLABLE_BY_WALLET'
        if owners.length > 50:
            revert with 0, 'INVALID_REQUIREMENTS'
        if owners.length > owners.length:
            revert with 0, 'INVALID_REQUIREMENTS'
        if not owners.length:
            revert with 0, 'INVALID_REQUIREMENTS'
        if not owners.length:
            revert with 0, 'INVALID_REQUIREMENTS'
        required = owners.length
        emit RequirementChange(owners.length);
    emit OwnerRemoval(arg1);
}

function executeTransaction(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    mem[0] = arg1
    mem[32] = 0
    if uint8(stor0[arg1].field_768):
        revert with 0, 'TX_ALREADY_EXECUTED'
    idx = 0
    s = 0
    while idx < owners.length:
        mem[0] = address(owners[idx].field_0)
        mem[32] = sha3(arg1, 1)
        if not uint8(stor1[arg1][address(stor3[idx].field_0)]):
            if s != required:
                idx = idx + 1
                s = s
                continue 
            mem[32] = 0
            uint8(stor0[arg1].field_768) = 1
            mem[96] = stor0[arg1][2].length
            mem[0] = sha3(arg1, 0) + 2
            mem[128] = stor0[arg1][2].field_0
            idx = 128
            s = sha3(sha3(arg1, 0) + 2)
            while stor0[arg1][2].length + 96 > idx:
                mem[idx + 32] = uint256(stor1[s])
                idx = idx + 32
                s = s + 1
                continue 
            require stor0[arg1][2].length >= 96
            _1181 = mem[128]
            require mem[128] <= test266151307()
            require mem[128] + 159 < stor0[arg1][2].length + 128
            _1186 = mem[mem[128] + 128]
            require mem[mem[128] + 128] <= test266151307()
            require (32 * mem[mem[128] + 128]) + 160 >= 128 and ceil32(stor0[arg1][2].length) + (32 * mem[mem[128] + 128]) + 160 <= test266151307()
            mem[64] = ceil32(stor0[arg1][2].length) + (32 * mem[mem[128] + 128]) + 160
            mem[ceil32(stor0[arg1][2].length) + 128] = mem[mem[128] + 128]
            idx = 0
            s = _1181 + 160
            t = ceil32(stor0[arg1][2].length) + 160
            while idx < _1186:
                _1723 = mem[s]
                require _1181 + mem[s] + 191 < stor0[arg1][2].length + 128
                _1736 = mem[_1181 + mem[s] + 160]
                require mem[_1181 + mem[s] + 160] <= test266151307()
                _1744 = mem[64]
                require mem[64] + ceil32(mem[_1181 + mem[s] + 160]) + 32 >= mem[64] and mem[64] + ceil32(mem[_1181 + mem[s] + 160]) + 32 <= test266151307()
                mem[64] = mem[64] + ceil32(mem[_1181 + mem[s] + 160]) + 32
                mem[_1744] = _1736
                require _1181 + _1723 + _1736 + 96 <= stor0[arg1][2].length + 32
                u = 0
                while u < _1736:
                    mem[u + _1744 + 32] = mem[u + _1181 + _1723 + 192]
                    u = u + 32
                    continue 
                if ceil32(_1736) > _1736:
                    mem[_1736 + _1744 + 32] = 0
                mem[t] = _1744
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            _1722 = mem[160]
            require mem[160] <= test266151307()
            require mem[160] + 159 < stor0[arg1][2].length + 128
            _1738 = mem[mem[160] + 128]
            require mem[mem[160] + 128] <= test266151307()
            _1746 = mem[64]
            require mem[64] + (32 * mem[mem[160] + 128]) + 32 >= mem[64] and mem[64] + (32 * mem[mem[160] + 128]) + 32 <= test266151307()
            mem[64] = mem[64] + (32 * mem[mem[160] + 128]) + 32
            mem[_1746] = mem[mem[160] + 128]
            require stor0[arg1][2].length + 32 >= _1722 + (32 * _1738) + 64
            idx = 0
            s = _1722 + 160
            t = _1746 + 32
            while idx < _1738:
                require mem[s] == mem[s + 12 len 20]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            _2250 = mem[192]
            require mem[192] <= test266151307()
            require mem[192] + 159 < stor0[arg1][2].length + 128
            _2265 = mem[mem[192] + 128]
            require mem[mem[192] + 128] <= test266151307()
            _2296 = mem[64]
            require mem[64] + (32 * mem[mem[192] + 128]) + 32 >= mem[64] and mem[64] + (32 * mem[mem[192] + 128]) + 32 <= test266151307()
            mem[64] = mem[64] + (32 * mem[mem[192] + 128]) + 32
            mem[_2296] = mem[mem[192] + 128]
            require stor0[arg1][2].length + 32 >= _2250 + (32 * _2265) + 64
            idx = 0
            s = _2250 + 160
            t = _2296 + 32
            while idx < _2265:
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            _2751 = mem[ceil32(stor0[arg1][2].length) + 128]
            if mem[ceil32(stor0[arg1][2].length) + 128] != mem[_1746]:
                revert with 0, 'EQUAL_LENGTHS_REQUIRED'
            if mem[ceil32(stor0[arg1][2].length) + 128] != _2265:
                revert with 0, 'EQUAL_LENGTHS_REQUIRED'
            mem[0] = arg1
            mem[32] = 7
            idx = 0
            while idx != _2751:
                require idx < mem[ceil32(stor0[arg1][2].length) + 128]
                require idx < mem[_1746]
                _3192 = mem[(32 * idx) + _1746 + 32]
                if mem[mem[(32 * idx) + ceil32(stor0[arg1][2].length) + 160]] < 4:
                    _3229 = mem[mem[(32 * idx) + ceil32(stor0[arg1][2].length) + 160]]
                    mem[mem[64] + 36] = 3
                    mem[mem[64] + 68] = _3229
                    mem[mem[64] + 100] = 4
                    _3303 = mem[64]
                    mem[mem[64]] = 100
                    mem[64] = mem[64] + 132
                    mem[_3303 + 32] = 0x2800659500000000000000000000000000000000000000000000000000000000 or mem[_3303 + 36 len 28]
                    revert with memory
                      from _3303 + 32
                       len mem[_3303]
                _3228 = mem[mem[(32 * idx) + ceil32(stor0[arg1][2].length) + 160] + 32]
                _3274 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3274] = 0
                mem[_3274 + 32] = 0
                mem[0] = address(_3192)
                mem[32] = sha3(Mask(32, 224, _3228), 8)
                _3302 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3302] = bool(uint8(functionCallTimeLocks[Mask(32, 224, _3228)][address(_3192)].field_0))
                mem[_3302 + 32] = uint128(functionCallTimeLocks[Mask(32, 224, _3228)][address(_3192)].field_8)
                if not uint8(functionCallTimeLocks[Mask(32, 224, _3228)][address(_3192)].field_0):
                    if secondsTimeLocked + confirmationTimes[arg1] < confirmationTimes[arg1]:
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = confirmationTimes[arg1]
                        mem[mem[64] + 100] = secondsTimeLocked
                        _3327 = mem[64]
                        mem[mem[64]] = 100
                        mem[64] = mem[64] + 132
                        mem[_3327 + 32] = 0xe946c1bb00000000000000000000000000000000000000000000000000000000 or mem[_3327 + 36 len 28]
                        revert with memory
                          from _3327 + 32
                           len mem[_3327]
                    if block.timestamp < secondsTimeLocked + confirmationTimes[arg1]:
                        revert with 0, 'DEFAULT_TIME_LOCK_INCOMPLETE'
                    require idx < mem[_1746]
                    _3324 = mem[(32 * idx) + _1746 + 32]
                    require idx < mem[_2296]
                    _3342 = mem[(32 * idx) + _2296 + 32]
                    require idx < mem[ceil32(stor0[arg1][2].length) + 128]
                    _3350 = mem[(32 * idx) + ceil32(stor0[arg1][2].length) + 160]
                    _3351 = mem[64]
                    _3362 = mem[mem[(32 * idx) + ceil32(stor0[arg1][2].length) + 160]]
                    s = 0
                    while s < _3362:
                        mem[s + _3351] = mem[s + _3350 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_3362) <= _3362:
                        call address(_3324).mem[mem[64] len 4] with:
                           value _3342 wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _3362 + _3351 + -mem[64] - 4]
                        if return_data.size:
                            _3434 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_3434] = return_data.size
                            mem[_3434 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    else:
                        mem[_3362 + _3351] = 0
                        call address(_3324).mem[mem[64] len 4] with:
                           value _3342 wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _3362 + _3351 + -mem[64] - 4]
                        if return_data.size:
                            _3435 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_3435] = return_data.size
                            mem[_3435 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                else:
                    if uint128(functionCallTimeLocks[Mask(32, 224, _3228)][address(_3192)].field_8) + confirmationTimes[arg1] < confirmationTimes[arg1]:
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = confirmationTimes[arg1]
                        mem[mem[64] + 100] = uint128(functionCallTimeLocks[Mask(32, 224, _3228)][address(_3192)].field_8)
                        _3331 = mem[64]
                        mem[mem[64]] = 100
                        mem[64] = mem[64] + 132
                        mem[_3331 + 32] = 0xe946c1bb00000000000000000000000000000000000000000000000000000000 or mem[_3331 + 36 len 28]
                        revert with memory
                          from _3331 + 32
                           len mem[_3331]
                    if block.timestamp < uint128(functionCallTimeLocks[Mask(32, 224, _3228)][address(_3192)].field_8) + confirmationTimes[arg1]:
                        revert with 0, 'CUSTOM_TIME_LOCK_INCOMPLETE'
                    require idx < mem[_1746]
                    _3344 = mem[(32 * idx) + _1746 + 32]
                    require idx < mem[_2296]
                    _3353 = mem[(32 * idx) + _2296 + 32]
                    require idx < mem[ceil32(stor0[arg1][2].length) + 128]
                    _3363 = mem[(32 * idx) + ceil32(stor0[arg1][2].length) + 160]
                    _3364 = mem[64]
                    _3368 = mem[mem[(32 * idx) + ceil32(stor0[arg1][2].length) + 160]]
                    s = 0
                    while s < _3368:
                        mem[s + _3364] = mem[s + _3363 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_3368) <= _3368:
                        call address(_3344).mem[mem[64] len 4] with:
                           value _3353 wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _3368 + _3364 + -mem[64] - 4]
                        if return_data.size:
                            _3436 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_3436] = return_data.size
                            mem[_3436 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    else:
                        mem[_3368 + _3364] = 0
                        call address(_3344).mem[mem[64] len 4] with:
                           value _3353 wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _3368 + _3364 + -mem[64] - 4]
                        if return_data.size:
                            _3437 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_3437] = return_data.size
                            mem[_3437 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'FAILED_EXECUTION'
                idx = idx + 1
                continue 
        else:
            if s + 1 != required:
                idx = idx + 1
                s = s + 1
                continue 
            mem[32] = 0
            uint8(stor0[arg1].field_768) = 1
            mem[96] = stor0[arg1][2].length
            mem[0] = sha3(arg1, 0) + 2
            mem[128] = stor0[arg1][2].field_0
            idx = 128
            s = sha3(sha3(arg1, 0) + 2)
            while stor0[arg1][2].length + 96 > idx:
                mem[idx + 32] = uint256(stor1[s])
                idx = idx + 32
                s = s + 1
                continue 
            require stor0[arg1][2].length >= 96
            _1184 = mem[128]
            require mem[128] <= test266151307()
            require mem[128] + 159 < stor0[arg1][2].length + 128
            _1187 = mem[mem[128] + 128]
            require mem[mem[128] + 128] <= test266151307()
            require (32 * mem[mem[128] + 128]) + 160 >= 128 and ceil32(stor0[arg1][2].length) + (32 * mem[mem[128] + 128]) + 160 <= test266151307()
            mem[64] = ceil32(stor0[arg1][2].length) + (32 * mem[mem[128] + 128]) + 160
            mem[ceil32(stor0[arg1][2].length) + 128] = mem[mem[128] + 128]
            idx = 0
            s = _1184 + 160
            t = ceil32(stor0[arg1][2].length) + 160
            while idx < _1187:
                _1729 = mem[s]
                require _1184 + mem[s] + 191 < stor0[arg1][2].length + 128
                _1737 = mem[_1184 + mem[s] + 160]
                require mem[_1184 + mem[s] + 160] <= test266151307()
                _1745 = mem[64]
                require mem[64] + ceil32(mem[_1184 + mem[s] + 160]) + 32 >= mem[64] and mem[64] + ceil32(mem[_1184 + mem[s] + 160]) + 32 <= test266151307()
                mem[64] = mem[64] + ceil32(mem[_1184 + mem[s] + 160]) + 32
                mem[_1745] = _1737
                require _1184 + _1729 + _1737 + 96 <= stor0[arg1][2].length + 32
                u = 0
                while u < _1737:
                    mem[u + _1745 + 32] = mem[u + _1184 + _1729 + 192]
                    u = u + 32
                    continue 
                if ceil32(_1737) > _1737:
                    mem[_1737 + _1745 + 32] = 0
                mem[t] = _1745
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            _1728 = mem[160]
            require mem[160] <= test266151307()
            require mem[160] + 159 < stor0[arg1][2].length + 128
            _1739 = mem[mem[160] + 128]
            require mem[mem[160] + 128] <= test266151307()
            _1747 = mem[64]
            require mem[64] + (32 * mem[mem[160] + 128]) + 32 >= mem[64] and mem[64] + (32 * mem[mem[160] + 128]) + 32 <= test266151307()
            mem[64] = mem[64] + (32 * mem[mem[160] + 128]) + 32
            mem[_1747] = mem[mem[160] + 128]
            require stor0[arg1][2].length + 32 >= _1728 + (32 * _1739) + 64
            idx = 0
            s = _1728 + 160
            t = _1747 + 32
            while idx < _1739:
                require mem[s] == mem[s + 12 len 20]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            _2251 = mem[192]
            require mem[192] <= test266151307()
            require mem[192] + 159 < stor0[arg1][2].length + 128
            _2268 = mem[mem[192] + 128]
            require mem[mem[192] + 128] <= test266151307()
            _2301 = mem[64]
            require mem[64] + (32 * mem[mem[192] + 128]) + 32 >= mem[64] and mem[64] + (32 * mem[mem[192] + 128]) + 32 <= test266151307()
            mem[64] = mem[64] + (32 * mem[mem[192] + 128]) + 32
            mem[_2301] = mem[mem[192] + 128]
            require stor0[arg1][2].length + 32 >= _2251 + (32 * _2268) + 64
            idx = 0
            s = _2251 + 160
            t = _2301 + 32
            while idx < _2268:
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            _2755 = mem[ceil32(stor0[arg1][2].length) + 128]
            if mem[ceil32(stor0[arg1][2].length) + 128] != mem[_1747]:
                revert with 0, 'EQUAL_LENGTHS_REQUIRED'
            if mem[ceil32(stor0[arg1][2].length) + 128] != _2268:
                revert with 0, 'EQUAL_LENGTHS_REQUIRED'
            mem[0] = arg1
            mem[32] = 7
            idx = 0
            while idx != _2755:
                require idx < mem[ceil32(stor0[arg1][2].length) + 128]
                require idx < mem[_1747]
                _3193 = mem[(32 * idx) + _1747 + 32]
                if mem[mem[(32 * idx) + ceil32(stor0[arg1][2].length) + 160]] < 4:
                    _3231 = mem[mem[(32 * idx) + ceil32(stor0[arg1][2].length) + 160]]
                    mem[mem[64] + 36] = 3
                    mem[mem[64] + 68] = _3231
                    mem[mem[64] + 100] = 4
                    _3308 = mem[64]
                    mem[mem[64]] = 100
                    mem[64] = mem[64] + 132
                    mem[_3308 + 32] = 0x2800659500000000000000000000000000000000000000000000000000000000 or mem[_3308 + 36 len 28]
                    revert with memory
                      from _3308 + 32
                       len mem[_3308]
                _3230 = mem[mem[(32 * idx) + ceil32(stor0[arg1][2].length) + 160] + 32]
                _3291 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3291] = 0
                mem[_3291 + 32] = 0
                mem[0] = address(_3193)
                mem[32] = sha3(Mask(32, 224, _3230), 8)
                _3307 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3307] = bool(uint8(functionCallTimeLocks[Mask(32, 224, _3230)][address(_3193)].field_0))
                mem[_3307 + 32] = uint128(functionCallTimeLocks[Mask(32, 224, _3230)][address(_3193)].field_8)
                if not uint8(functionCallTimeLocks[Mask(32, 224, _3230)][address(_3193)].field_0):
                    if secondsTimeLocked + confirmationTimes[arg1] < confirmationTimes[arg1]:
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = confirmationTimes[arg1]
                        mem[mem[64] + 100] = secondsTimeLocked
                        _3336 = mem[64]
                        mem[mem[64]] = 100
                        mem[64] = mem[64] + 132
                        mem[_3336 + 32] = 0xe946c1bb00000000000000000000000000000000000000000000000000000000 or mem[_3336 + 36 len 28]
                        revert with memory
                          from _3336 + 32
                           len mem[_3336]
                    if block.timestamp < secondsTimeLocked + confirmationTimes[arg1]:
                        revert with 0, 'DEFAULT_TIME_LOCK_INCOMPLETE'
                    require idx < mem[_1747]
                    _3333 = mem[(32 * idx) + _1747 + 32]
                    require idx < mem[_2301]
                    _3346 = mem[(32 * idx) + _2301 + 32]
                    require idx < mem[ceil32(stor0[arg1][2].length) + 128]
                    _3356 = mem[(32 * idx) + ceil32(stor0[arg1][2].length) + 160]
                    _3357 = mem[64]
                    _3365 = mem[mem[(32 * idx) + ceil32(stor0[arg1][2].length) + 160]]
                    s = 0
                    while s < _3365:
                        mem[s + _3357] = mem[s + _3356 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_3365) <= _3365:
                        call address(_3333).mem[mem[64] len 4] with:
                           value _3346 wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _3365 + _3357 + -mem[64] - 4]
                        if return_data.size:
                            _3438 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_3438] = return_data.size
                            mem[_3438 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    else:
                        mem[_3365 + _3357] = 0
                        call address(_3333).mem[mem[64] len 4] with:
                           value _3346 wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _3365 + _3357 + -mem[64] - 4]
                        if return_data.size:
                            _3439 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_3439] = return_data.size
                            mem[_3439 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                else:
                    if uint128(functionCallTimeLocks[Mask(32, 224, _3230)][address(_3193)].field_8) + confirmationTimes[arg1] < confirmationTimes[arg1]:
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = confirmationTimes[arg1]
                        mem[mem[64] + 100] = uint128(functionCallTimeLocks[Mask(32, 224, _3230)][address(_3193)].field_8)
                        _3340 = mem[64]
                        mem[mem[64]] = 100
                        mem[64] = mem[64] + 132
                        mem[_3340 + 32] = 0xe946c1bb00000000000000000000000000000000000000000000000000000000 or mem[_3340 + 36 len 28]
                        revert with memory
                          from _3340 + 32
                           len mem[_3340]
                    if block.timestamp < uint128(functionCallTimeLocks[Mask(32, 224, _3230)][address(_3193)].field_8) + confirmationTimes[arg1]:
                        revert with 0, 'CUSTOM_TIME_LOCK_INCOMPLETE'
                    require idx < mem[_1747]
                    _3348 = mem[(32 * idx) + _1747 + 32]
                    require idx < mem[_2301]
                    _3359 = mem[(32 * idx) + _2301 + 32]
                    require idx < mem[ceil32(stor0[arg1][2].length) + 128]
                    _3366 = mem[(32 * idx) + ceil32(stor0[arg1][2].length) + 160]
                    _3367 = mem[64]
                    _3369 = mem[mem[(32 * idx) + ceil32(stor0[arg1][2].length) + 160]]
                    s = 0
                    while s < _3369:
                        mem[s + _3367] = mem[s + _3366 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_3369) <= _3369:
                        call address(_3348).mem[mem[64] len 4] with:
                           value _3359 wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _3369 + _3367 + -mem[64] - 4]
                        if return_data.size:
                            _3440 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_3440] = return_data.size
                            mem[_3440 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    else:
                        mem[_3369 + _3367] = 0
                        call address(_3348).mem[mem[64] len 4] with:
                           value _3359 wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _3369 + _3367 + -mem[64] - 4]
                        if return_data.size:
                            _3441 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_3441] = return_data.size
                            mem[_3441 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'FAILED_EXECUTION'
                idx = idx + 1
                continue 
        emit Execution(arg1);
    revert with 0, 'TX_NOT_FULLY_CONFIRMED'
}



}
