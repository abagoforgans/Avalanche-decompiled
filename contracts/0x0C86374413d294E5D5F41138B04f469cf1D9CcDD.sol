contract main {




// =====================  Runtime code  =====================


array of uint256 data;

function data(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < data.length
    return data[arg1]
}

function _fallback() payable {
    revert
}

function getData() payable {
    mem[64] = (32 * data.length) + 128
    mem[96] = data.length
    s = 128
    idx = 0
    while idx < data.length:
        mem[0] = 0
        _10 = mem[64]
        mem[64] = mem[64] + 32
        mem[_10] = data[idx]
        mem[s] = _10
        s = s + 32
        idx = idx + 1
        continue 
    _11 = mem[64]
    mem[mem[64]] = 32
    _12 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _12:
        mem[t] = mem[mem[s]]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _11 + (32 * _12) + -mem[64] + 64
}



}
