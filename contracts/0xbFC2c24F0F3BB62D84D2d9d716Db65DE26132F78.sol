contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;

function _fallback() payable {
    revert
}

function withdraw() {
    require msg.sender == stor2
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor1)
    call stor1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function withdrawOther(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor2, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_635bfd8a(?) payable {
    mem[64] = 96
    require not msg.value
    idx = 1
    s = 0
    while address(idx):
        mem[mem[64] + 4] = s
        require ext_code.size(stor0)
        staticcall stor0.TroveOwners(uint256 arg1) with:
                gas gas_remaining wei
               args s
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            return s
        _15 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_15] == mem[_15 + 12 len 20]
        mem[mem[64] + 4] = s
        require ext_code.size(stor0)
        staticcall stor0.TroveOwners(uint256 arg1) with:
                gas gas_remaining wei
               args s
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _21 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_21] == mem[_21 + 12 len 20]
        if s == -1:
            revert with 'NH{q', 17
        idx = mem[_21]
        s = s + 1
        continue 
    return 0
}

function sub_4d171699(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require msg.sender == stor2
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[ceil32(return_data.size) + 96] = 0x2f86556800000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 100] = address(cd[((32 * idx) + cd[4] + 36)])
        require ext_code.size(stor0)
        call stor0.liquidate(address arg1) with:
             gas gas_remaining wei
            args address(cd[((32 * idx) + cd[4] + 36)])
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if ext_call.return_data[0] > 0xfffffffffffffffffffffffffffffffffffffffffffffffa9438a1d29cefffff:
        revert with 'NH{q', 17
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= ext_call.return_data[0] + 100 * 10^18:
        revert with 0, ' NO_P '
}

function sub_61672799(?) {
    require ext_code.size(this.address)
    staticcall this.address.0x635bfd8a with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128
    if not ext_call.return_data[0]:
        idx = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = idx
            require ext_code.size(stor0)
            staticcall stor0.TroveOwners(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _32 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_32] == mem[_32 + 12 len 20]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(return_data.size) + 128] = mem[_32 + 12 len 20]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _26 = mem[64]
        mem[mem[64]] = 32
        _28 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 64
        while idx < _28:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _26 + (32 * _28) + -mem[64] + 64
    mem[ceil32(return_data.size) + 128 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
    idx = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = idx
        require ext_code.size(stor0)
        staticcall stor0.TroveOwners(uint256 arg1) with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _33 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_33] == mem[_33 + 12 len 20]
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 'NH{q', 50
        mem[(32 * idx) + ceil32(return_data.size) + 128] = mem[_33 + 12 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _27 = mem[64]
    mem[mem[64]] = 32
    _29 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = ceil32(return_data.size) + 128
    t = mem[64] + 64
    while idx < _29:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _27 + (32 * _29) + -mem[64] + 64
}

