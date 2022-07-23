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

function sub_54613bbb(?) {
    mem[96] = 0x6167279900000000000000000000000000000000000000000000000000000000
    require ext_code.size(this.address)
    staticcall this.address.0x61672799 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= test266151307()
    require mem[96] + 127 < return_data.size + 96
    _5 = mem[mem[96] + 96]
    if mem[mem[96] + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[96] + 96]) + 97 > test266151307() or floor32(mem[mem[96] + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[96] + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + (32 * _5) + 32 <= return_data.size
    idx = 0
    s = _4 + 128
    t = ceil32(return_data.size) + 128
    while idx < _5:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if _5 > test266151307():
        revert with 'NH{q', 65
    _158 = mem[64]
    mem[mem[64]] = _5
    if not _5:
        if _5 > test266151307():
            revert with 'NH{q', 65
        _159 = mem[64] + (32 * _5) + 32
        mem[mem[64] + (32 * _5) + 32] = _5
        if not _5:
            require ext_code.size(stor0)
            staticcall stor0.0x43a124fa with:
                    gas gas_remaining wei
            mem[mem[64] + (64 * _5) + 64] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + (64 * _5) + ceil32(return_data.size) + 64
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                idx = 0
                while idx < _5:
                    if idx >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    _313 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                    mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
                    require ext_code.size(stor0)
                    staticcall stor0.0xf180b6f0 with:
                            gas gas_remaining wei
                           args address(_313)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _353 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _369 = mem[_353]
                    require mem[_353] == mem[_353]
                    if mem[_353] < 12 * 10^17:
                        if idx >= mem[ceil32(return_data.size) + 96]:
                            revert with 'NH{q', 50
                        if idx >= mem[_158]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _158 + 32] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
                        if idx >= mem[_159]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _159 + 32] = _369
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _329 = mem[64]
                mem[mem[64]] = 64
                _337 = mem[_158]
                mem[mem[64] + 64] = mem[_158]
                idx = 0
                s = _158 + 32
                t = mem[64] + 96
                while idx < _337:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_329 + 32] = (32 * _337) + 96
                _441 = mem[_159]
                mem[_329 + (32 * _337) + 96] = mem[_159]
                mem[_329 + (32 * _337) + 128 len 32 * _441] = mem[_159 + 32 len 32 * _441]
                var82001 = _441
                return memory
                  from mem[64]
                   len _329 + (32 * _337) + (32 * _441) + -mem[64] + 128
            idx = 0
            while idx < _5:
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                _315 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
                require ext_code.size(stor0)
                staticcall stor0.0xf180b6f0 with:
                        gas gas_remaining wei
                       args address(_315)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _354 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _370 = mem[_354]
                require mem[_354] == mem[_354]
                if mem[_354] < 16 * 10^17:
                    if idx >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    if idx >= mem[_158]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _158 + 32] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
                    if idx >= mem[_159]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _159 + 32] = _370
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _330 = mem[64]
            mem[mem[64]] = 64
            _338 = mem[_158]
            mem[mem[64] + 64] = mem[_158]
            idx = 0
            s = _158 + 32
            t = mem[64] + 96
            while idx < _338:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_330 + 32] = (32 * _338) + 96
            _442 = mem[_159]
            mem[_330 + (32 * _338) + 96] = mem[_159]
            mem[_330 + (32 * _338) + 128 len 32 * _442] = mem[_159 + 32 len 32 * _442]
            var82001 = _442
            return memory
              from mem[64]
               len _330 + (32 * _338) + (32 * _442) + -mem[64] + 128
        mem[mem[64] + (32 * _5) + 64 len 32 * _5] = call.data[calldata.size len 32 * _5]
        require ext_code.size(stor0)
        staticcall stor0.0x43a124fa with:
                gas gas_remaining wei
        mem[mem[64] + (64 * _5) + 64] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + (64 * _5) + ceil32(return_data.size) + 64
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            idx = 0
            while idx < _5:
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                _317 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
                require ext_code.size(stor0)
                staticcall stor0.0xf180b6f0 with:
                        gas gas_remaining wei
                       args address(_317)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _355 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _371 = mem[_355]
                require mem[_355] == mem[_355]
                if mem[_355] < 12 * 10^17:
                    if idx >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    if idx >= mem[_158]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _158 + 32] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
                    if idx >= mem[_159]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _159 + 32] = _371
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _331 = mem[64]
            mem[mem[64]] = 64
            _339 = mem[_158]
            mem[mem[64] + 64] = mem[_158]
            idx = 0
            s = _158 + 32
            t = mem[64] + 96
            while idx < _339:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_331 + 32] = (32 * _339) + 96
            _443 = mem[_159]
            mem[_331 + (32 * _339) + 96] = mem[_159]
            mem[_331 + (32 * _339) + 128 len 32 * _443] = mem[_159 + 32 len 32 * _443]
            var83001 = _443
            return memory
              from mem[64]
               len _331 + (32 * _339) + (32 * _443) + -mem[64] + 128
        idx = 0
        while idx < _5:
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            _319 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
            require ext_code.size(stor0)
            staticcall stor0.0xf180b6f0 with:
                    gas gas_remaining wei
                   args address(_319)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _356 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _372 = mem[_356]
            require mem[_356] == mem[_356]
            if mem[_356] < 16 * 10^17:
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                if idx >= mem[_158]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _158 + 32] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
                if idx >= mem[_159]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _159 + 32] = _372
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _332 = mem[64]
        mem[mem[64]] = 64
        _340 = mem[_158]
        mem[mem[64] + 64] = mem[_158]
        idx = 0
        s = _158 + 32
        t = mem[64] + 96
        while idx < _340:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_332 + 32] = (32 * _340) + 96
        _444 = mem[_159]
        mem[_332 + (32 * _340) + 96] = mem[_159]
        mem[_332 + (32 * _340) + 128 len 32 * _444] = mem[_159 + 32 len 32 * _444]
        var83001 = _444
        return memory
          from mem[64]
           len _332 + (32 * _340) + (32 * _444) + -mem[64] + 128
    mem[mem[64] + 32 len 32 * _5] = call.data[calldata.size len 32 * _5]
    if _5 > test266151307():
        revert with 'NH{q', 65
    mem[mem[64] + (32 * _5) + 32] = _5
    mem[64] = mem[64] + (64 * _5) + 64
    if not _5:
        mem[_158 + (64 * _5) + 64] = 0x43a124fa00000000000000000000000000000000000000000000000000000000
        require ext_code.size(stor0)
        staticcall stor0.0x43a124fa with:
                gas gas_remaining wei
               args mem[_158 + (64 * _5) + 68 len 127 * _5]
        mem[_158 + (64 * _5) + 64] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _158 + (64 * _5) + ceil32(return_data.size) + 64
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            idx = 0
            while idx < _5:
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                _321 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
                require ext_code.size(stor0)
                staticcall stor0.0xf180b6f0 with:
                        gas gas_remaining wei
                       args address(_321)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _357 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _373 = mem[_357]
                require mem[_357] == mem[_357]
                if mem[_357] < 12 * 10^17:
                    if idx >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    if idx >= mem[_158]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _158 + 32] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
                    if idx >= mem[_158 + (32 * _5) + 32]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _158 + (32 * _5) + 64] = _373
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _333 = mem[64]
            mem[mem[64]] = 64
            _341 = mem[_158]
            mem[mem[64] + 64] = mem[_158]
            idx = 0
            s = _158 + 32
            t = mem[64] + 96
            while idx < _341:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_333 + 32] = (32 * _341) + 96
            _445 = mem[_158 + (32 * _5) + 32]
            mem[_333 + (32 * _341) + 96] = mem[_158 + (32 * _5) + 32]
            mem[_333 + (32 * _341) + 128 len 32 * _445] = mem[_158 + (32 * _5) + 64 len 32 * _445]
            var83001 = _445
            return memory
              from mem[64]
               len _333 + (32 * _341) + (32 * _445) + -mem[64] + 128
        idx = 0
        while idx < _5:
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            _323 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
            require ext_code.size(stor0)
            staticcall stor0.0xf180b6f0 with:
                    gas gas_remaining wei
                   args address(_323)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _358 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _374 = mem[_358]
            require mem[_358] == mem[_358]
            if mem[_358] < 16 * 10^17:
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                if idx >= mem[_158]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _158 + 32] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
                if idx >= mem[_158 + (32 * _5) + 32]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _158 + (32 * _5) + 64] = _374
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _334 = mem[64]
        mem[mem[64]] = 64
        _342 = mem[_158]
        mem[mem[64] + 64] = mem[_158]
        idx = 0
        s = _158 + 32
        t = mem[64] + 96
        while idx < _342:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_334 + 32] = (32 * _342) + 96
        _446 = mem[_158 + (32 * _5) + 32]
        mem[_334 + (32 * _342) + 96] = mem[_158 + (32 * _5) + 32]
        mem[_334 + (32 * _342) + 128 len 32 * _446] = mem[_158 + (32 * _5) + 64 len 32 * _446]
        var83001 = _446
        return memory
          from mem[64]
           len _334 + (32 * _342) + (32 * _446) + -mem[64] + 128
    mem[_158 + (32 * _5) + 64 len 32 * _5] = call.data[calldata.size len 32 * _5]
    mem[_158 + (64 * _5) + 64] = 0x43a124fa00000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor0)
    staticcall stor0.0x43a124fa with:
            gas gas_remaining wei
           args mem[_158 + (64 * _5) + 68 len 127 * _5]
    mem[_158 + (64 * _5) + 64] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = _158 + (64 * _5) + ceil32(return_data.size) + 64
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        idx = 0
        while idx < _5:
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            _325 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
            require ext_code.size(stor0)
            staticcall stor0.0xf180b6f0 with:
                    gas gas_remaining wei
                   args address(_325)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _359 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _375 = mem[_359]
            require mem[_359] == mem[_359]
            if mem[_359] < 12 * 10^17:
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                if idx >= mem[_158]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _158 + 32] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
                if idx >= mem[_158 + (32 * _5) + 32]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _158 + (32 * _5) + 64] = _375
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _335 = mem[64]
        mem[mem[64]] = 64
        _343 = mem[_158]
        mem[mem[64] + 64] = mem[_158]
        idx = 0
        s = _158 + 32
        t = mem[64] + 96
        while idx < _343:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_335 + 32] = (32 * _343) + 96
        _447 = mem[_158 + (32 * _5) + 32]
        mem[_335 + (32 * _343) + 96] = mem[_158 + (32 * _5) + 32]
        mem[_335 + (32 * _343) + 128 len 32 * _447] = mem[_158 + (32 * _5) + 64 len 32 * _447]
        return memory
          from mem[64]
           len _335 + (32 * _343) + (32 * _447) + -mem[64] + 128
    idx = 0
    while idx < _5:
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 'NH{q', 50
        _327 = mem[(32 * idx) + ceil32(return_data.size) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
        require ext_code.size(stor0)
        staticcall stor0.0xf180b6f0 with:
                gas gas_remaining wei
               args address(_327)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _360 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _376 = mem[_360]
        require mem[_360] == mem[_360]
        if mem[_360] < 16 * 10^17:
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            if idx >= mem[_158]:
                revert with 'NH{q', 50
            mem[(32 * idx) + _158 + 32] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
            if idx >= mem[_158 + (32 * _5) + 32]:
                revert with 'NH{q', 50
            mem[(32 * idx) + _158 + (32 * _5) + 64] = _376
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _336 = mem[64]
    mem[mem[64]] = 64
    _344 = mem[_158]
    mem[mem[64] + 64] = mem[_158]
    idx = 0
    s = _158 + 32
    t = mem[64] + 96
    while idx < _344:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_336 + 32] = (32 * _344) + 96
    _448 = mem[_158 + (32 * _5) + 32]
    mem[_336 + (32 * _344) + 96] = mem[_158 + (32 * _5) + 32]
    mem[_336 + (32 * _344) + 128 len 32 * _448] = mem[_158 + (32 * _5) + 64 len 32 * _448]
    return memory
      from mem[64]
       len _336 + (32 * _344) + (32 * _448) + -mem[64] + 128
}



}
