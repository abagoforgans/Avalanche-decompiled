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

function approveToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_9b792a44(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[100] == address(cd[100])
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not ('cd', 4).length:
        revert with 0, 'error'
    if ('cd', 4).length > 256:
        revert with 0, 'error'
    if cd[68] <= 0:
        revert with 0, 'error'
    mem[100] = this.address
    staticcall address(cd[100]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(return_data.size) + 96] = ('cd', 4).length
    mem[64] = ceil32(return_data.size) + (32 * ('cd', 4).length) + 128
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _118 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_118] == mem[_118 + 18 len 14]
            require mem[_118 + 32] == mem[_118 + 50 len 14]
            require mem[_118 + 64] == mem[_118 + 92 len 4]
            if bool(Mask(256, -idx, cd[36]) >> idx) == 1:
                if 0 == idx:
                    if cd[68] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                        revert with 'NH{q', 17
                    if 997 * cd[68] and mem[_118 + 18 len 14] > -1 / 997 * cd[68]:
                        revert with 'NH{q', 17
                    if mem[_118 + 50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 'NH{q', 17
                    if 1000 * mem[_118 + 50 len 14] > !(997 * cd[68]):
                        revert with 'NH{q', 17
                    if not (1000 * mem[_118 + 50 len 14]) + (997 * cd[68]):
                        revert with 'NH{q', 18
                    if idx >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(return_data.size) + 128] = 997 * cd[68] * mem[_118 + 18 len 14] / (1000 * mem[_118 + 50 len 14]) + (997 * cd[68])
                else:
                    if idx < 1:
                        revert with 'NH{q', 17
                    if idx - 1 >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    if mem[(32 * idx - 1) + ceil32(return_data.size) + 128] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                        revert with 'NH{q', 17
                    if 997 * mem[(32 * idx - 1) + ceil32(return_data.size) + 128] and mem[_118 + 18 len 14] > -1 / 997 * mem[(32 * idx - 1) + ceil32(return_data.size) + 128]:
                        revert with 'NH{q', 17
                    if mem[_118 + 50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 'NH{q', 17
                    if 1000 * mem[_118 + 50 len 14] > !(997 * mem[(32 * idx - 1) + ceil32(return_data.size) + 128]):
                        revert with 'NH{q', 17
                    if not (1000 * mem[_118 + 50 len 14]) + (997 * mem[(32 * idx - 1) + ceil32(return_data.size) + 128]):
                        revert with 'NH{q', 18
                    if idx >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(return_data.size) + 128] = 997 * mem[(32 * idx - 1) + ceil32(return_data.size) + 128] * mem[_118 + 18 len 14] / (1000 * mem[_118 + 50 len 14]) + (997 * mem[(32 * idx - 1) + ceil32(return_data.size) + 128])
            else:
                if 0 == idx:
                    if cd[68] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                        revert with 'NH{q', 17
                    if 997 * cd[68] and mem[_118 + 50 len 14] > -1 / 997 * cd[68]:
                        revert with 'NH{q', 17
                    if mem[_118 + 18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 'NH{q', 17
                    if 1000 * mem[_118 + 18 len 14] > !(997 * cd[68]):
                        revert with 'NH{q', 17
                    if not (1000 * mem[_118 + 18 len 14]) + (997 * cd[68]):
                        revert with 'NH{q', 18
                    if idx >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(return_data.size) + 128] = 997 * cd[68] * mem[_118 + 50 len 14] / (1000 * mem[_118 + 18 len 14]) + (997 * cd[68])
                else:
                    if idx < 1:
                        revert with 'NH{q', 17
                    if idx - 1 >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    if mem[(32 * idx - 1) + ceil32(return_data.size) + 128] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                        revert with 'NH{q', 17
                    if 997 * mem[(32 * idx - 1) + ceil32(return_data.size) + 128] and mem[_118 + 50 len 14] > -1 / 997 * mem[(32 * idx - 1) + ceil32(return_data.size) + 128]:
                        revert with 'NH{q', 17
                    if mem[_118 + 18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 'NH{q', 17
                    if 1000 * mem[_118 + 18 len 14] > !(997 * mem[(32 * idx - 1) + ceil32(return_data.size) + 128]):
                        revert with 'NH{q', 17
                    if not (1000 * mem[_118 + 18 len 14]) + (997 * mem[(32 * idx - 1) + ceil32(return_data.size) + 128]):
                        revert with 'NH{q', 18
                    if idx >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(return_data.size) + 128] = 997 * mem[(32 * idx - 1) + ceil32(return_data.size) + 128] * mem[_118 + 50 len 14] / (1000 * mem[_118 + 18 len 14]) + (997 * mem[(32 * idx - 1) + ceil32(return_data.size) + 128])
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if ('cd', 4).length < 1:
            revert with 'NH{q', 17
        if ('cd', 4).length - 1 >= mem[ceil32(return_data.size) + 96]:
            revert with 'NH{q', 50
        if mem[(32 * ('cd', 4).length - 1) + ceil32(return_data.size) + 128] <= cd[68]:
            revert with 0, 'https://i.imgur.com/CpVqmia.png'
        if 0 >= ('cd', 4).length:
            revert with 'NH{q', 50
        require ('cd', 4)[0] == address(('cd', 4)[0])
        mem[mem[64] + 4] = address(('cd', 4)[0])
        mem[mem[64] + 36] = cd[68]
        call address(cd[100]).0xa9059cbb with:
             gas gas_remaining wei
            args address(('cd', 4)[0]), cd[68]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _126 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_126] == bool(mem[_126])
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            if ('cd', 4).length < 1:
                revert with 'NH{q', 17
            if idx == ('cd', 4).length - 1:
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                _224 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                if 1 == bool(Mask(256, -idx, cd[36]) >> idx):
                    _226 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_226 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_226 + 36] = _224
                    mem[_226 + 68] = 0
                    mem[_226 + 100] = this.address
                    mem[_226 + 132] = 128
                    mem[_226 + 164] = mem[_226]
                    s = 0
                    while s < mem[_226]:
                        mem[s + _226 + 196] = mem[s + _226 + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_226]) > mem[_226]:
                        mem[_226 + mem[_226] + 196] = 0
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _224, 0, address(this.address), 128, mem[_226], mem[_226 + 196 len ceil32(mem[_226])]
                else:
                    _227 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_227 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_227 + 36] = 0
                    mem[_227 + 68] = _224
                    mem[_227 + 100] = this.address
                    mem[_227 + 132] = 128
                    mem[_227 + 164] = mem[_227]
                    s = 0
                    while s < mem[_227]:
                        mem[s + _227 + 196] = mem[s + _227 + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_227]) > mem[_227]:
                        mem[_227 + mem[_227] + 196] = 0
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, _224, address(this.address), 128, mem[_227], mem[_227 + 196 len ceil32(mem[_227])]
            else:
                if 1 > !idx:
                    revert with 'NH{q', 17
                if idx + 1 >= ('cd', 4).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx + 1) + cd[4] + 36)] == address(cd[((32 * idx + 1) + cd[4] + 36)])
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                _248 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                if 1 == bool(Mask(256, -idx, cd[36]) >> idx):
                    _250 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_250 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_250 + 36] = _248
                    mem[_250 + 68] = 0
                    mem[_250 + 100] = address(cd[((32 * idx + 1) + cd[4] + 36)])
                    mem[_250 + 132] = 128
                    mem[_250 + 164] = mem[_250]
                    s = 0
                    while s < mem[_250]:
                        mem[s + _250 + 196] = mem[s + _250 + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_250]) > mem[_250]:
                        mem[_250 + mem[_250] + 196] = 0
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    call address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(mem[_250]) + _250 + -mem[64] + 192]
                else:
                    _251 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_251 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_251 + 36] = 0
                    mem[_251 + 68] = _248
                    mem[_251 + 100] = address(cd[((32 * idx + 1) + cd[4] + 36)])
                    mem[_251 + 132] = 128
                    mem[_251 + 164] = mem[_251]
                    s = 0
                    while s < mem[_251]:
                        mem[s + _251 + 196] = mem[s + _251 + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_251]) > mem[_251]:
                        mem[_251 + mem[_251] + 196] = 0
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    call address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(mem[_251]) + _251 + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = this.address
        staticcall address(cd[100]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _214 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_214] <= ext_call.return_data[0]:
            revert with 0, 'no'
    else:
        mem[ceil32(return_data.size) + 128 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _119 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_119] == mem[_119 + 18 len 14]
            require mem[_119 + 32] == mem[_119 + 50 len 14]
            require mem[_119 + 64] == mem[_119 + 92 len 4]
            if bool(Mask(256, -idx, cd[36]) >> idx) == 1:
                if 0 == idx:
                    if cd[68] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                        revert with 'NH{q', 17
                    if 997 * cd[68] and mem[_119 + 18 len 14] > -1 / 997 * cd[68]:
                        revert with 'NH{q', 17
                    if mem[_119 + 50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 'NH{q', 17
                    if 1000 * mem[_119 + 50 len 14] > !(997 * cd[68]):
                        revert with 'NH{q', 17
                    if not (1000 * mem[_119 + 50 len 14]) + (997 * cd[68]):
                        revert with 'NH{q', 18
                    if idx >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(return_data.size) + 128] = 997 * cd[68] * mem[_119 + 18 len 14] / (1000 * mem[_119 + 50 len 14]) + (997 * cd[68])
                else:
                    if idx < 1:
                        revert with 'NH{q', 17
                    if idx - 1 >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    if mem[(32 * idx - 1) + ceil32(return_data.size) + 128] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                        revert with 'NH{q', 17
                    if 997 * mem[(32 * idx - 1) + ceil32(return_data.size) + 128] and mem[_119 + 18 len 14] > -1 / 997 * mem[(32 * idx - 1) + ceil32(return_data.size) + 128]:
                        revert with 'NH{q', 17
                    if mem[_119 + 50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 'NH{q', 17
                    if 1000 * mem[_119 + 50 len 14] > !(997 * mem[(32 * idx - 1) + ceil32(return_data.size) + 128]):
                        revert with 'NH{q', 17
                    if not (1000 * mem[_119 + 50 len 14]) + (997 * mem[(32 * idx - 1) + ceil32(return_data.size) + 128]):
                        revert with 'NH{q', 18
                    if idx >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(return_data.size) + 128] = 997 * mem[(32 * idx - 1) + ceil32(return_data.size) + 128] * mem[_119 + 18 len 14] / (1000 * mem[_119 + 50 len 14]) + (997 * mem[(32 * idx - 1) + ceil32(return_data.size) + 128])
            else:
                if 0 == idx:
                    if cd[68] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                        revert with 'NH{q', 17
                    if 997 * cd[68] and mem[_119 + 50 len 14] > -1 / 997 * cd[68]:
                        revert with 'NH{q', 17
                    if mem[_119 + 18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 'NH{q', 17
                    if 1000 * mem[_119 + 18 len 14] > !(997 * cd[68]):
                        revert with 'NH{q', 17
                    if not (1000 * mem[_119 + 18 len 14]) + (997 * cd[68]):
                        revert with 'NH{q', 18
                    if idx >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(return_data.size) + 128] = 997 * cd[68] * mem[_119 + 50 len 14] / (1000 * mem[_119 + 18 len 14]) + (997 * cd[68])
                else:
                    if idx < 1:
                        revert with 'NH{q', 17
                    if idx - 1 >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    if mem[(32 * idx - 1) + ceil32(return_data.size) + 128] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                        revert with 'NH{q', 17
                    if 997 * mem[(32 * idx - 1) + ceil32(return_data.size) + 128] and mem[_119 + 50 len 14] > -1 / 997 * mem[(32 * idx - 1) + ceil32(return_data.size) + 128]:
                        revert with 'NH{q', 17
                    if mem[_119 + 18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 'NH{q', 17
                    if 1000 * mem[_119 + 18 len 14] > !(997 * mem[(32 * idx - 1) + ceil32(return_data.size) + 128]):
                        revert with 'NH{q', 17
                    if not (1000 * mem[_119 + 18 len 14]) + (997 * mem[(32 * idx - 1) + ceil32(return_data.size) + 128]):
                        revert with 'NH{q', 18
                    if idx >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(return_data.size) + 128] = 997 * mem[(32 * idx - 1) + ceil32(return_data.size) + 128] * mem[_119 + 50 len 14] / (1000 * mem[_119 + 18 len 14]) + (997 * mem[(32 * idx - 1) + ceil32(return_data.size) + 128])
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if ('cd', 4).length < 1:
            revert with 'NH{q', 17
        if ('cd', 4).length - 1 >= mem[ceil32(return_data.size) + 96]:
            revert with 'NH{q', 50
        if mem[(32 * ('cd', 4).length - 1) + ceil32(return_data.size) + 128] <= cd[68]:
            revert with 0, 'https://i.imgur.com/CpVqmia.png'
        if 0 >= ('cd', 4).length:
            revert with 'NH{q', 50
        require ('cd', 4)[0] == address(('cd', 4)[0])
        mem[mem[64] + 4] = address(('cd', 4)[0])
        mem[mem[64] + 36] = cd[68]
        call address(cd[100]).0xa9059cbb with:
             gas gas_remaining wei
            args address(('cd', 4)[0]), cd[68]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _127 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_127] == bool(mem[_127])
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            if ('cd', 4).length < 1:
                revert with 'NH{q', 17
            if idx == ('cd', 4).length - 1:
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                _225 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                if 1 == bool(Mask(256, -idx, cd[36]) >> idx):
                    _228 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_228 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_228 + 36] = _225
                    mem[_228 + 68] = 0
                    mem[_228 + 100] = this.address
                    mem[_228 + 132] = 128
                    mem[_228 + 164] = mem[_228]
                    s = 0
                    while s < mem[_228]:
                        mem[s + _228 + 196] = mem[s + _228 + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_228]) > mem[_228]:
                        mem[_228 + mem[_228] + 196] = 0
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _225, 0, address(this.address), 128, mem[_228], mem[_228 + 196 len ceil32(mem[_228])]
                else:
                    _229 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_229 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_229 + 36] = 0
                    mem[_229 + 68] = _225
                    mem[_229 + 100] = this.address
                    mem[_229 + 132] = 128
                    mem[_229 + 164] = mem[_229]
                    s = 0
                    while s < mem[_229]:
                        mem[s + _229 + 196] = mem[s + _229 + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_229]) > mem[_229]:
                        mem[_229 + mem[_229] + 196] = 0
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, _225, address(this.address), 128, mem[_229], mem[_229 + 196 len ceil32(mem[_229])]
            else:
                if 1 > !idx:
                    revert with 'NH{q', 17
                if idx + 1 >= ('cd', 4).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx + 1) + cd[4] + 36)] == address(cd[((32 * idx + 1) + cd[4] + 36)])
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                _249 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                if 1 == bool(Mask(256, -idx, cd[36]) >> idx):
                    _252 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_252 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_252 + 36] = _249
                    mem[_252 + 68] = 0
                    mem[_252 + 100] = address(cd[((32 * idx + 1) + cd[4] + 36)])
                    mem[_252 + 132] = 128
                    mem[_252 + 164] = mem[_252]
                    s = 0
                    while s < mem[_252]:
                        mem[s + _252 + 196] = mem[s + _252 + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_252]) > mem[_252]:
                        mem[_252 + mem[_252] + 196] = 0
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    call address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(mem[_252]) + _252 + -mem[64] + 192]
                else:
                    _253 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_253 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_253 + 36] = 0
                    mem[_253 + 68] = _249
                    mem[_253 + 100] = address(cd[((32 * idx + 1) + cd[4] + 36)])
                    mem[_253 + 132] = 128
                    mem[_253 + 164] = mem[_253]
                    s = 0
                    while s < mem[_253]:
                        mem[s + _253 + 196] = mem[s + _253 + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_253]) > mem[_253]:
                        mem[_253 + mem[_253] + 196] = 0
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    call address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(mem[_253]) + _253 + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = this.address
        staticcall address(cd[100]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _215 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_215] <= ext_call.return_data[0]:
            revert with 0, 'no'
}



}