function sub_e863373d(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    if not ('cd', 4).length:
        if ('cd', 4).length > test266151307():
            revert with 'NH{q', 65
        mem[(32 * ('cd', 4).length) + 128] = ('cd', 4).length
        if not ('cd', 4).length:
            mem[(64 * ('cd', 4).length) + 160] = 0x43a124fa00000000000000000000000000000000000000000000000000000000
            require ext_code.size(stor0)
            staticcall stor0.0x43a124fa with:
                    gas gas_remaining wei
                   args mem[(64 * ('cd', 4).length) + 164 len 127 * ('cd', 4).length]
            mem[(64 * ('cd', 4).length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (64 * ('cd', 4).length) + ceil32(return_data.size) + 160
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                idx = 0
                s = 2 * 10^18
                s = 0
                while idx < ('cd', 4).length:
                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                    mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
                    require ext_code.size(stor0)
                    staticcall stor0.0x27fb7d89 with:
                            gas gas_remaining wei
                           args address(cd[((32 * idx) + cd[4] + 36)])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _172 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _188 = mem[_172]
                    require mem[_172] == mem[_172]
                    if mem[_172] >= 12 * 10^17:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = mem[_172]
                        s = cd[((32 * idx) + cd[4] + 36)]
                        continue 
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = address(cd[((32 * idx) + cd[4] + 36)])
                    if idx >= mem[(32 * ('cd', 4).length) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = _188
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _188
                    s = cd[((32 * idx) + cd[4] + 36)]
                    continue 
                _116 = mem[64]
                mem[mem[64]] = 64
                _124 = mem[96]
                mem[mem[64] + 64] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 96
                while idx < _124:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_116 + 32] = (32 * _124) + 96
                _220 = mem[(32 * ('cd', 4).length) + 128]
                mem[_116 + (32 * _124) + 96] = mem[(32 * ('cd', 4).length) + 128]
                mem[_116 + (32 * _124) + 128 len 32 * _220] = mem[(32 * ('cd', 4).length) + 160 len 32 * _220]
                return memory
                  from mem[64]
                   len _116 + (32 * _124) + (32 * _220) + -mem[64] + 128
            idx = 0
            s = 2 * 10^18
            s = 0
            while idx < ('cd', 4).length:
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
                require ext_code.size(stor0)
                staticcall stor0.0xf180b6f0 with:
                        gas gas_remaining wei
                       args address(cd[((32 * idx) + cd[4] + 36)])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _173 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _189 = mem[_173]
                require mem[_173] == mem[_173]
                if mem[_173] >= 16 * 10^17:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = mem[_173]
                    s = cd[((32 * idx) + cd[4] + 36)]
                    continue 
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = address(cd[((32 * idx) + cd[4] + 36)])
                if idx >= mem[(32 * ('cd', 4).length) + 128]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = _189
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _189
                s = cd[((32 * idx) + cd[4] + 36)]
                continue 
            _117 = mem[64]
            mem[mem[64]] = 64
            _125 = mem[96]
            mem[mem[64] + 64] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 96
            while idx < _125:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_117 + 32] = (32 * _125) + 96
            _221 = mem[(32 * ('cd', 4).length) + 128]
            mem[_117 + (32 * _125) + 96] = mem[(32 * ('cd', 4).length) + 128]
            mem[_117 + (32 * _125) + 128 len 32 * _221] = mem[(32 * ('cd', 4).length) + 160 len 32 * _221]
            return memory
              from mem[64]
               len _117 + (32 * _125) + (32 * _221) + -mem[64] + 128
        mem[(32 * ('cd', 4).length) + 160 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        mem[(64 * ('cd', 4).length) + 160] = 0x43a124fa00000000000000000000000000000000000000000000000000000000
        require ext_code.size(stor0)
        staticcall stor0.0x43a124fa with:
                gas gas_remaining wei
               args mem[(64 * ('cd', 4).length) + 164 len 127 * ('cd', 4).length]
        mem[(64 * ('cd', 4).length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (64 * ('cd', 4).length) + ceil32(return_data.size) + 160
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            idx = 0
            s = 2 * 10^18
            s = 0
            while idx < ('cd', 4).length:
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
                require ext_code.size(stor0)
                staticcall stor0.0x27fb7d89 with:
                        gas gas_remaining wei
                       args address(cd[((32 * idx) + cd[4] + 36)])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _174 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _190 = mem[_174]
                require mem[_174] == mem[_174]
                if mem[_174] >= 12 * 10^17:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = mem[_174]
                    s = cd[((32 * idx) + cd[4] + 36)]
                    continue 
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = address(cd[((32 * idx) + cd[4] + 36)])
                if idx >= mem[(32 * ('cd', 4).length) + 128]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = _190
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _190
                s = cd[((32 * idx) + cd[4] + 36)]
                continue 
            _118 = mem[64]
            mem[mem[64]] = 64
            _126 = mem[96]
            mem[mem[64] + 64] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 96
            while idx < _126:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_118 + 32] = (32 * _126) + 96
            _222 = mem[(32 * ('cd', 4).length) + 128]
            mem[_118 + (32 * _126) + 96] = mem[(32 * ('cd', 4).length) + 128]
            mem[_118 + (32 * _126) + 128 len 32 * _222] = mem[(32 * ('cd', 4).length) + 160 len 32 * _222]
            return memory
              from mem[64]
               len _118 + (32 * _126) + (32 * _222) + -mem[64] + 128
        idx = 0
        s = 2 * 10^18
        s = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
            require ext_code.size(stor0)
            staticcall stor0.0xf180b6f0 with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _175 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _191 = mem[_175]
            require mem[_175] == mem[_175]
            if mem[_175] >= 16 * 10^17:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = mem[_175]
                s = cd[((32 * idx) + cd[4] + 36)]
                continue 
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = address(cd[((32 * idx) + cd[4] + 36)])
            if idx >= mem[(32 * ('cd', 4).length) + 128]:
                revert with 'NH{q', 50
            mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = _191
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _191
            s = cd[((32 * idx) + cd[4] + 36)]
            continue 
        _119 = mem[64]
        mem[mem[64]] = 64
        _127 = mem[96]
        mem[mem[64] + 64] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 96
        while idx < _127:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_119 + 32] = (32 * _127) + 96
        _223 = mem[(32 * ('cd', 4).length) + 128]
        mem[_119 + (32 * _127) + 96] = mem[(32 * ('cd', 4).length) + 128]
        mem[_119 + (32 * _127) + 128 len 32 * _223] = mem[(32 * ('cd', 4).length) + 160 len 32 * _223]
        return memory
          from mem[64]
           len _119 + (32 * _127) + (32 * _223) + -mem[64] + 128
    mem[128 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 4).length
    if not ('cd', 4).length:
        mem[(64 * ('cd', 4).length) + 160] = 0x43a124fa00000000000000000000000000000000000000000000000000000000
        require ext_code.size(stor0)
        staticcall stor0.0x43a124fa with:
                gas gas_remaining wei
               args mem[(64 * ('cd', 4).length) + 164 len 127 * ('cd', 4).length]
        mem[(64 * ('cd', 4).length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (64 * ('cd', 4).length) + ceil32(return_data.size) + 160
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            idx = 0
            s = 2 * 10^18
            s = 0
            while idx < ('cd', 4).length:
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
                require ext_code.size(stor0)
                staticcall stor0.0x27fb7d89 with:
                        gas gas_remaining wei
                       args address(cd[((32 * idx) + cd[4] + 36)])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _176 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _192 = mem[_176]
                require mem[_176] == mem[_176]
                if mem[_176] >= 12 * 10^17:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = mem[_176]
                    s = cd[((32 * idx) + cd[4] + 36)]
                    continue 
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = address(cd[((32 * idx) + cd[4] + 36)])
                if idx >= mem[(32 * ('cd', 4).length) + 128]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = _192
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _192
                s = cd[((32 * idx) + cd[4] + 36)]
                continue 
            _120 = mem[64]
            mem[mem[64]] = 64
            _128 = mem[96]
            mem[mem[64] + 64] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 96
            while idx < _128:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_120 + 32] = (32 * _128) + 96
            _224 = mem[(32 * ('cd', 4).length) + 128]
            mem[_120 + (32 * _128) + 96] = mem[(32 * ('cd', 4).length) + 128]
            mem[_120 + (32 * _128) + 128 len 32 * _224] = mem[(32 * ('cd', 4).length) + 160 len 32 * _224]
            return memory
              from mem[64]
               len _120 + (32 * _128) + (32 * _224) + -mem[64] + 128
        idx = 0
        s = 2 * 10^18
        s = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
            require ext_code.size(stor0)
            staticcall stor0.0xf180b6f0 with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _177 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _193 = mem[_177]
            require mem[_177] == mem[_177]
            if mem[_177] >= 16 * 10^17:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = mem[_177]
                s = cd[((32 * idx) + cd[4] + 36)]
                continue 
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = address(cd[((32 * idx) + cd[4] + 36)])
            if idx >= mem[(32 * ('cd', 4).length) + 128]:
                revert with 'NH{q', 50
            mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = _193
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _193
            s = cd[((32 * idx) + cd[4] + 36)]
            continue 
        _121 = mem[64]
        mem[mem[64]] = 64
        _129 = mem[96]
        mem[mem[64] + 64] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 96
        while idx < _129:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_121 + 32] = (32 * _129) + 96
        _225 = mem[(32 * ('cd', 4).length) + 128]
        mem[_121 + (32 * _129) + 96] = mem[(32 * ('cd', 4).length) + 128]
        mem[_121 + (32 * _129) + 128 len 32 * _225] = mem[(32 * ('cd', 4).length) + 160 len 32 * _225]
        return memory
          from mem[64]
           len _121 + (32 * _129) + (32 * _225) + -mem[64] + 128
    mem[(32 * ('cd', 4).length) + 160 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    mem[(64 * ('cd', 4).length) + 160] = 0x43a124fa00000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor0)
    staticcall stor0.0x43a124fa with:
            gas gas_remaining wei
           args mem[(64 * ('cd', 4).length) + 164 len 127 * ('cd', 4).length]
    mem[(64 * ('cd', 4).length) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (64 * ('cd', 4).length) + ceil32(return_data.size) + 160
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        idx = 0
        s = 2 * 10^18
        s = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
            require ext_code.size(stor0)
            staticcall stor0.0x27fb7d89 with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _178 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _194 = mem[_178]
            require mem[_178] == mem[_178]
            if mem[_178] >= 12 * 10^17:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = mem[_178]
                s = cd[((32 * idx) + cd[4] + 36)]
                continue 
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = address(cd[((32 * idx) + cd[4] + 36)])
            if idx >= mem[(32 * ('cd', 4).length) + 128]:
                revert with 'NH{q', 50
            mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = _194
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _194
            s = cd[((32 * idx) + cd[4] + 36)]
            continue 
        _122 = mem[64]
        mem[mem[64]] = 64
        _130 = mem[96]
        mem[mem[64] + 64] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 96
        while idx < _130:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_122 + 32] = (32 * _130) + 96
        _226 = mem[(32 * ('cd', 4).length) + 128]
        mem[_122 + (32 * _130) + 96] = mem[(32 * ('cd', 4).length) + 128]
        mem[_122 + (32 * _130) + 128 len 32 * _226] = mem[(32 * ('cd', 4).length) + 160 len 32 * _226]
        return memory
          from mem[64]
           len _122 + (32 * _130) + (32 * _226) + -mem[64] + 128
    idx = 0
    s = 2 * 10^18
    s = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
        require ext_code.size(stor0)
        staticcall stor0.0xf180b6f0 with:
                gas gas_remaining wei
               args address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _179 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _195 = mem[_179]
        require mem[_179] == mem[_179]
        if mem[_179] >= 16 * 10^17:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = mem[_179]
            s = cd[((32 * idx) + cd[4] + 36)]
            continue 
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[(32 * idx) + 128] = address(cd[((32 * idx) + cd[4] + 36)])
        if idx >= mem[(32 * ('cd', 4).length) + 128]:
            revert with 'NH{q', 50
        mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = _195
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = _195
        s = cd[((32 * idx) + cd[4] + 36)]
        continue 
    _123 = mem[64]
    mem[mem[64]] = 64
    _131 = mem[96]
    mem[mem[64] + 64] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 96
    while idx < _131:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_123 + 32] = (32 * _131) + 96
    _227 = mem[(32 * ('cd', 4).length) + 128]
    mem[_123 + (32 * _131) + 96] = mem[(32 * ('cd', 4).length) + 128]
    mem[_123 + (32 * _131) + 128 len 32 * _227] = mem[(32 * ('cd', 4).length) + 160 len 32 * _227]
    return memory
      from mem[64]
       len _123 + (32 * _131) + (32 * _227) + -mem[64] + 128
}



}
