contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function getAggregatedPremium(address arg1, address arg2, address[] arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg3.length) + 97 > test266151307() or floor32(arg3.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(arg3.length) + 97
    mem[96] = arg3.length
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    idx = 0
    s = arg3 + 36
    t = 128
    while idx < arg3.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < arg3.length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _69 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
        require ext_code.size(arg2)
        staticcall arg2.0x573e4bdb with:
                gas gas_remaining wei
               args address(_69)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _72 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_72] == mem[_72]
        if mem[_72]:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].0x822f426a with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _79 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _80 = mem[_79]
            require mem[_79] == mem[_79]
            require mem[_79 + 32] == bool(mem[_79 + 32])
            if 0 > -mem[_79] - 1:
                revert with 'NH{q', 17
            if mem[_79 + 32]:
            else:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].0xa2687c63 with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _86 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 160
                _87 = mem[64]
                if mem[64] + 160 > test266151307() or mem[64] + 160 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + 160
                require mem[_86] == mem[_86]
                mem[_87] = mem[_86]
                require mem[_86 + 32] == mem[_86 + 32]
                mem[_87 + 32] = mem[_86 + 32]
                require mem[_86 + 64] == mem[_86 + 64]
                mem[_87 + 64] = mem[_86 + 64]
                require mem[_86 + 96] == mem[_86 + 96]
                mem[_87 + 96] = mem[_86 + 96]
                require mem[_86 + 128] == bool(mem[_86 + 128])
                mem[_87 + 128] = mem[_86 + 128]
                require ext_code.size(arg2)
                staticcall arg2.0x506ae4ef with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _95 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_95] == mem[_95]
                if mem[_87 + 32] > -mem[_95] - 1:
                    revert with 'NH{q', 17
                if mem[_87 + 32] + mem[_95] < block.timestamp:
                    if 0 > -_80 - 1:
                        revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return 0
}



}
