contract main {




// =====================  Runtime code  =====================


uint256 sub_efa2823c;
array of address owners;
mapping of uint8 stor2;
mapping of uint8 stor3;
array of struct stor4;

function owners(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < owners.length
    return address(owners[arg1])
}

function getTransactionCount() {
    return stor4.length
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor2[arg1])
}

function isConfirmed(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor3[arg1][arg2])
}

function sub_efa2823c(?) {
    return sub_efa2823c
}

function _fallback() payable {
    emit Deposit(msg.value, eth.balance(this.address), msg.sender);
}

function sub_39f01dca(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if this.address != msg.sender:
        revert with 0, 'NO_CONTRACT_INVOKER'
    if arg1 > owners.length:
        revert with 0, 'INVALID_CONFIRMATIONS_NUMBER'
    sub_efa2823c = arg1
    return arg1
}

function removeOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if this.address != msg.sender:
        revert with 0, 'NO_CONTRACT_INVOKER'
    if not stor2[address(arg1)]:
        revert with 0, 'INVALID_OWNER'
    stor2[address(arg1)] = 0
    return arg1
}

function addOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if this.address != msg.sender:
        revert with 0, 'NO_CONTRACT_INVOKER'
    if not arg1:
        revert with 0, 'INVALID_OWNER'
    idx = 0
    s = 0
    while idx < owners.length:
        mem[0] = 1
        if idx == -1:
            revert with 'NH{q', 17
        if address(owners[idx]) != arg1:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    if not s:
        owners.length++
        address(owners[owners.length]) = arg1
    stor2[address(arg1)] = 1
    return arg1
}

function revokeConfirmation(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor2[address(msg.sender)]:
        revert with 0, 'NO_OWNER_INVOKER'
    if arg1 >= stor4.length:
        revert with 0, 'TX_INVALID'
    if stor4[arg1].field_768:
        revert with 0, 'TX_NOT_EXECUTED'
    if arg1 >= stor4.length:
        revert with 'NH{q', 50
    if not stor3[arg1][address(msg.sender)]:
        revert with 0, 'TX_NO_CONFIRMED'
    if stor4[arg1].field_1024 < 1:
        revert with 'NH{q', 17
    stor4[arg1].field_1024--
    stor3[arg1][address(msg.sender)] = 0
    emit RevokeConfirmation(msg.sender, arg1);
}

function confirmTransaction(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor2[address(msg.sender)]:
        revert with 0, 'NO_OWNER_INVOKER'
    if arg1 >= stor4.length:
        revert with 0, 'TX_INVALID'
    if stor4[arg1].field_768:
        revert with 0, 'TX_NOT_EXECUTED'
    if stor3[arg1][address(msg.sender)]:
        revert with 0, 'TX_NOT_CONFIRMED'
    if stor3[arg1][address(msg.sender)]:
        revert with 0, 'ALREADY_CONFIRMED'
    if arg1 >= stor4.length:
        revert with 'NH{q', 50
    if stor4[arg1].field_1024 > -2:
        revert with 'NH{q', 17
    stor4[arg1].field_1024++
    stor3[arg1][address(msg.sender)] = 1
    emit ConfirmTransaction(msg.sender, arg1);
}

function getOwners() {
    idx = 0
    s = 0
    while idx < owners.length:
        mem[0] = address(owners[idx])
        mem[32] = 2
        if not stor2[address(stor1[idx])]:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if s > -2:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 1
        continue 
    if s > test266151307():
        revert with 'NH{q', 65
    mem[96] = s
    mem[64] = (32 * s) + 128
    if s:
        mem[128 len 32 * s] = call.data[calldata.size len 32 * s]
    idx = 0
    t = 0
    while idx < owners.length:
        mem[0] = address(owners[idx])
        mem[32] = 2
        if not stor2[address(stor1[idx])]:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            t = t
            continue 
        if t >= s:
            revert with 'NH{q', 50
        mem[(32 * t) + 128] = address(owners[idx])
        if t == -1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        t = t + 1
        continue 
    mem[(32 * s) + 128] = 32
    mem[(32 * s) + 160] = s
    idx = 0
    t = 128
    u = mem[64] + 64
    while idx < mem[96]:
        mem[u] = mem[t + 12 len 20]
        idx = idx + 1
        t = t + 32
        u = u + 32
        continue 
    return memory
      from mem[64]
       len (64 * s) + -mem[64] + 192
}

