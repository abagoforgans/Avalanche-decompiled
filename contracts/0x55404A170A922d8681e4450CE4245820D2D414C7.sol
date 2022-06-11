contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
uint256 stor1;

function _fallback() payable {
  stop
}

function transferOwner(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor0[msg.sender]:
        revert with 0, 'O'
    stor0[address(arg1)] = 1
    stor0[arg2] = 0
}

function sub_00007237(?) payable {
    mem[64] = 96
    require not msg.value
    idx = 4
    while idx < calldata.size:
        mem[95 len 1] = call.data[idx len 1]
        create2 contract with 0 wei
                        salt: mem[64 len 31], call.data[idx len 1]
                        code: 117511356030603777739333363
        idx = idx + 1
        continue 
}

function addOwners(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if 0x1039184e2c81b8be5f57d939c0c42c1bb287d71b != msg.sender:
        revert with 0, 'O'
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 0
        stor0[address(cd[((32 * idx) + arg1 + 36)])] = 1
        idx = idx + 1
        continue 
}

function sub_ce1ef577(?) {
    mem[0] = msg.sender
    mem[32] = 0
    if not stor0[msg.sender]:
        revert with 0, 'O'
    mem[96] = 256
    mem[64] = 8320
    mem[128 len 8192] = call.data[calldata.size len 8192]
    idx = 0
    while idx < 256:
        mem[mem[64] + 32] = 0xff00000000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 33] = address(this.address)
        mem[mem[64] + 53] = idx
        mem[mem[64] + 85] = 0xab13fe3498fefe9080d9d601a6eee9aa1ccad8740c402021b55940ca1c468e7d
        _13 = mem[64]
        mem[mem[64]] = 85
        mem[64] = mem[64] + 117
        require idx < mem[96]
        mem[(32 * idx) + 128] = address(sha3(mem[_13 + 32 len mem[_13]]))
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _12 = mem[96]
    mem[mem[64] + 32] = mem[96]
    s = 0
    s = mem[64] + 64
    t = 128
    while 256 < _12:
        mem[s] = mem[t + 12 len 20]
        s = 257
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len s - mem[64]
}

function sub_15d23711(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if not stor0[msg.sender]:
        revert with 0, 'O'
    require ('cd', 4).length <= test266151307()
    mem[96] = ('cd', 4).length
    mem[64] = (32 * ('cd', 4).length) + 128
    if ('cd', 4).length:
        mem[128 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        require idx < ('cd', 4).length
        mem[(32 * idx) + 128] = not bool(uint32(ext_code.size(cd[((32 * idx) + cd[4] + 36)])))
        idx = idx + 1
        continue 
    mem[(32 * ('cd', 4).length) + 128] = 32
    mem[(32 * ('cd', 4).length) + 160] = ('cd', 4).length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < ('cd', 4).length:
        mem[s] = bool(mem[t])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * ('cd', 4).length) + -mem[64] + 192
}

function sub_a6c97355(?) {
    require calldata.size - 4 >= 32
    mem[0] = msg.sender
    mem[32] = 0
    if not stor0[msg.sender]:
        revert with 0, 'O'
    require arg1 <= test266151307()
    mem[96] = arg1
    mem[64] = (32 * arg1) + 128
    if not arg1:
        idx = 0
        while idx < arg1:
            mem[mem[64] + 32] = 0xff00000000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 33] = address(this.address)
            mem[mem[64] + 53] = idx + stor1
            mem[mem[64] + 85] = 0xab13fe3498fefe9080d9d601a6eee9aa1ccad8740c402021b55940ca1c468e7d
            _29 = mem[64]
            mem[mem[64]] = 85
            mem[64] = mem[64] + 117
            require idx < mem[96]
            mem[(32 * idx) + 128] = address(sha3(mem[_29 + 32 len mem[_29]]))
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _27 = mem[96]
        mem[mem[64] + 32] = mem[96]
        s = 0
        s = mem[64] + 64
        t = 128
        while arg1 < _27:
            mem[s] = mem[t + 12 len 20]
            s = arg1 + 1
            s = s + 32
            t = t + 32
            continue 
    else:
        mem[128 len 32 * arg1] = call.data[calldata.size len 32 * arg1]
        idx = 0
        while idx < arg1:
            mem[mem[64] + 32] = 0xff00000000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 33] = address(this.address)
            mem[mem[64] + 53] = idx + stor1
            mem[mem[64] + 85] = 0xab13fe3498fefe9080d9d601a6eee9aa1ccad8740c402021b55940ca1c468e7d
            _32 = mem[64]
            mem[mem[64]] = 85
            mem[64] = mem[64] + 117
            require idx < mem[96]
            mem[(32 * idx) + 128] = address(sha3(mem[_32 + 32 len mem[_32]]))
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _28 = mem[96]
        mem[mem[64] + 32] = mem[96]
        s = 0
        s = mem[64] + 64
        t = 128
        while arg1 < _28:
            mem[s] = mem[t + 12 len 20]
            s = arg1 + 1
            s = s + 32
            t = t + 32
            continue 
    return memory
      from mem[64]
       len s - mem[64]
}

