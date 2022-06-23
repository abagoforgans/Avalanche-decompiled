contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;
uint256 initialized;
uint256 totalShares;
uint256 totalReleased;
mapping of uint256 shares;
mapping of uint256 released;
array of address payee;

function initialized() {
    return initialized
}

function totalShares() {
    return totalShares
}

function paused() {
    return bool(stor0)
}

function payee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= payee.length:
        revert with 0, 50
    return payee[arg1]
}

function owner() {
    return owner
}

function released(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return released[address(arg1)]
}

function shares(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return shares[address(arg1)]
}

function totalReleased() {
    return totalReleased
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function pause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor0:
        revert with 0, 'Pausable: paused'
    stor0 = 1
    emit Paused(msg.sender);
}

function unpause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor0:
        revert with 0, 'Pausable: not paused'
    stor0 = 0
    emit Unpaused(msg.sender);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_aeae177c(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if eth.balance(this.address) > !totalReleased:
        revert with 0, 17
    if eth.balance(this.address) + totalReleased and shares[address(arg1)] > -1 / eth.balance(this.address) + totalReleased:
        revert with 0, 17
    if not totalShares:
        revert with 0, 18
    if (eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares < released[address(arg1)]:
        revert with 0, 17
    return (((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)])
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address) < eth.balance(this.address):
        revert with 0, 'Address: insufficient balance'
    call arg1 with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Address: unable to send value, recipient may have reverted'
    else:
        if not ext_call.success:
            revert with 0, 'Address: unable to send value, recipient may have reverted'
    ('bool', 'ext_call.success')
}

