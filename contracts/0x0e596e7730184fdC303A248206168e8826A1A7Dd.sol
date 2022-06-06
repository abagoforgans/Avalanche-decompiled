contract main {




// =====================  Runtime code  =====================


array of struct stor0;
array of uint256 stor1;

function nextId() payable {
    return stor1.length
}

function _fallback() payable {
    revert
}

function create(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    stor0.length++
    stor0[stor0.length].field_0 = stor1.length
    stor[sha3((2 * stor0.length) + ('name', 'stor0', 0) + 1)][].field_0 = Array(len=arg1.length, data=arg1[all])
    stor1.length++
}

function users(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < stor0.length
    mem[128] = stor[sha3((2 * arg1) + ('name', 'stor0', 0) + 1)].field_0
    idx = 128
    s = 0
    while stor[(2 * arg1) + ('name', 'stor0', 0) + 1].length + 96 > idx:
        mem[idx + 32] = stor[s + sha3((2 * arg1) + ('name', 'stor0', 0) + 1)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return stor0[arg1].field_0, 
           Array(len=stor[(2 * arg1) + ('name', 'stor0', 0) + 1].length, data=mem[128 len stor[(2 * arg1) + ('name', 'stor0', 0) + 1].length])
}

function destroy(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < stor0.length:
        mem[0] = 0
        if stor0[idx].field_0 != arg1:
            idx = idx + 1
            continue 
        require idx < stor0.length
        stor0[idx].field_0 = 0
        stor0[idx].field_256 = 0
        if 31 < stor[(2 * idx) + ('name', 'stor0', 0) + 1].length:
            s = sha3((2 * idx) + sha3(0) + 1)
            while sha3((2 * idx) + sha3(0) + 1) + (stor[(2 * idx) + ('name', 'stor0', 0) + 1].length + 31 / 32) > s:
                stor[s] = 0
                s = s + 1
                continue 
    revert with 0, 'User does not exist!'
}

function update(uint256 arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[64] = ceil32(arg2.length) + 128
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    idx = 0
    while idx < stor0.length:
        mem[0] = 0
        if stor0[idx].field_0 != arg1:
            idx = idx + 1
            continue 
        require idx < stor0.length
        stor0[idx].field_256 = (2 * arg2.length) + 1
        t = sha3((2 * idx) + sha3(0) + 1)
        s = 128
        while arg2.length + 128 > s:
            stor[t] = mem[s]
            t = t + 1
            s = s + 32
            continue 
        s = sha3((2 * idx) + sha3(0) + 1) + (Mask(251, 0, arg2.length + 31) >> 5)
        while sha3((2 * idx) + sha3(0) + 1) + (stor[(2 * idx) + ('name', 'stor0', 0) + 1].length + 31 / 32) > s:
            stor[s] = 0
            s = s + 1
            continue 
    revert with 0, 'User does not exist!'
}

function read(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    idx = 0
    while idx < stor0.length:
        mem[0] = 0
        if stor0[idx].field_0 != arg1:
            idx = idx + 1
            continue 
        require idx < stor0.length
        mem[64] = ceil32(stor[(2 * idx) + ('name', 'stor0', 0) + 1].length) + 128
        mem[96] = stor[(2 * idx) + ('name', 'stor0', 0) + 1].length
        mem[0] = (2 * idx) + sha3(0) + 1
        mem[128] = stor[sha3((2 * idx) + ('name', 'stor0', 0) + 1)].field_0
        s = 128
        t = sha3(mem[0])
        while stor[(2 * idx) + ('name', 'stor0', 0) + 1].length + 96 > s:
            mem[s + 32] = stor1[t]
            s = s + 32
            t = t + 1
            continue 
        _64 = mem[64]
        mem[mem[64]] = stor0[idx].field_0
        mem[mem[64] + 32] = 64
        mem[mem[64] + 64] = mem[96]
        _66 = mem[96]
        idx = 0
        while idx < _66:
            mem[mem[64] + idx + 96] = mem[idx + 128]
            idx = idx + 32
            continue 
        if not _66 % 32:
            return memory
              from mem[64]
               len _66 + _64 + -mem[64] + 96
        mem[floor32(_66) + _64 + 96] = mem[floor32(_66) + _64 + -(_66 % 32) + 128 len _66 % 32]
        return memory
          from mem[64]
           len floor32(_66) + _64 + -mem[64] + 128
    revert with 0, 'User does not exist!'
}



}
