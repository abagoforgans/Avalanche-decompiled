contract main {




// =====================  Runtime code  =====================


uint256 totalWaves;
array of uint256 stor1;
array of struct stor2;
mapping of uint256 sub_a42a4663;

function getTotalWaves() payable {
    staticcall 'console.log'.0x9710a9d0 with:
            gas gas_remaining wei
           args 0, 64, totalWaves, 23, 'We have %d total waves!', 0
    return totalWaves
}

function sub_a42a4663(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_a42a4663[arg1]
}

function _fallback() payable {
    revert
}

function sub_449d46c0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    if sub_a42a4663[address(msg.sender)] > -901:
        revert with 'NH{q', 17
    if sub_a42a4663[address(msg.sender)] + 900 >= block.timestamp:
        revert with 0, 'Wait 15m'
    sub_a42a4663[address(msg.sender)] = block.timestamp
    if totalWaves > -2:
        revert with 'NH{q', 17
    totalWaves++
    staticcall 'console.log'.log(string arg1, address arg2) with:
            gas gas_remaining wei
           args 0, 64, msg.sender, 13, '%s has waved!', 0
    stor2.length++
    stor2[stor2.length].field_0 = msg.sender
    if stor2[stor2.length].field_256:
        if stor2[stor2.length].field_256 == stor2[stor2.length].field_257 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor[sha3((3 * stor2.length) + ('name', 'stor2', 2) + 1)][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor2[stor2.length].field_256 = 0
            idx = 0
            while stor2[stor2.length].field_257 + 31 / 32 > idx:
                stor[idx + sha3((3 * stor2.length) + ('name', 'stor2', 2) + 1)].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor2[stor2.length].field_256 == stor2[stor2.length].field_257 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor[sha3((3 * stor2.length) + ('name', 'stor2', 2) + 1)][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor2[stor2.length].field_256 = 0
            idx = 0
            while stor2[stor2.length].field_257 + 31 / 32 > idx:
                stor[idx + sha3((3 * stor2.length) + ('name', 'stor2', 2) + 1)].field_0 = 0
                idx = idx + 1
                continue 
    stor2[stor2.length].field_512 = block.timestamp
    if block.difficulty > -block.timestamp - 1:
        revert with 'NH{q', 17
    if block.difficulty + block.timestamp > -stor1.length - 1:
        revert with 'NH{q', 17
    stor1.length = block.difficulty + block.timestamp + stor1.length % 100
    if stor1.length <= 25:
        staticcall 'console.log'.log(string arg1, address arg2) with:
                gas gas_remaining wei
               args 0, 64, msg.sender, 7, '%s won!', 0
        if 10^13 > eth.balance(this.address):
            revert with 0, 'Trying to withdraw more money than the contract has.'
        call msg.sender with:
           value 10^13 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'Failed to withdraw money from contract.'
    emit NewWave(block.timestamp, Array(len=arg1.length, data=arg1[all]), msg.sender);
}

function getAllWaves() payable {
    mem[64] = (32 * stor2.length) + 128
    mem[96] = stor2.length
    s = 128
    idx = 0
    while idx < stor2.length:
        mem[0] = 2
        _21 = mem[64]
        mem[64] = mem[64] + 96
        mem[_21] = stor2[idx].field_0
        if stor2[idx].field_256:
            if stor2[idx].field_256 == stor2[idx].field_257 < 32:
                revert with 'NH{q', 34
            _24 = mem[64]
            mem[64] = mem[64] + ceil32(stor2[idx].field_257) + 32
            mem[_24] = stor2[idx].field_257
            if stor2[idx].field_256:
                if stor2[idx].field_256 == stor2[idx].field_257 < 32:
                    revert with 'NH{q', 34
                if stor2[idx].field_257:
                    if 31 >= stor2[idx].field_257:
                        mem[_24 + 32] = 256 * stor2[idx].field_264
                    else:
                        mem[0] = (3 * idx) + sha3(2) + 1
                        mem[_24 + 32] = stor[sha3((3 * idx) + ('name', 'stor2', 2) + 1)].field_0
                        t = _24 + 32
                        u = sha3(mem[0])
                        while _24 + stor2[idx].field_257 > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_21 + 32] = _24
                mem[_21 + 64] = stor2[idx].field_512
                mem[s] = _21
                s = s + 32
                idx = idx + 1
                continue 
            if stor2[idx].field_256 == stor2[idx].field_257 < 32:
                revert with 'NH{q', 34
            if not stor2[idx].field_257:
                mem[_21 + 32] = _24
                mem[_21 + 64] = stor2[idx].field_512
                mem[s] = _21
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor2[idx].field_257:
                mem[_24 + 32] = 256 * stor2[idx].field_264
                mem[_21 + 32] = _24
                mem[_21 + 64] = stor2[idx].field_512
                mem[s] = _21
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (3 * idx) + sha3(2) + 1
            mem[_24 + 32] = stor[sha3((3 * idx) + ('name', 'stor2', 2) + 1)].field_0
            t = _24 + 32
            u = sha3(mem[0])
            while _24 + stor2[u].field_257 > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_21 + 32] = _24
            mem[_21 + 64] = stor2[u].field_512
            mem[t] = _21
            t = t + 32
            u = u + 1
            continue 
        if stor2[idx].field_256 == stor2[idx].field_257 < 32:
            revert with 'NH{q', 34
        _25 = mem[64]
        mem[64] = mem[64] + ceil32(stor2[idx].field_257) + 32
        mem[_25] = stor2[idx].field_257
        if stor2[idx].field_256:
            if stor2[idx].field_256 == stor2[idx].field_257 < 32:
                revert with 'NH{q', 34
            if not stor2[idx].field_257:
                mem[_21 + 32] = _25
                mem[_21 + 64] = stor2[idx].field_512
                mem[s] = _21
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor2[idx].field_257:
                mem[_25 + 32] = 256 * stor2[idx].field_264
                mem[_21 + 32] = _25
                mem[_21 + 64] = stor2[idx].field_512
                mem[s] = _21
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (3 * idx) + sha3(2) + 1
            mem[_25 + 32] = stor[sha3((3 * idx) + ('name', 'stor2', 2) + 1)].field_0
            t = _25 + 32
            u = sha3(mem[0])
            while _25 + stor2[u].field_257 > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_21 + 32] = _25
            mem[_21 + 64] = stor2[u].field_512
            mem[t] = _21
            t = t + 32
            u = u + 1
            continue 
        if stor2[idx].field_256 == stor2[idx].field_257 < 32:
            revert with 'NH{q', 34
        if stor2[idx].field_257:
            if 31 >= stor2[idx].field_257:
                mem[_25 + 32] = 256 * stor2[idx].field_264
            else:
                mem[0] = (3 * idx) + sha3(2) + 1
                mem[_25 + 32] = stor[sha3((3 * idx) + ('name', 'stor2', 2) + 1)].field_0
                t = _25 + 32
                u = sha3(mem[0])
                while _25 + stor2[idx].field_257 > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
        mem[_21 + 32] = _25
        mem[_21 + 64] = stor2[idx].field_512
        mem[s] = _21
        s = s + 32
        idx = idx + 1
        continue 
    _22 = mem[64]
    mem[mem[64]] = 32
    _23 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + (32 * mem[96]) + 64
    u = mem[64] + 64
    while idx < _23:
        mem[u] = t + -_22 - 64
        _38 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        _41 = mem[_38 + 32]
        mem[t + 32] = 96
        _42 = mem[_41]
        mem[t + 96] = mem[_41]
        v = 0
        while v < _42:
            mem[t + v + 128] = mem[_41 + v + 32]
            v = v + 32
            continue 
        if ceil32(_42) > _42:
            mem[t + _42 + 128] = 0
        mem[t + 64] = mem[_38 + 64]
        idx = idx + 1
        s = s + 32
        t = t + ceil32(_42) + 128
        u = u + 32
        continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