function sub_add4a9c2(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = 0
    if not stor0[msg.sender]:
        revert with 0, 'O'
    require ('cd', 4).length <= test266151307()
    mem[96] = ('cd', 4).length
    mem[64] = (32 * ('cd', 4).length) + 128
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            mem[mem[64] + 32] = 0xff00000000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 33] = address(this.address)
            mem[mem[64] + 53] = cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64] + 85] = 0xab13fe3498fefe9080d9d601a6eee9aa1ccad8740c402021b55940ca1c468e7d
            _29 = mem[64]
            mem[mem[64]] = 85
            mem[64] = mem[64] + 117
            require idx < mem[96]
            mem[(32 * idx) + 128] = not bool(uint32(ext_code.size(sha3(mem[_29 + 32 len mem[_29]]))))
            idx = idx + 1
            continue 
        _23 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < mem[96]:
            mem[s] = bool(mem[t])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _23 + (32 * mem[96]) + -mem[64] + 64
    mem[128 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    idx = 0
    while idx < ('cd', 4).length:
        mem[mem[64] + 32] = 0xff00000000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 33] = address(this.address)
        mem[mem[64] + 53] = cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64] + 85] = 0xab13fe3498fefe9080d9d601a6eee9aa1ccad8740c402021b55940ca1c468e7d
        _32 = mem[64]
        mem[mem[64]] = 85
        mem[64] = mem[64] + 117
        require idx < mem[96]
        mem[(32 * idx) + 128] = not bool(uint32(ext_code.size(sha3(mem[_32 + 32 len mem[_32]]))))
        idx = idx + 1
        continue 
    _25 = mem[64]
    mem[mem[64]] = 32
    _28 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < _28:
        mem[s] = bool(mem[t])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _25 + (32 * _28) + -mem[64] + 64
}

function sub_00009d28(?) {
    idx = 0, call.data[4 len 1] / 32
    s = stor1
    while idx:
        create2 contract with 0 wei
                        salt: s
                        code: 117511356030603777739333363
        create2 contract with 0 wei
                        salt: (s + 1)
                        code: 117511356030603777739333363
        create2 contract with 0 wei
                        salt: (s + 2)
                        code: 117511356030603777739333363
        create2 contract with 0 wei
                        salt: (s + 3)
                        code: 117511356030603777739333363
        create2 contract with 0 wei
                        salt: (s + 4)
                        code: 117511356030603777739333363
        create2 contract with 0 wei
                        salt: (s + 5)
                        code: 117511356030603777739333363
        create2 contract with 0 wei
                        salt: (s + 6)
                        code: 117511356030603777739333363
        create2 contract with 0 wei
                        salt: (s + 7)
                        code: 117511356030603777739333363
        create2 contract with 0 wei
                        salt: (s + 8)
                        code: 117511356030603777739333363
        create2 contract with 0 wei
                        salt: (s + 9)
                        code: 117511356030603777739333363
        create2 contract with 0 wei
                        salt: (s + 10)
                        code: 117511356030603777739333363
        create2 contract with 0 wei
                        salt: (s + 11)
                        code: 117511356030603777739333363
        create2 contract with 0 wei
                        salt: (s + 12)
                        code: 117511356030603777739333363
        create2 contract with 0 wei
                        salt: (s + 13)
                        code: 117511356030603777739333363
        create2 contract with 0 wei
                        salt: (s + 14)
                        code: 117511356030603777739333363
        create2 contract with 0 wei
                        salt: (s + 15)
                        code: 117511356030603777739333363
        create2 contract with 0 wei
                        salt: (s + 16)
                        code: 117511356030603777739333363
        create2 contract with 0 wei
                        salt: (s + 17)
                        code: 117511356030603777739333363
        create2 contract with 0 wei
                        salt: (s + 18)
                        code: 117511356030603777739333363
        create2 contract with 0 wei
                        salt: (s + 19)
                        code: 117511356030603777739333363
        create2 contract with 0 wei
                        salt: (s + 20)
                        code: 117511356030603777739333363
        create2 contract with 0 wei
                        salt: (s + 21)
                        code: 117511356030603777739333363
        create2 contract with 0 wei
                        salt: (s + 22)
                        code: 117511356030603777739333363
        create2 contract with 0 wei
                        salt: (s + 23)
                        code: 117511356030603777739333363
        create2 contract with 0 wei
                        salt: (s + 24)
                        code: 117511356030603777739333363
        create2 contract with 0 wei
                        salt: (s + 25)
                        code: 117511356030603777739333363
        create2 contract with 0 wei
                        salt: (s + 26)
                        code: 117511356030603777739333363
        create2 contract with 0 wei
                        salt: (s + 27)
                        code: 117511356030603777739333363
        create2 contract with 0 wei
                        salt: (s + 28)
                        code: 117511356030603777739333363
        create2 contract with 0 wei
                        salt: (s + 29)
                        code: 117511356030603777739333363
        create2 contract with 0 wei
                        salt: (s + 30)
                        code: 117511356030603777739333363
        create2 contract with 0 wei
                        salt: (s + 31)
                        code: 117511356030603777739333363
        idx = idx - 1
        s = s + 32
        continue 
    idx = call.data[4 len 1] % 32
    t = s
    while idx:
        create2 contract with 0 wei
                        salt: t
                        code: 117511356030603777739333363
        idx = idx - 1
        t = t + 1
        continue 
    idx = 5
    while idx < calldata.size:
        mem[95 len 1] = call.data[idx len 1]
        create2 contract with 0 wei
                        salt: 0, call.data[idx len 1]
                        code: 117511356030603777739333363
        idx = idx + 1
        continue 
    stor1 = t
}



}