function release(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0:
        revert with 0, 'Pausable: paused'
    if not shares[address(arg1)]:
        revert with 3056671879
    if eth.balance(this.address) > !totalReleased:
        revert with 0, 17
    if eth.balance(this.address) + totalReleased and shares[address(arg1)] > -1 / eth.balance(this.address) + totalReleased:
        revert with 0, 17
    if not totalShares:
        revert with 0, 18
    if (eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares < released[address(arg1)]:
        revert with 0, 17
    if ((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)] <= 0:
        revert with 181661779
    if released[address(arg1)] > !(((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)]):
        revert with 0, 17
    released[address(arg1)] = (eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares
    if totalReleased > !(((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)]):
        revert with 0, 17
    totalReleased = totalReleased + ((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)]
    emit PaymentReleased(address(arg1), ((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)]);
    if eth.balance(this.address) < ((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)]:
        revert with 0, 'Address: insufficient balance'
    call arg1 with:
       value ((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)] wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Address: unable to send value, recipient may have reverted'
    else:
        if not ext_call.success:
            revert with 0, 'Address: unable to send value, recipient may have reverted'
    ('bool', 'ext_call.success')
}

function init(address[] arg1, uint256[] arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
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
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg2.length) + 98 < 97 or ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * arg1.length) + 97] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = ceil32(32 * arg1.length) + 129
    while idx < arg2.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if initialized:
        revert with 3617695215
    if initialized == -1:
        revert with 0, 17
    initialized++
    if not stor0:
        revert with 0, 'Pausable: not paused'
    stor0 = 0
    mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 98] = msg.sender
    emit Unpaused(msg.sender);
    if arg1.length != arg2.length:
        revert with 426286120
    if arg1.length <= 0:
        revert with 3584548557
    idx = 0
    while idx < arg1.length:
        if idx >= mem[96]:
            revert with 0, 50
        if idx >= mem[ceil32(32 * arg1.length) + 97]:
            revert with 0, 50
        _98 = mem[(32 * idx) + ceil32(32 * arg1.length) + 129]
        if not mem[(32 * idx) + 140 len 20]:
            revert with 2458270698
        if mem[(32 * idx) + ceil32(32 * arg1.length) + 129] <= 0:
            revert with 3056671879
        if shares[mem[(32 * idx) + 140 len 20]]:
            revert with 3383641025
        payee.length++
        payee[payee.length] = mem[(32 * idx) + 140 len 20]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 4
        shares[address(mem[(32 * idx) + 128])] = mem[(32 * idx) + ceil32(32 * arg1.length) + 129]
        if totalShares > !mem[(32 * idx) + ceil32(32 * arg1.length) + 129]:
            revert with 0, 17
        totalShares += mem[(32 * idx) + ceil32(32 * arg1.length) + 129]
        mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 98] = mem[(32 * idx) + 140 len 20]
        mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 130] = _98
        emit PayeeAdded(mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 98], _98);
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
        emit PaymentReceived(msg.sender, msg.value);
    else:
        if unknown_0x8456cb59(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xaeae177c(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x8456cb59(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if stor0:
                        revert with 0, 'Pausable: paused'
                    stor0 = 1
                    emit Paused(msg.sender);
                if unknown_0x8b83209b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if cd[4] >= payee.length:
                        revert with 0, 50
                    return payee[cd[4]]
                if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return owner
                require unknown_0x9852595c(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] == address(cd[4])
                return released[address(cd[4])]
            if unknown_0xaeae177c(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] == address(cd[4])
                if eth.balance(this.address) > !totalReleased:
                    revert with 0, 17
                if eth.balance(this.address) + totalReleased and shares[address(cd[4])] > -1 / eth.balance(this.address) + totalReleased:
                    revert with 0, 17
                if not totalShares:
                    revert with 0, 18
                if (eth.balance(this.address) * shares[address(cd[4])]) + (totalReleased * shares[address(cd[4])]) / totalShares < released[address(cd[4])]:
                    revert with 0, 17
                return (((eth.balance(this.address) * shares[address(cd[4])]) + (totalReleased * shares[address(cd[4])]) / totalShares) - released[address(cd[4])])
            if unknown_0xce7c2ac2(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] == address(cd[4])
                return shares[address(cd[4])]
            if unknown_0xe33b7de3(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return totalReleased
            require unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            require calldata.size - 4 >= 32
            require cd[4] == address(cd[4])
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if not address(cd[4]):
                revert with 0, 'Ownable: new owner is the zero address'
            owner = address(cd[4])
            emit OwnershipTransferred(owner, address(cd[4]));
        else:
            if unknown_0x3f4ba83a(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0x3f4ba83a(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if not stor0:
                        revert with 0, 'Pausable: not paused'
                    stor0 = 0
                    emit Unpaused(msg.sender);
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0x51cff8d9(?????):
                        if unknown_0x5c975abb(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return bool(stor0)
                        require unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        owner = 0
                        emit OwnershipTransferred(owner, 0);
                    else:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 'Address: insufficient balance'
                        call address(cd[4]) with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with 0, 'Address: unable to send value, recipient may have reverted'
            else:
                if unknown_0x158ef93e(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return initialized
                if unknown_0x19165587(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if stor0:
                        revert with 0, 'Pausable: paused'
                    if not shares[address(cd[4])]:
                        revert with 3056671879
                    if eth.balance(this.address) > !totalReleased:
                        revert with 0, 17
                    if eth.balance(this.address) + totalReleased and shares[address(cd[4])] > -1 / eth.balance(this.address) + totalReleased:
                        revert with 0, 17
                    if not totalShares:
                        revert with 0, 18
                    if (eth.balance(this.address) * shares[address(cd[4])]) + (totalReleased * shares[address(cd[4])]) / totalShares < released[address(cd[4])]:
                        revert with 0, 17
                    if ((eth.balance(this.address) * shares[address(cd[4])]) + (totalReleased * shares[address(cd[4])]) / totalShares) - released[address(cd[4])] <= 0:
                        revert with 181661779
                    if released[address(cd[4])] > !(((eth.balance(this.address) * shares[address(cd[4])]) + (totalReleased * shares[address(cd[4])]) / totalShares) - released[address(cd[4])]):
                        revert with 0, 17
                    released[address(cd[4])] = (eth.balance(this.address) * shares[address(cd[4])]) + (totalReleased * shares[address(cd[4])]) / totalShares
                    if totalReleased > !(((eth.balance(this.address) * shares[address(cd[4])]) + (totalReleased * shares[address(cd[4])]) / totalShares) - released[address(cd[4])]):
                        revert with 0, 17
                    totalReleased = totalReleased + ((eth.balance(this.address) * shares[address(cd[4])]) + (totalReleased * shares[address(cd[4])]) / totalShares) - released[address(cd[4])]
                    emit PaymentReleased(address(cd[4]), ((eth.balance(this.address) * shares[address(cd[4])]) + (totalReleased * shares[address(cd[4])]) / totalShares) - released[address(cd[4])]);
                    if eth.balance(this.address) < ((eth.balance(this.address) * shares[address(cd[4])]) + (totalReleased * shares[address(cd[4])]) / totalShares) - released[address(cd[4])]:
                        revert with 0, 'Address: insufficient balance'
                    call address(cd[4]) with:
                       value ((eth.balance(this.address) * shares[address(cd[4])]) + (totalReleased * shares[address(cd[4])]) / totalShares) - released[address(cd[4])] wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with 0, 'Address: unable to send value, recipient may have reverted'
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0x371aa158(?????):
                        require unknown_0x3a98ef39(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        return totalShares
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[4] <= test266151307()
                    require cd[4] + 35 < calldata.size
                    if ('cd', 4).length > test266151307():
                        revert with 0, 65
                    if ceil32(32 * ('cd', 4).length) + 129 < 128 or ceil32(32 * ('cd', 4).length) + 129 > test266151307():
                        revert with 0, 65
                    mem[128] = ('cd', 4).length
                    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                    s = cd[4] + 36
                    t = 160
                    idx = 0
                    while idx < ('cd', 4).length:
                        require cd[s] == address(cd[s])
                        mem[t] = cd[s]
                        s = s + 32
                        t = t + 32
                        idx = idx + 1
                        continue 
                    require cd[36] <= test266151307()
                    require cd[36] + 35 < calldata.size
                    if ('cd', 36).length > test266151307():
                        revert with 0, 65
                    if ceil32(32 * ('cd', 36).length) + 130 < 129 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130 > test266151307():
                        revert with 0, 65
                    mem[ceil32(32 * ('cd', 4).length) + 129] = ('cd', 36).length
                    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
                    idx = 0
                    s = cd[36] + 36
                    t = ceil32(32 * ('cd', 4).length) + 161
                    while idx < ('cd', 36).length:
                        mem[t] = cd[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if initialized:
                        revert with 3617695215
                    if initialized == -1:
                        revert with 0, 17
                    initialized++
                    if not stor0:
                        revert with 0, 'Pausable: not paused'
                    stor0 = 0
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] = msg.sender
                    emit Unpaused(msg.sender);
                    if ('cd', 4).length != ('cd', 36).length:
                        revert with 426286120
                    if ('cd', 4).length <= 0:
                        revert with 3584548557
                    idx = 0
                    while idx < ('cd', 4).length:
                        if idx >= mem[128]:
                            revert with 0, 50
                        if idx >= mem[ceil32(32 * ('cd', 4).length) + 129]:
                            revert with 0, 50
                        _175 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 161]
                        if not mem[(32 * idx) + 172 len 20]:
                            revert with 2458270698
                        if mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 161] <= 0:
                            revert with 3056671879
                        if shares[mem[(32 * idx) + 172 len 20]]:
                            revert with 3383641025
                        payee.length++
                        payee[payee.length] = mem[(32 * idx) + 172 len 20]
                        mem[0] = mem[(32 * idx) + 172 len 20]
                        mem[32] = 4
                        shares[address(mem[(32 * idx) + 160])] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 161]
                        if totalShares > !mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 161]:
                            revert with 0, 17
                        totalShares += mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 161]
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] = mem[(32 * idx) + 172 len 20]
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 162] = _175
                        emit PayeeAdded(mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130], _175);
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
}



}
