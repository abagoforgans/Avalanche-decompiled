contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function getSelector(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    return Mask(32, 224, sha3(arg1[all]))
}

function withdrawToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require msg.sender == stor0
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_0c85295b(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 4).length) + 128 < 96 or (32 * ('cd', 4).length) + 128 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 36).length) + 160 < 128 or (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 > test266151307():
        revert with 0, 65
    mem[64] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
    idx = 0
    s = cd[36] + 36
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 36).length:
        require cd[36] + cd[s] + 67 < calldata.size
        if cd[(cd[36] + cd[s] + 36)] > test266151307():
            revert with 0, 65
        _89 = mem[64]
        if mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32 < mem[64] or mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32
        mem[_89] = cd[(cd[36] + cd[s] + 36)]
        require cd[36] + cd[s] + cd[(cd[36] + cd[s] + 36)] + 68 <= calldata.size
        mem[_89 + 32 len cd[(cd[36] + cd[s] + 36)]] = call.data[cd[36] + cd[s] + 68 len cd[(cd[36] + cd[s] + 36)]]
        mem[_89 + cd[(cd[36] + cd[s] + 36)] + 32] = 0
        mem[t] = _89
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if mem[96] <= 0:
        revert with 0, 'Invalid input'
    if mem[96] != mem[(32 * ('cd', 4).length) + 128]:
        revert with 0, 'Invalid input'
    if stor0 != msg.sender:
        revert with 0, 'Invalid input'
    _130 = mem[96]
    idx = 0
    while idx < _130:
        if idx >= mem[96]:
            revert with 0, 50
        _132 = mem[(32 * idx) + 128]
        if idx >= mem[(32 * ('cd', 4).length) + 128]:
            revert with 0, 50
        _134 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
        _135 = mem[64]
        _136 = mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]]
        s = 0
        while s < _136:
            mem[s + _135] = mem[s + _134 + 32]
            _130 = mem[96]
            s = s + 32
            continue 
        if ceil32(_136) <= _136:
            call address(_132).mem[mem[64] len 4] with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _136 + _135 + -mem[64] - 4]
            if not return_data.size:
                if ext_call.success:
                    if idx == -1:
                        revert with 0, 17
                    _130 = mem[96]
                    idx = idx + 1
                    continue 
                _167 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _171 = mem[96]
                mem[mem[64] + 36] = mem[96]
                idx = 0
                while idx < _171:
                    mem[idx + _167 + 68] = mem[idx + 128]
                    _130 = mem[96]
                    idx = idx + 32
                    continue 
                if ceil32(_171) > _171:
                    mem[_171 + _167 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_171) + _167 + -mem[64] + 68
            _165 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_165] = return_data.size
            mem[_165 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                if idx == -1:
                    revert with 0, 17
                _130 = mem[96]
                idx = idx + 1
                continue 
            _168 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = return_data.size
            idx = 0
            while idx < return_data.size:
                mem[idx + _168 + 68] = mem[idx + _165 + 32]
                _130 = mem[96]
                idx = idx + 32
                continue 
            if ceil32(return_data.size) > return_data.size:
                mem[return_data.size + _168 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(return_data.size) + _168 + -mem[64] + 68
        mem[_136 + _135] = 0
        call address(_132).mem[mem[64] len 4] with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
            args mem[mem[64] + 4 len _136 + _135 + -mem[64] - 4]
        if not return_data.size:
            if ext_call.success:
                if idx == -1:
                    revert with 0, 17
                _130 = mem[96]
                idx = idx + 1
                continue 
            _169 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _173 = mem[96]
            mem[mem[64] + 36] = mem[96]
            idx = 0
            while idx < _173:
                mem[idx + _169 + 68] = mem[idx + 128]
                _130 = mem[96]
                idx = idx + 32
                continue 
            if ceil32(_173) > _173:
                mem[_173 + _169 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_173) + _169 + -mem[64] + 68
        _166 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_166] = return_data.size
        mem[_166 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if ext_call.success:
            if idx == -1:
                revert with 0, 17
            _130 = mem[96]
            idx = idx + 1
            continue 
        _170 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = return_data.size
        idx = 0
        while idx < return_data.size:
            mem[idx + _170 + 68] = mem[idx + _166 + 32]
            _130 = mem[96]
            idx = idx + 32
            continue 
        if ceil32(return_data.size) > return_data.size:
            mem[return_data.size + _170 + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(return_data.size) + _170 + -mem[64] + 68
}



}
