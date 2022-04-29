contract main {




// =====================  Runtime code  =====================


#
#  - _fallback()
#
address owner;
address stor1;
address stor3;
address stor4;

function owner() {
    return owner
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setVaultAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4 = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_a1ee5fbb(?) {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 'NH{q', 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[36] == address(cd[36])
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _65 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_65))
        staticcall address(_65).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if 0 == cd[68]:
            _71 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _73 = mem[_71]
            mem[mem[64] + 4] = address(cd[36])
            mem[mem[64] + 36] = _73
            require ext_code.size(address(_65))
            call address(_65).transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[36]), _73
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _80 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_80] == bool(mem[_80])
        else:
            _70 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if cd[68] <= mem[_70]:
                mem[mem[64] + 4] = address(cd[36])
                mem[mem[64] + 36] = cd[68]
                require ext_code.size(address(_65))
                call address(_65).transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[36]), cd[68]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _81 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_81] == bool(mem[_81])
            else:
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_65))
                staticcall address(_65).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _82 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _85 = mem[_82]
                mem[mem[64] + 4] = address(cd[36])
                mem[mem[64] + 36] = _85
                require ext_code.size(address(_65))
                call address(_65).transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[36]), _85
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _88 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_88] == bool(mem[_88])
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if eth.balance(this.address):
        call address(cd[36]) with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_4c9a1fb8(?) {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[36] <= test266151307()
    require calldata.size > cd[36] + 35
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 'NH{q', 65
    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    s = ceil32(32 * ('cd', 4).length) + 129
    idx = cd[36] + 36
    while idx < cd[36] + (32 * ('cd', 36).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _90 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_90))
        staticcall address(_90).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _93 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _94 = mem[_93]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if mem[(32 * idx) + 140 len 20] != stor1:
            if not ('cd', 36).length:
                revert with 'NH{q', 18
            s = 0
            while s < ('cd', 36).length:
                if s >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                mem[mem[64] + 4] = mem[(32 * s) + ceil32(32 * ('cd', 4).length) + 141 len 20]
                mem[mem[64] + 36] = _94 / ('cd', 36).length
                require ext_code.size(address(_90))
                call address(_90).transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _94 / ('cd', 36).length
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _125 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_125] == bool(mem[_125])
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                continue 
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _94 / ('cd', 36).length
            continue 
        if mem[_93] < cd[68]:
            revert with 'NH{q', 17
        if not ('cd', 36).length:
            revert with 'NH{q', 18
        s = 0
        while s < ('cd', 36).length:
            if s >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            mem[mem[64] + 4] = mem[(32 * s) + ceil32(32 * ('cd', 4).length) + 141 len 20]
            mem[mem[64] + 36] = _94 - cd[68] / ('cd', 36).length
            require ext_code.size(address(_90))
            call address(_90).transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], _94 - cd[68] / ('cd', 36).length
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _126 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_126] == bool(mem[_126])
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            continue 
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = _94 - cd[68] / ('cd', 36).length
        continue 
    if eth.balance(this.address):
        if not ('cd', 36).length:
            revert with 'NH{q', 18
        idx = 0
        while idx < ('cd', 36).length:
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            call mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 141 len 20] with:
               value eth.balance(this.address) / ('cd', 36).length wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
}