function submitTransaction(address arg1, uint256 arg2, bytes arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg3.length)) + 97 > test266151307() or ceil32(ceil32(arg3.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg3 + arg3.length + 36 <= calldata.size
    if not stor2[address(msg.sender)]:
        revert with 0, 'NO_OWNER_INVOKER'
    stor4.length++
    stor4[stor4.length].field_0 = arg1
    stor4[stor4.length].field_256 = arg2
    if stor4[stor4.length].field_512:
        if stor4[stor4.length].field_512 == stor4[stor4.length].field_513 < 32:
            revert with 'NH{q', 34
        if arg3.length:
            stor[sha3((5 * stor4.length) + ('name', 'stor4', 4) + 2)][].field_0 = Array(len=arg3.length, data=arg3[all])
        else:
            stor4[stor4.length].field_512 = 0
            idx = 0
            while stor4[stor4.length].field_513 + 31 / 32 > idx:
                stor[idx + sha3((5 * stor4.length) + ('name', 'stor4', 4) + 2)].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor4[stor4.length].field_512 == stor4[stor4.length].field_513 < 32:
            revert with 'NH{q', 34
        if arg3.length:
            stor[sha3((5 * stor4.length) + ('name', 'stor4', 4) + 2)][].field_0 = Array(len=arg3.length, data=arg3[all])
        else:
            stor4[stor4.length].field_512 = 0
            idx = 0
            while stor4[stor4.length].field_513 + 31 / 32 > idx:
                stor[idx + sha3((5 * stor4.length) + ('name', 'stor4', 4) + 2)].field_0 = 0
                idx = idx + 1
                continue 
    stor4[stor4.length].field_768 = 0
    stor4[stor4.length].field_1024 = 0
    emit SubmitTransaction(address arg1, uint256 arg2, address arg3, uint256 arg4, bytes arg5):
                           arg2,
                           64,
                           arg3.length,
                           arg3[all],
                           0,
                           msg.sender,
                           stor4.length,
                           arg1,
}

function executeTransaction(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor2[address(msg.sender)]:
        revert with 0, 'NO_OWNER_INVOKER'
    if arg1 >= stor4.length:
        revert with 0, 'TX_INVALID'
    if stor4[arg1].field_768:
        revert with 0, 'TX_NOT_EXECUTED'
    if arg1 >= stor4.length:
        revert with 'NH{q', 50
    if stor4[arg1].field_768:
        revert with 0, 'ALREADY_EXECUTED'
    if stor4[arg1].field_1024 < sub_efa2823c:
        revert with 0, 'CANNOT_EXECUTE_TX'
    stor4[arg1].field_768 = 1
    if stor4[arg1].field_512:
        if stor4[arg1].field_512 == stor4[arg1].field_513 < 32:
            revert with 'NH{q', 34
        if not stor4[arg1].field_512:
            mem[96] = Mask(248, 8, stor4[arg1].field_512)
            call stor4[arg1].field_0 with:
               funct stor4[arg1].field_736
               value stor4[arg1].field_256 wei
                 gas gas_remaining wei
                args mem[100 len stor4[arg1].field_513 - 4]
        else:
            if stor4[arg1].field_512 != 1:
                call stor4[arg1].field_0.mem[96 len 4] with:
                   value stor4[arg1].field_256 wei
                     gas gas_remaining wei
                    args mem[100 len -100]
            else:
                idx = 0
                s = 0
                while idx < stor4[arg1].field_513:
                    mem[idx + 96] = stor[s + sha3((5 * arg1) + ('name', 'stor4', 4) + 2)].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                call stor4[arg1].field_0.mem[96 len 4] with:
                   value stor4[arg1].field_256 wei
                     gas gas_remaining wei
                    args mem[100 len stor4[arg1].field_513 - 4]
    else:
        if stor4[arg1].field_512 == stor4[arg1].field_513 < 32:
            revert with 'NH{q', 34
        if not stor4[arg1].field_512:
            mem[96] = Mask(248, 8, stor4[arg1].field_512)
            call stor4[arg1].field_0 with:
               funct stor4[arg1].field_736
               value stor4[arg1].field_256 wei
                 gas gas_remaining wei
                args mem[100 len stor4[arg1].field_513 - 4]
        else:
            if stor4[arg1].field_512 != 1:
                call stor4[arg1].field_0.mem[96 len 4] with:
                   value stor4[arg1].field_256 wei
                     gas gas_remaining wei
                    args mem[100 len -100]
            else:
                idx = 0
                s = 0
                while idx < stor4[arg1].field_513:
                    mem[idx + 96] = stor[s + sha3((5 * arg1) + ('name', 'stor4', 4) + 2)].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                call stor4[arg1].field_0.mem[96 len 4] with:
                   value stor4[arg1].field_256 wei
                     gas gas_remaining wei
                    args mem[100 len stor4[arg1].field_513 - 4]
    if not ext_call.success:
        revert with 0, 'TX_FAIL'
    emit ExecuteTransaction(msg.sender, arg1);
}

function transactions(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < stor4.length
    if stor4[arg1].field_512:
        if stor4[arg1].field_512 == stor4[arg1].field_513 < 32:
            revert with 'NH{q', 34
        if stor4[arg1].field_512:
            if stor4[arg1].field_512 == stor4[arg1].field_513 < 32:
                revert with 'NH{q', 34
            if stor4[arg1].field_513:
                if 31 >= stor4[arg1].field_513:
                    mem[128] = 256 * stor4[arg1].field_520
                else:
                    mem[128] = stor[sha3((5 * arg1) + ('name', 'stor4', 4) + 2)].field_0
                    idx = 128
                    s = 0
                    while stor4[arg1].field_513 + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((5 * arg1) + ('name', 'stor4', 4) + 2)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor4[arg1].field_512 == stor4[arg1].field_513 < 32:
                revert with 'NH{q', 34
            if stor4[arg1].field_513:
                if 31 >= stor4[arg1].field_513:
                    mem[128] = 256 * stor4[arg1].field_520
                else:
                    mem[128] = stor[sha3((5 * arg1) + ('name', 'stor4', 4) + 2)].field_0
                    idx = 128
                    s = 0
                    while stor4[arg1].field_513 + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((5 * arg1) + ('name', 'stor4', 4) + 2)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return stor4[arg1].field_0, 
               stor4[arg1].field_256,
               Array(len=2 * Mask(256, -1, stor4[arg1].field_513), data=mem[128 len ceil32(stor4[arg1].field_513)]),
               bool(stor4[arg1].field_768),
               stor4[arg1].field_1024
    if stor4[arg1].field_512 == stor4[arg1].field_513 < 32:
        revert with 'NH{q', 34
    if stor4[arg1].field_512:
        if stor4[arg1].field_512 == stor4[arg1].field_513 < 32:
            revert with 'NH{q', 34
        if stor4[arg1].field_513:
            if 31 >= stor4[arg1].field_513:
                mem[128] = 256 * stor4[arg1].field_520
            else:
                mem[128] = stor[sha3((5 * arg1) + ('name', 'stor4', 4) + 2)].field_0
                idx = 128
                s = 0
                while stor4[arg1].field_513 + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((5 * arg1) + ('name', 'stor4', 4) + 2)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor4[arg1].field_512 == stor4[arg1].field_513 < 32:
            revert with 'NH{q', 34
        if stor4[arg1].field_513:
            if 31 >= stor4[arg1].field_513:
                mem[128] = 256 * stor4[arg1].field_520
            else:
                mem[128] = stor[sha3((5 * arg1) + ('name', 'stor4', 4) + 2)].field_0
                idx = 128
                s = 0
                while stor4[arg1].field_513 + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((5 * arg1) + ('name', 'stor4', 4) + 2)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return stor4[arg1].field_0, 
           stor4[arg1].field_256,
           Array(len=stor4[arg1].field_512, data=mem[128 len ceil32(stor4[arg1].field_513)]),
           bool(stor4[arg1].field_768),
           stor4[arg1].field_1024
}

function getTransaction(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= stor4.length:
        revert with 'NH{q', 50
    if stor4[arg1].field_512:
        if stor4[arg1].field_512 == stor4[arg1].field_513 < 32:
            revert with 'NH{q', 34
        if stor4[arg1].field_512:
            if stor4[arg1].field_512 == stor4[arg1].field_513 < 32:
                revert with 'NH{q', 34
            if stor4[arg1].field_513:
                if 31 >= stor4[arg1].field_513:
                    mem[128] = 256 * stor4[arg1].field_520
                else:
                    mem[128] = stor[sha3((5 * arg1) + ('name', 'stor4', 4) + 2)].field_0
                    idx = 128
                    s = 0
                    while stor4[arg1].field_513 + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((5 * arg1) + ('name', 'stor4', 4) + 2)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor4[arg1].field_512 == stor4[arg1].field_513 < 32:
                revert with 'NH{q', 34
            if stor4[arg1].field_513:
                if 31 >= stor4[arg1].field_513:
                    mem[128] = 256 * stor4[arg1].field_520
                else:
                    mem[128] = stor[sha3((5 * arg1) + ('name', 'stor4', 4) + 2)].field_0
                    idx = 128
                    s = 0
                    while stor4[arg1].field_513 + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((5 * arg1) + ('name', 'stor4', 4) + 2)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return stor4[arg1].field_0, 
               stor4[arg1].field_256,
               Array(len=2 * Mask(256, -1, stor4[arg1].field_513), data=mem[128 len ceil32(stor4[arg1].field_513)]),
               bool(stor4[arg1].field_768),
               stor4[arg1].field_1024
    if stor4[arg1].field_512 == stor4[arg1].field_513 < 32:
        revert with 'NH{q', 34
    if stor4[arg1].field_512:
        if stor4[arg1].field_512 == stor4[arg1].field_513 < 32:
            revert with 'NH{q', 34
        if stor4[arg1].field_513:
            if 31 >= stor4[arg1].field_513:
                mem[128] = 256 * stor4[arg1].field_520
            else:
                mem[128] = stor[sha3((5 * arg1) + ('name', 'stor4', 4) + 2)].field_0
                idx = 128
                s = 0
                while stor4[arg1].field_513 + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((5 * arg1) + ('name', 'stor4', 4) + 2)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor4[arg1].field_512 == stor4[arg1].field_513 < 32:
            revert with 'NH{q', 34
        if stor4[arg1].field_513:
            if 31 >= stor4[arg1].field_513:
                mem[128] = 256 * stor4[arg1].field_520
            else:
                mem[128] = stor[sha3((5 * arg1) + ('name', 'stor4', 4) + 2)].field_0
                idx = 128
                s = 0
                while stor4[arg1].field_513 + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((5 * arg1) + ('name', 'stor4', 4) + 2)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return stor4[arg1].field_0, 
           stor4[arg1].field_256,
           Array(len=stor4[arg1].field_512, data=mem[128 len ceil32(stor4[arg1].field_513)]),
           bool(stor4[arg1].field_768),
           stor4[arg1].field_1024
}

function getTransactions() {
    mem[64] = (32 * stor4.length) + 128
    mem[96] = stor4.length
    s = 128
    idx = 0
    while idx < stor4.length:
        mem[0] = 4
        _24 = mem[64]
        mem[64] = mem[64] + 160
        mem[_24] = stor4[idx].field_0
        mem[_24 + 32] = stor4[idx].field_256
        if stor4[idx].field_512:
            if stor4[idx].field_512 == stor4[idx].field_513 < 32:
                revert with 'NH{q', 34
            _27 = mem[64]
            mem[64] = mem[64] + ceil32(stor4[idx].field_513) + 32
            mem[_27] = stor4[idx].field_513
            if stor4[idx].field_512:
                if stor4[idx].field_512 == stor4[idx].field_513 < 32:
                    revert with 'NH{q', 34
                if stor4[idx].field_513:
                    if 31 >= stor4[idx].field_513:
                        mem[_27 + 32] = 256 * stor4[idx].field_520
                    else:
                        mem[0] = (5 * idx) + sha3(4) + 2
                        mem[_27 + 32] = stor[sha3((5 * idx) + ('name', 'stor4', 4) + 2)].field_0
                        t = _27 + 32
                        u = sha3(mem[0])
                        while _27 + stor4[idx].field_513 > t:
                            mem[t + 32] = uint256(owners[u])
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_24 + 64] = _27
                mem[_24 + 96] = bool(stor4[idx].field_768)
                mem[_24 + 128] = stor4[idx].field_1024
                mem[s] = _24
                s = s + 32
                idx = idx + 1
                continue 
            if stor4[idx].field_512 == stor4[idx].field_513 < 32:
                revert with 'NH{q', 34
            if not stor4[idx].field_513:
                mem[_24 + 64] = _27
                mem[_24 + 96] = bool(stor4[idx].field_768)
                mem[_24 + 128] = stor4[idx].field_1024
                mem[s] = _24
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor4[idx].field_513:
                mem[_27 + 32] = 256 * stor4[idx].field_520
                mem[_24 + 64] = _27
                mem[_24 + 96] = bool(stor4[idx].field_768)
                mem[_24 + 128] = stor4[idx].field_1024
                mem[s] = _24
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (5 * idx) + sha3(4) + 2
            mem[_27 + 32] = stor[sha3((5 * idx) + ('name', 'stor4', 4) + 2)].field_0
            t = _27 + 32
            u = sha3(mem[0])
            while _27 + stor4[u].field_513 > t:
                mem[t + 32] = uint256(owners[u])
                t = t + 32
                u = u + 1
                continue 
            mem[_24 + 64] = _27
            mem[_24 + 96] = bool(stor4[u].field_768)
            mem[_24 + 128] = stor4[u].field_1024
            mem[t] = _24
            t = t + 32
            u = u + 1
            continue 
        if stor4[idx].field_512 == stor4[idx].field_513 < 32:
            revert with 'NH{q', 34
        _28 = mem[64]
        mem[64] = mem[64] + ceil32(stor4[idx].field_513) + 32
        mem[_28] = stor4[idx].field_513
        if stor4[idx].field_512:
            if stor4[idx].field_512 == stor4[idx].field_513 < 32:
                revert with 'NH{q', 34
            if not stor4[idx].field_513:
                mem[_24 + 64] = _28
                mem[_24 + 96] = bool(stor4[idx].field_768)
                mem[_24 + 128] = stor4[idx].field_1024
                mem[s] = _24
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor4[idx].field_513:
                mem[_28 + 32] = 256 * stor4[idx].field_520
                mem[_24 + 64] = _28
                mem[_24 + 96] = bool(stor4[idx].field_768)
                mem[_24 + 128] = stor4[idx].field_1024
                mem[s] = _24
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (5 * idx) + sha3(4) + 2
            mem[_28 + 32] = stor[sha3((5 * idx) + ('name', 'stor4', 4) + 2)].field_0
            t = _28 + 32
            u = sha3(mem[0])
            while _28 + stor4[u].field_513 > t:
                mem[t + 32] = uint256(owners[u])
                t = t + 32
                u = u + 1
                continue 
            mem[_24 + 64] = _28
            mem[_24 + 96] = bool(stor4[u].field_768)
            mem[_24 + 128] = stor4[u].field_1024
            mem[t] = _24
            t = t + 32
            u = u + 1
            continue 
        if stor4[idx].field_512 == stor4[idx].field_513 < 32:
            revert with 'NH{q', 34
        if stor4[idx].field_513:
            if 31 >= stor4[idx].field_513:
                mem[_28 + 32] = 256 * stor4[idx].field_520
            else:
                mem[0] = (5 * idx) + sha3(4) + 2
                mem[_28 + 32] = stor[sha3((5 * idx) + ('name', 'stor4', 4) + 2)].field_0
                t = _28 + 32
                u = sha3(mem[0])
                while _28 + stor4[idx].field_513 > t:
                    mem[t + 32] = uint256(owners[u])
                    t = t + 32
                    u = u + 1
                    continue 
        mem[_24 + 64] = _28
        mem[_24 + 96] = bool(stor4[idx].field_768)
        mem[_24 + 128] = stor4[idx].field_1024
        mem[s] = _24
        s = s + 32
        idx = idx + 1
        continue 
    _25 = mem[64]
    mem[mem[64]] = 32
    _26 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + (32 * mem[96]) + 64
    u = mem[64] + 64
    while idx < _26:
        mem[u] = t + -_25 - 64
        _44 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_44 + 32]
        _48 = mem[_44 + 64]
        mem[t + 64] = 160
        _49 = mem[_48]
        mem[t + 160] = mem[_48]
        v = 0
        while v < _49:
            mem[t + v + 192] = mem[_48 + v + 32]
            v = v + 32
            continue 
        if ceil32(_49) > _49:
            mem[t + _49 + 192] = 0
        mem[t + 96] = bool(mem[_44 + 96])
        mem[t + 128] = mem[_44 + 128]
        idx = idx + 1
        s = s + 32
        t = t + ceil32(_49) + 192
        u = u + 32
        continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
