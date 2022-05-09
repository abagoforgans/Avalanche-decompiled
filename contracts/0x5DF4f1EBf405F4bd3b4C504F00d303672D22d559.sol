contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_696f88b0(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    if arg3 > test266151307():
        revert with 0, 65
    mem[96] = arg3
    mem[64] = (32 * arg3) + 128
    if not arg3:
        idx = 0
        s = arg2
        while idx < arg3:
            _48 = mem[64]
            mem[64] = mem[64] + 128
            mem[_48 + 32] = 0
            mem[_48 + 64] = 0
            mem[_48 + 96] = 0
            mem[_48] = s
            mem[mem[64] + 4] = s
            require ext_code.size(address(arg1))
            staticcall address(arg1).allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args s
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _53 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _62 = mem[_53]
            require mem[_53] == mem[_53 + 12 len 20]
            mem[_48 + 96] = mem[_53 + 12 len 20]
            require ext_code.size(address(_62))
            staticcall address(_62).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _76 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_76] == mem[_76 + 12 len 20]
            mem[_48 + 32] = mem[_76 + 12 len 20]
            require ext_code.size(address(_62))
            staticcall address(_62).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _84 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_84] == mem[_84 + 12 len 20]
            mem[_48 + 64] = mem[_84 + 12 len 20]
            if s == -1:
                revert with 0, 17
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _48
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _51 = mem[64]
        mem[mem[64]] = 32
        _52 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _52:
            _92 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_92 + 44 len 20]
            mem[t + 64] = mem[_92 + 76 len 20]
            mem[t + 96] = mem[_92 + 108 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _51 + (128 * _52) + -mem[64] + 64
    mem[64] = (32 * arg3) + 256
    mem[(32 * arg3) + 128] = 0
    mem[(32 * arg3) + 160] = 0
    mem[(32 * arg3) + 192] = 0
    mem[(32 * arg3) + 224] = 0
    mem[128] = (32 * arg3) + 128
    s = 128
    idx = arg3
    while idx - 1:
        mem[64] = mem[64] + 128
        mem[(32 * arg3) + 128] = 0
        mem[(32 * arg3) + 160] = 0
        mem[(32 * arg3) + 192] = 0
        mem[(32 * arg3) + 224] = 0
        mem[s + 32] = (32 * arg3) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    s = arg2
    while idx < arg3:
        _97 = mem[64]
        mem[64] = mem[64] + 128
        mem[_97 + 32] = 0
        mem[_97 + 64] = 0
        mem[_97 + 96] = 0
        mem[_97] = s
        mem[mem[64] + 4] = s
        require ext_code.size(address(arg1))
        staticcall address(arg1).allPairs(uint256 arg1) with:
                gas gas_remaining wei
               args s
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _103 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _109 = mem[_103]
        require mem[_103] == mem[_103 + 12 len 20]
        mem[_97 + 96] = mem[_103 + 12 len 20]
        require ext_code.size(address(_109))
        staticcall address(_109).token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _113 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_113] == mem[_113 + 12 len 20]
        mem[_97 + 32] = mem[_113 + 12 len 20]
        require ext_code.size(address(_109))
        staticcall address(_109).token1() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _117 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_117] == mem[_117 + 12 len 20]
        mem[_97 + 64] = mem[_117 + 12 len 20]
        if s == -1:
            revert with 0, 17
        if idx >= mem[96]:
            revert with 0, 50
        mem[(32 * idx) + 128] = _97
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    _101 = mem[64]
    mem[mem[64]] = 32
    _102 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _102:
        _120 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_120 + 44 len 20]
        mem[t + 64] = mem[_120 + 76 len 20]
        mem[t + 96] = mem[_120 + 108 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 128
        continue 
    return memory
      from mem[64]
       len _101 + (128 * _102) + -mem[64] + 64
}



}