function sub_d3329cb9(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    _3 = mem[128]
    _4 = mem[(32 * mem[128] + 1) + 128]
    mem[ceil32(arg2.length) + 128 len floor32(mem[128] + 1)] = mem[128 len floor32(mem[128] + 1)]
    mem[ceil32(arg2.length) + (32 * _3 + 1) + 128 len floor32(_4 + 1)] = mem[(32 * _3 + 1) + 128 len floor32(_4 + 1)]
    mem[64] = ceil32(arg2.length) + (32 * _3 + 1) + (32 * _4 + 1) + 128
    if 0 >= mem[ceil32(arg2.length) + (32 * _3 + 1) + 128]:
        revert with 'NH{q', 50
    _87 = mem[ceil32(arg2.length) + (32 * _3 + 1) + 160]
    if 1 >= mem[ceil32(arg2.length) + (32 * _3 + 1) + 128]:
        revert with 'NH{q', 50
    _89 = mem[ceil32(arg2.length) + (32 * _3 + 1) + 192]
    if 0 >= Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]:
        revert with 'NH{q', 50
    mem[ceil32(arg2.length) + (32 * _3 + 1) + (32 * _4 + 1) + 128] = 0xa9059cbb2ab09eb219583f4a59a5d0623ade346d962bcd4e46b11da047c9049b
    mem[ceil32(arg2.length) + (32 * _3 + 1) + (32 * _4 + 1) + 132] = _89
    mem[ceil32(arg2.length) + (32 * _3 + 1) + (32 * _4 + 1) + 164] = mem[ceil32(arg2.length) + 160]
    call _87.transfer(address arg1, uint256 arg2) with:
         gas 300000 wei
        args _89, mem[ceil32(arg2.length) + 160]
    if not ext_call.success:
        revert with 0, 'tf'
    _94 = mem[ceil32(arg2.length) + (32 * _3 + 1) + 128]
    if mem[ceil32(arg2.length) + (32 * _3 + 1) + 128] < 2:
        revert with 'NH{q', 17
    idx = 1
    s = 0
    s = 0
    while idx < _94 - 2:
        if 1 > !idx:
            revert with 'NH{q', 17
        if idx + 1 >= mem[ceil32(arg2.length) + (32 * _3 + 1) + 128]:
            revert with 'NH{q', 50
        if idx < 1:
            revert with 'NH{q', 17
        if idx - 1 >= mem[ceil32(arg2.length) + (32 * _3 + 1) + 128]:
            revert with 'NH{q', 50
        if 1 > !s:
            revert with 'NH{q', 17
        if s + 1 >= mem[ceil32(arg2.length) + 128]:
            revert with 'NH{q', 50
        if mem[(32 * idx - 1) + ceil32(arg2.length) + (32 * _3 + 1) + 172 len 20] < mem[(32 * idx + 1) + ceil32(arg2.length) + (32 * _3 + 1) + 172 len 20]:
            _130 = mem[(32 * s + 1) + ceil32(arg2.length) + 160]
            if s == -1:
                revert with 'NH{q', 17
            if idx >= mem[ceil32(arg2.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _134 = mem[(32 * idx) + ceil32(arg2.length) + (32 * _3 + 1) + 160]
            if 2 > !idx:
                revert with 'NH{q', 17
            if idx + 2 >= mem[ceil32(arg2.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _138 = mem[(32 * idx + 2) + ceil32(arg2.length) + (32 * _3 + 1) + 160]
            _140 = mem[64]
            mem[64] = mem[64] + 32
            mem[_140 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
            mem[_140 + 36] = 0
            mem[_140 + 68] = _130
            mem[_140 + 100] = _138
            mem[_140 + 132] = 128
            t = 0
            while t < mem[_140] + 32:
                mem[t + _140 + 164] = mem[t + _140]
                t = t + 32
                continue 
            call _134.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas 350000 wei
                args 0, _130, _138, 128, mem[_140 + 164 len mem[_140] + 64]
            if ext_call.success:
                if idx > -3:
                    revert with 'NH{q', 17
                idx = idx + 2
                s = 0
                s = s + 1
                continue 
            call _134.swap(uint256 arg1, uint256 arg2, address arg3) with:
                 gas 350000 wei
                args 0, _130, _138
        else:
            _131 = mem[(32 * s + 1) + ceil32(arg2.length) + 160]
            if s == -1:
                revert with 'NH{q', 17
            if idx >= mem[ceil32(arg2.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _135 = mem[(32 * idx) + ceil32(arg2.length) + (32 * _3 + 1) + 160]
            if 2 > !idx:
                revert with 'NH{q', 17
            if idx + 2 >= mem[ceil32(arg2.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _139 = mem[(32 * idx + 2) + ceil32(arg2.length) + (32 * _3 + 1) + 160]
            _141 = mem[64]
            mem[64] = mem[64] + 32
            mem[_141 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
            mem[_141 + 36] = _131
            mem[_141 + 68] = 0
            mem[_141 + 100] = _139
            mem[_141 + 132] = 128
            t = 0
            while t < mem[_141] + 32:
                mem[t + _141 + 164] = mem[t + _141]
                t = t + 32
                continue 
            call _135.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas 350000 wei
                args _131, 0, _139, 128, mem[_141 + 164 len mem[_141] + 64]
            if ext_call.success:
                if idx > -3:
                    revert with 'NH{q', 17
                idx = idx + 2
                s = _131
                s = s + 1
                continue 
            call _135.swap(uint256 arg1, uint256 arg2, address arg3) with:
                 gas 350000 wei
                args _131, 0, _139
        revert with 'sf'
}

function elkCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[96] = arg4.length
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    _3 = mem[128]
    _4 = mem[(32 * mem[128] + 1) + 128]
    mem[ceil32(arg4.length) + 128 len floor32(mem[128] + 1)] = mem[128 len floor32(mem[128] + 1)]
    mem[ceil32(arg4.length) + (32 * _3 + 1) + 128 len floor32(_4 + 1)] = mem[(32 * _3 + 1) + 128 len floor32(_4 + 1)]
    mem[64] = ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 128
    if 0 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
        revert with 'NH{q', 50
    _87 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 160]
    if 1 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
        revert with 'NH{q', 50
    _89 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 192]
    if 0 >= Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
        revert with 'NH{q', 50
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 128] = 0xa9059cbb2ab09eb219583f4a59a5d0623ade346d962bcd4e46b11da047c9049b
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 132] = _89
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 164] = mem[ceil32(arg4.length) + 160]
    call _87.transfer(address arg1, uint256 arg2) with:
         gas 300000 wei
        args _89, mem[ceil32(arg4.length) + 160]
    if not ext_call.success:
        revert with 0, 'tf'
    _94 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]
    if mem[ceil32(arg4.length) + (32 * _3 + 1) + 128] < 2:
        revert with 'NH{q', 17
    idx = 1
    s = 0
    s = 0
    while idx < _94 - 2:
        if 1 > !idx:
            revert with 'NH{q', 17
        if idx + 1 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
            revert with 'NH{q', 50
        if idx < 1:
            revert with 'NH{q', 17
        if idx - 1 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
            revert with 'NH{q', 50
        if 1 > !s:
            revert with 'NH{q', 17
        if s + 1 >= mem[ceil32(arg4.length) + 128]:
            revert with 'NH{q', 50
        if mem[(32 * idx - 1) + ceil32(arg4.length) + (32 * _3 + 1) + 172 len 20] < mem[(32 * idx + 1) + ceil32(arg4.length) + (32 * _3 + 1) + 172 len 20]:
            _130 = mem[(32 * s + 1) + ceil32(arg4.length) + 160]
            if s == -1:
                revert with 'NH{q', 17
            if idx >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _134 = mem[(32 * idx) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            if 2 > !idx:
                revert with 'NH{q', 17
            if idx + 2 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _138 = mem[(32 * idx + 2) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            _140 = mem[64]
            mem[64] = mem[64] + 32
            mem[_140 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
            mem[_140 + 36] = 0
            mem[_140 + 68] = _130
            mem[_140 + 100] = _138
            mem[_140 + 132] = 128
            t = 0
            while t < mem[_140] + 32:
                mem[t + _140 + 164] = mem[t + _140]
                t = t + 32
                continue 
            call _134.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas 350000 wei
                args 0, _130, _138, 128, mem[_140 + 164 len mem[_140] + 64]
            if ext_call.success:
                if idx > -3:
                    revert with 'NH{q', 17
                idx = idx + 2
                s = 0
                s = s + 1
                continue 
            call _134.swap(uint256 arg1, uint256 arg2, address arg3) with:
                 gas 350000 wei
                args 0, _130, _138
        else:
            _131 = mem[(32 * s + 1) + ceil32(arg4.length) + 160]
            if s == -1:
                revert with 'NH{q', 17
            if idx >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _135 = mem[(32 * idx) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            if 2 > !idx:
                revert with 'NH{q', 17
            if idx + 2 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _139 = mem[(32 * idx + 2) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            _141 = mem[64]
            mem[64] = mem[64] + 32
            mem[_141 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
            mem[_141 + 36] = _131
            mem[_141 + 68] = 0
            mem[_141 + 100] = _139
            mem[_141 + 132] = 128
            t = 0
            while t < mem[_141] + 32:
                mem[t + _141 + 164] = mem[t + _141]
                t = t + 32
                continue 
            call _135.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas 350000 wei
                args _131, 0, _139, 128, mem[_141 + 164 len mem[_141] + 64]
            if ext_call.success:
                if idx > -3:
                    revert with 'NH{q', 17
                idx = idx + 2
                s = _131
                s = s + 1
                continue 
            call _135.swap(uint256 arg1, uint256 arg2, address arg3) with:
                 gas 350000 wei
                args _131, 0, _139
        revert with 'sf'
}

function joeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[96] = arg4.length
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    _3 = mem[128]
    _4 = mem[(32 * mem[128] + 1) + 128]
    mem[ceil32(arg4.length) + 128 len floor32(mem[128] + 1)] = mem[128 len floor32(mem[128] + 1)]
    mem[ceil32(arg4.length) + (32 * _3 + 1) + 128 len floor32(_4 + 1)] = mem[(32 * _3 + 1) + 128 len floor32(_4 + 1)]
    mem[64] = ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 128
    if 0 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
        revert with 'NH{q', 50
    _87 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 160]
    if 1 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
        revert with 'NH{q', 50
    _89 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 192]
    if 0 >= Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
        revert with 'NH{q', 50
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 128] = 0xa9059cbb2ab09eb219583f4a59a5d0623ade346d962bcd4e46b11da047c9049b
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 132] = _89
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 164] = mem[ceil32(arg4.length) + 160]
    call _87.transfer(address arg1, uint256 arg2) with:
         gas 300000 wei
        args _89, mem[ceil32(arg4.length) + 160]
    if not ext_call.success:
        revert with 0, 'tf'
    _94 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]
    if mem[ceil32(arg4.length) + (32 * _3 + 1) + 128] < 2:
        revert with 'NH{q', 17
    idx = 1
    s = 0
    s = 0
    while idx < _94 - 2:
        if 1 > !idx:
            revert with 'NH{q', 17
        if idx + 1 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
            revert with 'NH{q', 50
        if idx < 1:
            revert with 'NH{q', 17
        if idx - 1 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
            revert with 'NH{q', 50
        if 1 > !s:
            revert with 'NH{q', 17
        if s + 1 >= mem[ceil32(arg4.length) + 128]:
            revert with 'NH{q', 50
        if mem[(32 * idx - 1) + ceil32(arg4.length) + (32 * _3 + 1) + 172 len 20] < mem[(32 * idx + 1) + ceil32(arg4.length) + (32 * _3 + 1) + 172 len 20]:
            _130 = mem[(32 * s + 1) + ceil32(arg4.length) + 160]
            if s == -1:
                revert with 'NH{q', 17
            if idx >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _134 = mem[(32 * idx) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            if 2 > !idx:
                revert with 'NH{q', 17
            if idx + 2 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _138 = mem[(32 * idx + 2) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            _140 = mem[64]
            mem[64] = mem[64] + 32
            mem[_140 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
            mem[_140 + 36] = 0
            mem[_140 + 68] = _130
            mem[_140 + 100] = _138
            mem[_140 + 132] = 128
            t = 0
            while t < mem[_140] + 32:
                mem[t + _140 + 164] = mem[t + _140]
                t = t + 32
                continue 
            call _134.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas 350000 wei
                args 0, _130, _138, 128, mem[_140 + 164 len mem[_140] + 64]
            if ext_call.success:
                if idx > -3:
                    revert with 'NH{q', 17
                idx = idx + 2
                s = 0
                s = s + 1
                continue 
            call _134.swap(uint256 arg1, uint256 arg2, address arg3) with:
                 gas 350000 wei
                args 0, _130, _138
        else:
            _131 = mem[(32 * s + 1) + ceil32(arg4.length) + 160]
            if s == -1:
                revert with 'NH{q', 17
            if idx >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _135 = mem[(32 * idx) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            if 2 > !idx:
                revert with 'NH{q', 17
            if idx + 2 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _139 = mem[(32 * idx + 2) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            _141 = mem[64]
            mem[64] = mem[64] + 32
            mem[_141 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
            mem[_141 + 36] = _131
            mem[_141 + 68] = 0
            mem[_141 + 100] = _139
            mem[_141 + 132] = 128
            t = 0
            while t < mem[_141] + 32:
                mem[t + _141 + 164] = mem[t + _141]
                t = t + 32
                continue 
            call _135.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas 350000 wei
                args _131, 0, _139, 128, mem[_141 + 164 len mem[_141] + 64]
            if ext_call.success:
                if idx > -3:
                    revert with 'NH{q', 17
                idx = idx + 2
                s = _131
                s = s + 1
                continue 
            call _135.swap(uint256 arg1, uint256 arg2, address arg3) with:
                 gas 350000 wei
                args _131, 0, _139
        revert with 'sf'
}

function zeroCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[96] = arg4.length
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    _3 = mem[128]
    _4 = mem[(32 * mem[128] + 1) + 128]
    mem[ceil32(arg4.length) + 128 len floor32(mem[128] + 1)] = mem[128 len floor32(mem[128] + 1)]
    mem[ceil32(arg4.length) + (32 * _3 + 1) + 128 len floor32(_4 + 1)] = mem[(32 * _3 + 1) + 128 len floor32(_4 + 1)]
    mem[64] = ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 128
    if 0 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
        revert with 'NH{q', 50
    _87 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 160]
    if 1 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
        revert with 'NH{q', 50
    _89 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 192]
    if 0 >= Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
        revert with 'NH{q', 50
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 128] = 0xa9059cbb2ab09eb219583f4a59a5d0623ade346d962bcd4e46b11da047c9049b
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 132] = _89
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 164] = mem[ceil32(arg4.length) + 160]
    call _87.transfer(address arg1, uint256 arg2) with:
         gas 300000 wei
        args _89, mem[ceil32(arg4.length) + 160]
    if not ext_call.success:
        revert with 0, 'tf'
    _94 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]
    if mem[ceil32(arg4.length) + (32 * _3 + 1) + 128] < 2:
        revert with 'NH{q', 17
    idx = 1
    s = 0
    s = 0
    while idx < _94 - 2:
        if 1 > !idx:
            revert with 'NH{q', 17
        if idx + 1 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
            revert with 'NH{q', 50
        if idx < 1:
            revert with 'NH{q', 17
        if idx - 1 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
            revert with 'NH{q', 50
        if 1 > !s:
            revert with 'NH{q', 17
        if s + 1 >= mem[ceil32(arg4.length) + 128]:
            revert with 'NH{q', 50
        if mem[(32 * idx - 1) + ceil32(arg4.length) + (32 * _3 + 1) + 172 len 20] < mem[(32 * idx + 1) + ceil32(arg4.length) + (32 * _3 + 1) + 172 len 20]:
            _130 = mem[(32 * s + 1) + ceil32(arg4.length) + 160]
            if s == -1:
                revert with 'NH{q', 17
            if idx >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _134 = mem[(32 * idx) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            if 2 > !idx:
                revert with 'NH{q', 17
            if idx + 2 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _138 = mem[(32 * idx + 2) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            _140 = mem[64]
            mem[64] = mem[64] + 32
            mem[_140 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
            mem[_140 + 36] = 0
            mem[_140 + 68] = _130
            mem[_140 + 100] = _138
            mem[_140 + 132] = 128
            t = 0
            while t < mem[_140] + 32:
                mem[t + _140 + 164] = mem[t + _140]
                t = t + 32
                continue 
            call _134.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas 350000 wei
                args 0, _130, _138, 128, mem[_140 + 164 len mem[_140] + 64]
            if ext_call.success:
                if idx > -3:
                    revert with 'NH{q', 17
                idx = idx + 2
                s = 0
                s = s + 1
                continue 
            call _134.swap(uint256 arg1, uint256 arg2, address arg3) with:
                 gas 350000 wei
                args 0, _130, _138
        else:
            _131 = mem[(32 * s + 1) + ceil32(arg4.length) + 160]
            if s == -1:
                revert with 'NH{q', 17
            if idx >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _135 = mem[(32 * idx) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            if 2 > !idx:
                revert with 'NH{q', 17
            if idx + 2 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _139 = mem[(32 * idx + 2) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            _141 = mem[64]
            mem[64] = mem[64] + 32
            mem[_141 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
            mem[_141 + 36] = _131
            mem[_141 + 68] = 0
            mem[_141 + 100] = _139
            mem[_141 + 132] = 128
            t = 0
            while t < mem[_141] + 32:
                mem[t + _141 + 164] = mem[t + _141]
                t = t + 32
                continue 
            call _135.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas 350000 wei
                args _131, 0, _139, 128, mem[_141 + 164 len mem[_141] + 64]
            if ext_call.success:
                if idx > -3:
                    revert with 'NH{q', 17
                idx = idx + 2
                s = _131
                s = s + 1
                continue 
            call _135.swap(uint256 arg1, uint256 arg2, address arg3) with:
                 gas 350000 wei
                args _131, 0, _139
        revert with 'sf'
}

function oliveCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[96] = arg4.length
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    _3 = mem[128]
    _4 = mem[(32 * mem[128] + 1) + 128]
    mem[ceil32(arg4.length) + 128 len floor32(mem[128] + 1)] = mem[128 len floor32(mem[128] + 1)]
    mem[ceil32(arg4.length) + (32 * _3 + 1) + 128 len floor32(_4 + 1)] = mem[(32 * _3 + 1) + 128 len floor32(_4 + 1)]
    mem[64] = ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 128
    if 0 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
        revert with 'NH{q', 50
    _87 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 160]
    if 1 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
        revert with 'NH{q', 50
    _89 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 192]
    if 0 >= Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
        revert with 'NH{q', 50
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 128] = 0xa9059cbb2ab09eb219583f4a59a5d0623ade346d962bcd4e46b11da047c9049b
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 132] = _89
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 164] = mem[ceil32(arg4.length) + 160]
    call _87.transfer(address arg1, uint256 arg2) with:
         gas 300000 wei
        args _89, mem[ceil32(arg4.length) + 160]
    if not ext_call.success:
        revert with 0, 'tf'
    _94 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]
    if mem[ceil32(arg4.length) + (32 * _3 + 1) + 128] < 2:
        revert with 'NH{q', 17
    idx = 1
    s = 0
    s = 0
    while idx < _94 - 2:
        if 1 > !idx:
            revert with 'NH{q', 17
        if idx + 1 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
            revert with 'NH{q', 50
        if idx < 1:
            revert with 'NH{q', 17
        if idx - 1 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
            revert with 'NH{q', 50
        if 1 > !s:
            revert with 'NH{q', 17
        if s + 1 >= mem[ceil32(arg4.length) + 128]:
            revert with 'NH{q', 50
        if mem[(32 * idx - 1) + ceil32(arg4.length) + (32 * _3 + 1) + 172 len 20] < mem[(32 * idx + 1) + ceil32(arg4.length) + (32 * _3 + 1) + 172 len 20]:
            _130 = mem[(32 * s + 1) + ceil32(arg4.length) + 160]
            if s == -1:
                revert with 'NH{q', 17
            if idx >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _134 = mem[(32 * idx) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            if 2 > !idx:
                revert with 'NH{q', 17
            if idx + 2 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _138 = mem[(32 * idx + 2) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            _140 = mem[64]
            mem[64] = mem[64] + 32
            mem[_140 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
            mem[_140 + 36] = 0
            mem[_140 + 68] = _130
            mem[_140 + 100] = _138
            mem[_140 + 132] = 128
            t = 0
            while t < mem[_140] + 32:
                mem[t + _140 + 164] = mem[t + _140]
                t = t + 32
                continue 
            call _134.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas 350000 wei
                args 0, _130, _138, 128, mem[_140 + 164 len mem[_140] + 64]
            if ext_call.success:
                if idx > -3:
                    revert with 'NH{q', 17
                idx = idx + 2
                s = 0
                s = s + 1
                continue 
            call _134.swap(uint256 arg1, uint256 arg2, address arg3) with:
                 gas 350000 wei
                args 0, _130, _138
        else:
            _131 = mem[(32 * s + 1) + ceil32(arg4.length) + 160]
            if s == -1:
                revert with 'NH{q', 17
            if idx >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _135 = mem[(32 * idx) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            if 2 > !idx:
                revert with 'NH{q', 17
            if idx + 2 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _139 = mem[(32 * idx + 2) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            _141 = mem[64]
            mem[64] = mem[64] + 32
            mem[_141 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
            mem[_141 + 36] = _131
            mem[_141 + 68] = 0
            mem[_141 + 100] = _139
            mem[_141 + 132] = 128
            t = 0
            while t < mem[_141] + 32:
                mem[t + _141 + 164] = mem[t + _141]
                t = t + 32
                continue 
            call _135.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas 350000 wei
                args _131, 0, _139, 128, mem[_141 + 164 len mem[_141] + 64]
            if ext_call.success:
                if idx > -3:
                    revert with 'NH{q', 17
                idx = idx + 2
                s = _131
                s = s + 1
                continue 
            call _135.swap(uint256 arg1, uint256 arg2, address arg3) with:
                 gas 350000 wei
                args _131, 0, _139
        revert with 'sf'
}

function lydiaCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[96] = arg4.length
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    _3 = mem[128]
    _4 = mem[(32 * mem[128] + 1) + 128]
    mem[ceil32(arg4.length) + 128 len floor32(mem[128] + 1)] = mem[128 len floor32(mem[128] + 1)]
    mem[ceil32(arg4.length) + (32 * _3 + 1) + 128 len floor32(_4 + 1)] = mem[(32 * _3 + 1) + 128 len floor32(_4 + 1)]
    mem[64] = ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 128
    if 0 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
        revert with 'NH{q', 50
    _87 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 160]
    if 1 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
        revert with 'NH{q', 50
    _89 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 192]
    if 0 >= Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
        revert with 'NH{q', 50
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 128] = 0xa9059cbb2ab09eb219583f4a59a5d0623ade346d962bcd4e46b11da047c9049b
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 132] = _89
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 164] = mem[ceil32(arg4.length) + 160]
    call _87.transfer(address arg1, uint256 arg2) with:
         gas 300000 wei
        args _89, mem[ceil32(arg4.length) + 160]
    if not ext_call.success:
        revert with 0, 'tf'
    _94 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]
    if mem[ceil32(arg4.length) + (32 * _3 + 1) + 128] < 2:
        revert with 'NH{q', 17
    idx = 1
    s = 0
    s = 0
    while idx < _94 - 2:
        if 1 > !idx:
            revert with 'NH{q', 17
        if idx + 1 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
            revert with 'NH{q', 50
        if idx < 1:
            revert with 'NH{q', 17
        if idx - 1 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
            revert with 'NH{q', 50
        if 1 > !s:
            revert with 'NH{q', 17
        if s + 1 >= mem[ceil32(arg4.length) + 128]:
            revert with 'NH{q', 50
        if mem[(32 * idx - 1) + ceil32(arg4.length) + (32 * _3 + 1) + 172 len 20] < mem[(32 * idx + 1) + ceil32(arg4.length) + (32 * _3 + 1) + 172 len 20]:
            _130 = mem[(32 * s + 1) + ceil32(arg4.length) + 160]
            if s == -1:
                revert with 'NH{q', 17
            if idx >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _134 = mem[(32 * idx) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            if 2 > !idx:
                revert with 'NH{q', 17
            if idx + 2 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _138 = mem[(32 * idx + 2) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            _140 = mem[64]
            mem[64] = mem[64] + 32
            mem[_140 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
            mem[_140 + 36] = 0
            mem[_140 + 68] = _130
            mem[_140 + 100] = _138
            mem[_140 + 132] = 128
            t = 0
            while t < mem[_140] + 32:
                mem[t + _140 + 164] = mem[t + _140]
                t = t + 32
                continue 
            call _134.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas 350000 wei
                args 0, _130, _138, 128, mem[_140 + 164 len mem[_140] + 64]
            if ext_call.success:
                if idx > -3:
                    revert with 'NH{q', 17
                idx = idx + 2
                s = 0
                s = s + 1
                continue 
            call _134.swap(uint256 arg1, uint256 arg2, address arg3) with:
                 gas 350000 wei
                args 0, _130, _138
        else:
            _131 = mem[(32 * s + 1) + ceil32(arg4.length) + 160]
            if s == -1:
                revert with 'NH{q', 17
            if idx >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _135 = mem[(32 * idx) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            if 2 > !idx:
                revert with 'NH{q', 17
            if idx + 2 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _139 = mem[(32 * idx + 2) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            _141 = mem[64]
            mem[64] = mem[64] + 32
            mem[_141 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
            mem[_141 + 36] = _131
            mem[_141 + 68] = 0
            mem[_141 + 100] = _139
            mem[_141 + 132] = 128
            t = 0
            while t < mem[_141] + 32:
                mem[t + _141 + 164] = mem[t + _141]
                t = t + 32
                continue 
            call _135.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas 350000 wei
                args _131, 0, _139, 128, mem[_141 + 164 len mem[_141] + 64]
            if ext_call.success:
                if idx > -3:
                    revert with 'NH{q', 17
                idx = idx + 2
                s = _131
                s = s + 1
                continue 
            call _135.swap(uint256 arg1, uint256 arg2, address arg3) with:
                 gas 350000 wei
                args _131, 0, _139
        revert with 'sf'
}

function canaryCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[96] = arg4.length
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    _3 = mem[128]
    _4 = mem[(32 * mem[128] + 1) + 128]
    mem[ceil32(arg4.length) + 128 len floor32(mem[128] + 1)] = mem[128 len floor32(mem[128] + 1)]
    mem[ceil32(arg4.length) + (32 * _3 + 1) + 128 len floor32(_4 + 1)] = mem[(32 * _3 + 1) + 128 len floor32(_4 + 1)]
    mem[64] = ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 128
    if 0 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
        revert with 'NH{q', 50
    _87 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 160]
    if 1 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
        revert with 'NH{q', 50
    _89 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 192]
    if 0 >= Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
        revert with 'NH{q', 50
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 128] = 0xa9059cbb2ab09eb219583f4a59a5d0623ade346d962bcd4e46b11da047c9049b
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 132] = _89
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 164] = mem[ceil32(arg4.length) + 160]
    call _87.transfer(address arg1, uint256 arg2) with:
         gas 300000 wei
        args _89, mem[ceil32(arg4.length) + 160]
    if not ext_call.success:
        revert with 0, 'tf'
    _94 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]
    if mem[ceil32(arg4.length) + (32 * _3 + 1) + 128] < 2:
        revert with 'NH{q', 17
    idx = 1
    s = 0
    s = 0
    while idx < _94 - 2:
        if 1 > !idx:
            revert with 'NH{q', 17
        if idx + 1 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
            revert with 'NH{q', 50
        if idx < 1:
            revert with 'NH{q', 17
        if idx - 1 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
            revert with 'NH{q', 50
        if 1 > !s:
            revert with 'NH{q', 17
        if s + 1 >= mem[ceil32(arg4.length) + 128]:
            revert with 'NH{q', 50
        if mem[(32 * idx - 1) + ceil32(arg4.length) + (32 * _3 + 1) + 172 len 20] < mem[(32 * idx + 1) + ceil32(arg4.length) + (32 * _3 + 1) + 172 len 20]:
            _130 = mem[(32 * s + 1) + ceil32(arg4.length) + 160]
            if s == -1:
                revert with 'NH{q', 17
            if idx >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _134 = mem[(32 * idx) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            if 2 > !idx:
                revert with 'NH{q', 17
            if idx + 2 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _138 = mem[(32 * idx + 2) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            _140 = mem[64]
            mem[64] = mem[64] + 32
            mem[_140 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
            mem[_140 + 36] = 0
            mem[_140 + 68] = _130
            mem[_140 + 100] = _138
            mem[_140 + 132] = 128
            t = 0
            while t < mem[_140] + 32:
                mem[t + _140 + 164] = mem[t + _140]
                t = t + 32
                continue 
            call _134.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas 350000 wei
                args 0, _130, _138, 128, mem[_140 + 164 len mem[_140] + 64]
            if ext_call.success:
                if idx > -3:
                    revert with 'NH{q', 17
                idx = idx + 2
                s = 0
                s = s + 1
                continue 
            call _134.swap(uint256 arg1, uint256 arg2, address arg3) with:
                 gas 350000 wei
                args 0, _130, _138
        else:
            _131 = mem[(32 * s + 1) + ceil32(arg4.length) + 160]
            if s == -1:
                revert with 'NH{q', 17
            if idx >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _135 = mem[(32 * idx) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            if 2 > !idx:
                revert with 'NH{q', 17
            if idx + 2 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _139 = mem[(32 * idx + 2) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            _141 = mem[64]
            mem[64] = mem[64] + 32
            mem[_141 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
            mem[_141 + 36] = _131
            mem[_141 + 68] = 0
            mem[_141 + 100] = _139
            mem[_141 + 132] = 128
            t = 0
            while t < mem[_141] + 32:
                mem[t + _141 + 164] = mem[t + _141]
                t = t + 32
                continue 
            call _135.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas 350000 wei
                args _131, 0, _139, 128, mem[_141 + 164 len mem[_141] + 64]
            if ext_call.success:
                if idx > -3:
                    revert with 'NH{q', 17
                idx = idx + 2
                s = _131
                s = s + 1
                continue 
            call _135.swap(uint256 arg1, uint256 arg2, address arg3) with:
                 gas 350000 wei
                args _131, 0, _139
        revert with 'sf'
}

function pancakeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[96] = arg4.length
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    _3 = mem[128]
    _4 = mem[(32 * mem[128] + 1) + 128]
    mem[ceil32(arg4.length) + 128 len floor32(mem[128] + 1)] = mem[128 len floor32(mem[128] + 1)]
    mem[ceil32(arg4.length) + (32 * _3 + 1) + 128 len floor32(_4 + 1)] = mem[(32 * _3 + 1) + 128 len floor32(_4 + 1)]
    mem[64] = ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 128
    if 0 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
        revert with 'NH{q', 50
    _87 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 160]
    if 1 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
        revert with 'NH{q', 50
    _89 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 192]
    if 0 >= Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
        revert with 'NH{q', 50
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 128] = 0xa9059cbb2ab09eb219583f4a59a5d0623ade346d962bcd4e46b11da047c9049b
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 132] = _89
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 164] = mem[ceil32(arg4.length) + 160]
    call _87.transfer(address arg1, uint256 arg2) with:
         gas 300000 wei
        args _89, mem[ceil32(arg4.length) + 160]
    if not ext_call.success:
        revert with 0, 'tf'
    _94 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]
    if mem[ceil32(arg4.length) + (32 * _3 + 1) + 128] < 2:
        revert with 'NH{q', 17
    idx = 1
    s = 0
    s = 0
    while idx < _94 - 2:
        if 1 > !idx:
            revert with 'NH{q', 17
        if idx + 1 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
            revert with 'NH{q', 50
        if idx < 1:
            revert with 'NH{q', 17
        if idx - 1 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
            revert with 'NH{q', 50
        if 1 > !s:
            revert with 'NH{q', 17
        if s + 1 >= mem[ceil32(arg4.length) + 128]:
            revert with 'NH{q', 50
        if mem[(32 * idx - 1) + ceil32(arg4.length) + (32 * _3 + 1) + 172 len 20] < mem[(32 * idx + 1) + ceil32(arg4.length) + (32 * _3 + 1) + 172 len 20]:
            _130 = mem[(32 * s + 1) + ceil32(arg4.length) + 160]
            if s == -1:
                revert with 'NH{q', 17
            if idx >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _134 = mem[(32 * idx) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            if 2 > !idx:
                revert with 'NH{q', 17
            if idx + 2 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _138 = mem[(32 * idx + 2) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            _140 = mem[64]
            mem[64] = mem[64] + 32
            mem[_140 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
            mem[_140 + 36] = 0
            mem[_140 + 68] = _130
            mem[_140 + 100] = _138
            mem[_140 + 132] = 128
            t = 0
            while t < mem[_140] + 32:
                mem[t + _140 + 164] = mem[t + _140]
                t = t + 32
                continue 
            call _134.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas 350000 wei
                args 0, _130, _138, 128, mem[_140 + 164 len mem[_140] + 64]
            if ext_call.success:
                if idx > -3:
                    revert with 'NH{q', 17
                idx = idx + 2
                s = 0
                s = s + 1
                continue 
            call _134.swap(uint256 arg1, uint256 arg2, address arg3) with:
                 gas 350000 wei
                args 0, _130, _138
        else:
            _131 = mem[(32 * s + 1) + ceil32(arg4.length) + 160]
            if s == -1:
                revert with 'NH{q', 17
            if idx >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _135 = mem[(32 * idx) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            if 2 > !idx:
                revert with 'NH{q', 17
            if idx + 2 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _139 = mem[(32 * idx + 2) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            _141 = mem[64]
            mem[64] = mem[64] + 32
            mem[_141 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
            mem[_141 + 36] = _131
            mem[_141 + 68] = 0
            mem[_141 + 100] = _139
            mem[_141 + 132] = 128
            t = 0
            while t < mem[_141] + 32:
                mem[t + _141 + 164] = mem[t + _141]
                t = t + 32
                continue 
            call _135.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas 350000 wei
                args _131, 0, _139, 128, mem[_141 + 164 len mem[_141] + 64]
            if ext_call.success:
                if idx > -3:
                    revert with 'NH{q', 17
                idx = idx + 2
                s = _131
                s = s + 1
                continue 
            call _135.swap(uint256 arg1, uint256 arg2, address arg3) with:
                 gas 350000 wei
                args _131, 0, _139
        revert with 'sf'
}

function baguetteCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[96] = arg4.length
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    _3 = mem[128]
    _4 = mem[(32 * mem[128] + 1) + 128]
    mem[ceil32(arg4.length) + 128 len floor32(mem[128] + 1)] = mem[128 len floor32(mem[128] + 1)]
    mem[ceil32(arg4.length) + (32 * _3 + 1) + 128 len floor32(_4 + 1)] = mem[(32 * _3 + 1) + 128 len floor32(_4 + 1)]
    mem[64] = ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 128
    if 0 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
        revert with 'NH{q', 50
    _87 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 160]
    if 1 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
        revert with 'NH{q', 50
    _89 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 192]
    if 0 >= Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
        revert with 'NH{q', 50
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 128] = 0xa9059cbb2ab09eb219583f4a59a5d0623ade346d962bcd4e46b11da047c9049b
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 132] = _89
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 164] = mem[ceil32(arg4.length) + 160]
    call _87.transfer(address arg1, uint256 arg2) with:
         gas 300000 wei
        args _89, mem[ceil32(arg4.length) + 160]
    if not ext_call.success:
        revert with 0, 'tf'
    _94 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]
    if mem[ceil32(arg4.length) + (32 * _3 + 1) + 128] < 2:
        revert with 'NH{q', 17
    idx = 1
    s = 0
    s = 0
    while idx < _94 - 2:
        if 1 > !idx:
            revert with 'NH{q', 17
        if idx + 1 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
            revert with 'NH{q', 50
        if idx < 1:
            revert with 'NH{q', 17
        if idx - 1 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
            revert with 'NH{q', 50
        if 1 > !s:
            revert with 'NH{q', 17
        if s + 1 >= mem[ceil32(arg4.length) + 128]:
            revert with 'NH{q', 50
        if mem[(32 * idx - 1) + ceil32(arg4.length) + (32 * _3 + 1) + 172 len 20] < mem[(32 * idx + 1) + ceil32(arg4.length) + (32 * _3 + 1) + 172 len 20]:
            _130 = mem[(32 * s + 1) + ceil32(arg4.length) + 160]
            if s == -1:
                revert with 'NH{q', 17
            if idx >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _134 = mem[(32 * idx) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            if 2 > !idx:
                revert with 'NH{q', 17
            if idx + 2 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _138 = mem[(32 * idx + 2) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            _140 = mem[64]
            mem[64] = mem[64] + 32
            mem[_140 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
            mem[_140 + 36] = 0
            mem[_140 + 68] = _130
            mem[_140 + 100] = _138
            mem[_140 + 132] = 128
            t = 0
            while t < mem[_140] + 32:
                mem[t + _140 + 164] = mem[t + _140]
                t = t + 32
                continue 
            call _134.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas 350000 wei
                args 0, _130, _138, 128, mem[_140 + 164 len mem[_140] + 64]
            if ext_call.success:
                if idx > -3:
                    revert with 'NH{q', 17
                idx = idx + 2
                s = 0
                s = s + 1
                continue 
            call _134.swap(uint256 arg1, uint256 arg2, address arg3) with:
                 gas 350000 wei
                args 0, _130, _138
        else:
            _131 = mem[(32 * s + 1) + ceil32(arg4.length) + 160]
            if s == -1:
                revert with 'NH{q', 17
            if idx >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _135 = mem[(32 * idx) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            if 2 > !idx:
                revert with 'NH{q', 17
            if idx + 2 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _139 = mem[(32 * idx + 2) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            _141 = mem[64]
            mem[64] = mem[64] + 32
            mem[_141 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
            mem[_141 + 36] = _131
            mem[_141 + 68] = 0
            mem[_141 + 100] = _139
            mem[_141 + 132] = 128
            t = 0
            while t < mem[_141] + 32:
                mem[t + _141 + 164] = mem[t + _141]
                t = t + 32
                continue 
            call _135.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas 350000 wei
                args _131, 0, _139, 128, mem[_141 + 164 len mem[_141] + 64]
            if ext_call.success:
                if idx > -3:
                    revert with 'NH{q', 17
                idx = idx + 2
                s = _131
                s = s + 1
                continue 
            call _135.swap(uint256 arg1, uint256 arg2, address arg3) with:
                 gas 350000 wei
                args _131, 0, _139
        revert with 'sf'
}

function yetiswapCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[96] = arg4.length
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    _3 = mem[128]
    _4 = mem[(32 * mem[128] + 1) + 128]
    mem[ceil32(arg4.length) + 128 len floor32(mem[128] + 1)] = mem[128 len floor32(mem[128] + 1)]
    mem[ceil32(arg4.length) + (32 * _3 + 1) + 128 len floor32(_4 + 1)] = mem[(32 * _3 + 1) + 128 len floor32(_4 + 1)]
    mem[64] = ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 128
    if 0 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
        revert with 'NH{q', 50
    _87 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 160]
    if 1 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
        revert with 'NH{q', 50
    _89 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 192]
    if 0 >= Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
        revert with 'NH{q', 50
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 128] = 0xa9059cbb2ab09eb219583f4a59a5d0623ade346d962bcd4e46b11da047c9049b
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 132] = _89
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 164] = mem[ceil32(arg4.length) + 160]
    call _87.transfer(address arg1, uint256 arg2) with:
         gas 300000 wei
        args _89, mem[ceil32(arg4.length) + 160]
    if not ext_call.success:
        revert with 0, 'tf'
    _94 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]
    if mem[ceil32(arg4.length) + (32 * _3 + 1) + 128] < 2:
        revert with 'NH{q', 17
    idx = 1
    s = 0
    s = 0
    while idx < _94 - 2:
        if 1 > !idx:
            revert with 'NH{q', 17
        if idx + 1 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
            revert with 'NH{q', 50
        if idx < 1:
            revert with 'NH{q', 17
        if idx - 1 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
            revert with 'NH{q', 50
        if 1 > !s:
            revert with 'NH{q', 17
        if s + 1 >= mem[ceil32(arg4.length) + 128]:
            revert with 'NH{q', 50
        if mem[(32 * idx - 1) + ceil32(arg4.length) + (32 * _3 + 1) + 172 len 20] < mem[(32 * idx + 1) + ceil32(arg4.length) + (32 * _3 + 1) + 172 len 20]:
            _130 = mem[(32 * s + 1) + ceil32(arg4.length) + 160]
            if s == -1:
                revert with 'NH{q', 17
            if idx >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _134 = mem[(32 * idx) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            if 2 > !idx:
                revert with 'NH{q', 17
            if idx + 2 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _138 = mem[(32 * idx + 2) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            _140 = mem[64]
            mem[64] = mem[64] + 32
            mem[_140 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
            mem[_140 + 36] = 0
            mem[_140 + 68] = _130
            mem[_140 + 100] = _138
            mem[_140 + 132] = 128
            t = 0
            while t < mem[_140] + 32:
                mem[t + _140 + 164] = mem[t + _140]
                t = t + 32
                continue 
            call _134.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas 350000 wei
                args 0, _130, _138, 128, mem[_140 + 164 len mem[_140] + 64]
            if ext_call.success:
                if idx > -3:
                    revert with 'NH{q', 17
                idx = idx + 2
                s = 0
                s = s + 1
                continue 
            call _134.swap(uint256 arg1, uint256 arg2, address arg3) with:
                 gas 350000 wei
                args 0, _130, _138
        else:
            _131 = mem[(32 * s + 1) + ceil32(arg4.length) + 160]
            if s == -1:
                revert with 'NH{q', 17
            if idx >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _135 = mem[(32 * idx) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            if 2 > !idx:
                revert with 'NH{q', 17
            if idx + 2 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _139 = mem[(32 * idx + 2) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            _141 = mem[64]
            mem[64] = mem[64] + 32
            mem[_141 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
            mem[_141 + 36] = _131
            mem[_141 + 68] = 0
            mem[_141 + 100] = _139
            mem[_141 + 132] = 128
            t = 0
            while t < mem[_141] + 32:
                mem[t + _141 + 164] = mem[t + _141]
                t = t + 32
                continue 
            call _135.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas 350000 wei
                args _131, 0, _139, 128, mem[_141 + 164 len mem[_141] + 64]
            if ext_call.success:
                if idx > -3:
                    revert with 'NH{q', 17
                idx = idx + 2
                s = _131
                s = s + 1
                continue 
            call _135.swap(uint256 arg1, uint256 arg2, address arg3) with:
                 gas 350000 wei
                args _131, 0, _139
        revert with 'sf'
}

function pangolinCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[96] = arg4.length
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    _3 = mem[128]
    _4 = mem[(32 * mem[128] + 1) + 128]
    mem[ceil32(arg4.length) + 128 len floor32(mem[128] + 1)] = mem[128 len floor32(mem[128] + 1)]
    mem[ceil32(arg4.length) + (32 * _3 + 1) + 128 len floor32(_4 + 1)] = mem[(32 * _3 + 1) + 128 len floor32(_4 + 1)]
    mem[64] = ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 128
    if 0 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
        revert with 'NH{q', 50
    _87 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 160]
    if 1 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
        revert with 'NH{q', 50
    _89 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 192]
    if 0 >= Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
        revert with 'NH{q', 50
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 128] = 0xa9059cbb2ab09eb219583f4a59a5d0623ade346d962bcd4e46b11da047c9049b
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 132] = _89
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 164] = mem[ceil32(arg4.length) + 160]
    call _87.transfer(address arg1, uint256 arg2) with:
         gas 300000 wei
        args _89, mem[ceil32(arg4.length) + 160]
    if not ext_call.success:
        revert with 0, 'tf'
    _94 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]
    if mem[ceil32(arg4.length) + (32 * _3 + 1) + 128] < 2:
        revert with 'NH{q', 17
    idx = 1
    s = 0
    s = 0
    while idx < _94 - 2:
        if 1 > !idx:
            revert with 'NH{q', 17
        if idx + 1 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
            revert with 'NH{q', 50
        if idx < 1:
            revert with 'NH{q', 17
        if idx - 1 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
            revert with 'NH{q', 50
        if 1 > !s:
            revert with 'NH{q', 17
        if s + 1 >= mem[ceil32(arg4.length) + 128]:
            revert with 'NH{q', 50
        if mem[(32 * idx - 1) + ceil32(arg4.length) + (32 * _3 + 1) + 172 len 20] < mem[(32 * idx + 1) + ceil32(arg4.length) + (32 * _3 + 1) + 172 len 20]:
            _130 = mem[(32 * s + 1) + ceil32(arg4.length) + 160]
            if s == -1:
                revert with 'NH{q', 17
            if idx >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _134 = mem[(32 * idx) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            if 2 > !idx:
                revert with 'NH{q', 17
            if idx + 2 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _138 = mem[(32 * idx + 2) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            _140 = mem[64]
            mem[64] = mem[64] + 32
            mem[_140 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
            mem[_140 + 36] = 0
            mem[_140 + 68] = _130
            mem[_140 + 100] = _138
            mem[_140 + 132] = 128
            t = 0
            while t < mem[_140] + 32:
                mem[t + _140 + 164] = mem[t + _140]
                t = t + 32
                continue 
            call _134.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas 350000 wei
                args 0, _130, _138, 128, mem[_140 + 164 len mem[_140] + 64]
            if ext_call.success:
                if idx > -3:
                    revert with 'NH{q', 17
                idx = idx + 2
                s = 0
                s = s + 1
                continue 
            call _134.swap(uint256 arg1, uint256 arg2, address arg3) with:
                 gas 350000 wei
                args 0, _130, _138
        else:
            _131 = mem[(32 * s + 1) + ceil32(arg4.length) + 160]
            if s == -1:
                revert with 'NH{q', 17
            if idx >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _135 = mem[(32 * idx) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            if 2 > !idx:
                revert with 'NH{q', 17
            if idx + 2 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _139 = mem[(32 * idx + 2) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            _141 = mem[64]
            mem[64] = mem[64] + 32
            mem[_141 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
            mem[_141 + 36] = _131
            mem[_141 + 68] = 0
            mem[_141 + 100] = _139
            mem[_141 + 132] = 128
            t = 0
            while t < mem[_141] + 32:
                mem[t + _141 + 164] = mem[t + _141]
                t = t + 32
                continue 
            call _135.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas 350000 wei
                args _131, 0, _139, 128, mem[_141 + 164 len mem[_141] + 64]
            if ext_call.success:
                if idx > -3:
                    revert with 'NH{q', 17
                idx = idx + 2
                s = _131
                s = s + 1
                continue 
            call _135.swap(uint256 arg1, uint256 arg2, address arg3) with:
                 gas 350000 wei
                args _131, 0, _139
        revert with 'sf'
}

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[96] = arg4.length
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    _3 = mem[128]
    _4 = mem[(32 * mem[128] + 1) + 128]
    mem[ceil32(arg4.length) + 128 len floor32(mem[128] + 1)] = mem[128 len floor32(mem[128] + 1)]
    mem[ceil32(arg4.length) + (32 * _3 + 1) + 128 len floor32(_4 + 1)] = mem[(32 * _3 + 1) + 128 len floor32(_4 + 1)]
    mem[64] = ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 128
    if 0 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
        revert with 'NH{q', 50
    _87 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 160]
    if 1 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
        revert with 'NH{q', 50
    _89 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 192]
    if 0 >= Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
        revert with 'NH{q', 50
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 128] = 0xa9059cbb2ab09eb219583f4a59a5d0623ade346d962bcd4e46b11da047c9049b
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 132] = _89
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 164] = mem[ceil32(arg4.length) + 160]
    call _87.transfer(address arg1, uint256 arg2) with:
         gas 300000 wei
        args _89, mem[ceil32(arg4.length) + 160]
    if not ext_call.success:
        revert with 0, 'tf'
    _94 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]
    if mem[ceil32(arg4.length) + (32 * _3 + 1) + 128] < 2:
        revert with 'NH{q', 17
    idx = 1
    s = 0
    s = 0
    while idx < _94 - 2:
        if 1 > !idx:
            revert with 'NH{q', 17
        if idx + 1 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
            revert with 'NH{q', 50
        if idx < 1:
            revert with 'NH{q', 17
        if idx - 1 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
            revert with 'NH{q', 50
        if 1 > !s:
            revert with 'NH{q', 17
        if s + 1 >= mem[ceil32(arg4.length) + 128]:
            revert with 'NH{q', 50
        if mem[(32 * idx - 1) + ceil32(arg4.length) + (32 * _3 + 1) + 172 len 20] < mem[(32 * idx + 1) + ceil32(arg4.length) + (32 * _3 + 1) + 172 len 20]:
            _130 = mem[(32 * s + 1) + ceil32(arg4.length) + 160]
            if s == -1:
                revert with 'NH{q', 17
            if idx >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _134 = mem[(32 * idx) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            if 2 > !idx:
                revert with 'NH{q', 17
            if idx + 2 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _138 = mem[(32 * idx + 2) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            _140 = mem[64]
            mem[64] = mem[64] + 32
            mem[_140 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
            mem[_140 + 36] = 0
            mem[_140 + 68] = _130
            mem[_140 + 100] = _138
            mem[_140 + 132] = 128
            t = 0
            while t < mem[_140] + 32:
                mem[t + _140 + 164] = mem[t + _140]
                t = t + 32
                continue 
            call _134.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas 350000 wei
                args 0, _130, _138, 128, mem[_140 + 164 len mem[_140] + 64]
            if ext_call.success:
                if idx > -3:
                    revert with 'NH{q', 17
                idx = idx + 2
                s = 0
                s = s + 1
                continue 
            call _134.swap(uint256 arg1, uint256 arg2, address arg3) with:
                 gas 350000 wei
                args 0, _130, _138
        else:
            _131 = mem[(32 * s + 1) + ceil32(arg4.length) + 160]
            if s == -1:
                revert with 'NH{q', 17
            if idx >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _135 = mem[(32 * idx) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            if 2 > !idx:
                revert with 'NH{q', 17
            if idx + 2 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _139 = mem[(32 * idx + 2) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            _141 = mem[64]
            mem[64] = mem[64] + 32
            mem[_141 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
            mem[_141 + 36] = _131
            mem[_141 + 68] = 0
            mem[_141 + 100] = _139
            mem[_141 + 132] = 128
            t = 0
            while t < mem[_141] + 32:
                mem[t + _141 + 164] = mem[t + _141]
                t = t + 32
                continue 
            call _135.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas 350000 wei
                args _131, 0, _139, 128, mem[_141 + 164 len mem[_141] + 64]
            if ext_call.success:
                if idx > -3:
                    revert with 'NH{q', 17
                idx = idx + 2
                s = _131
                s = s + 1
                continue 
            call _135.swap(uint256 arg1, uint256 arg2, address arg3) with:
                 gas 350000 wei
                args _131, 0, _139
        revert with 'sf'
}

function complusV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[96] = arg4.length
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    _3 = mem[128]
    _4 = mem[(32 * mem[128] + 1) + 128]
    mem[ceil32(arg4.length) + 128 len floor32(mem[128] + 1)] = mem[128 len floor32(mem[128] + 1)]
    mem[ceil32(arg4.length) + (32 * _3 + 1) + 128 len floor32(_4 + 1)] = mem[(32 * _3 + 1) + 128 len floor32(_4 + 1)]
    mem[64] = ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 128
    if 0 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
        revert with 'NH{q', 50
    _87 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 160]
    if 1 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
        revert with 'NH{q', 50
    _89 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 192]
    if 0 >= Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
        revert with 'NH{q', 50
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 128] = 0xa9059cbb2ab09eb219583f4a59a5d0623ade346d962bcd4e46b11da047c9049b
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 132] = _89
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 164] = mem[ceil32(arg4.length) + 160]
    call _87.transfer(address arg1, uint256 arg2) with:
         gas 300000 wei
        args _89, mem[ceil32(arg4.length) + 160]
    if not ext_call.success:
        revert with 0, 'tf'
    _94 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]
    if mem[ceil32(arg4.length) + (32 * _3 + 1) + 128] < 2:
        revert with 'NH{q', 17
    idx = 1
    s = 0
    s = 0
    while idx < _94 - 2:
        if 1 > !idx:
            revert with 'NH{q', 17
        if idx + 1 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
            revert with 'NH{q', 50
        if idx < 1:
            revert with 'NH{q', 17
        if idx - 1 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
            revert with 'NH{q', 50
        if 1 > !s:
            revert with 'NH{q', 17
        if s + 1 >= mem[ceil32(arg4.length) + 128]:
            revert with 'NH{q', 50
        if mem[(32 * idx - 1) + ceil32(arg4.length) + (32 * _3 + 1) + 172 len 20] < mem[(32 * idx + 1) + ceil32(arg4.length) + (32 * _3 + 1) + 172 len 20]:
            _130 = mem[(32 * s + 1) + ceil32(arg4.length) + 160]
            if s == -1:
                revert with 'NH{q', 17
            if idx >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _134 = mem[(32 * idx) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            if 2 > !idx:
                revert with 'NH{q', 17
            if idx + 2 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _138 = mem[(32 * idx + 2) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            _140 = mem[64]
            mem[64] = mem[64] + 32
            mem[_140 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
            mem[_140 + 36] = 0
            mem[_140 + 68] = _130
            mem[_140 + 100] = _138
            mem[_140 + 132] = 128
            t = 0
            while t < mem[_140] + 32:
                mem[t + _140 + 164] = mem[t + _140]
                t = t + 32
                continue 
            call _134.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas 350000 wei
                args 0, _130, _138, 128, mem[_140 + 164 len mem[_140] + 64]
            if ext_call.success:
                if idx > -3:
                    revert with 'NH{q', 17
                idx = idx + 2
                s = 0
                s = s + 1
                continue 
            call _134.swap(uint256 arg1, uint256 arg2, address arg3) with:
                 gas 350000 wei
                args 0, _130, _138
        else:
            _131 = mem[(32 * s + 1) + ceil32(arg4.length) + 160]
            if s == -1:
                revert with 'NH{q', 17
            if idx >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _135 = mem[(32 * idx) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            if 2 > !idx:
                revert with 'NH{q', 17
            if idx + 2 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _139 = mem[(32 * idx + 2) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            _141 = mem[64]
            mem[64] = mem[64] + 32
            mem[_141 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
            mem[_141 + 36] = _131
            mem[_141 + 68] = 0
            mem[_141 + 100] = _139
            mem[_141 + 132] = 128
            t = 0
            while t < mem[_141] + 32:
                mem[t + _141 + 164] = mem[t + _141]
                t = t + 32
                continue 
            call _135.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas 350000 wei
                args _131, 0, _139, 128, mem[_141 + 164 len mem[_141] + 64]
            if ext_call.success:
                if idx > -3:
                    revert with 'NH{q', 17
                idx = idx + 2
                s = _131
                s = s + 1
                continue 
            call _135.swap(uint256 arg1, uint256 arg2, address arg3) with:
                 gas 350000 wei
                args _131, 0, _139
        revert with 'sf'
}

function sub_6ecd2fb7(?) {
    require calldata.size - 4 >= 160
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = cd[36] + 36
    s = ceil32(32 * ('cd', 4).length) + 129
    while idx < cd[36] + (32 * ('cd', 36).length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 100).length) + 99 < 98 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 99 > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = cd[100] + 36
    s = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130
    while idx < cd[100] + (32 * ('cd', 100).length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[132] == bool(cd[132])
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 99] = ('cd', 36).length + 1
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 131] = cd[68]
    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (32 * ('cd', 36).length + 1) + 99
    idx = 32
    s = 0
    s = 0
    s = 0
    while idx < 32 * ('cd', 4).length:
        staticcall mem[idx + 128].getReserves() with:
                gas 15000 wei
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (32 * ('cd', 36).length + 1) + 99 len 64] = ext_call.return_data[0 len 64]
        if mem[idx + 96] <= mem[idx + 160]:
            if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + s + 131] * mem[ceil32(32 * ('cd', 4).length) + s + 129] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + s + 131] * mem[ceil32(32 * ('cd', 4).length) + s + 129]) < mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + s + 130]:
            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + s + 163] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + s + 131] * mem[ceil32(32 * ('cd', 4).length) + s + 129] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + s + 131] * mem[ceil32(32 * ('cd', 4).length) + s + 129])
            idx = idx + 64
            s = ext_call.return_data[32]
            s = ext_call.return_data[0]
            s = s + 32
            continue 
        if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + s + 131] * mem[ceil32(32 * ('cd', 4).length) + s + 129] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + s + 131] * mem[ceil32(32 * ('cd', 4).length) + s + 129]) < mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + s + 130]:
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + s + 163] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + s + 131] * mem[ceil32(32 * ('cd', 4).length) + s + 129] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + s + 131] * mem[ceil32(32 * ('cd', 4).length) + s + 129])
        idx = idx + 64
        s = ext_call.return_data[0]
        s = ext_call.return_data[32]
        s = s + 32
        continue 
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (32 * ('cd', 36).length + 1) + 131 len floor32(('cd', 36).length + 2)] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 99 len floor32(('cd', 36).length + 2)]
    if mem[(32 * ('cd', 4).length) + 96 len ceil32(32 * ('cd', 4).length) + -(32 * ('cd', 4).length) + 1], Mask(8 * (32 * ('cd', 4).length) + -ceil32(32 * ('cd', 4).length) + 31, -(8 * (32 * ('cd', 4).length) + -ceil32(32 * ('cd', 4).length) + 31) + 256, ('cd', 36).length) >> -(8 * (32 * ('cd', 4).length) + -ceil32(32 * ('cd', 4).length) + 31) + 256 > mem[(32 * ('cd', 4).length) + 32]:
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length + 2) + 131 len floor32(('cd', 4).length + 1)] = mem[96 len floor32(('cd', 4).length + 1)]
        call mem[(32 * ('cd', 4).length) + 64] with:
           funct Mask(32, 224, sha3('swap(uint256,uint256,address,byt', 'es)')) >> 224
             gas 350000 wei
            args 0, mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (32 * ('cd', 36).length + 1) + 99], this.address, 128, Mask(8 * floor32((32 * ('cd', 36).length + 2) + (32 * ('cd', 4).length + 1) + 31) + 1, -(8 * floor32((32 * ('cd', 36).length + 2) + (32 * ('cd', 4).length + 1) + 31) + 1) + 256, mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (32 * ('cd', 36).length + 1) + floor32(('cd', 36).length + 2) + 131 len (32 * ('cd', 36).length + 2) - floor32(('cd', 36).length + 2)], mem[96 len floor32(('cd', 4).length + 1)], mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length + 2) + floor32(('cd', 4).length + 1) + 131 len floor32((32 * ('cd', 36).length + 2) + (32 * ('cd', 4).length + 1) + 31) + -(32 * ('cd', 36).length + 2) + -floor32(('cd', 4).length + 1) - 31]) << (8 * floor32((32 * ('cd', 36).length + 2) + (32 * ('cd', 4).length + 1) + 31) + 1) - 256, mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length + 2) + (32 * ('cd', 4).length + 1) + floor32((32 * ('cd', 36).length + 2) + (32 * ('cd', 4).length + 1) + 31) + 264 len (32 * ('cd', 36).length + 2) + (32 * ('cd', 4).length + 1) + -floor32((32 * ('cd', 36).length + 2) + (32 * ('cd', 4).length + 1) + 31) + 63]
    else:
        idx = floor32(('cd', 36).length + 2)
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length + 2) + 131 len floor32(('cd', 4).length + 1)] = mem[96 len floor32(('cd', 4).length + 1)]
        call mem[(32 * ('cd', 4).length) + 64] with:
           funct Mask(32, 224, sha3('swap(uint256,uint256,address,byt', 'es)')) >> 224
             gas 350000 wei
            args mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (32 * ('cd', 36).length + 1) + 99], 0, this.address, 128, Mask(8 * floor32((32 * ('cd', 36).length + 2) + (32 * ('cd', 4).length + 1) + 31) + 1, -(8 * floor32((32 * ('cd', 36).length + 2) + (32 * ('cd', 4).length + 1) + 31) + 1) + 256, mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (32 * ('cd', 36).length + 1) + floor32(('cd', 36).length + 2) + 131 len (32 * ('cd', 36).length + 2) - floor32(('cd', 36).length + 2)], mem[96 len floor32(('cd', 4).length + 1)], mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length + 2) + floor32(('cd', 4).length + 1) + 131 len floor32((32 * ('cd', 36).length + 2) + (32 * ('cd', 4).length + 1) + 31) + -(32 * ('cd', 36).length + 2) + -floor32(('cd', 4).length + 1) - 31]) << (8 * floor32((32 * ('cd', 36).length + 2) + (32 * ('cd', 4).length + 1) + 31) + 1) - 256, mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length + 2) + (32 * ('cd', 4).length + 1) + floor32((32 * ('cd', 36).length + 2) + (32 * ('cd', 4).length + 1) + 31) + 264 len (32 * ('cd', 36).length + 2) + (32 * ('cd', 4).length + 1) + -floor32((32 * ('cd', 36).length + 2) + (32 * ('cd', 4).length + 1) + 31) + 63]
    if not ext_call.success:
        revert with 'sf'
    if cd[132]:
        require ext_code.size(stor3)
        if ('cd', 4).length <= 5:
            call stor3.free(uint256 arg1) with:
                 gas gas_remaining wei
                args 4
        else:
            call stor3.free(uint256 arg1) with:
                 gas gas_remaining wei
                args 6
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}



}
