contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function getHolders() payable {
    require ext_code.size(stor0)
    staticcall stor0.nextMint() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < 1:
        revert with 'NH{q', 17
    if ext_call.return_data[0] - 1 > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0] - 1
    mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0] - 1) + 128
    if not ext_call.return_data[0] - 1:
        idx = 1
        while idx <= ext_call.return_data[0] - 1:
            mem[mem[64] + 4] = idx
            require ext_code.size(stor0)
            staticcall stor0.exists(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _40 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_40] == bool(mem[_40])
            if mem[_40]:
                mem[mem[64] + 4] = idx
                require ext_code.size(stor0)
                staticcall stor0.0x6352211e with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _52 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_52] == mem[_52 + 12 len 20]
                if idx < 1:
                    revert with 'NH{q', 17
                if idx - 1 >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                mem[(32 * idx - 1) + ceil32(return_data.size) + 128] = mem[_52 + 12 len 20]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _34 = mem[64]
        mem[mem[64]] = 32
        _36 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 64
        while idx < _36:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _34 + (32 * _36) + -mem[64] + 64
    mem[ceil32(return_data.size) + 128 len 32 * ext_call.return_data[0] - 1] = call.data[calldata.size len 32 * ext_call.return_data[0] - 1]
    idx = 1
    while idx <= ext_call.return_data[0] - 1:
        mem[mem[64] + 4] = idx
        require ext_code.size(stor0)
        staticcall stor0.exists(uint256 arg1) with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _41 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_41] == bool(mem[_41])
        if mem[_41]:
            mem[mem[64] + 4] = idx
            require ext_code.size(stor0)
            staticcall stor0.0x6352211e with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _53 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_53] == mem[_53 + 12 len 20]
            if idx < 1:
                revert with 'NH{q', 17
            if idx - 1 >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            mem[(32 * idx - 1) + ceil32(return_data.size) + 128] = mem[_53 + 12 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _35 = mem[64]
    mem[mem[64]] = 32
    _37 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = ceil32(return_data.size) + 128
    t = mem[64] + 64
    while idx < _37:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _35 + (32 * _37) + -mem[64] + 64
}



}
