contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_44121f1d(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require ('cd', 36).length <= test266151307()
    mem[96] = ('cd', 36).length
    mem[64] = (32 * ('cd', 36).length) + 128
    if not ('cd', 36).length:
        idx = 0
        while idx < ('cd', 36).length:
            require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 99
            require idx < ('cd', 36).length
            require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 99
            require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68)] < calldata.size + -cd[36] + -cd[(cd[36] + (32 * idx) + 36)] - 67
            require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68)] + 36)] <= test266151307()
            require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68)] + 68 <= calldata.size - (32 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68)] + 36)])
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68)] + 36)]
            s = 0
            t = cd[36] + cd[(cd[36] + (32 * s) + 36)] + cd[(cd[36] + cd[(cd[36] + (32 * s) + 36)] + 68)] + 68
            u = mem[64] + 100
            while s < cd[(cd[36] + cd[(cd[36] + (32 * s) + 36)] + cd[(cd[36] + cd[(cd[36] + (32 * s) + 36)] + 68)] + 36)]:
                require cd[t] == address(cd[t])
                mem[u] = address(cd[t])
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len u + -mem[64] - 4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _68 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _70 = mem[_68]
            require mem[_68] <= test266151307()
            require _68 + mem[_68] + 31 < _68 + return_data.size
            _72 = mem[_68 + mem[_68]]
            require mem[_68 + mem[_68]] <= test266151307()
            require _68 + ceil32(return_data.size) + (32 * mem[_68 + mem[_68]]) + 32 <= test266151307() and (32 * mem[_68 + mem[_68]]) + 32 >= 0
            mem[64] = _68 + ceil32(return_data.size) + (32 * mem[_68 + mem[_68]]) + 32
            mem[_68 + ceil32(return_data.size)] = _72
            require _70 + (32 * _72) + 32 <= return_data.size
            idx = 0
            t = _68 + _70 + 32
            u = _68 + ceil32(return_data.size) + 32
            while idx < _72:
                require mem[t] == mem[t]
                mem[u] = mem[t]
                idx = idx + 1
                t = t + 32
                u = u + 32
                continue 
            require _72 - 1 < _72
            require s < mem[96]
            mem[(32 * s) + 128] = mem[(32 * _72 - 1) + _68 + ceil32(return_data.size) + 32]
            s = s + 1
            continue 
    else:
        mem[128 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
        idx = 0
        while idx < ('cd', 36).length:
            require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 99
            require idx < ('cd', 36).length
            require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 99
            require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68)] < calldata.size + -cd[36] + -cd[(cd[36] + (32 * idx) + 36)] - 67
            require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68)] + 36)] <= test266151307()
            require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68)] + 68 <= calldata.size - (32 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68)] + 36)])
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68)] + 36)]
            s = 0
            t = cd[36] + cd[(cd[36] + (32 * s) + 36)] + cd[(cd[36] + cd[(cd[36] + (32 * s) + 36)] + 68)] + 68
            u = mem[64] + 100
            while s < cd[(cd[36] + cd[(cd[36] + (32 * s) + 36)] + cd[(cd[36] + cd[(cd[36] + (32 * s) + 36)] + 68)] + 36)]:
                require cd[t] == address(cd[t])
                mem[u] = address(cd[t])
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len u + -mem[64] - 4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _69 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _71 = mem[_69]
            require mem[_69] <= test266151307()
            require _69 + mem[_69] + 31 < _69 + return_data.size
            _73 = mem[_69 + mem[_69]]
            require mem[_69 + mem[_69]] <= test266151307()
            require _69 + ceil32(return_data.size) + (32 * mem[_69 + mem[_69]]) + 32 <= test266151307() and (32 * mem[_69 + mem[_69]]) + 32 >= 0
            mem[64] = _69 + ceil32(return_data.size) + (32 * mem[_69 + mem[_69]]) + 32
            mem[_69 + ceil32(return_data.size)] = _73
            require _71 + (32 * _73) + 32 <= return_data.size
            idx = 0
            t = _69 + _71 + 32
            u = _69 + ceil32(return_data.size) + 32
            while idx < _73:
                require mem[t] == mem[t]
                mem[u] = mem[t]
                idx = idx + 1
                t = t + 32
                u = u + 32
                continue 
            require _73 - 1 < _73
            require s < mem[96]
            mem[(32 * s) + 128] = mem[(32 * _73 - 1) + _69 + ceil32(return_data.size) + 32]
            s = s + 1
            continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
}



}
