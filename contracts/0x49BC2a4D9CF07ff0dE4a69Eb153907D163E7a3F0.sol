contract main {




// =====================  Runtime code  =====================


const sub_30b54371(?) = ext_call.return_data[0]

const sub_44743643(?) = 0x376d16c7de138b01455a51da79ad65806e9cd694


function _fallback() payable {
    revert
}

function sub_9266fa5e(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(0x376d16c7de138b01455a51da79ad65806e9cd694)
    staticcall 0x376d16c7de138b01455a51da79ad65806e9cd694.nextPositionId() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 > arg2:
        revert with 0, '!start <= end'
    if arg2 >= ext_call.return_data[0]:
        revert with 0, 'end out of bounds'
    if arg2 < arg1:
        revert with 0, 17
    if 1 > !(arg2 - arg1):
        revert with 0, 17
    if arg2 + -arg1 + 1 > test266151307():
        revert with 0, 65
    mem[ceil32(return_data.size) + 96] = arg2 + -arg1 + 1
    mem[64] = ceil32(return_data.size) + (32 * arg2 + -arg1 + 1) + 128
    if not arg2 + -arg1 + 1:
        idx = arg1
        while idx <= arg2:
            require ext_code.size(0x376d16c7de138b01455a51da79ad65806e9cd694)
            staticcall 0x376d16c7de138b01455a51da79ad65806e9cd694.getPositionInfo(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _41 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            require mem[_41] == mem[_41 + 12 len 20]
            require mem[_41 + 32] == mem[_41 + 44 len 20]
            if idx < arg1:
                revert with 0, 17
            if idx - arg1 >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            mem[(32 * idx - arg1) + ceil32(return_data.size) + 128] = mem[_41 + 12 len 20]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _38 = mem[64]
        mem[mem[64]] = 32
        _40 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = mem[64] + 64
        t = ceil32(return_data.size) + 128
        while idx < _40:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _38 + (32 * _40) + -mem[64] + 64
    mem[ceil32(return_data.size) + 128 len 32 * arg2 + -arg1 + 1] = call.data[calldata.size len 32 * arg2 + -arg1 + 1]
    idx = arg1
    while idx <= arg2:
        require ext_code.size(0x376d16c7de138b01455a51da79ad65806e9cd694)
        staticcall 0x376d16c7de138b01455a51da79ad65806e9cd694.getPositionInfo(uint256 arg1) with:
                gas gas_remaining wei
               args idx
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _43 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        require mem[_43] == mem[_43 + 12 len 20]
        require mem[_43 + 32] == mem[_43 + 44 len 20]
        if idx < arg1:
            revert with 0, 17
        if idx - arg1 >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        mem[(32 * idx - arg1) + ceil32(return_data.size) + 128] = mem[_43 + 12 len 20]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _39 = mem[64]
    mem[mem[64]] = 32
    _42 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = mem[64] + 64
    t = ceil32(return_data.size) + 128
    while idx < _42:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _39 + (32 * _42) + -mem[64] + 64
}



}
