contract main {




// =====================  Runtime code  =====================


address owner;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_28a33347(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg1))
    call address(arg1).withdraw(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function seize(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_66f4deca(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require (32 * ('cd', 4).length) + cd[4] + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < (32 * ('cd', 4).length) + cd[4] + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    require cd[36] == address(cd[36])
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _160 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = address(cd[36])
        staticcall address(_160).0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(cd[36])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _163 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_163] != -1:
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = address(cd[36])
            staticcall address(_160).0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, address(cd[36])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _167 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_167]:
                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
            _169 = mem[64]
            mem[mem[64] + 36] = address(cd[36])
            mem[mem[64] + 68] = -1
            _170 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_170 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_170 + 36 len 28]
            mem[64] = _169 + 164
            mem[_169 + 100] = 32
            mem[_169 + 132] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(_160)):
                revert with 0, 'Address: call to non-contract'
            _179 = mem[_170]
            s = 0
            while s < _179:
                mem[s + _169 + 164] = mem[s + _170 + 32]
                s = s + 32
                continue 
            if ceil32(_179) > _179:
                mem[_169 + _179 + 164] = 0
            call address(_160).mem[_169 + 164 len 4] with:
                 gas gas_remaining wei
                args mem[_169 + 168 len _179 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_169 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_169 + 168] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _169 + 232] = mem[idx + _169 + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_169 + 232]
                if mem[96]:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[64] = _169 + ceil32(return_data.size) + 165
                mem[_169 + 164] = return_data.size
                mem[_169 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_169 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_169 + ceil32(return_data.size) + 169] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _169 + ceil32(return_data.size) + 233] = mem[idx + _169 + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_169 + ceil32(return_data.size) + 233]
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_169 + 196] == bool(mem[_169 + 196])
                    if not mem[_169 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_36ee1b4f(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 160
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    require ('cd', 132).length <= test266151307()
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ('cd', 68).length == ('cd', 36).length
    require ('cd', 100).length == ('cd', 36).length
    idx = 0
    while idx < ('cd', 132).length:
        if cd[((32 * idx) + cd[132] + 36)] != 0:
            if idx >= ('cd', 68).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
            if ('cd', 36).length < 1:
                revert with 'NH{q', 17
            if idx == ('cd', 36).length - 1:
                if 0 >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require ('cd', 68)[0] == address(('cd', 68)[0])
                if idx >= ('cd', 36).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                if idx >= ('cd', 100).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
                _91 = mem[64]
                mem[mem[64] + 36] = address(cd[((32 * idx) + cd[68] + 36)])
                mem[mem[64] + 68] = address(('cd', 68)[0])
                mem[mem[64] + 100] = address(cd[((32 * idx) + cd[100] + 36)])
                _92 = mem[64]
                mem[mem[64]] = 100
                mem[64] = mem[64] + 132
                mem[_92 + 32] = 0xe9f2d9f700000000000000000000000000000000000000000000000000000000 or mem[_92 + 36 len 28]
                _95 = mem[_92]
                s = 0
                while s < _95:
                    mem[s + _91 + 132] = mem[s + _92 + 32]
                    s = s + 32
                    continue 
                if ceil32(_95) <= _95:
                    delegate address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _95 + _91 + -mem[64] + 128]
                    if not return_data.size:
                        if not delegate.return_code:
                        require mem[96] >= 32
                        if idx >= ('cd', 132).length:
                            revert with 'NH{q', 50
                        if mem[128] != cd[((32 * idx) + cd[132] + 36)]:
                    else:
                        _167 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_167] = return_data.size
                        mem[_167 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not delegate.return_code:
                        require return_data.size >= 32
                        if idx >= ('cd', 132).length:
                            revert with 'NH{q', 50
                        if mem[_167 + 32] != cd[((32 * idx) + cd[132] + 36)]:
                else:
                    mem[_91 + _95 + 132] = 0
                    delegate address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _95 + _91 + -mem[64] + 128]
                    if not return_data.size:
                        if not delegate.return_code:
                        require mem[96] >= 32
                        if idx >= ('cd', 132).length:
                            revert with 'NH{q', 50
                        if mem[128] != cd[((32 * idx) + cd[132] + 36)]:
                    else:
                        _171 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_171] = return_data.size
                        mem[_171 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not delegate.return_code:
                        require return_data.size >= 32
                        if idx >= ('cd', 132).length:
                            revert with 'NH{q', 50
                        if mem[_171 + 32] != cd[((32 * idx) + cd[132] + 36)]:
            else:
                if 1 > !idx:
                    revert with 'NH{q', 17
                if idx + 1 >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx + 1) + cd[68] + 36)] == address(cd[((32 * idx + 1) + cd[68] + 36)])
                if idx >= ('cd', 36).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                if idx >= ('cd', 100).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
                _97 = mem[64]
                mem[mem[64] + 36] = address(cd[((32 * idx) + cd[68] + 36)])
                mem[mem[64] + 68] = address(cd[((32 * idx + 1) + cd[68] + 36)])
                mem[mem[64] + 100] = address(cd[((32 * idx) + cd[100] + 36)])
                _98 = mem[64]
                mem[mem[64]] = 100
                mem[64] = mem[64] + 132
                mem[_98 + 32] = 0xe9f2d9f700000000000000000000000000000000000000000000000000000000 or mem[_98 + 36 len 28]
                _101 = mem[_98]
                s = 0
                while s < _101:
                    mem[s + _97 + 132] = mem[s + _98 + 32]
                    s = s + 32
                    continue 
                if ceil32(_101) <= _101:
                    delegate address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _101 + _97 + -mem[64] + 128]
                    if not return_data.size:
                        if not delegate.return_code:
                        require mem[96] >= 32
                        if idx >= ('cd', 132).length:
                            revert with 'NH{q', 50
                        if mem[128] != cd[((32 * idx) + cd[132] + 36)]:
                    else:
                        _169 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_169] = return_data.size
                        mem[_169 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not delegate.return_code:
                        require return_data.size >= 32
                        if idx >= ('cd', 132).length:
                            revert with 'NH{q', 50
                        if mem[_169 + 32] != cd[((32 * idx) + cd[132] + 36)]:
                else:
                    mem[_97 + _101 + 132] = 0
                    delegate address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _101 + _97 + -mem[64] + 128]
                    if not return_data.size:
                        if not delegate.return_code:
                        require mem[96] >= 32
                        if idx >= ('cd', 132).length:
                            revert with 'NH{q', 50
                        if mem[128] != cd[((32 * idx) + cd[132] + 36)]:
                    else:
                        _172 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_172] = return_data.size
                        mem[_172 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not delegate.return_code:
                        require return_data.size >= 32
                        if idx >= ('cd', 132).length:
                            revert with 'NH{q', 50
                        if mem[_172 + 32] != cd[((32 * idx) + cd[132] + 36)]:
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if 0 >= ('cd', 68).length:
        revert with 'NH{q', 50
    require ('cd', 68)[0] == address(('cd', 68)[0])
    mem[mem[64] + 4] = this.address
    staticcall address(('cd', 68)[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _85 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _86 = mem[_85]
    idx = 0
    s = cd[4]
    while idx < ('cd', 36).length:
        if idx >= ('cd', 68).length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
        if ('cd', 36).length < 1:
            revert with 'NH{q', 17
        if idx == ('cd', 36).length - 1:
            if 0 >= ('cd', 68).length:
                revert with 'NH{q', 50
            require ('cd', 68)[0] == address(('cd', 68)[0])
            if idx >= ('cd', 36).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            if idx >= ('cd', 100).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
            _193 = mem[64]
            mem[mem[64] + 36] = address(cd[((32 * idx) + cd[68] + 36)])
            mem[mem[64] + 68] = address(('cd', 68)[0])
            mem[mem[64] + 100] = s
            mem[mem[64] + 132] = address(cd[((32 * idx) + cd[100] + 36)])
            _194 = mem[64]
            mem[mem[64]] = 132
            mem[64] = mem[64] + 164
            mem[_194 + 32] = 0x6e81221c00000000000000000000000000000000000000000000000000000000 or mem[_194 + 36 len 28]
            _197 = mem[_194]
            s = 0
            while s < _197:
                mem[s + _193 + 164] = mem[s + _194 + 32]
                s = s + 32
                continue 
            if ceil32(_197) <= _197:
                delegate address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _197 + _193 + -mem[64] + 160]
                if not return_data.size:
                    require delegate.return_code
                    require mem[96] >= 32
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = mem[128]
                    continue 
                _233 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_233] = return_data.size
                mem[_233 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require delegate.return_code
                require return_data.size >= 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = mem[_233 + 32]
                continue 
            mem[_193 + _197 + 164] = 0
            delegate address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _197 + _193 + -mem[64] + 160]
            if not return_data.size:
                require delegate.return_code
                require mem[96] >= 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = mem[128]
                continue 
            _237 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_237] = return_data.size
            mem[_237 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            require delegate.return_code
            require return_data.size >= 32
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = mem[_237 + 32]
            continue 
        if 1 > !idx:
            revert with 'NH{q', 17
        if idx + 1 >= ('cd', 68).length:
            revert with 'NH{q', 50
        require cd[((32 * idx + 1) + cd[68] + 36)] == address(cd[((32 * idx + 1) + cd[68] + 36)])
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        if idx >= ('cd', 100).length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
        _199 = mem[64]
        mem[mem[64] + 36] = address(cd[((32 * idx) + cd[68] + 36)])
        mem[mem[64] + 68] = address(cd[((32 * idx + 1) + cd[68] + 36)])
        mem[mem[64] + 100] = s
        mem[mem[64] + 132] = address(cd[((32 * idx) + cd[100] + 36)])
        _200 = mem[64]
        mem[mem[64]] = 132
        mem[64] = mem[64] + 164
        mem[_200 + 32] = 0x6e81221c00000000000000000000000000000000000000000000000000000000 or mem[_200 + 36 len 28]
        _203 = mem[_200]
        s = 0
        while s < _203:
            mem[s + _199 + 164] = mem[s + _200 + 32]
            s = s + 32
            continue 
        if ceil32(_203) <= _203:
            delegate address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _203 + _199 + -mem[64] + 160]
            if not return_data.size:
                require delegate.return_code
                require mem[96] >= 32
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = mem[128]
                continue 
            _235 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_235] = return_data.size
            mem[_235 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            require delegate.return_code
            require return_data.size >= 32
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = mem[_235 + 32]
            continue 
        mem[_199 + _203 + 164] = 0
        delegate address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _203 + _199 + -mem[64] + 160]
        if not return_data.size:
            require delegate.return_code
            require mem[96] >= 32
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = mem[128]
            continue 
        _238 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_238] = return_data.size
        mem[_238 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require delegate.return_code
        require return_data.size >= 32
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = mem[_238 + 32]
        continue 
    if 0 >= ('cd', 68).length:
        revert with 'NH{q', 50
    require ('cd', 68)[0] == address(('cd', 68)[0])
    mem[mem[64] + 4] = this.address
    staticcall address(('cd', 68)[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _183 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_183] > _86
}



}
