contract main {




// =====================  Runtime code  =====================


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
    _97 = mem[ceil32(arg2.length) + (32 * _3 + 1) + 160]
    if 1 >= mem[ceil32(arg2.length) + (32 * _3 + 1) + 128]:
        revert with 'NH{q', 50
    _99 = mem[ceil32(arg2.length) + (32 * _3 + 1) + 192]
    if 0 >= Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]:
        revert with 'NH{q', 50
    mem[ceil32(arg2.length) + (32 * _3 + 1) + (32 * _4 + 1) + 128] = 0xa9059cbb2ab09eb219583f4a59a5d0623ade346d962bcd4e46b11da047c9049b
    mem[ceil32(arg2.length) + (32 * _3 + 1) + (32 * _4 + 1) + 132] = _99
    mem[ceil32(arg2.length) + (32 * _3 + 1) + (32 * _4 + 1) + 164] = mem[ceil32(arg2.length) + 160]
    call _97.transfer(address arg1, uint256 arg2) with:
         gas 300000 wei
        args _99, mem[ceil32(arg2.length) + 160]
    if not ext_call.success:
        revert with 0, 'tf'
    _104 = mem[ceil32(arg2.length) + (32 * _3 + 1) + 128]
    if mem[ceil32(arg2.length) + (32 * _3 + 1) + 128] < 2:
        revert with 'NH{q', 17
    idx = 1
    s = 0
    s = 0
    while idx < _104 - 2:
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
            _150 = mem[(32 * s + 1) + ceil32(arg2.length) + 160]
            if s == -1:
                revert with 'NH{q', 17
            if idx >= mem[ceil32(arg2.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _154 = mem[(32 * idx) + ceil32(arg2.length) + (32 * _3 + 1) + 160]
            if 2 > !idx:
                revert with 'NH{q', 17
            if idx + 2 >= mem[ceil32(arg2.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _158 = mem[(32 * idx + 2) + ceil32(arg2.length) + (32 * _3 + 1) + 160]
            _160 = mem[64]
            mem[64] = mem[64] + 32
            mem[_160 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
            mem[_160 + 36] = 0
            mem[_160 + 68] = _150
            mem[_160 + 100] = _158
            mem[_160 + 132] = 128
            t = 0
            while t < mem[_160] + 32:
                mem[t + _160 + 164] = mem[t + _160]
                t = t + 32
                continue 
            call _154.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas 350000 wei
                args 0, _150, _158, 128, mem[_160 + 164 len mem[_160] + 64]
            if ext_call.success:
                if idx > -3:
                    revert with 'NH{q', 17
                idx = idx + 2
                s = 0
                s = s + 1
                continue 
            call _154.swap(uint256 arg1, uint256 arg2, address arg3) with:
                 gas 350000 wei
                args 0, _150, _158
        else:
            _151 = mem[(32 * s + 1) + ceil32(arg2.length) + 160]
            if s == -1:
                revert with 'NH{q', 17
            if idx >= mem[ceil32(arg2.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _155 = mem[(32 * idx) + ceil32(arg2.length) + (32 * _3 + 1) + 160]
            if 2 > !idx:
                revert with 'NH{q', 17
            if idx + 2 >= mem[ceil32(arg2.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _159 = mem[(32 * idx + 2) + ceil32(arg2.length) + (32 * _3 + 1) + 160]
            _161 = mem[64]
            mem[64] = mem[64] + 32
            mem[_161 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
            mem[_161 + 36] = _151
            mem[_161 + 68] = 0
            mem[_161 + 100] = _159
            mem[_161 + 132] = 128
            t = 0
            while t < mem[_161] + 32:
                mem[t + _161 + 164] = mem[t + _161]
                t = t + 32
                continue 
            call _155.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas 350000 wei
                args _151, 0, _159, 128, mem[_161 + 164 len mem[_161] + 64]
            if ext_call.success:
                if idx > -3:
                    revert with 'NH{q', 17
                idx = idx + 2
                s = _151
                s = s + 1
                continue 
            call _155.swap(uint256 arg1, uint256 arg2, address arg3) with:
                 gas 350000 wei
                args _151, 0, _159
        revert with 'sf'
    call _97.0x70a08231 with:
         gas 15000 wei
        args this.address
    if ext_call.return_data[0] < 1:
        revert with 'NH{q', 17
    call _97.transfer(address arg1, uint256 arg2) with:
         gas 300000 wei
        args stor4, ext_call.return_data[0] - 1
    if not ext_call.success:
        revert with 0, 'tf'
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
    _97 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 160]
    if 1 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
        revert with 'NH{q', 50
    _99 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 192]
    if 0 >= Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
        revert with 'NH{q', 50
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 128] = 0xa9059cbb2ab09eb219583f4a59a5d0623ade346d962bcd4e46b11da047c9049b
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 132] = _99
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 164] = mem[ceil32(arg4.length) + 160]
    call _97.transfer(address arg1, uint256 arg2) with:
         gas 300000 wei
        args _99, mem[ceil32(arg4.length) + 160]
    if not ext_call.success:
        revert with 0, 'tf'
    _104 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]
    if mem[ceil32(arg4.length) + (32 * _3 + 1) + 128] < 2:
        revert with 'NH{q', 17
    idx = 1
    s = 0
    s = 0
    while idx < _104 - 2:
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
            _150 = mem[(32 * s + 1) + ceil32(arg4.length) + 160]
            if s == -1:
                revert with 'NH{q', 17
            if idx >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _154 = mem[(32 * idx) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            if 2 > !idx:
                revert with 'NH{q', 17
            if idx + 2 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _158 = mem[(32 * idx + 2) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            _160 = mem[64]
            mem[64] = mem[64] + 32
            mem[_160 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
            mem[_160 + 36] = 0
            mem[_160 + 68] = _150
            mem[_160 + 100] = _158
            mem[_160 + 132] = 128
            t = 0
            while t < mem[_160] + 32:
                mem[t + _160 + 164] = mem[t + _160]
                t = t + 32
                continue 
            call _154.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas 350000 wei
                args 0, _150, _158, 128, mem[_160 + 164 len mem[_160] + 64]
            if ext_call.success:
                if idx > -3:
                    revert with 'NH{q', 17
                idx = idx + 2
                s = 0
                s = s + 1
                continue 
            call _154.swap(uint256 arg1, uint256 arg2, address arg3) with:
                 gas 350000 wei
                args 0, _150, _158
        else:
            _151 = mem[(32 * s + 1) + ceil32(arg4.length) + 160]
            if s == -1:
                revert with 'NH{q', 17
            if idx >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _155 = mem[(32 * idx) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            if 2 > !idx:
                revert with 'NH{q', 17
            if idx + 2 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _159 = mem[(32 * idx + 2) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            _161 = mem[64]
            mem[64] = mem[64] + 32
            mem[_161 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
            mem[_161 + 36] = _151
            mem[_161 + 68] = 0
            mem[_161 + 100] = _159
            mem[_161 + 132] = 128
            t = 0
            while t < mem[_161] + 32:
                mem[t + _161 + 164] = mem[t + _161]
                t = t + 32
                continue 
            call _155.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas 350000 wei
                args _151, 0, _159, 128, mem[_161 + 164 len mem[_161] + 64]
            if ext_call.success:
                if idx > -3:
                    revert with 'NH{q', 17
                idx = idx + 2
                s = _151
                s = s + 1
                continue 
            call _155.swap(uint256 arg1, uint256 arg2, address arg3) with:
                 gas 350000 wei
                args _151, 0, _159
        revert with 'sf'
    call _97.0x70a08231 with:
         gas 15000 wei
        args this.address
    if ext_call.return_data[0] < 1:
        revert with 'NH{q', 17
    call _97.transfer(address arg1, uint256 arg2) with:
         gas 300000 wei
        args stor4, ext_call.return_data[0] - 1
    if not ext_call.success:
        revert with 0, 'tf'
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
    _97 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 160]
    if 1 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
        revert with 'NH{q', 50
    _99 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 192]
    if 0 >= Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
        revert with 'NH{q', 50
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 128] = 0xa9059cbb2ab09eb219583f4a59a5d0623ade346d962bcd4e46b11da047c9049b
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 132] = _99
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 164] = mem[ceil32(arg4.length) + 160]
    call _97.transfer(address arg1, uint256 arg2) with:
         gas 300000 wei
        args _99, mem[ceil32(arg4.length) + 160]
    if not ext_call.success:
        revert with 0, 'tf'
    _104 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]
    if mem[ceil32(arg4.length) + (32 * _3 + 1) + 128] < 2:
        revert with 'NH{q', 17
    idx = 1
    s = 0
    s = 0
    while idx < _104 - 2:
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
            _150 = mem[(32 * s + 1) + ceil32(arg4.length) + 160]
            if s == -1:
                revert with 'NH{q', 17
            if idx >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _154 = mem[(32 * idx) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            if 2 > !idx:
                revert with 'NH{q', 17
            if idx + 2 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _158 = mem[(32 * idx + 2) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            _160 = mem[64]
            mem[64] = mem[64] + 32
            mem[_160 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
            mem[_160 + 36] = 0
            mem[_160 + 68] = _150
            mem[_160 + 100] = _158
            mem[_160 + 132] = 128
            t = 0
            while t < mem[_160] + 32:
                mem[t + _160 + 164] = mem[t + _160]
                t = t + 32
                continue 
            call _154.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas 350000 wei
                args 0, _150, _158, 128, mem[_160 + 164 len mem[_160] + 64]
            if ext_call.success:
                if idx > -3:
                    revert with 'NH{q', 17
                idx = idx + 2
                s = 0
                s = s + 1
                continue 
            call _154.swap(uint256 arg1, uint256 arg2, address arg3) with:
                 gas 350000 wei
                args 0, _150, _158
        else:
            _151 = mem[(32 * s + 1) + ceil32(arg4.length) + 160]
            if s == -1:
                revert with 'NH{q', 17
            if idx >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _155 = mem[(32 * idx) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            if 2 > !idx:
                revert with 'NH{q', 17
            if idx + 2 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _159 = mem[(32 * idx + 2) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            _161 = mem[64]
            mem[64] = mem[64] + 32
            mem[_161 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
            mem[_161 + 36] = _151
            mem[_161 + 68] = 0
            mem[_161 + 100] = _159
            mem[_161 + 132] = 128
            t = 0
            while t < mem[_161] + 32:
                mem[t + _161 + 164] = mem[t + _161]
                t = t + 32
                continue 
            call _155.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas 350000 wei
                args _151, 0, _159, 128, mem[_161 + 164 len mem[_161] + 64]
            if ext_call.success:
                if idx > -3:
                    revert with 'NH{q', 17
                idx = idx + 2
                s = _151
                s = s + 1
                continue 
            call _155.swap(uint256 arg1, uint256 arg2, address arg3) with:
                 gas 350000 wei
                args _151, 0, _159
        revert with 'sf'
    call _97.0x70a08231 with:
         gas 15000 wei
        args this.address
    if ext_call.return_data[0] < 1:
        revert with 'NH{q', 17
    call _97.transfer(address arg1, uint256 arg2) with:
         gas 300000 wei
        args stor4, ext_call.return_data[0] - 1
    if not ext_call.success:
        revert with 0, 'tf'
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
    _97 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 160]
    if 1 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
        revert with 'NH{q', 50
    _99 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 192]
    if 0 >= Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
        revert with 'NH{q', 50
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 128] = 0xa9059cbb2ab09eb219583f4a59a5d0623ade346d962bcd4e46b11da047c9049b
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 132] = _99
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 164] = mem[ceil32(arg4.length) + 160]
    call _97.transfer(address arg1, uint256 arg2) with:
         gas 300000 wei
        args _99, mem[ceil32(arg4.length) + 160]
    if not ext_call.success:
        revert with 0, 'tf'
    _104 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]
    if mem[ceil32(arg4.length) + (32 * _3 + 1) + 128] < 2:
        revert with 'NH{q', 17
    idx = 1
    s = 0
    s = 0
    while idx < _104 - 2:
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
            _150 = mem[(32 * s + 1) + ceil32(arg4.length) + 160]
            if s == -1:
                revert with 'NH{q', 17
            if idx >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _154 = mem[(32 * idx) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            if 2 > !idx:
                revert with 'NH{q', 17
            if idx + 2 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _158 = mem[(32 * idx + 2) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            _160 = mem[64]
            mem[64] = mem[64] + 32
            mem[_160 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
            mem[_160 + 36] = 0
            mem[_160 + 68] = _150
            mem[_160 + 100] = _158
            mem[_160 + 132] = 128
            t = 0
            while t < mem[_160] + 32:
                mem[t + _160 + 164] = mem[t + _160]
                t = t + 32
                continue 
            call _154.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas 350000 wei
                args 0, _150, _158, 128, mem[_160 + 164 len mem[_160] + 64]
            if ext_call.success:
                if idx > -3:
                    revert with 'NH{q', 17
                idx = idx + 2
                s = 0
                s = s + 1
                continue 
            call _154.swap(uint256 arg1, uint256 arg2, address arg3) with:
                 gas 350000 wei
                args 0, _150, _158
        else:
            _151 = mem[(32 * s + 1) + ceil32(arg4.length) + 160]
            if s == -1:
                revert with 'NH{q', 17
            if idx >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _155 = mem[(32 * idx) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            if 2 > !idx:
                revert with 'NH{q', 17
            if idx + 2 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _159 = mem[(32 * idx + 2) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            _161 = mem[64]
            mem[64] = mem[64] + 32
            mem[_161 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
            mem[_161 + 36] = _151
            mem[_161 + 68] = 0
            mem[_161 + 100] = _159
            mem[_161 + 132] = 128
            t = 0
            while t < mem[_161] + 32:
                mem[t + _161 + 164] = mem[t + _161]
                t = t + 32
                continue 
            call _155.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas 350000 wei
                args _151, 0, _159, 128, mem[_161 + 164 len mem[_161] + 64]
            if ext_call.success:
                if idx > -3:
                    revert with 'NH{q', 17
                idx = idx + 2
                s = _151
                s = s + 1
                continue 
            call _155.swap(uint256 arg1, uint256 arg2, address arg3) with:
                 gas 350000 wei
                args _151, 0, _159
        revert with 'sf'
    call _97.0x70a08231 with:
         gas 15000 wei
        args this.address
    if ext_call.return_data[0] < 1:
        revert with 'NH{q', 17
    call _97.transfer(address arg1, uint256 arg2) with:
         gas 300000 wei
        args stor4, ext_call.return_data[0] - 1
    if not ext_call.success:
        revert with 0, 'tf'
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
    _97 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 160]
    if 1 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
        revert with 'NH{q', 50
    _99 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 192]
    if 0 >= Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
        revert with 'NH{q', 50
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 128] = 0xa9059cbb2ab09eb219583f4a59a5d0623ade346d962bcd4e46b11da047c9049b
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 132] = _99
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 164] = mem[ceil32(arg4.length) + 160]
    call _97.transfer(address arg1, uint256 arg2) with:
         gas 300000 wei
        args _99, mem[ceil32(arg4.length) + 160]
    if not ext_call.success:
        revert with 0, 'tf'
    _104 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]
    if mem[ceil32(arg4.length) + (32 * _3 + 1) + 128] < 2:
        revert with 'NH{q', 17
    idx = 1
    s = 0
    s = 0
    while idx < _104 - 2:
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
            _150 = mem[(32 * s + 1) + ceil32(arg4.length) + 160]
            if s == -1:
                revert with 'NH{q', 17
            if idx >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _154 = mem[(32 * idx) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            if 2 > !idx:
                revert with 'NH{q', 17
            if idx + 2 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _158 = mem[(32 * idx + 2) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            _160 = mem[64]
            mem[64] = mem[64] + 32
            mem[_160 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
            mem[_160 + 36] = 0
            mem[_160 + 68] = _150
            mem[_160 + 100] = _158
            mem[_160 + 132] = 128
            t = 0
            while t < mem[_160] + 32:
                mem[t + _160 + 164] = mem[t + _160]
                t = t + 32
                continue 
            call _154.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas 350000 wei
                args 0, _150, _158, 128, mem[_160 + 164 len mem[_160] + 64]
            if ext_call.success:
                if idx > -3:
                    revert with 'NH{q', 17
                idx = idx + 2
                s = 0
                s = s + 1
                continue 
            call _154.swap(uint256 arg1, uint256 arg2, address arg3) with:
                 gas 350000 wei
                args 0, _150, _158
        else:
            _151 = mem[(32 * s + 1) + ceil32(arg4.length) + 160]
            if s == -1:
                revert with 'NH{q', 17
            if idx >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _155 = mem[(32 * idx) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            if 2 > !idx:
                revert with 'NH{q', 17
            if idx + 2 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _159 = mem[(32 * idx + 2) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            _161 = mem[64]
            mem[64] = mem[64] + 32
            mem[_161 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
            mem[_161 + 36] = _151
            mem[_161 + 68] = 0
            mem[_161 + 100] = _159
            mem[_161 + 132] = 128
            t = 0
            while t < mem[_161] + 32:
                mem[t + _161 + 164] = mem[t + _161]
                t = t + 32
                continue 
            call _155.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas 350000 wei
                args _151, 0, _159, 128, mem[_161 + 164 len mem[_161] + 64]
            if ext_call.success:
                if idx > -3:
                    revert with 'NH{q', 17
                idx = idx + 2
                s = _151
                s = s + 1
                continue 
            call _155.swap(uint256 arg1, uint256 arg2, address arg3) with:
                 gas 350000 wei
                args _151, 0, _159
        revert with 'sf'
    call _97.0x70a08231 with:
         gas 15000 wei
        args this.address
    if ext_call.return_data[0] < 1:
        revert with 'NH{q', 17
    call _97.transfer(address arg1, uint256 arg2) with:
         gas 300000 wei
        args stor4, ext_call.return_data[0] - 1
    if not ext_call.success:
        revert with 0, 'tf'
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
    _97 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 160]
    if 1 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
        revert with 'NH{q', 50
    _99 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 192]
    if 0 >= Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
        revert with 'NH{q', 50
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 128] = 0xa9059cbb2ab09eb219583f4a59a5d0623ade346d962bcd4e46b11da047c9049b
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 132] = _99
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 164] = mem[ceil32(arg4.length) + 160]
    call _97.transfer(address arg1, uint256 arg2) with:
         gas 300000 wei
        args _99, mem[ceil32(arg4.length) + 160]
    if not ext_call.success:
        revert with 0, 'tf'
    _104 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]
    if mem[ceil32(arg4.length) + (32 * _3 + 1) + 128] < 2:
        revert with 'NH{q', 17
    idx = 1
    s = 0
    s = 0
    while idx < _104 - 2:
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
            _150 = mem[(32 * s + 1) + ceil32(arg4.length) + 160]
            if s == -1:
                revert with 'NH{q', 17
            if idx >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _154 = mem[(32 * idx) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            if 2 > !idx:
                revert with 'NH{q', 17
            if idx + 2 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _158 = mem[(32 * idx + 2) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            _160 = mem[64]
            mem[64] = mem[64] + 32
            mem[_160 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
            mem[_160 + 36] = 0
            mem[_160 + 68] = _150
            mem[_160 + 100] = _158
            mem[_160 + 132] = 128
            t = 0
            while t < mem[_160] + 32:
                mem[t + _160 + 164] = mem[t + _160]
                t = t + 32
                continue 
            call _154.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas 350000 wei
                args 0, _150, _158, 128, mem[_160 + 164 len mem[_160] + 64]
            if ext_call.success:
                if idx > -3:
                    revert with 'NH{q', 17
                idx = idx + 2
                s = 0
                s = s + 1
                continue 
            call _154.swap(uint256 arg1, uint256 arg2, address arg3) with:
                 gas 350000 wei
                args 0, _150, _158
        else:
            _151 = mem[(32 * s + 1) + ceil32(arg4.length) + 160]
            if s == -1:
                revert with 'NH{q', 17
            if idx >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _155 = mem[(32 * idx) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            if 2 > !idx:
                revert with 'NH{q', 17
            if idx + 2 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _159 = mem[(32 * idx + 2) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            _161 = mem[64]
            mem[64] = mem[64] + 32
            mem[_161 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
            mem[_161 + 36] = _151
            mem[_161 + 68] = 0
            mem[_161 + 100] = _159
            mem[_161 + 132] = 128
            t = 0
            while t < mem[_161] + 32:
                mem[t + _161 + 164] = mem[t + _161]
                t = t + 32
                continue 
            call _155.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas 350000 wei
                args _151, 0, _159, 128, mem[_161 + 164 len mem[_161] + 64]
            if ext_call.success:
                if idx > -3:
                    revert with 'NH{q', 17
                idx = idx + 2
                s = _151
                s = s + 1
                continue 
            call _155.swap(uint256 arg1, uint256 arg2, address arg3) with:
                 gas 350000 wei
                args _151, 0, _159
        revert with 'sf'
    call _97.0x70a08231 with:
         gas 15000 wei
        args this.address
    if ext_call.return_data[0] < 1:
        revert with 'NH{q', 17
    call _97.transfer(address arg1, uint256 arg2) with:
         gas 300000 wei
        args stor4, ext_call.return_data[0] - 1
    if not ext_call.success:
        revert with 0, 'tf'
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
    _97 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 160]
    if 1 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
        revert with 'NH{q', 50
    _99 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 192]
    if 0 >= Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
        revert with 'NH{q', 50
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 128] = 0xa9059cbb2ab09eb219583f4a59a5d0623ade346d962bcd4e46b11da047c9049b
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 132] = _99
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 164] = mem[ceil32(arg4.length) + 160]
    call _97.transfer(address arg1, uint256 arg2) with:
         gas 300000 wei
        args _99, mem[ceil32(arg4.length) + 160]
    if not ext_call.success:
        revert with 0, 'tf'
    _104 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]
    if mem[ceil32(arg4.length) + (32 * _3 + 1) + 128] < 2:
        revert with 'NH{q', 17
    idx = 1
    s = 0
    s = 0
    while idx < _104 - 2:
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
            _150 = mem[(32 * s + 1) + ceil32(arg4.length) + 160]
            if s == -1:
                revert with 'NH{q', 17
            if idx >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _154 = mem[(32 * idx) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            if 2 > !idx:
                revert with 'NH{q', 17
            if idx + 2 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _158 = mem[(32 * idx + 2) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            _160 = mem[64]
            mem[64] = mem[64] + 32
            mem[_160 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
            mem[_160 + 36] = 0
            mem[_160 + 68] = _150
            mem[_160 + 100] = _158
            mem[_160 + 132] = 128
            t = 0
            while t < mem[_160] + 32:
                mem[t + _160 + 164] = mem[t + _160]
                t = t + 32
                continue 
            call _154.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas 350000 wei
                args 0, _150, _158, 128, mem[_160 + 164 len mem[_160] + 64]
            if ext_call.success:
                if idx > -3:
                    revert with 'NH{q', 17
                idx = idx + 2
                s = 0
                s = s + 1
                continue 
            call _154.swap(uint256 arg1, uint256 arg2, address arg3) with:
                 gas 350000 wei
                args 0, _150, _158
        else:
            _151 = mem[(32 * s + 1) + ceil32(arg4.length) + 160]
            if s == -1:
                revert with 'NH{q', 17
            if idx >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _155 = mem[(32 * idx) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            if 2 > !idx:
                revert with 'NH{q', 17
            if idx + 2 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _159 = mem[(32 * idx + 2) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            _161 = mem[64]
            mem[64] = mem[64] + 32
            mem[_161 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
            mem[_161 + 36] = _151
            mem[_161 + 68] = 0
            mem[_161 + 100] = _159
            mem[_161 + 132] = 128
            t = 0
            while t < mem[_161] + 32:
                mem[t + _161 + 164] = mem[t + _161]
                t = t + 32
                continue 
            call _155.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas 350000 wei
                args _151, 0, _159, 128, mem[_161 + 164 len mem[_161] + 64]
            if ext_call.success:
                if idx > -3:
                    revert with 'NH{q', 17
                idx = idx + 2
                s = _151
                s = s + 1
                continue 
            call _155.swap(uint256 arg1, uint256 arg2, address arg3) with:
                 gas 350000 wei
                args _151, 0, _159
        revert with 'sf'
    call _97.0x70a08231 with:
         gas 15000 wei
        args this.address
    if ext_call.return_data[0] < 1:
        revert with 'NH{q', 17
    call _97.transfer(address arg1, uint256 arg2) with:
         gas 300000 wei
        args stor4, ext_call.return_data[0] - 1
    if not ext_call.success:
        revert with 0, 'tf'
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
    _97 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 160]
    if 1 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
        revert with 'NH{q', 50
    _99 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 192]
    if 0 >= Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
        revert with 'NH{q', 50
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 128] = 0xa9059cbb2ab09eb219583f4a59a5d0623ade346d962bcd4e46b11da047c9049b
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 132] = _99
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 164] = mem[ceil32(arg4.length) + 160]
    call _97.transfer(address arg1, uint256 arg2) with:
         gas 300000 wei
        args _99, mem[ceil32(arg4.length) + 160]
    if not ext_call.success:
        revert with 0, 'tf'
    _104 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]
    if mem[ceil32(arg4.length) + (32 * _3 + 1) + 128] < 2:
        revert with 'NH{q', 17
    idx = 1
    s = 0
    s = 0
    while idx < _104 - 2:
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
            _150 = mem[(32 * s + 1) + ceil32(arg4.length) + 160]
            if s == -1:
                revert with 'NH{q', 17
            if idx >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _154 = mem[(32 * idx) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            if 2 > !idx:
                revert with 'NH{q', 17
            if idx + 2 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _158 = mem[(32 * idx + 2) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            _160 = mem[64]
            mem[64] = mem[64] + 32
            mem[_160 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
            mem[_160 + 36] = 0
            mem[_160 + 68] = _150
            mem[_160 + 100] = _158
            mem[_160 + 132] = 128
            t = 0
            while t < mem[_160] + 32:
                mem[t + _160 + 164] = mem[t + _160]
                t = t + 32
                continue 
            call _154.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas 350000 wei
                args 0, _150, _158, 128, mem[_160 + 164 len mem[_160] + 64]
            if ext_call.success:
                if idx > -3:
                    revert with 'NH{q', 17
                idx = idx + 2
                s = 0
                s = s + 1
                continue 
            call _154.swap(uint256 arg1, uint256 arg2, address arg3) with:
                 gas 350000 wei
                args 0, _150, _158
        else:
            _151 = mem[(32 * s + 1) + ceil32(arg4.length) + 160]
            if s == -1:
                revert with 'NH{q', 17
            if idx >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _155 = mem[(32 * idx) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            if 2 > !idx:
                revert with 'NH{q', 17
            if idx + 2 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _159 = mem[(32 * idx + 2) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            _161 = mem[64]
            mem[64] = mem[64] + 32
            mem[_161 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
            mem[_161 + 36] = _151
            mem[_161 + 68] = 0
            mem[_161 + 100] = _159
            mem[_161 + 132] = 128
            t = 0
            while t < mem[_161] + 32:
                mem[t + _161 + 164] = mem[t + _161]
                t = t + 32
                continue 
            call _155.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas 350000 wei
                args _151, 0, _159, 128, mem[_161 + 164 len mem[_161] + 64]
            if ext_call.success:
                if idx > -3:
                    revert with 'NH{q', 17
                idx = idx + 2
                s = _151
                s = s + 1
                continue 
            call _155.swap(uint256 arg1, uint256 arg2, address arg3) with:
                 gas 350000 wei
                args _151, 0, _159
        revert with 'sf'
    call _97.0x70a08231 with:
         gas 15000 wei
        args this.address
    if ext_call.return_data[0] < 1:
        revert with 'NH{q', 17
    call _97.transfer(address arg1, uint256 arg2) with:
         gas 300000 wei
        args stor4, ext_call.return_data[0] - 1
    if not ext_call.success:
        revert with 0, 'tf'
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
    _97 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 160]
    if 1 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
        revert with 'NH{q', 50
    _99 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 192]
    if 0 >= Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
        revert with 'NH{q', 50
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 128] = 0xa9059cbb2ab09eb219583f4a59a5d0623ade346d962bcd4e46b11da047c9049b
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 132] = _99
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 164] = mem[ceil32(arg4.length) + 160]
    call _97.transfer(address arg1, uint256 arg2) with:
         gas 300000 wei
        args _99, mem[ceil32(arg4.length) + 160]
    if not ext_call.success:
        revert with 0, 'tf'
    _104 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]
    if mem[ceil32(arg4.length) + (32 * _3 + 1) + 128] < 2:
        revert with 'NH{q', 17
    idx = 1
    s = 0
    s = 0
    while idx < _104 - 2:
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
            _150 = mem[(32 * s + 1) + ceil32(arg4.length) + 160]
            if s == -1:
                revert with 'NH{q', 17
            if idx >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _154 = mem[(32 * idx) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            if 2 > !idx:
                revert with 'NH{q', 17
            if idx + 2 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _158 = mem[(32 * idx + 2) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            _160 = mem[64]
            mem[64] = mem[64] + 32
            mem[_160 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
            mem[_160 + 36] = 0
            mem[_160 + 68] = _150
            mem[_160 + 100] = _158
            mem[_160 + 132] = 128
            t = 0
            while t < mem[_160] + 32:
                mem[t + _160 + 164] = mem[t + _160]
                t = t + 32
                continue 
            call _154.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas 350000 wei
                args 0, _150, _158, 128, mem[_160 + 164 len mem[_160] + 64]
            if ext_call.success:
                if idx > -3:
                    revert with 'NH{q', 17
                idx = idx + 2
                s = 0
                s = s + 1
                continue 
            call _154.swap(uint256 arg1, uint256 arg2, address arg3) with:
                 gas 350000 wei
                args 0, _150, _158
        else:
            _151 = mem[(32 * s + 1) + ceil32(arg4.length) + 160]
            if s == -1:
                revert with 'NH{q', 17
            if idx >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _155 = mem[(32 * idx) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            if 2 > !idx:
                revert with 'NH{q', 17
            if idx + 2 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _159 = mem[(32 * idx + 2) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            _161 = mem[64]
            mem[64] = mem[64] + 32
            mem[_161 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
            mem[_161 + 36] = _151
            mem[_161 + 68] = 0
            mem[_161 + 100] = _159
            mem[_161 + 132] = 128
            t = 0
            while t < mem[_161] + 32:
                mem[t + _161 + 164] = mem[t + _161]
                t = t + 32
                continue 
            call _155.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas 350000 wei
                args _151, 0, _159, 128, mem[_161 + 164 len mem[_161] + 64]
            if ext_call.success:
                if idx > -3:
                    revert with 'NH{q', 17
                idx = idx + 2
                s = _151
                s = s + 1
                continue 
            call _155.swap(uint256 arg1, uint256 arg2, address arg3) with:
                 gas 350000 wei
                args _151, 0, _159
        revert with 'sf'
    call _97.0x70a08231 with:
         gas 15000 wei
        args this.address
    if ext_call.return_data[0] < 1:
        revert with 'NH{q', 17
    call _97.transfer(address arg1, uint256 arg2) with:
         gas 300000 wei
        args stor4, ext_call.return_data[0] - 1
    if not ext_call.success:
        revert with 0, 'tf'
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
    _97 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 160]
    if 1 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
        revert with 'NH{q', 50
    _99 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 192]
    if 0 >= Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
        revert with 'NH{q', 50
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 128] = 0xa9059cbb2ab09eb219583f4a59a5d0623ade346d962bcd4e46b11da047c9049b
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 132] = _99
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 164] = mem[ceil32(arg4.length) + 160]
    call _97.transfer(address arg1, uint256 arg2) with:
         gas 300000 wei
        args _99, mem[ceil32(arg4.length) + 160]
    if not ext_call.success:
        revert with 0, 'tf'
    _104 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]
    if mem[ceil32(arg4.length) + (32 * _3 + 1) + 128] < 2:
        revert with 'NH{q', 17
    idx = 1
    s = 0
    s = 0
    while idx < _104 - 2:
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
            _150 = mem[(32 * s + 1) + ceil32(arg4.length) + 160]
            if s == -1:
                revert with 'NH{q', 17
            if idx >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _154 = mem[(32 * idx) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            if 2 > !idx:
                revert with 'NH{q', 17
            if idx + 2 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _158 = mem[(32 * idx + 2) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            _160 = mem[64]
            mem[64] = mem[64] + 32
            mem[_160 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
            mem[_160 + 36] = 0
            mem[_160 + 68] = _150
            mem[_160 + 100] = _158
            mem[_160 + 132] = 128
            t = 0
            while t < mem[_160] + 32:
                mem[t + _160 + 164] = mem[t + _160]
                t = t + 32
                continue 
            call _154.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas 350000 wei
                args 0, _150, _158, 128, mem[_160 + 164 len mem[_160] + 64]
            if ext_call.success:
                if idx > -3:
                    revert with 'NH{q', 17
                idx = idx + 2
                s = 0
                s = s + 1
                continue 
            call _154.swap(uint256 arg1, uint256 arg2, address arg3) with:
                 gas 350000 wei
                args 0, _150, _158
        else:
            _151 = mem[(32 * s + 1) + ceil32(arg4.length) + 160]
            if s == -1:
                revert with 'NH{q', 17
            if idx >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _155 = mem[(32 * idx) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            if 2 > !idx:
                revert with 'NH{q', 17
            if idx + 2 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _159 = mem[(32 * idx + 2) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            _161 = mem[64]
            mem[64] = mem[64] + 32
            mem[_161 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
            mem[_161 + 36] = _151
            mem[_161 + 68] = 0
            mem[_161 + 100] = _159
            mem[_161 + 132] = 128
            t = 0
            while t < mem[_161] + 32:
                mem[t + _161 + 164] = mem[t + _161]
                t = t + 32
                continue 
            call _155.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas 350000 wei
                args _151, 0, _159, 128, mem[_161 + 164 len mem[_161] + 64]
            if ext_call.success:
                if idx > -3:
                    revert with 'NH{q', 17
                idx = idx + 2
                s = _151
                s = s + 1
                continue 
            call _155.swap(uint256 arg1, uint256 arg2, address arg3) with:
                 gas 350000 wei
                args _151, 0, _159
        revert with 'sf'
    call _97.0x70a08231 with:
         gas 15000 wei
        args this.address
    if ext_call.return_data[0] < 1:
        revert with 'NH{q', 17
    call _97.transfer(address arg1, uint256 arg2) with:
         gas 300000 wei
        args stor4, ext_call.return_data[0] - 1
    if not ext_call.success:
        revert with 0, 'tf'
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
    _97 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 160]
    if 1 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
        revert with 'NH{q', 50
    _99 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 192]
    if 0 >= Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
        revert with 'NH{q', 50
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 128] = 0xa9059cbb2ab09eb219583f4a59a5d0623ade346d962bcd4e46b11da047c9049b
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 132] = _99
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 164] = mem[ceil32(arg4.length) + 160]
    call _97.transfer(address arg1, uint256 arg2) with:
         gas 300000 wei
        args _99, mem[ceil32(arg4.length) + 160]
    if not ext_call.success:
        revert with 0, 'tf'
    _104 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]
    if mem[ceil32(arg4.length) + (32 * _3 + 1) + 128] < 2:
        revert with 'NH{q', 17
    idx = 1
    s = 0
    s = 0
    while idx < _104 - 2:
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
            _150 = mem[(32 * s + 1) + ceil32(arg4.length) + 160]
            if s == -1:
                revert with 'NH{q', 17
            if idx >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _154 = mem[(32 * idx) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            if 2 > !idx:
                revert with 'NH{q', 17
            if idx + 2 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _158 = mem[(32 * idx + 2) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            _160 = mem[64]
            mem[64] = mem[64] + 32
            mem[_160 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
            mem[_160 + 36] = 0
            mem[_160 + 68] = _150
            mem[_160 + 100] = _158
            mem[_160 + 132] = 128
            t = 0
            while t < mem[_160] + 32:
                mem[t + _160 + 164] = mem[t + _160]
                t = t + 32
                continue 
            call _154.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas 350000 wei
                args 0, _150, _158, 128, mem[_160 + 164 len mem[_160] + 64]
            if ext_call.success:
                if idx > -3:
                    revert with 'NH{q', 17
                idx = idx + 2
                s = 0
                s = s + 1
                continue 
            call _154.swap(uint256 arg1, uint256 arg2, address arg3) with:
                 gas 350000 wei
                args 0, _150, _158
        else:
            _151 = mem[(32 * s + 1) + ceil32(arg4.length) + 160]
            if s == -1:
                revert with 'NH{q', 17
            if idx >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _155 = mem[(32 * idx) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            if 2 > !idx:
                revert with 'NH{q', 17
            if idx + 2 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _159 = mem[(32 * idx + 2) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            _161 = mem[64]
            mem[64] = mem[64] + 32
            mem[_161 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
            mem[_161 + 36] = _151
            mem[_161 + 68] = 0
            mem[_161 + 100] = _159
            mem[_161 + 132] = 128
            t = 0
            while t < mem[_161] + 32:
                mem[t + _161 + 164] = mem[t + _161]
                t = t + 32
                continue 
            call _155.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas 350000 wei
                args _151, 0, _159, 128, mem[_161 + 164 len mem[_161] + 64]
            if ext_call.success:
                if idx > -3:
                    revert with 'NH{q', 17
                idx = idx + 2
                s = _151
                s = s + 1
                continue 
            call _155.swap(uint256 arg1, uint256 arg2, address arg3) with:
                 gas 350000 wei
                args _151, 0, _159
        revert with 'sf'
    call _97.0x70a08231 with:
         gas 15000 wei
        args this.address
    if ext_call.return_data[0] < 1:
        revert with 'NH{q', 17
    call _97.transfer(address arg1, uint256 arg2) with:
         gas 300000 wei
        args stor4, ext_call.return_data[0] - 1
    if not ext_call.success:
        revert with 0, 'tf'
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
    _97 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 160]
    if 1 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
        revert with 'NH{q', 50
    _99 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 192]
    if 0 >= Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
        revert with 'NH{q', 50
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 128] = 0xa9059cbb2ab09eb219583f4a59a5d0623ade346d962bcd4e46b11da047c9049b
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 132] = _99
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 164] = mem[ceil32(arg4.length) + 160]
    call _97.transfer(address arg1, uint256 arg2) with:
         gas 300000 wei
        args _99, mem[ceil32(arg4.length) + 160]
    if not ext_call.success:
        revert with 0, 'tf'
    _104 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]
    if mem[ceil32(arg4.length) + (32 * _3 + 1) + 128] < 2:
        revert with 'NH{q', 17
    idx = 1
    s = 0
    s = 0
    while idx < _104 - 2:
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
            _150 = mem[(32 * s + 1) + ceil32(arg4.length) + 160]
            if s == -1:
                revert with 'NH{q', 17
            if idx >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _154 = mem[(32 * idx) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            if 2 > !idx:
                revert with 'NH{q', 17
            if idx + 2 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _158 = mem[(32 * idx + 2) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            _160 = mem[64]
            mem[64] = mem[64] + 32
            mem[_160 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
            mem[_160 + 36] = 0
            mem[_160 + 68] = _150
            mem[_160 + 100] = _158
            mem[_160 + 132] = 128
            t = 0
            while t < mem[_160] + 32:
                mem[t + _160 + 164] = mem[t + _160]
                t = t + 32
                continue 
            call _154.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas 350000 wei
                args 0, _150, _158, 128, mem[_160 + 164 len mem[_160] + 64]
            if ext_call.success:
                if idx > -3:
                    revert with 'NH{q', 17
                idx = idx + 2
                s = 0
                s = s + 1
                continue 
            call _154.swap(uint256 arg1, uint256 arg2, address arg3) with:
                 gas 350000 wei
                args 0, _150, _158
        else:
            _151 = mem[(32 * s + 1) + ceil32(arg4.length) + 160]
            if s == -1:
                revert with 'NH{q', 17
            if idx >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _155 = mem[(32 * idx) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            if 2 > !idx:
                revert with 'NH{q', 17
            if idx + 2 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _159 = mem[(32 * idx + 2) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            _161 = mem[64]
            mem[64] = mem[64] + 32
            mem[_161 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
            mem[_161 + 36] = _151
            mem[_161 + 68] = 0
            mem[_161 + 100] = _159
            mem[_161 + 132] = 128
            t = 0
            while t < mem[_161] + 32:
                mem[t + _161 + 164] = mem[t + _161]
                t = t + 32
                continue 
            call _155.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas 350000 wei
                args _151, 0, _159, 128, mem[_161 + 164 len mem[_161] + 64]
            if ext_call.success:
                if idx > -3:
                    revert with 'NH{q', 17
                idx = idx + 2
                s = _151
                s = s + 1
                continue 
            call _155.swap(uint256 arg1, uint256 arg2, address arg3) with:
                 gas 350000 wei
                args _151, 0, _159
        revert with 'sf'
    call _97.0x70a08231 with:
         gas 15000 wei
        args this.address
    if ext_call.return_data[0] < 1:
        revert with 'NH{q', 17
    call _97.transfer(address arg1, uint256 arg2) with:
         gas 300000 wei
        args stor4, ext_call.return_data[0] - 1
    if not ext_call.success:
        revert with 0, 'tf'
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
    _97 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 160]
    if 1 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
        revert with 'NH{q', 50
    _99 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 192]
    if 0 >= Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
        revert with 'NH{q', 50
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 128] = 0xa9059cbb2ab09eb219583f4a59a5d0623ade346d962bcd4e46b11da047c9049b
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 132] = _99
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 164] = mem[ceil32(arg4.length) + 160]
    call _97.transfer(address arg1, uint256 arg2) with:
         gas 300000 wei
        args _99, mem[ceil32(arg4.length) + 160]
    if not ext_call.success:
        revert with 0, 'tf'
    _104 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]
    if mem[ceil32(arg4.length) + (32 * _3 + 1) + 128] < 2:
        revert with 'NH{q', 17
    idx = 1
    s = 0
    s = 0
    while idx < _104 - 2:
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
            _150 = mem[(32 * s + 1) + ceil32(arg4.length) + 160]
            if s == -1:
                revert with 'NH{q', 17
            if idx >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _154 = mem[(32 * idx) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            if 2 > !idx:
                revert with 'NH{q', 17
            if idx + 2 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _158 = mem[(32 * idx + 2) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            _160 = mem[64]
            mem[64] = mem[64] + 32
            mem[_160 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
            mem[_160 + 36] = 0
            mem[_160 + 68] = _150
            mem[_160 + 100] = _158
            mem[_160 + 132] = 128
            t = 0
            while t < mem[_160] + 32:
                mem[t + _160 + 164] = mem[t + _160]
                t = t + 32
                continue 
            call _154.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas 350000 wei
                args 0, _150, _158, 128, mem[_160 + 164 len mem[_160] + 64]
            if ext_call.success:
                if idx > -3:
                    revert with 'NH{q', 17
                idx = idx + 2
                s = 0
                s = s + 1
                continue 
            call _154.swap(uint256 arg1, uint256 arg2, address arg3) with:
                 gas 350000 wei
                args 0, _150, _158
        else:
            _151 = mem[(32 * s + 1) + ceil32(arg4.length) + 160]
            if s == -1:
                revert with 'NH{q', 17
            if idx >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _155 = mem[(32 * idx) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            if 2 > !idx:
                revert with 'NH{q', 17
            if idx + 2 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _159 = mem[(32 * idx + 2) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            _161 = mem[64]
            mem[64] = mem[64] + 32
            mem[_161 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
            mem[_161 + 36] = _151
            mem[_161 + 68] = 0
            mem[_161 + 100] = _159
            mem[_161 + 132] = 128
            t = 0
            while t < mem[_161] + 32:
                mem[t + _161 + 164] = mem[t + _161]
                t = t + 32
                continue 
            call _155.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas 350000 wei
                args _151, 0, _159, 128, mem[_161 + 164 len mem[_161] + 64]
            if ext_call.success:
                if idx > -3:
                    revert with 'NH{q', 17
                idx = idx + 2
                s = _151
                s = s + 1
                continue 
            call _155.swap(uint256 arg1, uint256 arg2, address arg3) with:
                 gas 350000 wei
                args _151, 0, _159
        revert with 'sf'
    call _97.0x70a08231 with:
         gas 15000 wei
        args this.address
    if ext_call.return_data[0] < 1:
        revert with 'NH{q', 17
    call _97.transfer(address arg1, uint256 arg2) with:
         gas 300000 wei
        args stor4, ext_call.return_data[0] - 1
    if not ext_call.success:
        revert with 0, 'tf'
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

function _fallback() payable {
    if calldata.size >= 4:
        if unknown_0x8da5cb5b(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xd3329cb9(?????) > uint32(call.func_hash) >> 224:
                if unknown_0xa1ee5fbb(?????) > uint32(call.func_hash) >> 224:
                    if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return owner
                    if unknown_0x93b11be5(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 128
                        require cd[4] == address(cd[4])
                        require cd[100] <= test266151307()
                        require cd[100] + 35 < calldata.size
                        require ('cd', 100).length <= test266151307()
                        require cd[100] + ('cd', 100).length + 36 <= calldata.size
                        mem[128] = ('cd', 100).length
                        mem[160 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
                        mem[('cd', 100).length + 160] = 0
                        _54 = mem[160]
                        _55 = mem[(32 * mem[160] + 1) + 160]
                        mem[ceil32(('cd', 100).length) + 160 len floor32(mem[160] + 1)] = mem[160 len floor32(mem[160] + 1)]
                        mem[ceil32(('cd', 100).length) + (32 * _54 + 1) + 160 len floor32(_55 + 1)] = mem[(32 * _54 + 1) + 160 len floor32(_55 + 1)]
                        mem[64] = ceil32(('cd', 100).length) + (32 * _54 + 1) + (32 * _55 + 1) + 160
                        if 0 >= mem[ceil32(('cd', 100).length) + (32 * _54 + 1) + 160]:
                            revert with 'NH{q', 50
                        _1524 = mem[ceil32(('cd', 100).length) + (32 * _54 + 1) + 192]
                        if 1 >= mem[ceil32(('cd', 100).length) + (32 * _54 + 1) + 160]:
                            revert with 'NH{q', 50
                        _1554 = mem[ceil32(('cd', 100).length) + (32 * _54 + 1) + 224]
                        if 0 >= Mask(8 * -ceil32(('cd', 100).length) + ('cd', 100).length + 32, 0, 0), mem[('cd', 100).length + 192 len -('cd', 100).length + ceil32(('cd', 100).length)]:
                            revert with 'NH{q', 50
                        mem[ceil32(('cd', 100).length) + (32 * _54 + 1) + (32 * _55 + 1) + 160] = 0xa9059cbb2ab09eb219583f4a59a5d0623ade346d962bcd4e46b11da047c9049b
                        mem[ceil32(('cd', 100).length) + (32 * _54 + 1) + (32 * _55 + 1) + 164] = _1554
                        mem[ceil32(('cd', 100).length) + (32 * _54 + 1) + (32 * _55 + 1) + 196] = mem[ceil32(('cd', 100).length) + 192]
                        call _1524.transfer(address arg1, uint256 arg2) with:
                             gas 300000 wei
                            args _1554, mem[ceil32(('cd', 100).length) + 192]
                        if not ext_call.success:
                            revert with 0, 'tf'
                        _1630 = mem[ceil32(('cd', 100).length) + (32 * _54 + 1) + 160]
                        if mem[ceil32(('cd', 100).length) + (32 * _54 + 1) + 160] < 2:
                            revert with 'NH{q', 17
                        idx = 1
                        s = 0
                        s = 0
                        while idx < _1630 - 2:
                            if 1 > !idx:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[ceil32(('cd', 100).length) + (32 * _54 + 1) + 160]:
                                revert with 'NH{q', 50
                            if idx < 1:
                                revert with 'NH{q', 17
                            if idx - 1 >= mem[ceil32(('cd', 100).length) + (32 * _54 + 1) + 160]:
                                revert with 'NH{q', 50
                            if 1 > !s:
                                revert with 'NH{q', 17
                            if s + 1 >= mem[ceil32(('cd', 100).length) + 160]:
                                revert with 'NH{q', 50
                            if mem[(32 * idx - 1) + ceil32(('cd', 100).length) + (32 * _54 + 1) + 204 len 20] < mem[(32 * idx + 1) + ceil32(('cd', 100).length) + (32 * _54 + 1) + 204 len 20]:
                                _2369 = mem[(32 * s + 1) + ceil32(('cd', 100).length) + 192]
                                if s == -1:
                                    revert with 'NH{q', 17
                                if idx >= mem[ceil32(('cd', 100).length) + (32 * _54 + 1) + 160]:
                                    revert with 'NH{q', 50
                                _2437 = mem[(32 * idx) + ceil32(('cd', 100).length) + (32 * _54 + 1) + 192]
                                if 2 > !idx:
                                    revert with 'NH{q', 17
                                if idx + 2 >= mem[ceil32(('cd', 100).length) + (32 * _54 + 1) + 160]:
                                    revert with 'NH{q', 50
                                _2499 = mem[(32 * idx + 2) + ceil32(('cd', 100).length) + (32 * _54 + 1) + 192]
                                _2531 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2531 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                                mem[_2531 + 36] = 0
                                mem[_2531 + 68] = _2369
                                mem[_2531 + 100] = _2499
                                mem[_2531 + 132] = 128
                                t = 0
                                while t < mem[_2531] + 32:
                                    mem[t + _2531 + 164] = mem[t + _2531]
                                    t = t + 32
                                    continue 
                                call _2437.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas 350000 wei
                                    args 0, _2369, _2499, 128, mem[_2531 + 164 len mem[_2531] + 64]
                                if ext_call.success:
                                    if idx > -3:
                                        revert with 'NH{q', 17
                                    idx = idx + 2
                                    s = 0
                                    s = s + 1
                                    continue 
                                call _2437.swap(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas 350000 wei
                                    args 0, _2369, _2499
                            else:
                                _2370 = mem[(32 * s + 1) + ceil32(('cd', 100).length) + 192]
                                if s == -1:
                                    revert with 'NH{q', 17
                                if idx >= mem[ceil32(('cd', 100).length) + (32 * _54 + 1) + 160]:
                                    revert with 'NH{q', 50
                                _2438 = mem[(32 * idx) + ceil32(('cd', 100).length) + (32 * _54 + 1) + 192]
                                if 2 > !idx:
                                    revert with 'NH{q', 17
                                if idx + 2 >= mem[ceil32(('cd', 100).length) + (32 * _54 + 1) + 160]:
                                    revert with 'NH{q', 50
                                _2500 = mem[(32 * idx + 2) + ceil32(('cd', 100).length) + (32 * _54 + 1) + 192]
                                _2532 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2532 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                                mem[_2532 + 36] = _2370
                                mem[_2532 + 68] = 0
                                mem[_2532 + 100] = _2500
                                mem[_2532 + 132] = 128
                                t = 0
                                while t < mem[_2532] + 32:
                                    mem[t + _2532 + 164] = mem[t + _2532]
                                    t = t + 32
                                    continue 
                                call _2438.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas 350000 wei
                                    args _2370, 0, _2500, 128, mem[_2532 + 164 len mem[_2532] + 64]
                                if ext_call.success:
                                    if idx > -3:
                                        revert with 'NH{q', 17
                                    idx = idx + 2
                                    s = _2370
                                    s = s + 1
                                    continue 
                                call _2438.swap(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas 350000 wei
                                    args _2370, 0, _2500
                            revert with 'sf'
                        call _1524.0x70a08231 with:
                             gas 15000 wei
                            args this.address
                        if ext_call.return_data[0] < 1:
                            revert with 'NH{q', 17
                        call _1524.transfer(address arg1, uint256 arg2) with:
                             gas 300000 wei
                            args stor4, ext_call.return_data[0] - 1
                        if not ext_call.success:
                            revert with 0, 'tf'
                else:
                    if unknown_0xa1ee5fbb(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 96
                        require cd[4] <= test266151307()
                        require cd[4] + 35 < calldata.size
                        if ('cd', 4).length > test266151307():
                            revert with 'NH{q', 65
                        if ceil32(32 * ('cd', 4).length) + 129 < 128 or ceil32(32 * ('cd', 4).length) + 129 > test266151307():
                            revert with 'NH{q', 65
                        mem[64] = ceil32(32 * ('cd', 4).length) + 129
                        mem[128] = ('cd', 4).length
                        require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                        idx = cd[4] + 36
                        s = 160
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
                            if idx >= mem[128]:
                                revert with 'NH{q', 50
                            _1505 = mem[(32 * idx) + 160]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_1505))
                            staticcall address(_1505).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if 0 == cd[68]:
                                _1594 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1632 = mem[_1594]
                                mem[mem[64] + 4] = address(cd[36])
                                mem[mem[64] + 36] = _1632
                                require ext_code.size(address(_1505))
                                call address(_1505).transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(cd[36]), _1632
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1654 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1654] == bool(mem[_1654])
                            else:
                                _1579 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if cd[68] <= mem[_1579]:
                                    mem[mem[64] + 4] = address(cd[36])
                                    mem[mem[64] + 36] = cd[68]
                                    require ext_code.size(address(_1505))
                                    call address(_1505).transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(cd[36]), cd[68]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1657 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1657] == bool(mem[_1657])
                                else:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(_1505))
                                    staticcall address(_1505).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1658 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1679 = mem[_1658]
                                    mem[mem[64] + 4] = address(cd[36])
                                    mem[mem[64] + 36] = _1679
                                    require ext_code.size(address(_1505))
                                    call address(_1505).transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(cd[36]), _1679
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1714 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1714] == bool(mem[_1714])
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
                    else:
                        if unknown_0xa2a43a0a(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 128
                            require cd[4] == address(cd[4])
                            require cd[100] <= test266151307()
                            require cd[100] + 35 < calldata.size
                            require ('cd', 100).length <= test266151307()
                            require cd[100] + ('cd', 100).length + 36 <= calldata.size
                            mem[128] = ('cd', 100).length
                            mem[160 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
                            mem[('cd', 100).length + 160] = 0
                            _57 = mem[160]
                            _58 = mem[(32 * mem[160] + 1) + 160]
                            mem[ceil32(('cd', 100).length) + 160 len floor32(mem[160] + 1)] = mem[160 len floor32(mem[160] + 1)]
                            mem[ceil32(('cd', 100).length) + (32 * _57 + 1) + 160 len floor32(_58 + 1)] = mem[(32 * _57 + 1) + 160 len floor32(_58 + 1)]
                            mem[64] = ceil32(('cd', 100).length) + (32 * _57 + 1) + (32 * _58 + 1) + 160
                            if 0 >= mem[ceil32(('cd', 100).length) + (32 * _57 + 1) + 160]:
                                revert with 'NH{q', 50
                            _1528 = mem[ceil32(('cd', 100).length) + (32 * _57 + 1) + 192]
                            if 1 >= mem[ceil32(('cd', 100).length) + (32 * _57 + 1) + 160]:
                                revert with 'NH{q', 50
                            _1558 = mem[ceil32(('cd', 100).length) + (32 * _57 + 1) + 224]
                            if 0 >= Mask(8 * -ceil32(('cd', 100).length) + ('cd', 100).length + 32, 0, 0), mem[('cd', 100).length + 192 len -('cd', 100).length + ceil32(('cd', 100).length)]:
                                revert with 'NH{q', 50
                            mem[ceil32(('cd', 100).length) + (32 * _57 + 1) + (32 * _58 + 1) + 160] = 0xa9059cbb2ab09eb219583f4a59a5d0623ade346d962bcd4e46b11da047c9049b
                            mem[ceil32(('cd', 100).length) + (32 * _57 + 1) + (32 * _58 + 1) + 164] = _1558
                            mem[ceil32(('cd', 100).length) + (32 * _57 + 1) + (32 * _58 + 1) + 196] = mem[ceil32(('cd', 100).length) + 192]
                            call _1528.transfer(address arg1, uint256 arg2) with:
                                 gas 300000 wei
                                args _1558, mem[ceil32(('cd', 100).length) + 192]
                            if not ext_call.success:
                                revert with 0, 'tf'
                            _1633 = mem[ceil32(('cd', 100).length) + (32 * _57 + 1) + 160]
                            if mem[ceil32(('cd', 100).length) + (32 * _57 + 1) + 160] < 2:
                                revert with 'NH{q', 17
                            idx = 1
                            s = 0
                            s = 0
                            while idx < _1633 - 2:
                                if 1 > !idx:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[ceil32(('cd', 100).length) + (32 * _57 + 1) + 160]:
                                    revert with 'NH{q', 50
                                if idx < 1:
                                    revert with 'NH{q', 17
                                if idx - 1 >= mem[ceil32(('cd', 100).length) + (32 * _57 + 1) + 160]:
                                    revert with 'NH{q', 50
                                if 1 > !s:
                                    revert with 'NH{q', 17
                                if s + 1 >= mem[ceil32(('cd', 100).length) + 160]:
                                    revert with 'NH{q', 50
                                if mem[(32 * idx - 1) + ceil32(('cd', 100).length) + (32 * _57 + 1) + 204 len 20] < mem[(32 * idx + 1) + ceil32(('cd', 100).length) + (32 * _57 + 1) + 204 len 20]:
                                    _2371 = mem[(32 * s + 1) + ceil32(('cd', 100).length) + 192]
                                    if s == -1:
                                        revert with 'NH{q', 17
                                    if idx >= mem[ceil32(('cd', 100).length) + (32 * _57 + 1) + 160]:
                                        revert with 'NH{q', 50
                                    _2439 = mem[(32 * idx) + ceil32(('cd', 100).length) + (32 * _57 + 1) + 192]
                                    if 2 > !idx:
                                        revert with 'NH{q', 17
                                    if idx + 2 >= mem[ceil32(('cd', 100).length) + (32 * _57 + 1) + 160]:
                                        revert with 'NH{q', 50
                                    _2501 = mem[(32 * idx + 2) + ceil32(('cd', 100).length) + (32 * _57 + 1) + 192]
                                    _2533 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2533 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                                    mem[_2533 + 36] = 0
                                    mem[_2533 + 68] = _2371
                                    mem[_2533 + 100] = _2501
                                    mem[_2533 + 132] = 128
                                    t = 0
                                    while t < mem[_2533] + 32:
                                        mem[t + _2533 + 164] = mem[t + _2533]
                                        t = t + 32
                                        continue 
                                    call _2439.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas 350000 wei
                                        args 0, _2371, _2501, 128, mem[_2533 + 164 len mem[_2533] + 64]
                                    if ext_call.success:
                                        if idx > -3:
                                            revert with 'NH{q', 17
                                        idx = idx + 2
                                        s = 0
                                        s = s + 1
                                        continue 
                                    call _2439.swap(uint256 arg1, uint256 arg2, address arg3) with:
                                         gas 350000 wei
                                        args 0, _2371, _2501
                                else:
                                    _2372 = mem[(32 * s + 1) + ceil32(('cd', 100).length) + 192]
                                    if s == -1:
                                        revert with 'NH{q', 17
                                    if idx >= mem[ceil32(('cd', 100).length) + (32 * _57 + 1) + 160]:
                                        revert with 'NH{q', 50
                                    _2440 = mem[(32 * idx) + ceil32(('cd', 100).length) + (32 * _57 + 1) + 192]
                                    if 2 > !idx:
                                        revert with 'NH{q', 17
                                    if idx + 2 >= mem[ceil32(('cd', 100).length) + (32 * _57 + 1) + 160]:
                                        revert with 'NH{q', 50
                                    _2502 = mem[(32 * idx + 2) + ceil32(('cd', 100).length) + (32 * _57 + 1) + 192]
                                    _2534 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2534 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                                    mem[_2534 + 36] = _2372
                                    mem[_2534 + 68] = 0
                                    mem[_2534 + 100] = _2502
                                    mem[_2534 + 132] = 128
                                    t = 0
                                    while t < mem[_2534] + 32:
                                        mem[t + _2534 + 164] = mem[t + _2534]
                                        t = t + 32
                                        continue 
                                    call _2440.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas 350000 wei
                                        args _2372, 0, _2502, 128, mem[_2534 + 164 len mem[_2534] + 64]
                                    if ext_call.success:
                                        if idx > -3:
                                            revert with 'NH{q', 17
                                        idx = idx + 2
                                        s = _2372
                                        s = s + 1
                                        continue 
                                    call _2440.swap(uint256 arg1, uint256 arg2, address arg3) with:
                                         gas 350000 wei
                                        args _2372, 0, _2502
                                revert with 'sf'
                            call _1528.0x70a08231 with:
                                 gas 15000 wei
                                args this.address
                            if ext_call.return_data[0] < 1:
                                revert with 'NH{q', 17
                            call _1528.transfer(address arg1, uint256 arg2) with:
                                 gas 300000 wei
                                args stor4, ext_call.return_data[0] - 1
                            if not ext_call.success:
                                revert with 0, 'tf'
                        else:
                            if unknown_0xd172cd47(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                require calldata.size - 4 >= 128
                                require cd[4] == address(cd[4])
                                require cd[100] <= test266151307()
                                require cd[100] + 35 < calldata.size
                                require ('cd', 100).length <= test266151307()
                                require cd[100] + ('cd', 100).length + 36 <= calldata.size
                                mem[128] = ('cd', 100).length
                                mem[160 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
                                mem[('cd', 100).length + 160] = 0
                                _66 = mem[160]
                                _67 = mem[(32 * mem[160] + 1) + 160]
                                mem[ceil32(('cd', 100).length) + 160 len floor32(mem[160] + 1)] = mem[160 len floor32(mem[160] + 1)]
                                mem[ceil32(('cd', 100).length) + (32 * _66 + 1) + 160 len floor32(_67 + 1)] = mem[(32 * _66 + 1) + 160 len floor32(_67 + 1)]
                                mem[64] = ceil32(('cd', 100).length) + (32 * _66 + 1) + (32 * _67 + 1) + 160
                                if 0 >= mem[ceil32(('cd', 100).length) + (32 * _66 + 1) + 160]:
                                    revert with 'NH{q', 50
                                _1530 = mem[ceil32(('cd', 100).length) + (32 * _66 + 1) + 192]
                                if 1 >= mem[ceil32(('cd', 100).length) + (32 * _66 + 1) + 160]:
                                    revert with 'NH{q', 50
                                _1560 = mem[ceil32(('cd', 100).length) + (32 * _66 + 1) + 224]
                                if 0 >= Mask(8 * -ceil32(('cd', 100).length) + ('cd', 100).length + 32, 0, 0), mem[('cd', 100).length + 192 len -('cd', 100).length + ceil32(('cd', 100).length)]:
                                    revert with 'NH{q', 50
                                mem[ceil32(('cd', 100).length) + (32 * _66 + 1) + (32 * _67 + 1) + 160] = 0xa9059cbb2ab09eb219583f4a59a5d0623ade346d962bcd4e46b11da047c9049b
                                mem[ceil32(('cd', 100).length) + (32 * _66 + 1) + (32 * _67 + 1) + 164] = _1560
                                mem[ceil32(('cd', 100).length) + (32 * _66 + 1) + (32 * _67 + 1) + 196] = mem[ceil32(('cd', 100).length) + 192]
                                call _1530.transfer(address arg1, uint256 arg2) with:
                                     gas 300000 wei
                                    args _1560, mem[ceil32(('cd', 100).length) + 192]
                                if not ext_call.success:
                                    revert with 0, 'tf'
                                _1635 = mem[ceil32(('cd', 100).length) + (32 * _66 + 1) + 160]
                                if mem[ceil32(('cd', 100).length) + (32 * _66 + 1) + 160] < 2:
                                    revert with 'NH{q', 17
                                idx = 1
                                s = 0
                                s = 0
                                while idx < _1635 - 2:
                                    if 1 > !idx:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[ceil32(('cd', 100).length) + (32 * _66 + 1) + 160]:
                                        revert with 'NH{q', 50
                                    if idx < 1:
                                        revert with 'NH{q', 17
                                    if idx - 1 >= mem[ceil32(('cd', 100).length) + (32 * _66 + 1) + 160]:
                                        revert with 'NH{q', 50
                                    if 1 > !s:
                                        revert with 'NH{q', 17
                                    if s + 1 >= mem[ceil32(('cd', 100).length) + 160]:
                                        revert with 'NH{q', 50
                                    if mem[(32 * idx - 1) + ceil32(('cd', 100).length) + (32 * _66 + 1) + 204 len 20] < mem[(32 * idx + 1) + ceil32(('cd', 100).length) + (32 * _66 + 1) + 204 len 20]:
                                        _2373 = mem[(32 * s + 1) + ceil32(('cd', 100).length) + 192]
                                        if s == -1:
                                            revert with 'NH{q', 17
                                        if idx >= mem[ceil32(('cd', 100).length) + (32 * _66 + 1) + 160]:
                                            revert with 'NH{q', 50
                                        _2441 = mem[(32 * idx) + ceil32(('cd', 100).length) + (32 * _66 + 1) + 192]
                                        if 2 > !idx:
                                            revert with 'NH{q', 17
                                        if idx + 2 >= mem[ceil32(('cd', 100).length) + (32 * _66 + 1) + 160]:
                                            revert with 'NH{q', 50
                                        _2503 = mem[(32 * idx + 2) + ceil32(('cd', 100).length) + (32 * _66 + 1) + 192]
                                        _2535 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2535 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                                        mem[_2535 + 36] = 0
                                        mem[_2535 + 68] = _2373
                                        mem[_2535 + 100] = _2503
                                        mem[_2535 + 132] = 128
                                        t = 0
                                        while t < mem[_2535] + 32:
                                            mem[t + _2535 + 164] = mem[t + _2535]
                                            t = t + 32
                                            continue 
                                        call _2441.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas 350000 wei
                                            args 0, _2373, _2503, 128, mem[_2535 + 164 len mem[_2535] + 64]
                                        if ext_call.success:
                                            if idx > -3:
                                                revert with 'NH{q', 17
                                            idx = idx + 2
                                            s = 0
                                            s = s + 1
                                            continue 
                                        call _2441.swap(uint256 arg1, uint256 arg2, address arg3) with:
                                             gas 350000 wei
                                            args 0, _2373, _2503
                                    else:
                                        _2374 = mem[(32 * s + 1) + ceil32(('cd', 100).length) + 192]
                                        if s == -1:
                                            revert with 'NH{q', 17
                                        if idx >= mem[ceil32(('cd', 100).length) + (32 * _66 + 1) + 160]:
                                            revert with 'NH{q', 50
                                        _2442 = mem[(32 * idx) + ceil32(('cd', 100).length) + (32 * _66 + 1) + 192]
                                        if 2 > !idx:
                                            revert with 'NH{q', 17
                                        if idx + 2 >= mem[ceil32(('cd', 100).length) + (32 * _66 + 1) + 160]:
                                            revert with 'NH{q', 50
                                        _2504 = mem[(32 * idx + 2) + ceil32(('cd', 100).length) + (32 * _66 + 1) + 192]
                                        _2536 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2536 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                                        mem[_2536 + 36] = _2374
                                        mem[_2536 + 68] = 0
                                        mem[_2536 + 100] = _2504
                                        mem[_2536 + 132] = 128
                                        t = 0
                                        while t < mem[_2536] + 32:
                                            mem[t + _2536 + 164] = mem[t + _2536]
                                            t = t + 32
                                            continue 
                                        call _2442.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas 350000 wei
                                            args _2374, 0, _2504, 128, mem[_2536 + 164 len mem[_2536] + 64]
                                        if ext_call.success:
                                            if idx > -3:
                                                revert with 'NH{q', 17
                                            idx = idx + 2
                                            s = _2374
                                            s = s + 1
                                            continue 
                                        call _2442.swap(uint256 arg1, uint256 arg2, address arg3) with:
                                             gas 350000 wei
                                            args _2374, 0, _2504
                                    revert with 'sf'
                                call _1530.0x70a08231 with:
                                     gas 15000 wei
                                    args this.address
                                if ext_call.return_data[0] < 1:
                                    revert with 'NH{q', 17
                                call _1530.transfer(address arg1, uint256 arg2) with:
                                     gas 300000 wei
                                    args stor4, ext_call.return_data[0] - 1
                                if not ext_call.success:
                                    revert with 0, 'tf'
            else:
                if unknown_0xee22dd87(?????) > uint32(call.func_hash) >> 224:
                    if unknown_0xd3329cb9(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 128
                        require cd[4] == address(cd[4])
                        require cd[100] <= test266151307()
                        require cd[100] + 35 < calldata.size
                        require ('cd', 100).length <= test266151307()
                        require cd[100] + ('cd', 100).length + 36 <= calldata.size
                        mem[128] = ('cd', 100).length
                        mem[160 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
                        mem[('cd', 100).length + 160] = 0
                        _39 = mem[160]
                        _40 = mem[(32 * mem[160] + 1) + 160]
                        mem[ceil32(('cd', 100).length) + 160 len floor32(mem[160] + 1)] = mem[160 len floor32(mem[160] + 1)]
                        mem[ceil32(('cd', 100).length) + (32 * _39 + 1) + 160 len floor32(_40 + 1)] = mem[(32 * _39 + 1) + 160 len floor32(_40 + 1)]
                        mem[64] = ceil32(('cd', 100).length) + (32 * _39 + 1) + (32 * _40 + 1) + 160
                        if 0 >= mem[ceil32(('cd', 100).length) + (32 * _39 + 1) + 160]:
                            revert with 'NH{q', 50
                        _1532 = mem[ceil32(('cd', 100).length) + (32 * _39 + 1) + 192]
                        if 1 >= mem[ceil32(('cd', 100).length) + (32 * _39 + 1) + 160]:
                            revert with 'NH{q', 50
                        _1562 = mem[ceil32(('cd', 100).length) + (32 * _39 + 1) + 224]
                        if 0 >= Mask(8 * -ceil32(('cd', 100).length) + ('cd', 100).length + 32, 0, 0), mem[('cd', 100).length + 192 len -('cd', 100).length + ceil32(('cd', 100).length)]:
                            revert with 'NH{q', 50
                        mem[ceil32(('cd', 100).length) + (32 * _39 + 1) + (32 * _40 + 1) + 160] = 0xa9059cbb2ab09eb219583f4a59a5d0623ade346d962bcd4e46b11da047c9049b
                        mem[ceil32(('cd', 100).length) + (32 * _39 + 1) + (32 * _40 + 1) + 164] = _1562
                        mem[ceil32(('cd', 100).length) + (32 * _39 + 1) + (32 * _40 + 1) + 196] = mem[ceil32(('cd', 100).length) + 192]
                        call _1532.transfer(address arg1, uint256 arg2) with:
                             gas 300000 wei
                            args _1562, mem[ceil32(('cd', 100).length) + 192]
                        if not ext_call.success:
                            revert with 0, 'tf'
                        _1637 = mem[ceil32(('cd', 100).length) + (32 * _39 + 1) + 160]
                        if mem[ceil32(('cd', 100).length) + (32 * _39 + 1) + 160] < 2:
                            revert with 'NH{q', 17
                        idx = 1
                        s = 0
                        s = 0
                        while idx < _1637 - 2:
                            if 1 > !idx:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[ceil32(('cd', 100).length) + (32 * _39 + 1) + 160]:
                                revert with 'NH{q', 50
                            if idx < 1:
                                revert with 'NH{q', 17
                            if idx - 1 >= mem[ceil32(('cd', 100).length) + (32 * _39 + 1) + 160]:
                                revert with 'NH{q', 50
                            if 1 > !s:
                                revert with 'NH{q', 17
                            if s + 1 >= mem[ceil32(('cd', 100).length) + 160]:
                                revert with 'NH{q', 50
                            if mem[(32 * idx - 1) + ceil32(('cd', 100).length) + (32 * _39 + 1) + 204 len 20] < mem[(32 * idx + 1) + ceil32(('cd', 100).length) + (32 * _39 + 1) + 204 len 20]:
                                _2375 = mem[(32 * s + 1) + ceil32(('cd', 100).length) + 192]
                                if s == -1:
                                    revert with 'NH{q', 17
                                if idx >= mem[ceil32(('cd', 100).length) + (32 * _39 + 1) + 160]:
                                    revert with 'NH{q', 50
                                _2443 = mem[(32 * idx) + ceil32(('cd', 100).length) + (32 * _39 + 1) + 192]
                                if 2 > !idx:
                                    revert with 'NH{q', 17
                                if idx + 2 >= mem[ceil32(('cd', 100).length) + (32 * _39 + 1) + 160]:
                                    revert with 'NH{q', 50
                                _2505 = mem[(32 * idx + 2) + ceil32(('cd', 100).length) + (32 * _39 + 1) + 192]
                                _2537 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2537 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                                mem[_2537 + 36] = 0
                                mem[_2537 + 68] = _2375
                                mem[_2537 + 100] = _2505
                                mem[_2537 + 132] = 128
                                t = 0
                                while t < mem[_2537] + 32:
                                    mem[t + _2537 + 164] = mem[t + _2537]
                                    t = t + 32
                                    continue 
                                call _2443.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas 350000 wei
                                    args 0, _2375, _2505, 128, mem[_2537 + 164 len mem[_2537] + 64]
                                if ext_call.success:
                                    if idx > -3:
                                        revert with 'NH{q', 17
                                    idx = idx + 2
                                    s = 0
                                    s = s + 1
                                    continue 
                                call _2443.swap(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas 350000 wei
                                    args 0, _2375, _2505
                            else:
                                _2376 = mem[(32 * s + 1) + ceil32(('cd', 100).length) + 192]
                                if s == -1:
                                    revert with 'NH{q', 17
                                if idx >= mem[ceil32(('cd', 100).length) + (32 * _39 + 1) + 160]:
                                    revert with 'NH{q', 50
                                _2444 = mem[(32 * idx) + ceil32(('cd', 100).length) + (32 * _39 + 1) + 192]
                                if 2 > !idx:
                                    revert with 'NH{q', 17
                                if idx + 2 >= mem[ceil32(('cd', 100).length) + (32 * _39 + 1) + 160]:
                                    revert with 'NH{q', 50
                                _2506 = mem[(32 * idx + 2) + ceil32(('cd', 100).length) + (32 * _39 + 1) + 192]
                                _2538 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2538 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                                mem[_2538 + 36] = _2376
                                mem[_2538 + 68] = 0
                                mem[_2538 + 100] = _2506
                                mem[_2538 + 132] = 128
                                t = 0
                                while t < mem[_2538] + 32:
                                    mem[t + _2538 + 164] = mem[t + _2538]
                                    t = t + 32
                                    continue 
                                call _2444.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas 350000 wei
                                    args _2376, 0, _2506, 128, mem[_2538 + 164 len mem[_2538] + 64]
                                if ext_call.success:
                                    if idx > -3:
                                        revert with 'NH{q', 17
                                    idx = idx + 2
                                    s = _2376
                                    s = s + 1
                                    continue 
                                call _2444.swap(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas 350000 wei
                                    args _2376, 0, _2506
                            revert with 'sf'
                        call _1532.0x70a08231 with:
                             gas 15000 wei
                            args this.address
                        if ext_call.return_data[0] < 1:
                            revert with 'NH{q', 17
                        call _1532.transfer(address arg1, uint256 arg2) with:
                             gas 300000 wei
                            args stor4, ext_call.return_data[0] - 1
                        if not ext_call.success:
                            revert with 0, 'tf'
                    else:
                        if unknown_0xdac6e948(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 128
                            require cd[4] == address(cd[4])
                            require cd[100] <= test266151307()
                            require cd[100] + 35 < calldata.size
                            require ('cd', 100).length <= test266151307()
                            require cd[100] + ('cd', 100).length + 36 <= calldata.size
                            mem[128] = ('cd', 100).length
                            mem[160 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
                            mem[('cd', 100).length + 160] = 0
                            _60 = mem[160]
                            _61 = mem[(32 * mem[160] + 1) + 160]
                            mem[ceil32(('cd', 100).length) + 160 len floor32(mem[160] + 1)] = mem[160 len floor32(mem[160] + 1)]
                            mem[ceil32(('cd', 100).length) + (32 * _60 + 1) + 160 len floor32(_61 + 1)] = mem[(32 * _60 + 1) + 160 len floor32(_61 + 1)]
                            mem[64] = ceil32(('cd', 100).length) + (32 * _60 + 1) + (32 * _61 + 1) + 160
                            if 0 >= mem[ceil32(('cd', 100).length) + (32 * _60 + 1) + 160]:
                                revert with 'NH{q', 50
                            _1534 = mem[ceil32(('cd', 100).length) + (32 * _60 + 1) + 192]
                            if 1 >= mem[ceil32(('cd', 100).length) + (32 * _60 + 1) + 160]:
                                revert with 'NH{q', 50
                            _1564 = mem[ceil32(('cd', 100).length) + (32 * _60 + 1) + 224]
                            if 0 >= Mask(8 * -ceil32(('cd', 100).length) + ('cd', 100).length + 32, 0, 0), mem[('cd', 100).length + 192 len -('cd', 100).length + ceil32(('cd', 100).length)]:
                                revert with 'NH{q', 50
                            mem[ceil32(('cd', 100).length) + (32 * _60 + 1) + (32 * _61 + 1) + 160] = 0xa9059cbb2ab09eb219583f4a59a5d0623ade346d962bcd4e46b11da047c9049b
                            mem[ceil32(('cd', 100).length) + (32 * _60 + 1) + (32 * _61 + 1) + 164] = _1564
                            mem[ceil32(('cd', 100).length) + (32 * _60 + 1) + (32 * _61 + 1) + 196] = mem[ceil32(('cd', 100).length) + 192]
                            call _1534.transfer(address arg1, uint256 arg2) with:
                                 gas 300000 wei
                                args _1564, mem[ceil32(('cd', 100).length) + 192]
                            if not ext_call.success:
                                revert with 0, 'tf'
                            _1639 = mem[ceil32(('cd', 100).length) + (32 * _60 + 1) + 160]
                            if mem[ceil32(('cd', 100).length) + (32 * _60 + 1) + 160] < 2:
                                revert with 'NH{q', 17
                            idx = 1
                            s = 0
                            s = 0
                            while idx < _1639 - 2:
                                if 1 > !idx:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[ceil32(('cd', 100).length) + (32 * _60 + 1) + 160]:
                                    revert with 'NH{q', 50
                                if idx < 1:
                                    revert with 'NH{q', 17
                                if idx - 1 >= mem[ceil32(('cd', 100).length) + (32 * _60 + 1) + 160]:
                                    revert with 'NH{q', 50
                                if 1 > !s:
                                    revert with 'NH{q', 17
                                if s + 1 >= mem[ceil32(('cd', 100).length) + 160]:
                                    revert with 'NH{q', 50
                                if mem[(32 * idx - 1) + ceil32(('cd', 100).length) + (32 * _60 + 1) + 204 len 20] < mem[(32 * idx + 1) + ceil32(('cd', 100).length) + (32 * _60 + 1) + 204 len 20]:
                                    _2377 = mem[(32 * s + 1) + ceil32(('cd', 100).length) + 192]
                                    if s == -1:
                                        revert with 'NH{q', 17
                                    if idx >= mem[ceil32(('cd', 100).length) + (32 * _60 + 1) + 160]:
                                        revert with 'NH{q', 50
                                    _2445 = mem[(32 * idx) + ceil32(('cd', 100).length) + (32 * _60 + 1) + 192]
                                    if 2 > !idx:
                                        revert with 'NH{q', 17
                                    if idx + 2 >= mem[ceil32(('cd', 100).length) + (32 * _60 + 1) + 160]:
                                        revert with 'NH{q', 50
                                    _2507 = mem[(32 * idx + 2) + ceil32(('cd', 100).length) + (32 * _60 + 1) + 192]
                                    _2539 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2539 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                                    mem[_2539 + 36] = 0
                                    mem[_2539 + 68] = _2377
                                    mem[_2539 + 100] = _2507
                                    mem[_2539 + 132] = 128
                                    t = 0
                                    while t < mem[_2539] + 32:
                                        mem[t + _2539 + 164] = mem[t + _2539]
                                        t = t + 32
                                        continue 
                                    call _2445.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas 350000 wei
                                        args 0, _2377, _2507, 128, mem[_2539 + 164 len mem[_2539] + 64]
                                    if ext_call.success:
                                        if idx > -3:
                                            revert with 'NH{q', 17
                                        idx = idx + 2
                                        s = 0
                                        s = s + 1
                                        continue 
                                    call _2445.swap(uint256 arg1, uint256 arg2, address arg3) with:
                                         gas 350000 wei
                                        args 0, _2377, _2507
                                else:
                                    _2378 = mem[(32 * s + 1) + ceil32(('cd', 100).length) + 192]
                                    if s == -1:
                                        revert with 'NH{q', 17
                                    if idx >= mem[ceil32(('cd', 100).length) + (32 * _60 + 1) + 160]:
                                        revert with 'NH{q', 50
                                    _2446 = mem[(32 * idx) + ceil32(('cd', 100).length) + (32 * _60 + 1) + 192]
                                    if 2 > !idx:
                                        revert with 'NH{q', 17
                                    if idx + 2 >= mem[ceil32(('cd', 100).length) + (32 * _60 + 1) + 160]:
                                        revert with 'NH{q', 50
                                    _2508 = mem[(32 * idx + 2) + ceil32(('cd', 100).length) + (32 * _60 + 1) + 192]
                                    _2540 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2540 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                                    mem[_2540 + 36] = _2378
                                    mem[_2540 + 68] = 0
                                    mem[_2540 + 100] = _2508
                                    mem[_2540 + 132] = 128
                                    t = 0
                                    while t < mem[_2540] + 32:
                                        mem[t + _2540 + 164] = mem[t + _2540]
                                        t = t + 32
                                        continue 
                                    call _2446.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas 350000 wei
                                        args _2378, 0, _2508, 128, mem[_2540 + 164 len mem[_2540] + 64]
                                    if ext_call.success:
                                        if idx > -3:
                                            revert with 'NH{q', 17
                                        idx = idx + 2
                                        s = _2378
                                        s = s + 1
                                        continue 
                                    call _2446.swap(uint256 arg1, uint256 arg2, address arg3) with:
                                         gas 350000 wei
                                        args _2378, 0, _2508
                                revert with 'sf'
                            call _1534.0x70a08231 with:
                                 gas 15000 wei
                                args this.address
                            if ext_call.return_data[0] < 1:
                                revert with 'NH{q', 17
                            call _1534.transfer(address arg1, uint256 arg2) with:
                                 gas 300000 wei
                                args stor4, ext_call.return_data[0] - 1
                            if not ext_call.success:
                                revert with 0, 'tf'
                else:
                    if unknown_0xee22dd87(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 128
                        require cd[4] == address(cd[4])
                        require cd[100] <= test266151307()
                        require cd[100] + 35 < calldata.size
                        require ('cd', 100).length <= test266151307()
                        require cd[100] + ('cd', 100).length + 36 <= calldata.size
                        mem[128] = ('cd', 100).length
                        mem[160 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
                        mem[('cd', 100).length + 160] = 0
                        _42 = mem[160]
                        _43 = mem[(32 * mem[160] + 1) + 160]
                        mem[ceil32(('cd', 100).length) + 160 len floor32(mem[160] + 1)] = mem[160 len floor32(mem[160] + 1)]
                        mem[ceil32(('cd', 100).length) + (32 * _42 + 1) + 160 len floor32(_43 + 1)] = mem[(32 * _42 + 1) + 160 len floor32(_43 + 1)]
                        mem[64] = ceil32(('cd', 100).length) + (32 * _42 + 1) + (32 * _43 + 1) + 160
                        if 0 >= mem[ceil32(('cd', 100).length) + (32 * _42 + 1) + 160]:
                            revert with 'NH{q', 50
                        _1536 = mem[ceil32(('cd', 100).length) + (32 * _42 + 1) + 192]
                        if 1 >= mem[ceil32(('cd', 100).length) + (32 * _42 + 1) + 160]:
                            revert with 'NH{q', 50
                        _1566 = mem[ceil32(('cd', 100).length) + (32 * _42 + 1) + 224]
                        if 0 >= Mask(8 * -ceil32(('cd', 100).length) + ('cd', 100).length + 32, 0, 0), mem[('cd', 100).length + 192 len -('cd', 100).length + ceil32(('cd', 100).length)]:
                            revert with 'NH{q', 50
                        mem[ceil32(('cd', 100).length) + (32 * _42 + 1) + (32 * _43 + 1) + 160] = 0xa9059cbb2ab09eb219583f4a59a5d0623ade346d962bcd4e46b11da047c9049b
                        mem[ceil32(('cd', 100).length) + (32 * _42 + 1) + (32 * _43 + 1) + 164] = _1566
                        mem[ceil32(('cd', 100).length) + (32 * _42 + 1) + (32 * _43 + 1) + 196] = mem[ceil32(('cd', 100).length) + 192]
                        call _1536.transfer(address arg1, uint256 arg2) with:
                             gas 300000 wei
                            args _1566, mem[ceil32(('cd', 100).length) + 192]
                        if not ext_call.success:
                            revert with 0, 'tf'
                        _1641 = mem[ceil32(('cd', 100).length) + (32 * _42 + 1) + 160]
                        if mem[ceil32(('cd', 100).length) + (32 * _42 + 1) + 160] < 2:
                            revert with 'NH{q', 17
                        idx = 1
                        s = 0
                        s = 0
                        while idx < _1641 - 2:
                            if 1 > !idx:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[ceil32(('cd', 100).length) + (32 * _42 + 1) + 160]:
                                revert with 'NH{q', 50
                            if idx < 1:
                                revert with 'NH{q', 17
                            if idx - 1 >= mem[ceil32(('cd', 100).length) + (32 * _42 + 1) + 160]:
                                revert with 'NH{q', 50
                            if 1 > !s:
                                revert with 'NH{q', 17
                            if s + 1 >= mem[ceil32(('cd', 100).length) + 160]:
                                revert with 'NH{q', 50
                            if mem[(32 * idx - 1) + ceil32(('cd', 100).length) + (32 * _42 + 1) + 204 len 20] < mem[(32 * idx + 1) + ceil32(('cd', 100).length) + (32 * _42 + 1) + 204 len 20]:
                                _2379 = mem[(32 * s + 1) + ceil32(('cd', 100).length) + 192]
                                if s == -1:
                                    revert with 'NH{q', 17
                                if idx >= mem[ceil32(('cd', 100).length) + (32 * _42 + 1) + 160]:
                                    revert with 'NH{q', 50
                                _2447 = mem[(32 * idx) + ceil32(('cd', 100).length) + (32 * _42 + 1) + 192]
                                if 2 > !idx:
                                    revert with 'NH{q', 17
                                if idx + 2 >= mem[ceil32(('cd', 100).length) + (32 * _42 + 1) + 160]:
                                    revert with 'NH{q', 50
                                _2509 = mem[(32 * idx + 2) + ceil32(('cd', 100).length) + (32 * _42 + 1) + 192]
                                _2541 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2541 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                                mem[_2541 + 36] = 0
                                mem[_2541 + 68] = _2379
                                mem[_2541 + 100] = _2509
                                mem[_2541 + 132] = 128
                                t = 0
                                while t < mem[_2541] + 32:
                                    mem[t + _2541 + 164] = mem[t + _2541]
                                    t = t + 32
                                    continue 
                                call _2447.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas 350000 wei
                                    args 0, _2379, _2509, 128, mem[_2541 + 164 len mem[_2541] + 64]
                                if ext_call.success:
                                    if idx > -3:
                                        revert with 'NH{q', 17
                                    idx = idx + 2
                                    s = 0
                                    s = s + 1
                                    continue 
                                call _2447.swap(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas 350000 wei
                                    args 0, _2379, _2509
                            else:
                                _2380 = mem[(32 * s + 1) + ceil32(('cd', 100).length) + 192]
                                if s == -1:
                                    revert with 'NH{q', 17
                                if idx >= mem[ceil32(('cd', 100).length) + (32 * _42 + 1) + 160]:
                                    revert with 'NH{q', 50
                                _2448 = mem[(32 * idx) + ceil32(('cd', 100).length) + (32 * _42 + 1) + 192]
                                if 2 > !idx:
                                    revert with 'NH{q', 17
                                if idx + 2 >= mem[ceil32(('cd', 100).length) + (32 * _42 + 1) + 160]:
                                    revert with 'NH{q', 50
                                _2510 = mem[(32 * idx + 2) + ceil32(('cd', 100).length) + (32 * _42 + 1) + 192]
                                _2542 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2542 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                                mem[_2542 + 36] = _2380
                                mem[_2542 + 68] = 0
                                mem[_2542 + 100] = _2510
                                mem[_2542 + 132] = 128
                                t = 0
                                while t < mem[_2542] + 32:
                                    mem[t + _2542 + 164] = mem[t + _2542]
                                    t = t + 32
                                    continue 
                                call _2448.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas 350000 wei
                                    args _2380, 0, _2510, 128, mem[_2542 + 164 len mem[_2542] + 64]
                                if ext_call.success:
                                    if idx > -3:
                                        revert with 'NH{q', 17
                                    idx = idx + 2
                                    s = _2380
                                    s = s + 1
                                    continue 
                                call _2448.swap(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas 350000 wei
                                    args _2380, 0, _2510
                            revert with 'sf'
                        call _1536.0x70a08231 with:
                             gas 15000 wei
                            args this.address
                        if ext_call.return_data[0] < 1:
                            revert with 'NH{q', 17
                        call _1536.transfer(address arg1, uint256 arg2) with:
                             gas 300000 wei
                            args stor4, ext_call.return_data[0] - 1
                        if not ext_call.success:
                            revert with 0, 'tf'
                    else:
                        if unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] == address(cd[4])
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            if not address(cd[4]):
                                revert with 0, 'Ownable: new owner is the zero address'
                            emit OwnershipTransferred(owner, address(cd[4]));
                            owner = address(cd[4])
                        else:
                            if unknown_0xf8890f8e(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                require calldata.size - 4 >= 128
                                require cd[4] == address(cd[4])
                                require cd[100] <= test266151307()
                                require cd[100] + 35 < calldata.size
                                require ('cd', 100).length <= test266151307()
                                require cd[100] + ('cd', 100).length + 36 <= calldata.size
                                mem[128] = ('cd', 100).length
                                mem[160 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
                                mem[('cd', 100).length + 160] = 0
                                _71 = mem[160]
                                _72 = mem[(32 * mem[160] + 1) + 160]
                                mem[ceil32(('cd', 100).length) + 160 len floor32(mem[160] + 1)] = mem[160 len floor32(mem[160] + 1)]
                                mem[ceil32(('cd', 100).length) + (32 * _71 + 1) + 160 len floor32(_72 + 1)] = mem[(32 * _71 + 1) + 160 len floor32(_72 + 1)]
                                mem[64] = ceil32(('cd', 100).length) + (32 * _71 + 1) + (32 * _72 + 1) + 160
                                if 0 >= mem[ceil32(('cd', 100).length) + (32 * _71 + 1) + 160]:
                                    revert with 'NH{q', 50
                                _1538 = mem[ceil32(('cd', 100).length) + (32 * _71 + 1) + 192]
                                if 1 >= mem[ceil32(('cd', 100).length) + (32 * _71 + 1) + 160]:
                                    revert with 'NH{q', 50
                                _1568 = mem[ceil32(('cd', 100).length) + (32 * _71 + 1) + 224]
                                if 0 >= Mask(8 * -ceil32(('cd', 100).length) + ('cd', 100).length + 32, 0, 0), mem[('cd', 100).length + 192 len -('cd', 100).length + ceil32(('cd', 100).length)]:
                                    revert with 'NH{q', 50
                                mem[ceil32(('cd', 100).length) + (32 * _71 + 1) + (32 * _72 + 1) + 160] = 0xa9059cbb2ab09eb219583f4a59a5d0623ade346d962bcd4e46b11da047c9049b
                                mem[ceil32(('cd', 100).length) + (32 * _71 + 1) + (32 * _72 + 1) + 164] = _1568
                                mem[ceil32(('cd', 100).length) + (32 * _71 + 1) + (32 * _72 + 1) + 196] = mem[ceil32(('cd', 100).length) + 192]
                                call _1538.transfer(address arg1, uint256 arg2) with:
                                     gas 300000 wei
                                    args _1568, mem[ceil32(('cd', 100).length) + 192]
                                if not ext_call.success:
                                    revert with 0, 'tf'
                                _1643 = mem[ceil32(('cd', 100).length) + (32 * _71 + 1) + 160]
                                if mem[ceil32(('cd', 100).length) + (32 * _71 + 1) + 160] < 2:
                                    revert with 'NH{q', 17
                                idx = 1
                                s = 0
                                s = 0
                                while idx < _1643 - 2:
                                    if 1 > !idx:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[ceil32(('cd', 100).length) + (32 * _71 + 1) + 160]:
                                        revert with 'NH{q', 50
                                    if idx < 1:
                                        revert with 'NH{q', 17
                                    if idx - 1 >= mem[ceil32(('cd', 100).length) + (32 * _71 + 1) + 160]:
                                        revert with 'NH{q', 50
                                    if 1 > !s:
                                        revert with 'NH{q', 17
                                    if s + 1 >= mem[ceil32(('cd', 100).length) + 160]:
                                        revert with 'NH{q', 50
                                    if mem[(32 * idx - 1) + ceil32(('cd', 100).length) + (32 * _71 + 1) + 204 len 20] < mem[(32 * idx + 1) + ceil32(('cd', 100).length) + (32 * _71 + 1) + 204 len 20]:
                                        _2381 = mem[(32 * s + 1) + ceil32(('cd', 100).length) + 192]
                                        if s == -1:
                                            revert with 'NH{q', 17
                                        if idx >= mem[ceil32(('cd', 100).length) + (32 * _71 + 1) + 160]:
                                            revert with 'NH{q', 50
                                        _2449 = mem[(32 * idx) + ceil32(('cd', 100).length) + (32 * _71 + 1) + 192]
                                        if 2 > !idx:
                                            revert with 'NH{q', 17
                                        if idx + 2 >= mem[ceil32(('cd', 100).length) + (32 * _71 + 1) + 160]:
                                            revert with 'NH{q', 50
                                        _2511 = mem[(32 * idx + 2) + ceil32(('cd', 100).length) + (32 * _71 + 1) + 192]
                                        _2543 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2543 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                                        mem[_2543 + 36] = 0
                                        mem[_2543 + 68] = _2381
                                        mem[_2543 + 100] = _2511
                                        mem[_2543 + 132] = 128
                                        t = 0
                                        while t < mem[_2543] + 32:
                                            mem[t + _2543 + 164] = mem[t + _2543]
                                            t = t + 32
                                            continue 
                                        call _2449.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas 350000 wei
                                            args 0, _2381, _2511, 128, mem[_2543 + 164 len mem[_2543] + 64]
                                        if ext_call.success:
                                            if idx > -3:
                                                revert with 'NH{q', 17
                                            idx = idx + 2
                                            s = 0
                                            s = s + 1
                                            continue 
                                        call _2449.swap(uint256 arg1, uint256 arg2, address arg3) with:
                                             gas 350000 wei
                                            args 0, _2381, _2511
                                    else:
                                        _2382 = mem[(32 * s + 1) + ceil32(('cd', 100).length) + 192]
                                        if s == -1:
                                            revert with 'NH{q', 17
                                        if idx >= mem[ceil32(('cd', 100).length) + (32 * _71 + 1) + 160]:
                                            revert with 'NH{q', 50
                                        _2450 = mem[(32 * idx) + ceil32(('cd', 100).length) + (32 * _71 + 1) + 192]
                                        if 2 > !idx:
                                            revert with 'NH{q', 17
                                        if idx + 2 >= mem[ceil32(('cd', 100).length) + (32 * _71 + 1) + 160]:
                                            revert with 'NH{q', 50
                                        _2512 = mem[(32 * idx + 2) + ceil32(('cd', 100).length) + (32 * _71 + 1) + 192]
                                        _2544 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2544 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                                        mem[_2544 + 36] = _2382
                                        mem[_2544 + 68] = 0
                                        mem[_2544 + 100] = _2512
                                        mem[_2544 + 132] = 128
                                        t = 0
                                        while t < mem[_2544] + 32:
                                            mem[t + _2544 + 164] = mem[t + _2544]
                                            t = t + 32
                                            continue 
                                        call _2450.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas 350000 wei
                                            args _2382, 0, _2512, 128, mem[_2544 + 164 len mem[_2544] + 64]
                                        if ext_call.success:
                                            if idx > -3:
                                                revert with 'NH{q', 17
                                            idx = idx + 2
                                            s = _2382
                                            s = s + 1
                                            continue 
                                        call _2450.swap(uint256 arg1, uint256 arg2, address arg3) with:
                                             gas 350000 wei
                                            args _2382, 0, _2512
                                    revert with 'sf'
                                call _1538.0x70a08231 with:
                                     gas 15000 wei
                                    args this.address
                                if ext_call.return_data[0] < 1:
                                    revert with 'NH{q', 17
                                call _1538.transfer(address arg1, uint256 arg2) with:
                                     gas 300000 wei
                                    args stor4, ext_call.return_data[0] - 1
                                if not ext_call.success:
                                    revert with 0, 'tf'
        else:
            if unknown_0x6ecd2fb7(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x1c091821(?????) > uint32(call.func_hash) >> 224:
                    if elkCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 128
                        require cd[4] == address(cd[4])
                        require cd[100] <= test266151307()
                        require cd[100] + 35 < calldata.size
                        require ('cd', 100).length <= test266151307()
                        require cd[100] + ('cd', 100).length + 36 <= calldata.size
                        mem[128] = ('cd', 100).length
                        mem[160 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
                        mem[('cd', 100).length + 160] = 0
                        _30 = mem[160]
                        _31 = mem[(32 * mem[160] + 1) + 160]
                        mem[ceil32(('cd', 100).length) + 160 len floor32(mem[160] + 1)] = mem[160 len floor32(mem[160] + 1)]
                        mem[ceil32(('cd', 100).length) + (32 * _30 + 1) + 160 len floor32(_31 + 1)] = mem[(32 * _30 + 1) + 160 len floor32(_31 + 1)]
                        mem[64] = ceil32(('cd', 100).length) + (32 * _30 + 1) + (32 * _31 + 1) + 160
                        if 0 >= mem[ceil32(('cd', 100).length) + (32 * _30 + 1) + 160]:
                            revert with 'NH{q', 50
                        _1512 = mem[ceil32(('cd', 100).length) + (32 * _30 + 1) + 192]
                        if 1 >= mem[ceil32(('cd', 100).length) + (32 * _30 + 1) + 160]:
                            revert with 'NH{q', 50
                        _1540 = mem[ceil32(('cd', 100).length) + (32 * _30 + 1) + 224]
                        if 0 >= Mask(8 * -ceil32(('cd', 100).length) + ('cd', 100).length + 32, 0, 0), mem[('cd', 100).length + 192 len -('cd', 100).length + ceil32(('cd', 100).length)]:
                            revert with 'NH{q', 50
                        mem[ceil32(('cd', 100).length) + (32 * _30 + 1) + (32 * _31 + 1) + 160] = 0xa9059cbb2ab09eb219583f4a59a5d0623ade346d962bcd4e46b11da047c9049b
                        mem[ceil32(('cd', 100).length) + (32 * _30 + 1) + (32 * _31 + 1) + 164] = _1540
                        mem[ceil32(('cd', 100).length) + (32 * _30 + 1) + (32 * _31 + 1) + 196] = mem[ceil32(('cd', 100).length) + 192]
                        call _1512.transfer(address arg1, uint256 arg2) with:
                             gas 300000 wei
                            args _1540, mem[ceil32(('cd', 100).length) + 192]
                        if not ext_call.success:
                            revert with 0, 'tf'
                        _1618 = mem[ceil32(('cd', 100).length) + (32 * _30 + 1) + 160]
                        if mem[ceil32(('cd', 100).length) + (32 * _30 + 1) + 160] < 2:
                            revert with 'NH{q', 17
                        idx = 1
                        s = 0
                        s = 0
                        while idx < _1618 - 2:
                            if 1 > !idx:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[ceil32(('cd', 100).length) + (32 * _30 + 1) + 160]:
                                revert with 'NH{q', 50
                            if idx < 1:
                                revert with 'NH{q', 17
                            if idx - 1 >= mem[ceil32(('cd', 100).length) + (32 * _30 + 1) + 160]:
                                revert with 'NH{q', 50
                            if 1 > !s:
                                revert with 'NH{q', 17
                            if s + 1 >= mem[ceil32(('cd', 100).length) + 160]:
                                revert with 'NH{q', 50
                            if mem[(32 * idx - 1) + ceil32(('cd', 100).length) + (32 * _30 + 1) + 204 len 20] < mem[(32 * idx + 1) + ceil32(('cd', 100).length) + (32 * _30 + 1) + 204 len 20]:
                                _2352 = mem[(32 * s + 1) + ceil32(('cd', 100).length) + 192]
                                if s == -1:
                                    revert with 'NH{q', 17
                                if idx >= mem[ceil32(('cd', 100).length) + (32 * _30 + 1) + 160]:
                                    revert with 'NH{q', 50
                                _2420 = mem[(32 * idx) + ceil32(('cd', 100).length) + (32 * _30 + 1) + 192]
                                if 2 > !idx:
                                    revert with 'NH{q', 17
                                if idx + 2 >= mem[ceil32(('cd', 100).length) + (32 * _30 + 1) + 160]:
                                    revert with 'NH{q', 50
                                _2484 = mem[(32 * idx + 2) + ceil32(('cd', 100).length) + (32 * _30 + 1) + 192]
                                _2513 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2513 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                                mem[_2513 + 36] = 0
                                mem[_2513 + 68] = _2352
                                mem[_2513 + 100] = _2484
                                mem[_2513 + 132] = 128
                                t = 0
                                while t < mem[_2513] + 32:
                                    mem[t + _2513 + 164] = mem[t + _2513]
                                    t = t + 32
                                    continue 
                                call _2420.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas 350000 wei
                                    args 0, _2352, _2484, 128, mem[_2513 + 164 len mem[_2513] + 64]
                                if ext_call.success:
                                    if idx > -3:
                                        revert with 'NH{q', 17
                                    idx = idx + 2
                                    s = 0
                                    s = s + 1
                                    continue 
                                call _2420.swap(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas 350000 wei
                                    args 0, _2352, _2484
                            else:
                                _2353 = mem[(32 * s + 1) + ceil32(('cd', 100).length) + 192]
                                if s == -1:
                                    revert with 'NH{q', 17
                                if idx >= mem[ceil32(('cd', 100).length) + (32 * _30 + 1) + 160]:
                                    revert with 'NH{q', 50
                                _2421 = mem[(32 * idx) + ceil32(('cd', 100).length) + (32 * _30 + 1) + 192]
                                if 2 > !idx:
                                    revert with 'NH{q', 17
                                if idx + 2 >= mem[ceil32(('cd', 100).length) + (32 * _30 + 1) + 160]:
                                    revert with 'NH{q', 50
                                _2485 = mem[(32 * idx + 2) + ceil32(('cd', 100).length) + (32 * _30 + 1) + 192]
                                _2514 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2514 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                                mem[_2514 + 36] = _2353
                                mem[_2514 + 68] = 0
                                mem[_2514 + 100] = _2485
                                mem[_2514 + 132] = 128
                                t = 0
                                while t < mem[_2514] + 32:
                                    mem[t + _2514 + 164] = mem[t + _2514]
                                    t = t + 32
                                    continue 
                                call _2421.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas 350000 wei
                                    args _2353, 0, _2485, 128, mem[_2514 + 164 len mem[_2514] + 64]
                                if ext_call.success:
                                    if idx > -3:
                                        revert with 'NH{q', 17
                                    idx = idx + 2
                                    s = _2353
                                    s = s + 1
                                    continue 
                                call _2421.swap(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas 350000 wei
                                    args _2353, 0, _2485
                            revert with 'sf'
                        call _1512.0x70a08231 with:
                             gas 15000 wei
                            args this.address
                        if ext_call.return_data[0] < 1:
                            revert with 'NH{q', 17
                        call _1512.transfer(address arg1, uint256 arg2) with:
                             gas 300000 wei
                            args stor4, ext_call.return_data[0] - 1
                        if not ext_call.success:
                            revert with 0, 'tf'
                    else:
                        if unknown_0x10d1e85c(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 128
                            require cd[4] == address(cd[4])
                            require cd[100] <= test266151307()
                            require cd[100] + 35 < calldata.size
                            require ('cd', 100).length <= test266151307()
                            require cd[100] + ('cd', 100).length + 36 <= calldata.size
                            mem[128] = ('cd', 100).length
                            mem[160 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
                            mem[('cd', 100).length + 160] = 0
                            _45 = mem[160]
                            _46 = mem[(32 * mem[160] + 1) + 160]
                            mem[ceil32(('cd', 100).length) + 160 len floor32(mem[160] + 1)] = mem[160 len floor32(mem[160] + 1)]
                            mem[ceil32(('cd', 100).length) + (32 * _45 + 1) + 160 len floor32(_46 + 1)] = mem[(32 * _45 + 1) + 160 len floor32(_46 + 1)]
                            mem[64] = ceil32(('cd', 100).length) + (32 * _45 + 1) + (32 * _46 + 1) + 160
                            if 0 >= mem[ceil32(('cd', 100).length) + (32 * _45 + 1) + 160]:
                                revert with 'NH{q', 50
                            _1514 = mem[ceil32(('cd', 100).length) + (32 * _45 + 1) + 192]
                            if 1 >= mem[ceil32(('cd', 100).length) + (32 * _45 + 1) + 160]:
                                revert with 'NH{q', 50
                            _1542 = mem[ceil32(('cd', 100).length) + (32 * _45 + 1) + 224]
                            if 0 >= Mask(8 * -ceil32(('cd', 100).length) + ('cd', 100).length + 32, 0, 0), mem[('cd', 100).length + 192 len -('cd', 100).length + ceil32(('cd', 100).length)]:
                                revert with 'NH{q', 50
                            mem[ceil32(('cd', 100).length) + (32 * _45 + 1) + (32 * _46 + 1) + 160] = 0xa9059cbb2ab09eb219583f4a59a5d0623ade346d962bcd4e46b11da047c9049b
                            mem[ceil32(('cd', 100).length) + (32 * _45 + 1) + (32 * _46 + 1) + 164] = _1542
                            mem[ceil32(('cd', 100).length) + (32 * _45 + 1) + (32 * _46 + 1) + 196] = mem[ceil32(('cd', 100).length) + 192]
                            call _1514.transfer(address arg1, uint256 arg2) with:
                                 gas 300000 wei
                                args _1542, mem[ceil32(('cd', 100).length) + 192]
                            if not ext_call.success:
                                revert with 0, 'tf'
                            _1620 = mem[ceil32(('cd', 100).length) + (32 * _45 + 1) + 160]
                            if mem[ceil32(('cd', 100).length) + (32 * _45 + 1) + 160] < 2:
                                revert with 'NH{q', 17
                            idx = 1
                            s = 0
                            s = 0
                            while idx < _1620 - 2:
                                if 1 > !idx:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[ceil32(('cd', 100).length) + (32 * _45 + 1) + 160]:
                                    revert with 'NH{q', 50
                                if idx < 1:
                                    revert with 'NH{q', 17
                                if idx - 1 >= mem[ceil32(('cd', 100).length) + (32 * _45 + 1) + 160]:
                                    revert with 'NH{q', 50
                                if 1 > !s:
                                    revert with 'NH{q', 17
                                if s + 1 >= mem[ceil32(('cd', 100).length) + 160]:
                                    revert with 'NH{q', 50
                                if mem[(32 * idx - 1) + ceil32(('cd', 100).length) + (32 * _45 + 1) + 204 len 20] < mem[(32 * idx + 1) + ceil32(('cd', 100).length) + (32 * _45 + 1) + 204 len 20]:
                                    _2354 = mem[(32 * s + 1) + ceil32(('cd', 100).length) + 192]
                                    if s == -1:
                                        revert with 'NH{q', 17
                                    if idx >= mem[ceil32(('cd', 100).length) + (32 * _45 + 1) + 160]:
                                        revert with 'NH{q', 50
                                    _2422 = mem[(32 * idx) + ceil32(('cd', 100).length) + (32 * _45 + 1) + 192]
                                    if 2 > !idx:
                                        revert with 'NH{q', 17
                                    if idx + 2 >= mem[ceil32(('cd', 100).length) + (32 * _45 + 1) + 160]:
                                        revert with 'NH{q', 50
                                    _2486 = mem[(32 * idx + 2) + ceil32(('cd', 100).length) + (32 * _45 + 1) + 192]
                                    _2515 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2515 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                                    mem[_2515 + 36] = 0
                                    mem[_2515 + 68] = _2354
                                    mem[_2515 + 100] = _2486
                                    mem[_2515 + 132] = 128
                                    t = 0
                                    while t < mem[_2515] + 32:
                                        mem[t + _2515 + 164] = mem[t + _2515]
                                        t = t + 32
                                        continue 
                                    call _2422.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas 350000 wei
                                        args 0, _2354, _2486, 128, mem[_2515 + 164 len mem[_2515] + 64]
                                    if ext_call.success:
                                        if idx > -3:
                                            revert with 'NH{q', 17
                                        idx = idx + 2
                                        s = 0
                                        s = s + 1
                                        continue 
                                    call _2422.swap(uint256 arg1, uint256 arg2, address arg3) with:
                                         gas 350000 wei
                                        args 0, _2354, _2486
                                else:
                                    _2355 = mem[(32 * s + 1) + ceil32(('cd', 100).length) + 192]
                                    if s == -1:
                                        revert with 'NH{q', 17
                                    if idx >= mem[ceil32(('cd', 100).length) + (32 * _45 + 1) + 160]:
                                        revert with 'NH{q', 50
                                    _2423 = mem[(32 * idx) + ceil32(('cd', 100).length) + (32 * _45 + 1) + 192]
                                    if 2 > !idx:
                                        revert with 'NH{q', 17
                                    if idx + 2 >= mem[ceil32(('cd', 100).length) + (32 * _45 + 1) + 160]:
                                        revert with 'NH{q', 50
                                    _2487 = mem[(32 * idx + 2) + ceil32(('cd', 100).length) + (32 * _45 + 1) + 192]
                                    _2516 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2516 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                                    mem[_2516 + 36] = _2355
                                    mem[_2516 + 68] = 0
                                    mem[_2516 + 100] = _2487
                                    mem[_2516 + 132] = 128
                                    t = 0
                                    while t < mem[_2516] + 32:
                                        mem[t + _2516 + 164] = mem[t + _2516]
                                        t = t + 32
                                        continue 
                                    call _2423.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas 350000 wei
                                        args _2355, 0, _2487, 128, mem[_2516 + 164 len mem[_2516] + 64]
                                    if ext_call.success:
                                        if idx > -3:
                                            revert with 'NH{q', 17
                                        idx = idx + 2
                                        s = _2355
                                        s = s + 1
                                        continue 
                                    call _2423.swap(uint256 arg1, uint256 arg2, address arg3) with:
                                         gas 350000 wei
                                        args _2355, 0, _2487
                                revert with 'sf'
                            call _1514.0x70a08231 with:
                                 gas 15000 wei
                                args this.address
                            if ext_call.return_data[0] < 1:
                                revert with 'NH{q', 17
                            call _1514.transfer(address arg1, uint256 arg2) with:
                                 gas 300000 wei
                                args stor4, ext_call.return_data[0] - 1
                            if not ext_call.success:
                                revert with 0, 'tf'
                else:
                    if unknown_0x1c091821(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 128
                        require cd[4] == address(cd[4])
                        require cd[100] <= test266151307()
                        require cd[100] + 35 < calldata.size
                        require ('cd', 100).length <= test266151307()
                        require cd[100] + ('cd', 100).length + 36 <= calldata.size
                        mem[128] = ('cd', 100).length
                        mem[160 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
                        mem[('cd', 100).length + 160] = 0
                        _33 = mem[160]
                        _34 = mem[(32 * mem[160] + 1) + 160]
                        mem[ceil32(('cd', 100).length) + 160 len floor32(mem[160] + 1)] = mem[160 len floor32(mem[160] + 1)]
                        mem[ceil32(('cd', 100).length) + (32 * _33 + 1) + 160 len floor32(_34 + 1)] = mem[(32 * _33 + 1) + 160 len floor32(_34 + 1)]
                        mem[64] = ceil32(('cd', 100).length) + (32 * _33 + 1) + (32 * _34 + 1) + 160
                        if 0 >= mem[ceil32(('cd', 100).length) + (32 * _33 + 1) + 160]:
                            revert with 'NH{q', 50
                        _1516 = mem[ceil32(('cd', 100).length) + (32 * _33 + 1) + 192]
                        if 1 >= mem[ceil32(('cd', 100).length) + (32 * _33 + 1) + 160]:
                            revert with 'NH{q', 50
                        _1544 = mem[ceil32(('cd', 100).length) + (32 * _33 + 1) + 224]
                        if 0 >= Mask(8 * -ceil32(('cd', 100).length) + ('cd', 100).length + 32, 0, 0), mem[('cd', 100).length + 192 len -('cd', 100).length + ceil32(('cd', 100).length)]:
                            revert with 'NH{q', 50
                        mem[ceil32(('cd', 100).length) + (32 * _33 + 1) + (32 * _34 + 1) + 160] = 0xa9059cbb2ab09eb219583f4a59a5d0623ade346d962bcd4e46b11da047c9049b
                        mem[ceil32(('cd', 100).length) + (32 * _33 + 1) + (32 * _34 + 1) + 164] = _1544
                        mem[ceil32(('cd', 100).length) + (32 * _33 + 1) + (32 * _34 + 1) + 196] = mem[ceil32(('cd', 100).length) + 192]
                        call _1516.transfer(address arg1, uint256 arg2) with:
                             gas 300000 wei
                            args _1544, mem[ceil32(('cd', 100).length) + 192]
                        if not ext_call.success:
                            revert with 0, 'tf'
                        _1622 = mem[ceil32(('cd', 100).length) + (32 * _33 + 1) + 160]
                        if mem[ceil32(('cd', 100).length) + (32 * _33 + 1) + 160] < 2:
                            revert with 'NH{q', 17
                        idx = 1
                        s = 0
                        s = 0
                        while idx < _1622 - 2:
                            if 1 > !idx:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[ceil32(('cd', 100).length) + (32 * _33 + 1) + 160]:
                                revert with 'NH{q', 50
                            if idx < 1:
                                revert with 'NH{q', 17
                            if idx - 1 >= mem[ceil32(('cd', 100).length) + (32 * _33 + 1) + 160]:
                                revert with 'NH{q', 50
                            if 1 > !s:
                                revert with 'NH{q', 17
                            if s + 1 >= mem[ceil32(('cd', 100).length) + 160]:
                                revert with 'NH{q', 50
                            if mem[(32 * idx - 1) + ceil32(('cd', 100).length) + (32 * _33 + 1) + 204 len 20] < mem[(32 * idx + 1) + ceil32(('cd', 100).length) + (32 * _33 + 1) + 204 len 20]:
                                _2356 = mem[(32 * s + 1) + ceil32(('cd', 100).length) + 192]
                                if s == -1:
                                    revert with 'NH{q', 17
                                if idx >= mem[ceil32(('cd', 100).length) + (32 * _33 + 1) + 160]:
                                    revert with 'NH{q', 50
                                _2424 = mem[(32 * idx) + ceil32(('cd', 100).length) + (32 * _33 + 1) + 192]
                                if 2 > !idx:
                                    revert with 'NH{q', 17
                                if idx + 2 >= mem[ceil32(('cd', 100).length) + (32 * _33 + 1) + 160]:
                                    revert with 'NH{q', 50
                                _2488 = mem[(32 * idx + 2) + ceil32(('cd', 100).length) + (32 * _33 + 1) + 192]
                                _2517 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2517 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                                mem[_2517 + 36] = 0
                                mem[_2517 + 68] = _2356
                                mem[_2517 + 100] = _2488
                                mem[_2517 + 132] = 128
                                t = 0
                                while t < mem[_2517] + 32:
                                    mem[t + _2517 + 164] = mem[t + _2517]
                                    t = t + 32
                                    continue 
                                call _2424.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas 350000 wei
                                    args 0, _2356, _2488, 128, mem[_2517 + 164 len mem[_2517] + 64]
                                if ext_call.success:
                                    if idx > -3:
                                        revert with 'NH{q', 17
                                    idx = idx + 2
                                    s = 0
                                    s = s + 1
                                    continue 
                                call _2424.swap(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas 350000 wei
                                    args 0, _2356, _2488
                            else:
                                _2357 = mem[(32 * s + 1) + ceil32(('cd', 100).length) + 192]
                                if s == -1:
                                    revert with 'NH{q', 17
                                if idx >= mem[ceil32(('cd', 100).length) + (32 * _33 + 1) + 160]:
                                    revert with 'NH{q', 50
                                _2425 = mem[(32 * idx) + ceil32(('cd', 100).length) + (32 * _33 + 1) + 192]
                                if 2 > !idx:
                                    revert with 'NH{q', 17
                                if idx + 2 >= mem[ceil32(('cd', 100).length) + (32 * _33 + 1) + 160]:
                                    revert with 'NH{q', 50
                                _2489 = mem[(32 * idx + 2) + ceil32(('cd', 100).length) + (32 * _33 + 1) + 192]
                                _2518 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2518 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                                mem[_2518 + 36] = _2357
                                mem[_2518 + 68] = 0
                                mem[_2518 + 100] = _2489
                                mem[_2518 + 132] = 128
                                t = 0
                                while t < mem[_2518] + 32:
                                    mem[t + _2518 + 164] = mem[t + _2518]
                                    t = t + 32
                                    continue 
                                call _2425.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas 350000 wei
                                    args _2357, 0, _2489, 128, mem[_2518 + 164 len mem[_2518] + 64]
                                if ext_call.success:
                                    if idx > -3:
                                        revert with 'NH{q', 17
                                    idx = idx + 2
                                    s = _2357
                                    s = s + 1
                                    continue 
                                call _2425.swap(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas 350000 wei
                                    args _2357, 0, _2489
                            revert with 'sf'
                        call _1516.0x70a08231 with:
                             gas 15000 wei
                            args this.address
                        if ext_call.return_data[0] < 1:
                            revert with 'NH{q', 17
                        call _1516.transfer(address arg1, uint256 arg2) with:
                             gas 300000 wei
                            args stor4, ext_call.return_data[0] - 1
                        if not ext_call.success:
                            revert with 0, 'tf'
                    else:
                        if uint32(call.func_hash) >> 224 != unknown_0x3cffbd2f(?????):
                            if unknown_0x4c9a1fb8(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                require calldata.size - 4 >= 96
                                require cd[4] <= test266151307()
                                require cd[4] + 35 < calldata.size
                                if ('cd', 4).length > test266151307():
                                    revert with 'NH{q', 65
                                if ceil32(32 * ('cd', 4).length) + 129 < 128 or ceil32(32 * ('cd', 4).length) + 129 > test266151307():
                                    revert with 'NH{q', 65
                                mem[128] = ('cd', 4).length
                                require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                                idx = cd[4] + 36
                                s = 160
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
                                if ceil32(32 * ('cd', 36).length) + 130 < 129 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130 > test266151307():
                                    revert with 'NH{q', 65
                                mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130
                                mem[ceil32(32 * ('cd', 4).length) + 129] = ('cd', 36).length
                                require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
                                s = ceil32(32 * ('cd', 4).length) + 161
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
                                    if idx >= mem[128]:
                                        revert with 'NH{q', 50
                                    _2182 = mem[(32 * idx) + 160]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(_2182))
                                    staticcall address(_2182).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2207 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2230 = mem[_2207]
                                    if idx >= mem[128]:
                                        revert with 'NH{q', 50
                                    if mem[(32 * idx) + 172 len 20] != stor1:
                                        if not ('cd', 36).length:
                                            revert with 'NH{q', 18
                                        s = 0
                                        while s < ('cd', 36).length:
                                            if s >= mem[ceil32(32 * ('cd', 4).length) + 129]:
                                                revert with 'NH{q', 50
                                            mem[mem[64] + 4] = mem[(32 * s) + ceil32(32 * ('cd', 4).length) + 173 len 20]
                                            mem[mem[64] + 36] = _2230 / ('cd', 36).length
                                            require ext_code.size(address(_2182))
                                            call address(_2182).transfer(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4], _2230 / ('cd', 36).length
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2799 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_2799] == bool(mem[_2799])
                                            if s == -1:
                                                revert with 'NH{q', 17
                                            s = s + 1
                                            continue 
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        idx = idx + 1
                                        s = _2230 / ('cd', 36).length
                                        continue 
                                    if mem[_2207] < cd[68]:
                                        revert with 'NH{q', 17
                                    if not ('cd', 36).length:
                                        revert with 'NH{q', 18
                                    s = 0
                                    while s < ('cd', 36).length:
                                        if s >= mem[ceil32(32 * ('cd', 4).length) + 129]:
                                            revert with 'NH{q', 50
                                        mem[mem[64] + 4] = mem[(32 * s) + ceil32(32 * ('cd', 4).length) + 173 len 20]
                                        mem[mem[64] + 36] = _2230 - cd[68] / ('cd', 36).length
                                        require ext_code.size(address(_2182))
                                        call address(_2182).transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], _2230 - cd[68] / ('cd', 36).length
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2800 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_2800] == bool(mem[_2800])
                                        if s == -1:
                                            revert with 'NH{q', 17
                                        s = s + 1
                                        continue 
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = _2230 - cd[68] / ('cd', 36).length
                                    continue 
                                if eth.balance(this.address):
                                    if not ('cd', 36).length:
                                        revert with 'NH{q', 18
                                    idx = 0
                                    while idx < ('cd', 36).length:
                                        if idx >= mem[ceil32(32 * ('cd', 4).length) + 129]:
                                            revert with 'NH{q', 50
                                        call mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 173 len 20] with:
                                           value eth.balance(this.address) / ('cd', 36).length wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        idx = idx + 1
                                        continue 
                        else:
                            require not msg.value
                            require calldata.size - 4 >= 128
                            require cd[4] == address(cd[4])
                            require cd[100] <= test266151307()
                            require cd[100] + 35 < calldata.size
                            require ('cd', 100).length <= test266151307()
                            require cd[100] + ('cd', 100).length + 36 <= calldata.size
                            mem[128] = ('cd', 100).length
                            mem[160 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
                            mem[('cd', 100).length + 160] = 0
                            _48 = mem[160]
                            _49 = mem[(32 * mem[160] + 1) + 160]
                            mem[ceil32(('cd', 100).length) + 160 len floor32(mem[160] + 1)] = mem[160 len floor32(mem[160] + 1)]
                            mem[ceil32(('cd', 100).length) + (32 * _48 + 1) + 160 len floor32(_49 + 1)] = mem[(32 * _48 + 1) + 160 len floor32(_49 + 1)]
                            mem[64] = ceil32(('cd', 100).length) + (32 * _48 + 1) + (32 * _49 + 1) + 160
                            if 0 >= mem[ceil32(('cd', 100).length) + (32 * _48 + 1) + 160]:
                                revert with 'NH{q', 50
                            _1518 = mem[ceil32(('cd', 100).length) + (32 * _48 + 1) + 192]
                            if 1 >= mem[ceil32(('cd', 100).length) + (32 * _48 + 1) + 160]:
                                revert with 'NH{q', 50
                            _1546 = mem[ceil32(('cd', 100).length) + (32 * _48 + 1) + 224]
                            if 0 >= Mask(8 * -ceil32(('cd', 100).length) + ('cd', 100).length + 32, 0, 0), mem[('cd', 100).length + 192 len -('cd', 100).length + ceil32(('cd', 100).length)]:
                                revert with 'NH{q', 50
                            mem[ceil32(('cd', 100).length) + (32 * _48 + 1) + (32 * _49 + 1) + 160] = 0xa9059cbb2ab09eb219583f4a59a5d0623ade346d962bcd4e46b11da047c9049b
                            mem[ceil32(('cd', 100).length) + (32 * _48 + 1) + (32 * _49 + 1) + 164] = _1546
                            mem[ceil32(('cd', 100).length) + (32 * _48 + 1) + (32 * _49 + 1) + 196] = mem[ceil32(('cd', 100).length) + 192]
                            call _1518.transfer(address arg1, uint256 arg2) with:
                                 gas 300000 wei
                                args _1546, mem[ceil32(('cd', 100).length) + 192]
                            if not ext_call.success:
                                revert with 0, 'tf'
                            _1624 = mem[ceil32(('cd', 100).length) + (32 * _48 + 1) + 160]
                            if mem[ceil32(('cd', 100).length) + (32 * _48 + 1) + 160] < 2:
                                revert with 'NH{q', 17
                            idx = 1
                            s = 0
                            s = 0
                            while idx < _1624 - 2:
                                if 1 > !idx:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[ceil32(('cd', 100).length) + (32 * _48 + 1) + 160]:
                                    revert with 'NH{q', 50
                                if idx < 1:
                                    revert with 'NH{q', 17
                                if idx - 1 >= mem[ceil32(('cd', 100).length) + (32 * _48 + 1) + 160]:
                                    revert with 'NH{q', 50
                                if 1 > !s:
                                    revert with 'NH{q', 17
                                if s + 1 >= mem[ceil32(('cd', 100).length) + 160]:
                                    revert with 'NH{q', 50
                                if mem[(32 * idx - 1) + ceil32(('cd', 100).length) + (32 * _48 + 1) + 204 len 20] < mem[(32 * idx + 1) + ceil32(('cd', 100).length) + (32 * _48 + 1) + 204 len 20]:
                                    _2358 = mem[(32 * s + 1) + ceil32(('cd', 100).length) + 192]
                                    if s == -1:
                                        revert with 'NH{q', 17
                                    if idx >= mem[ceil32(('cd', 100).length) + (32 * _48 + 1) + 160]:
                                        revert with 'NH{q', 50
                                    _2426 = mem[(32 * idx) + ceil32(('cd', 100).length) + (32 * _48 + 1) + 192]
                                    if 2 > !idx:
                                        revert with 'NH{q', 17
                                    if idx + 2 >= mem[ceil32(('cd', 100).length) + (32 * _48 + 1) + 160]:
                                        revert with 'NH{q', 50
                                    _2490 = mem[(32 * idx + 2) + ceil32(('cd', 100).length) + (32 * _48 + 1) + 192]
                                    _2519 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2519 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                                    mem[_2519 + 36] = 0
                                    mem[_2519 + 68] = _2358
                                    mem[_2519 + 100] = _2490
                                    mem[_2519 + 132] = 128
                                    t = 0
                                    while t < mem[_2519] + 32:
                                        mem[t + _2519 + 164] = mem[t + _2519]
                                        t = t + 32
                                        continue 
                                    call _2426.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas 350000 wei
                                        args 0, _2358, _2490, 128, mem[_2519 + 164 len mem[_2519] + 64]
                                    if ext_call.success:
                                        if idx > -3:
                                            revert with 'NH{q', 17
                                        idx = idx + 2
                                        s = 0
                                        s = s + 1
                                        continue 
                                    call _2426.swap(uint256 arg1, uint256 arg2, address arg3) with:
                                         gas 350000 wei
                                        args 0, _2358, _2490
                                else:
                                    _2359 = mem[(32 * s + 1) + ceil32(('cd', 100).length) + 192]
                                    if s == -1:
                                        revert with 'NH{q', 17
                                    if idx >= mem[ceil32(('cd', 100).length) + (32 * _48 + 1) + 160]:
                                        revert with 'NH{q', 50
                                    _2427 = mem[(32 * idx) + ceil32(('cd', 100).length) + (32 * _48 + 1) + 192]
                                    if 2 > !idx:
                                        revert with 'NH{q', 17
                                    if idx + 2 >= mem[ceil32(('cd', 100).length) + (32 * _48 + 1) + 160]:
                                        revert with 'NH{q', 50
                                    _2491 = mem[(32 * idx + 2) + ceil32(('cd', 100).length) + (32 * _48 + 1) + 192]
                                    _2520 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2520 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                                    mem[_2520 + 36] = _2359
                                    mem[_2520 + 68] = 0
                                    mem[_2520 + 100] = _2491
                                    mem[_2520 + 132] = 128
                                    t = 0
                                    while t < mem[_2520] + 32:
                                        mem[t + _2520 + 164] = mem[t + _2520]
                                        t = t + 32
                                        continue 
                                    call _2427.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas 350000 wei
                                        args _2359, 0, _2491, 128, mem[_2520 + 164 len mem[_2520] + 64]
                                    if ext_call.success:
                                        if idx > -3:
                                            revert with 'NH{q', 17
                                        idx = idx + 2
                                        s = _2359
                                        s = s + 1
                                        continue 
                                    call _2427.swap(uint256 arg1, uint256 arg2, address arg3) with:
                                         gas 350000 wei
                                        args _2359, 0, _2491
                                revert with 'sf'
                            call _1518.0x70a08231 with:
                                 gas 15000 wei
                                args this.address
                            if ext_call.return_data[0] < 1:
                                revert with 'NH{q', 17
                            call _1518.transfer(address arg1, uint256 arg2) with:
                                 gas 300000 wei
                                args stor4, ext_call.return_data[0] - 1
                            if not ext_call.success:
                                revert with 0, 'tf'
            else:
                if unknown_0x791b35d9(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0x791b35d9(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 128
                        require cd[4] == address(cd[4])
                        require cd[100] <= test266151307()
                        require cd[100] + 35 < calldata.size
                        require ('cd', 100).length <= test266151307()
                        require cd[100] + ('cd', 100).length + 36 <= calldata.size
                        mem[128] = ('cd', 100).length
                        mem[160 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
                        mem[('cd', 100).length + 160] = 0
                        _36 = mem[160]
                        _37 = mem[(32 * mem[160] + 1) + 160]
                        mem[ceil32(('cd', 100).length) + 160 len floor32(mem[160] + 1)] = mem[160 len floor32(mem[160] + 1)]
                        mem[ceil32(('cd', 100).length) + (32 * _36 + 1) + 160 len floor32(_37 + 1)] = mem[(32 * _36 + 1) + 160 len floor32(_37 + 1)]
                        mem[64] = ceil32(('cd', 100).length) + (32 * _36 + 1) + (32 * _37 + 1) + 160
                        if 0 >= mem[ceil32(('cd', 100).length) + (32 * _36 + 1) + 160]:
                            revert with 'NH{q', 50
                        _1520 = mem[ceil32(('cd', 100).length) + (32 * _36 + 1) + 192]
                        if 1 >= mem[ceil32(('cd', 100).length) + (32 * _36 + 1) + 160]:
                            revert with 'NH{q', 50
                        _1550 = mem[ceil32(('cd', 100).length) + (32 * _36 + 1) + 224]
                        if 0 >= Mask(8 * -ceil32(('cd', 100).length) + ('cd', 100).length + 32, 0, 0), mem[('cd', 100).length + 192 len -('cd', 100).length + ceil32(('cd', 100).length)]:
                            revert with 'NH{q', 50
                        mem[ceil32(('cd', 100).length) + (32 * _36 + 1) + (32 * _37 + 1) + 160] = 0xa9059cbb2ab09eb219583f4a59a5d0623ade346d962bcd4e46b11da047c9049b
                        mem[ceil32(('cd', 100).length) + (32 * _36 + 1) + (32 * _37 + 1) + 164] = _1550
                        mem[ceil32(('cd', 100).length) + (32 * _36 + 1) + (32 * _37 + 1) + 196] = mem[ceil32(('cd', 100).length) + 192]
                        call _1520.transfer(address arg1, uint256 arg2) with:
                             gas 300000 wei
                            args _1550, mem[ceil32(('cd', 100).length) + 192]
                        if not ext_call.success:
                            revert with 0, 'tf'
                        _1626 = mem[ceil32(('cd', 100).length) + (32 * _36 + 1) + 160]
                        if mem[ceil32(('cd', 100).length) + (32 * _36 + 1) + 160] < 2:
                            revert with 'NH{q', 17
                        idx = 1
                        s = 0
                        s = 0
                        while idx < _1626 - 2:
                            if 1 > !idx:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[ceil32(('cd', 100).length) + (32 * _36 + 1) + 160]:
                                revert with 'NH{q', 50
                            if idx < 1:
                                revert with 'NH{q', 17
                            if idx - 1 >= mem[ceil32(('cd', 100).length) + (32 * _36 + 1) + 160]:
                                revert with 'NH{q', 50
                            if 1 > !s:
                                revert with 'NH{q', 17
                            if s + 1 >= mem[ceil32(('cd', 100).length) + 160]:
                                revert with 'NH{q', 50
                            if mem[(32 * idx - 1) + ceil32(('cd', 100).length) + (32 * _36 + 1) + 204 len 20] < mem[(32 * idx + 1) + ceil32(('cd', 100).length) + (32 * _36 + 1) + 204 len 20]:
                                _2365 = mem[(32 * s + 1) + ceil32(('cd', 100).length) + 192]
                                if s == -1:
                                    revert with 'NH{q', 17
                                if idx >= mem[ceil32(('cd', 100).length) + (32 * _36 + 1) + 160]:
                                    revert with 'NH{q', 50
                                _2433 = mem[(32 * idx) + ceil32(('cd', 100).length) + (32 * _36 + 1) + 192]
                                if 2 > !idx:
                                    revert with 'NH{q', 17
                                if idx + 2 >= mem[ceil32(('cd', 100).length) + (32 * _36 + 1) + 160]:
                                    revert with 'NH{q', 50
                                _2495 = mem[(32 * idx + 2) + ceil32(('cd', 100).length) + (32 * _36 + 1) + 192]
                                _2527 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2527 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                                mem[_2527 + 36] = 0
                                mem[_2527 + 68] = _2365
                                mem[_2527 + 100] = _2495
                                mem[_2527 + 132] = 128
                                t = 0
                                while t < mem[_2527] + 32:
                                    mem[t + _2527 + 164] = mem[t + _2527]
                                    t = t + 32
                                    continue 
                                call _2433.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas 350000 wei
                                    args 0, _2365, _2495, 128, mem[_2527 + 164 len mem[_2527] + 64]
                                if ext_call.success:
                                    if idx > -3:
                                        revert with 'NH{q', 17
                                    idx = idx + 2
                                    s = 0
                                    s = s + 1
                                    continue 
                                call _2433.swap(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas 350000 wei
                                    args 0, _2365, _2495
                            else:
                                _2366 = mem[(32 * s + 1) + ceil32(('cd', 100).length) + 192]
                                if s == -1:
                                    revert with 'NH{q', 17
                                if idx >= mem[ceil32(('cd', 100).length) + (32 * _36 + 1) + 160]:
                                    revert with 'NH{q', 50
                                _2434 = mem[(32 * idx) + ceil32(('cd', 100).length) + (32 * _36 + 1) + 192]
                                if 2 > !idx:
                                    revert with 'NH{q', 17
                                if idx + 2 >= mem[ceil32(('cd', 100).length) + (32 * _36 + 1) + 160]:
                                    revert with 'NH{q', 50
                                _2496 = mem[(32 * idx + 2) + ceil32(('cd', 100).length) + (32 * _36 + 1) + 192]
                                _2528 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2528 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                                mem[_2528 + 36] = _2366
                                mem[_2528 + 68] = 0
                                mem[_2528 + 100] = _2496
                                mem[_2528 + 132] = 128
                                t = 0
                                while t < mem[_2528] + 32:
                                    mem[t + _2528 + 164] = mem[t + _2528]
                                    t = t + 32
                                    continue 
                                call _2434.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas 350000 wei
                                    args _2366, 0, _2496, 128, mem[_2528 + 164 len mem[_2528] + 64]
                                if ext_call.success:
                                    if idx > -3:
                                        revert with 'NH{q', 17
                                    idx = idx + 2
                                    s = _2366
                                    s = s + 1
                                    continue 
                                call _2434.swap(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas 350000 wei
                                    args _2366, 0, _2496
                            revert with 'sf'
                        call _1520.0x70a08231 with:
                             gas 15000 wei
                            args this.address
                        if ext_call.return_data[0] < 1:
                            revert with 'NH{q', 17
                        call _1520.transfer(address arg1, uint256 arg2) with:
                             gas 300000 wei
                            args stor4, ext_call.return_data[0] - 1
                        if not ext_call.success:
                            revert with 0, 'tf'
                    else:
                        if uint32(call.func_hash) >> 224 != unknown_0x84800812(?????):
                            if unknown_0x85535cc5(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                require calldata.size - 4 >= 32
                                require cd[4] == address(cd[4])
                                if owner != msg.sender:
                                    revert with 0, 'Ownable: caller is not the owner'
                                stor4 = address(cd[4])
                        else:
                            require not msg.value
                            require calldata.size - 4 >= 128
                            require cd[4] == address(cd[4])
                            require cd[100] <= test266151307()
                            require cd[100] + 35 < calldata.size
                            require ('cd', 100).length <= test266151307()
                            require cd[100] + ('cd', 100).length + 36 <= calldata.size
                            mem[128] = ('cd', 100).length
                            mem[160 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
                            mem[('cd', 100).length + 160] = 0
                            _51 = mem[160]
                            _52 = mem[(32 * mem[160] + 1) + 160]
                            mem[ceil32(('cd', 100).length) + 160 len floor32(mem[160] + 1)] = mem[160 len floor32(mem[160] + 1)]
                            mem[ceil32(('cd', 100).length) + (32 * _51 + 1) + 160 len floor32(_52 + 1)] = mem[(32 * _51 + 1) + 160 len floor32(_52 + 1)]
                            mem[64] = ceil32(('cd', 100).length) + (32 * _51 + 1) + (32 * _52 + 1) + 160
                            if 0 >= mem[ceil32(('cd', 100).length) + (32 * _51 + 1) + 160]:
                                revert with 'NH{q', 50
                            _1522 = mem[ceil32(('cd', 100).length) + (32 * _51 + 1) + 192]
                            if 1 >= mem[ceil32(('cd', 100).length) + (32 * _51 + 1) + 160]:
                                revert with 'NH{q', 50
                            _1552 = mem[ceil32(('cd', 100).length) + (32 * _51 + 1) + 224]
                            if 0 >= Mask(8 * -ceil32(('cd', 100).length) + ('cd', 100).length + 32, 0, 0), mem[('cd', 100).length + 192 len -('cd', 100).length + ceil32(('cd', 100).length)]:
                                revert with 'NH{q', 50
                            mem[ceil32(('cd', 100).length) + (32 * _51 + 1) + (32 * _52 + 1) + 160] = 0xa9059cbb2ab09eb219583f4a59a5d0623ade346d962bcd4e46b11da047c9049b
                            mem[ceil32(('cd', 100).length) + (32 * _51 + 1) + (32 * _52 + 1) + 164] = _1552
                            mem[ceil32(('cd', 100).length) + (32 * _51 + 1) + (32 * _52 + 1) + 196] = mem[ceil32(('cd', 100).length) + 192]
                            call _1522.transfer(address arg1, uint256 arg2) with:
                                 gas 300000 wei
                                args _1552, mem[ceil32(('cd', 100).length) + 192]
                            if not ext_call.success:
                                revert with 0, 'tf'
                            _1628 = mem[ceil32(('cd', 100).length) + (32 * _51 + 1) + 160]
                            if mem[ceil32(('cd', 100).length) + (32 * _51 + 1) + 160] < 2:
                                revert with 'NH{q', 17
                            idx = 1
                            s = 0
                            s = 0
                            while idx < _1628 - 2:
                                if 1 > !idx:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[ceil32(('cd', 100).length) + (32 * _51 + 1) + 160]:
                                    revert with 'NH{q', 50
                                if idx < 1:
                                    revert with 'NH{q', 17
                                if idx - 1 >= mem[ceil32(('cd', 100).length) + (32 * _51 + 1) + 160]:
                                    revert with 'NH{q', 50
                                if 1 > !s:
                                    revert with 'NH{q', 17
                                if s + 1 >= mem[ceil32(('cd', 100).length) + 160]:
                                    revert with 'NH{q', 50
                                if mem[(32 * idx - 1) + ceil32(('cd', 100).length) + (32 * _51 + 1) + 204 len 20] < mem[(32 * idx + 1) + ceil32(('cd', 100).length) + (32 * _51 + 1) + 204 len 20]:
                                    _2367 = mem[(32 * s + 1) + ceil32(('cd', 100).length) + 192]
                                    if s == -1:
                                        revert with 'NH{q', 17
                                    if idx >= mem[ceil32(('cd', 100).length) + (32 * _51 + 1) + 160]:
                                        revert with 'NH{q', 50
                                    _2435 = mem[(32 * idx) + ceil32(('cd', 100).length) + (32 * _51 + 1) + 192]
                                    if 2 > !idx:
                                        revert with 'NH{q', 17
                                    if idx + 2 >= mem[ceil32(('cd', 100).length) + (32 * _51 + 1) + 160]:
                                        revert with 'NH{q', 50
                                    _2497 = mem[(32 * idx + 2) + ceil32(('cd', 100).length) + (32 * _51 + 1) + 192]
                                    _2529 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2529 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                                    mem[_2529 + 36] = 0
                                    mem[_2529 + 68] = _2367
                                    mem[_2529 + 100] = _2497
                                    mem[_2529 + 132] = 128
                                    t = 0
                                    while t < mem[_2529] + 32:
                                        mem[t + _2529 + 164] = mem[t + _2529]
                                        t = t + 32
                                        continue 
                                    call _2435.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas 350000 wei
                                        args 0, _2367, _2497, 128, mem[_2529 + 164 len mem[_2529] + 64]
                                    if ext_call.success:
                                        if idx > -3:
                                            revert with 'NH{q', 17
                                        idx = idx + 2
                                        s = 0
                                        s = s + 1
                                        continue 
                                    call _2435.swap(uint256 arg1, uint256 arg2, address arg3) with:
                                         gas 350000 wei
                                        args 0, _2367, _2497
                                else:
                                    _2368 = mem[(32 * s + 1) + ceil32(('cd', 100).length) + 192]
                                    if s == -1:
                                        revert with 'NH{q', 17
                                    if idx >= mem[ceil32(('cd', 100).length) + (32 * _51 + 1) + 160]:
                                        revert with 'NH{q', 50
                                    _2436 = mem[(32 * idx) + ceil32(('cd', 100).length) + (32 * _51 + 1) + 192]
                                    if 2 > !idx:
                                        revert with 'NH{q', 17
                                    if idx + 2 >= mem[ceil32(('cd', 100).length) + (32 * _51 + 1) + 160]:
                                        revert with 'NH{q', 50
                                    _2498 = mem[(32 * idx + 2) + ceil32(('cd', 100).length) + (32 * _51 + 1) + 192]
                                    _2530 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2530 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                                    mem[_2530 + 36] = _2368
                                    mem[_2530 + 68] = 0
                                    mem[_2530 + 100] = _2498
                                    mem[_2530 + 132] = 128
                                    t = 0
                                    while t < mem[_2530] + 32:
                                        mem[t + _2530 + 164] = mem[t + _2530]
                                        t = t + 32
                                        continue 
                                    call _2436.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas 350000 wei
                                        args _2368, 0, _2498, 128, mem[_2530 + 164 len mem[_2530] + 64]
                                    if ext_call.success:
                                        if idx > -3:
                                            revert with 'NH{q', 17
                                        idx = idx + 2
                                        s = _2368
                                        s = s + 1
                                        continue 
                                    call _2436.swap(uint256 arg1, uint256 arg2, address arg3) with:
                                         gas 350000 wei
                                        args _2368, 0, _2498
                                revert with 'sf'
                            call _1522.0x70a08231 with:
                                 gas 15000 wei
                                args this.address
                            if ext_call.return_data[0] < 1:
                                revert with 'NH{q', 17
                            call _1522.transfer(address arg1, uint256 arg2) with:
                                 gas 300000 wei
                                args stor4, ext_call.return_data[0] - 1
                            if not ext_call.success:
                                revert with 0, 'tf'
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0x6ecd2fb7(?????):
                        if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            emit OwnershipTransferred(owner, 0);
                            owner = 0
                    else:
                        require not msg.value
                        require calldata.size - 4 >= 160
                        require cd[4] <= test266151307()
                        require cd[4] + 35 < calldata.size
                        if ('cd', 4).length > test266151307():
                            revert with 'NH{q', 65
                        if ceil32(32 * ('cd', 4).length) + 129 < 128 or ceil32(32 * ('cd', 4).length) + 129 > test266151307():
                            revert with 'NH{q', 65
                        mem[128] = ('cd', 4).length
                        require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                        idx = cd[4] + 36
                        s = 160
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
                        if ceil32(32 * ('cd', 36).length) + 130 < 129 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130 > test266151307():
                            revert with 'NH{q', 65
                        mem[ceil32(32 * ('cd', 4).length) + 129] = ('cd', 36).length
                        require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
                        idx = cd[36] + 36
                        s = ceil32(32 * ('cd', 4).length) + 161
                        while idx < cd[36] + (32 * ('cd', 36).length) + 36:
                            mem[s] = cd[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        require cd[100] <= test266151307()
                        require cd[100] + 35 < calldata.size
                        if ('cd', 100).length > test266151307():
                            revert with 'NH{q', 65
                        if ceil32(32 * ('cd', 100).length) + 131 < 130 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 131 > test266151307():
                            revert with 'NH{q', 65
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] = ('cd', 100).length
                        require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
                        idx = cd[100] + 36
                        s = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 162
                        while idx < cd[100] + (32 * ('cd', 100).length) + 36:
                            mem[s] = cd[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        require cd[132] == bool(cd[132])
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 131] = ('cd', 36).length + 1
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 163] = cd[68]
                        mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (32 * ('cd', 36).length + 1) + 131
                        idx = 32
                        s = 0
                        s = 0
                        s = 0
                        while idx < 32 * ('cd', 4).length:
                            staticcall mem[idx + 160].getReserves() with:
                                    gas 15000 wei
                            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (32 * ('cd', 36).length + 1) + 131 len 64] = ext_call.return_data[0 len 64]
                            if mem[idx + 128] <= mem[idx + 192]:
                                if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + s + 163] * mem[ceil32(32 * ('cd', 4).length) + s + 161] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + s + 163] * mem[ceil32(32 * ('cd', 4).length) + s + 161]) < mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + s + 162]:
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + s + 195] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + s + 163] * mem[ceil32(32 * ('cd', 4).length) + s + 161] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + s + 163] * mem[ceil32(32 * ('cd', 4).length) + s + 161])
                                idx = idx + 64
                                s = ext_call.return_data[32]
                                s = ext_call.return_data[0]
                                s = s + 32
                                continue 
                            if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + s + 163] * mem[ceil32(32 * ('cd', 4).length) + s + 161] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + s + 163] * mem[ceil32(32 * ('cd', 4).length) + s + 161]) < mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + s + 162]:
                            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + s + 195] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + s + 163] * mem[ceil32(32 * ('cd', 4).length) + s + 161] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + s + 163] * mem[ceil32(32 * ('cd', 4).length) + s + 161])
                            idx = idx + 64
                            s = ext_call.return_data[0]
                            s = ext_call.return_data[32]
                            s = s + 32
                            continue 
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (32 * ('cd', 36).length + 1) + 163 len floor32(('cd', 36).length + 2)] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 131 len floor32(('cd', 36).length + 2)]
                        if mem[(32 * ('cd', 4).length) + 128 len ceil32(32 * ('cd', 4).length) + -(32 * ('cd', 4).length) + 1], Mask(8 * (32 * ('cd', 4).length) + -ceil32(32 * ('cd', 4).length) + 31, -(8 * (32 * ('cd', 4).length) + -ceil32(32 * ('cd', 4).length) + 31) + 256, ('cd', 36).length) >> -(8 * (32 * ('cd', 4).length) + -ceil32(32 * ('cd', 4).length) + 31) + 256 > mem[(32 * ('cd', 4).length) + 64]:
                            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length + 2) + 163 len floor32(('cd', 4).length + 1)] = mem[128 len floor32(('cd', 4).length + 1)]
                            call mem[(32 * ('cd', 4).length) + 96] with:
                               funct Mask(32, 224, sha3('swap(uint256,uint256,address,byt', 'es)')) >> 224
                                 gas 350000 wei
                                args 0, mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (32 * ('cd', 36).length + 1) + 131], this.address, 128, Mask(8 * floor32((32 * ('cd', 36).length + 2) + (32 * ('cd', 4).length + 1) + 31) + 1, -(8 * floor32((32 * ('cd', 36).length + 2) + (32 * ('cd', 4).length + 1) + 31) + 1) + 256, mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (32 * ('cd', 36).length + 1) + floor32(('cd', 36).length + 2) + 163 len (32 * ('cd', 36).length + 2) - floor32(('cd', 36).length + 2)], mem[128 len floor32(('cd', 4).length + 1)], mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length + 2) + floor32(('cd', 4).length + 1) + 163 len floor32((32 * ('cd', 36).length + 2) + (32 * ('cd', 4).length + 1) + 31) + -(32 * ('cd', 36).length + 2) + -floor32(('cd', 4).length + 1) - 31]) << (8 * floor32((32 * ('cd', 36).length + 2) + (32 * ('cd', 4).length + 1) + 31) + 1) - 256, mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length + 2) + (32 * ('cd', 4).length + 1) + floor32((32 * ('cd', 36).length + 2) + (32 * ('cd', 4).length + 1) + 31) + 296 len (32 * ('cd', 36).length + 2) + (32 * ('cd', 4).length + 1) + -floor32((32 * ('cd', 36).length + 2) + (32 * ('cd', 4).length + 1) + 31) + 63]
                        else:
                            idx = floor32(('cd', 36).length + 2)
                            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length + 2) + 163 len floor32(('cd', 4).length + 1)] = mem[128 len floor32(('cd', 4).length + 1)]
                            call mem[(32 * ('cd', 4).length) + 96] with:
                               funct Mask(32, 224, sha3('swap(uint256,uint256,address,byt', 'es)')) >> 224
                                 gas 350000 wei
                                args mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (32 * ('cd', 36).length + 1) + 131], 0, this.address, 128, Mask(8 * floor32((32 * ('cd', 36).length + 2) + (32 * ('cd', 4).length + 1) + 31) + 1, -(8 * floor32((32 * ('cd', 36).length + 2) + (32 * ('cd', 4).length + 1) + 31) + 1) + 256, mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (32 * ('cd', 36).length + 1) + floor32(('cd', 36).length + 2) + 163 len (32 * ('cd', 36).length + 2) - floor32(('cd', 36).length + 2)], mem[128 len floor32(('cd', 4).length + 1)], mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length + 2) + floor32(('cd', 4).length + 1) + 163 len floor32((32 * ('cd', 36).length + 2) + (32 * ('cd', 4).length + 1) + 31) + -(32 * ('cd', 36).length + 2) + -floor32(('cd', 4).length + 1) - 31]) << (8 * floor32((32 * ('cd', 36).length + 2) + (32 * ('cd', 4).length + 1) + 31) + 1) - 256, mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length + 2) + (32 * ('cd', 4).length + 1) + floor32((32 * ('cd', 36).length + 2) + (32 * ('cd', 4).length + 1) + 31) + 296 len (32 * ('cd', 36).length + 2) + (32 * ('cd', 4).length + 1) + -floor32((32 * ('cd', 36).length + 2) + (32 * ('cd', 4).length + 1) + 31) + 63]
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
