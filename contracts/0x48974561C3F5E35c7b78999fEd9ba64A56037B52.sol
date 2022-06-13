contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_cecd0d19(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    if not ('cd', 4).length:
        if ('cd', 36).length and ('cd', 68).length > -1 / ('cd', 36).length:
            revert with 0, 17
        if ('cd', 36).length * ('cd', 68).length > test266151307():
            revert with 0, 65
        mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length * ('cd', 68).length
        mem[64] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length * ('cd', 68).length) + 160
        if not ('cd', 36).length * ('cd', 68).length:
            idx = 0
            while idx < ('cd', 4).length:
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                mem[(32 * idx) + 128] = eth.balance(cd[((32 * idx) + cd[4] + 36)])
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            idx = 0
            while idx < ('cd', 36).length:
                s = 0
                while s < ('cd', 68).length:
                    require cd[((32 * s) + cd[68] + 36)] == address(cd[((32 * s) + cd[68] + 36)])
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                    mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                    require ext_code.size(address(cd[((32 * s) + cd[68] + 36)]))
                    staticcall address(cd[((32 * s) + cd[68] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[((32 * idx) + cd[36] + 36)])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _168 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx and ('cd', 68).length > -1 / idx:
                        revert with 0, 17
                    if idx * ('cd', 68).length > !s:
                        revert with 0, 17
                    if (idx * ('cd', 68).length) + s >= mem[(32 * ('cd', 4).length) + 128]:
                        revert with 0, 50
                    mem[(32 * (idx * ('cd', 68).length) + s) + (32 * ('cd', 4).length) + 160] = mem[_168]
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    continue 
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _100 = mem[64]
            mem[mem[64]] = 64
            _104 = mem[96]
            mem[mem[64] + 64] = mem[96]
            mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
            mem[mem[64] + 32] = (32 * mem[96]) + 96
            _148 = mem[(32 * ('cd', 4).length) + 128]
            mem[_100 + (32 * mem[96]) + 96] = mem[(32 * ('cd', 4).length) + 128]
            mem[_100 + (32 * _104) + 128 len 32 * _148] = mem[(32 * ('cd', 4).length) + 160 len 32 * _148]
            return memory
              from mem[64]
               len _100 + (32 * _104) + (32 * _148) + -mem[64] + 128
        mem[(32 * ('cd', 4).length) + 160 len 32 * ('cd', 36).length * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 36).length * ('cd', 68).length]
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            if idx >= ('cd', 4).length:
                revert with 0, 50
            mem[(32 * idx) + 128] = eth.balance(cd[((32 * idx) + cd[4] + 36)])
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        idx = 0
        while idx < ('cd', 36).length:
            s = 0
            while s < ('cd', 68).length:
                require cd[((32 * s) + cd[68] + 36)] == address(cd[((32 * s) + cd[68] + 36)])
                if idx >= ('cd', 36).length:
                    revert with 0, 50
                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                require ext_code.size(address(cd[((32 * s) + cd[68] + 36)]))
                staticcall address(cd[((32 * s) + cd[68] + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(cd[((32 * idx) + cd[36] + 36)])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _169 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if idx and ('cd', 68).length > -1 / idx:
                    revert with 0, 17
                if idx * ('cd', 68).length > !s:
                    revert with 0, 17
                if (idx * ('cd', 68).length) + s >= mem[(32 * ('cd', 4).length) + 128]:
                    revert with 0, 50
                mem[(32 * (idx * ('cd', 68).length) + s) + (32 * ('cd', 4).length) + 160] = mem[_169]
                if s == -1:
                    revert with 0, 17
                s = s + 1
                continue 
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _101 = mem[64]
        mem[mem[64]] = 64
        _105 = mem[96]
        mem[mem[64] + 64] = mem[96]
        mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        mem[mem[64] + 32] = (32 * mem[96]) + 96
        _149 = mem[(32 * ('cd', 4).length) + 128]
        mem[_101 + (32 * mem[96]) + 96] = mem[(32 * ('cd', 4).length) + 128]
        mem[_101 + (32 * _105) + 128 len 32 * _149] = mem[(32 * ('cd', 4).length) + 160 len 32 * _149]
        return memory
          from mem[64]
           len _101 + (32 * _105) + (32 * _149) + -mem[64] + 128
    mem[128 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    if ('cd', 36).length and ('cd', 68).length > -1 / ('cd', 36).length:
        revert with 0, 17
    if ('cd', 36).length * ('cd', 68).length > test266151307():
        revert with 0, 65
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length * ('cd', 68).length
    mem[64] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length * ('cd', 68).length) + 160
    if not ('cd', 36).length * ('cd', 68).length:
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            if idx >= ('cd', 4).length:
                revert with 0, 50
            mem[(32 * idx) + 128] = eth.balance(cd[((32 * idx) + cd[4] + 36)])
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        idx = 0
        while idx < ('cd', 36).length:
            s = 0
            while s < ('cd', 68).length:
                require cd[((32 * s) + cd[68] + 36)] == address(cd[((32 * s) + cd[68] + 36)])
                if idx >= ('cd', 36).length:
                    revert with 0, 50
                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                require ext_code.size(address(cd[((32 * s) + cd[68] + 36)]))
                staticcall address(cd[((32 * s) + cd[68] + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(cd[((32 * idx) + cd[36] + 36)])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _170 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if idx and ('cd', 68).length > -1 / idx:
                    revert with 0, 17
                if idx * ('cd', 68).length > !s:
                    revert with 0, 17
                if (idx * ('cd', 68).length) + s >= mem[(32 * ('cd', 4).length) + 128]:
                    revert with 0, 50
                mem[(32 * (idx * ('cd', 68).length) + s) + (32 * ('cd', 4).length) + 160] = mem[_170]
                if s == -1:
                    revert with 0, 17
                s = s + 1
                continue 
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _102 = mem[64]
        mem[mem[64]] = 64
        _106 = mem[96]
        mem[mem[64] + 64] = mem[96]
        mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        mem[mem[64] + 32] = (32 * mem[96]) + 96
        _150 = mem[(32 * ('cd', 4).length) + 128]
        mem[_102 + (32 * mem[96]) + 96] = mem[(32 * ('cd', 4).length) + 128]
        mem[_102 + (32 * _106) + 128 len 32 * _150] = mem[(32 * ('cd', 4).length) + 160 len 32 * _150]
        return memory
          from mem[64]
           len _102 + (32 * _106) + (32 * _150) + -mem[64] + 128
    mem[(32 * ('cd', 4).length) + 160 len 32 * ('cd', 36).length * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 36).length * ('cd', 68).length]
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[(32 * idx) + 128] = eth.balance(cd[((32 * idx) + cd[4] + 36)])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    idx = 0
    while idx < ('cd', 36).length:
        s = 0
        while s < ('cd', 68).length:
            require cd[((32 * s) + cd[68] + 36)] == address(cd[((32 * s) + cd[68] + 36)])
            if idx >= ('cd', 36).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
            require ext_code.size(address(cd[((32 * s) + cd[68] + 36)]))
            staticcall address(cd[((32 * s) + cd[68] + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[36] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _171 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx and ('cd', 68).length > -1 / idx:
                revert with 0, 17
            if idx * ('cd', 68).length > !s:
                revert with 0, 17
            if (idx * ('cd', 68).length) + s >= mem[(32 * ('cd', 4).length) + 128]:
                revert with 0, 50
            mem[(32 * (idx * ('cd', 68).length) + s) + (32 * ('cd', 4).length) + 160] = mem[_171]
            if s == -1:
                revert with 0, 17
            s = s + 1
            continue 
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _103 = mem[64]
    mem[mem[64]] = 64
    _107 = mem[96]
    mem[mem[64] + 64] = mem[96]
    mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    mem[mem[64] + 32] = (32 * mem[96]) + 96
    _151 = mem[(32 * ('cd', 4).length) + 128]
    mem[_103 + (32 * mem[96]) + 96] = mem[(32 * ('cd', 4).length) + 128]
    mem[_103 + (32 * _107) + 128 len 32 * _151] = mem[(32 * ('cd', 4).length) + 160 len 32 * _151]
    return memory
      from mem[64]
       len _103 + (32 * _107) + (32 * _151) + -mem[64] + 128
}



}
