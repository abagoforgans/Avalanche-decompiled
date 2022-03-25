contract main {




// =====================  Runtime code  =====================


address owner;
address wethAddress;
mapping of uint8 stor2;

function isAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor2[arg1])
}

function weth() {
    return wethAddress
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function setAdmin(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Permission denied!'
    stor2[address(arg1)] = uint8(arg2)
}

function sub_fb36294a(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Permission denied!'
    wethAddress = address(arg1)
    owner = address(arg2)
}

function externalCall(address arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if not stor2[address(msg.sender)]:
        revert with 0, 'Permission denied!'
    if msg.value <= 0:
        call arg1 with:
             gas gas_remaining wei
            args arg2[all]
    else:
        call arg1 with:
           value msg.value wei
             gas gas_remaining wei
            args arg2[all]
}

function withdraw(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor2[address(msg.sender)]:
        revert with 0, 'Permission denied!'
    if not arg1:
        call msg.sender with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if arg2:
            mem[196 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg2, mem[196 len 28]
            call arg1.mem[196 len 4] with:
                 gas gas_remaining wei
                args mem[200 len 64]
        else:
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address) << 64, 0
            if 1 != ext_call.success:
                mem[264 len 96] = unknown_0xa9059cbb(?????), msg.sender, 0, mem[264 len 28]
            else:
                mem[264 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], mem[264 len 28]
            call arg1.mem[264 len 4] with:
                 gas gas_remaining wei
                args mem[268 len 64]
}

function sub_30beb204(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (160 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (64 * ('cd', 36).length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = 2
    if not stor2[address(msg.sender)]:
        revert with 0, 'Permission denied!'
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    s = 128
    idx = 0
    while idx < ('cd', 4).length:
        require calldata.size + (-160 * idx) + -cd[4] - 36 >= 160
        _72 = mem[64]
        require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
        mem[64] = mem[64] + 160
        require cd[((160 * idx) + cd[4] + 36)] == address(cd[((160 * idx) + cd[4] + 36)])
        mem[_72] = cd[((160 * idx) + cd[4] + 36)]
        require cd[((160 * idx) + cd[4] + 68)] == address(cd[((160 * idx) + cd[4] + 68)])
        mem[_72 + 32] = cd[((160 * idx) + cd[4] + 68)]
        require cd[((160 * idx) + cd[4] + 100)] == address(cd[((160 * idx) + cd[4] + 100)])
        mem[_72 + 64] = cd[((160 * idx) + cd[4] + 100)]
        require cd[((160 * idx) + cd[4] + 132)] == cd[((160 * idx) + cd[4] + 132)]
        mem[_72 + 96] = cd[((160 * idx) + cd[4] + 132)]
        require cd[((160 * idx) + cd[4] + 164)] == cd[((160 * idx) + cd[4] + 164)]
        mem[_72 + 128] = cd[((160 * idx) + cd[4] + 164)]
        mem[s] = _72
        s = s + 32
        idx = idx + 1
        continue 
    _127 = mem[96]
    idx = 0
    while idx < _127:
        require idx < mem[96]
        if mem[mem[(32 * idx) + 128] + 44 len 20]:
            require idx < mem[96]
            if mem[mem[(32 * idx) + 128] + 12 len 20]:
                require idx < mem[96]
                _138 = mem[mem[(32 * idx) + 128] + 32]
                require idx < mem[96]
                _142 = mem[mem[(32 * idx) + 128]]
                _145 = mem[64]
                mem[mem[64] + 36] = this.address
                mem[mem[64] + 68] = address(_142)
                _159 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_159 + 32] = mem[_159 + 36 len 28] or 0xdd62ed3e00000000000000000000000000000000000000000000000000000000
                staticcall _138.mem[_159 + 32 len 4] with:
                        gas gas_remaining wei
                       args mem[_159 + 36 len mem[_159] - 4]
                mem[0] = ext_call.return_data[0]
                if 1 != ext_call.success:
                    mem[_145 + 136] = address(_142)
                    mem[_145 + 168] = 10000000000 * 10^18
                    mem[_145 + 100] = 68
                    mem[64] = _145 + 200
                    mem[_145 + 132] = address(_142) << 64 or 0x95ea7b300000000000000000000000000000000000000000000000000000000
                    call _138.approve(address rg1, uint256 rg2) with:
                         gas gas_remaining - 34710 wei
                        args address(_142) << 64, 0, 10000000000 * 10^18
                else:
                    if ext_call.return_data[0] < 10000000000 * 10^18:
                        mem[_145 + 136] = address(_142)
                        mem[_145 + 168] = 10000000000 * 10^18
                        mem[_145 + 100] = 68
                        mem[64] = _145 + 200
                        mem[_145 + 132] = address(_142) << 64 or 0x95ea7b300000000000000000000000000000000000000000000000000000000
                        call _138.approve(address rg1, uint256 rg2) with:
                             gas gas_remaining - 34710 wei
                            args address(_142) << 64, 0, 10000000000 * 10^18
        _127 = mem[96]
        idx = idx + 1
        continue 
    _131 = mem[64]
    mem[64] = mem[64] + (32 * ('cd', 36).length) + 32
    mem[_131] = ('cd', 36).length
    s = _131 + 32
    idx = 0
    while idx < ('cd', 36).length:
        require calldata.size + -(64 * idx) + -cd[36] - 36 >= 64
        _192 = mem[64]
        require mem[64] + 64 <= test266151307() and mem[64] + 64 >= mem[64]
        mem[64] = mem[64] + 64
        require cd[((64 * idx) + cd[36] + 36)] == address(cd[((64 * idx) + cd[36] + 36)])
        mem[_192] = cd[((64 * idx) + cd[36] + 36)]
        require cd[((64 * idx) + cd[36] + 68)] == address(cd[((64 * idx) + cd[36] + 68)])
        mem[_192 + 32] = cd[((64 * idx) + cd[36] + 68)]
        mem[s] = _192
        s = s + 32
        idx = idx + 1
        continue 
    _218 = mem[_131]
    idx = 0
    while idx < _218:
        require idx < mem[_131]
        if mem[mem[(32 * idx) + _131 + 32] + 12 len 20]:
            require idx < mem[_131]
            if mem[mem[(32 * idx) + _131 + 32] + 44 len 20]:
                require idx < mem[_131]
                _228 = mem[mem[(32 * idx) + _131 + 32]]
                require idx < mem[_131]
                _231 = mem[mem[(32 * idx) + _131 + 32] + 32]
                _232 = mem[64]
                mem[mem[64] + 36] = this.address
                mem[mem[64] + 68] = address(_231)
                _234 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_234 + 32] = mem[_234 + 36 len 28] or 0xdd62ed3e00000000000000000000000000000000000000000000000000000000
                staticcall _228.mem[_234 + 32 len 4] with:
                        gas gas_remaining wei
                       args mem[_234 + 36 len mem[_234] - 4]
                mem[0] = ext_call.return_data[0]
                if 1 != ext_call.success:
                    mem[_232 + 136] = address(_231)
                    mem[_232 + 168] = 10000000000 * 10^18
                    mem[_232 + 100] = 68
                    mem[64] = _232 + 200
                    mem[_232 + 132] = address(_231) << 64 or 0x95ea7b300000000000000000000000000000000000000000000000000000000
                    call _228.approve(address rg1, uint256 rg2) with:
                         gas gas_remaining - 34710 wei
                        args address(_231) << 64, 0, 10000000000 * 10^18
                else:
                    if ext_call.return_data[0] < 10000000000 * 10^18:
                        mem[_232 + 136] = address(_231)
                        mem[_232 + 168] = 10000000000 * 10^18
                        mem[_232 + 100] = 68
                        mem[64] = _232 + 200
                        mem[_232 + 132] = address(_231) << 64 or 0x95ea7b300000000000000000000000000000000000000000000000000000000
                        call _228.approve(address rg1, uint256 rg2) with:
                             gas gas_remaining - 34710 wei
                            args address(_231) << 64, 0, 10000000000 * 10^18
        _218 = mem[_131]
        idx = idx + 1
        continue 
    return 1
}

function sub_0a9dde0f(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (160 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == cd[36]
    mem[0] = msg.sender
    mem[32] = 2
    if not stor2[address(msg.sender)]:
        revert with 0, 'Permission denied!'
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    s = 128
    idx = 0
    while idx < ('cd', 4).length:
        require calldata.size + (-160 * idx) + -cd[4] - 36 >= 160
        _68 = mem[64]
        require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
        mem[64] = mem[64] + 160
        require cd[((160 * idx) + cd[4] + 36)] == address(cd[((160 * idx) + cd[4] + 36)])
        mem[_68] = cd[((160 * idx) + cd[4] + 36)]
        require cd[((160 * idx) + cd[4] + 68)] == address(cd[((160 * idx) + cd[4] + 68)])
        mem[_68 + 32] = cd[((160 * idx) + cd[4] + 68)]
        require cd[((160 * idx) + cd[4] + 100)] == address(cd[((160 * idx) + cd[4] + 100)])
        mem[_68 + 64] = cd[((160 * idx) + cd[4] + 100)]
        require cd[((160 * idx) + cd[4] + 132)] == cd[((160 * idx) + cd[4] + 132)]
        mem[_68 + 96] = cd[((160 * idx) + cd[4] + 132)]
        require cd[((160 * idx) + cd[4] + 164)] == cd[((160 * idx) + cd[4] + 164)]
        mem[_68 + 128] = cd[((160 * idx) + cd[4] + 164)]
        mem[s] = _68
        s = s + 32
        idx = idx + 1
        continue 
    _121 = mem[96]
    idx = 0
    while idx < _121:
        require idx < mem[96]
        if mem[mem[(32 * idx) + 128] + 44 len 20]:
            require idx < mem[96]
            if mem[mem[(32 * idx) + 128] + 12 len 20]:
                require idx < mem[96]
                _132 = mem[mem[(32 * idx) + 128] + 32]
                require idx < mem[96]
                _136 = mem[mem[(32 * idx) + 128]]
                _137 = mem[64]
                mem[mem[64] + 36] = this.address
                mem[mem[64] + 68] = address(_136)
                _141 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_141 + 32] = mem[_141 + 36 len 28] or 0xdd62ed3e00000000000000000000000000000000000000000000000000000000
                staticcall _132.mem[_141 + 32 len 4] with:
                        gas gas_remaining wei
                       args mem[_141 + 36 len mem[_141] - 4]
                mem[0] = ext_call.return_data[0]
                if 1 != ext_call.success:
                    mem[_137 + 136] = address(_136)
                    mem[_137 + 168] = 10000000000 * 10^18
                    mem[_137 + 100] = 68
                    mem[64] = _137 + 200
                    mem[_137 + 132] = address(_136) << 64 or 0x95ea7b300000000000000000000000000000000000000000000000000000000
                    call _132.approve(address rg1, uint256 rg2) with:
                         gas gas_remaining - 34710 wei
                        args address(_136) << 64, 0, 10000000000 * 10^18
                else:
                    if ext_call.return_data[0] < 10000000000 * 10^18:
                        mem[_137 + 136] = address(_136)
                        mem[_137 + 168] = 10000000000 * 10^18
                        mem[_137 + 100] = 68
                        mem[64] = _137 + 200
                        mem[_137 + 132] = address(_136) << 64 or 0x95ea7b300000000000000000000000000000000000000000000000000000000
                        call _132.approve(address rg1, uint256 rg2) with:
                             gas gas_remaining - 34710 wei
                            args address(_136) << 64, 0, 10000000000 * 10^18
        _121 = mem[96]
        idx = idx + 1
        continue 
    idx = 0
    s = cd[36]
    while idx < ('cd', 4).length:
        _179 = mem[64]
        mem[64] = mem[64] + 160
        mem[_179] = 0
        mem[_179 + 32] = 0
        mem[_179 + 64] = 0
        mem[_179 + 96] = 0
        mem[_179 + 128] = 0
        require calldata.size + (-160 * idx) + -cd[4] - 36 >= 160
        _182 = mem[64]
        require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
        mem[64] = mem[64] + 160
        require cd[((160 * idx) + cd[4] + 36)] == address(cd[((160 * idx) + cd[4] + 36)])
        mem[_182] = cd[((160 * idx) + cd[4] + 36)]
        require cd[((160 * idx) + cd[4] + 68)] == address(cd[((160 * idx) + cd[4] + 68)])
        mem[_182 + 32] = cd[((160 * idx) + cd[4] + 68)]
        require cd[((160 * idx) + cd[4] + 100)] == address(cd[((160 * idx) + cd[4] + 100)])
        mem[_182 + 64] = cd[((160 * idx) + cd[4] + 100)]
        require cd[((160 * idx) + cd[4] + 132)] == cd[((160 * idx) + cd[4] + 132)]
        mem[_182 + 96] = cd[((160 * idx) + cd[4] + 132)]
        require cd[((160 * idx) + cd[4] + 164)] == cd[((160 * idx) + cd[4] + 164)]
        mem[_182 + 128] = cd[((160 * idx) + cd[4] + 164)]
        _184 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        require 0 < mem[_184]
        mem[_184 + 32] = address(cd[((160 * idx) + cd[4] + 68)])
        require 1 < mem[_184]
        mem[_184 + 64] = address(cd[((160 * idx) + cd[4] + 100)])
        mem[_184 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[_184 + 100] = s
        mem[_184 + 132] = 0
        mem[_184 + 164] = 160
        mem[_184 + 260] = mem[_184]
        s = 0
        t = _184 + 32
        u = _184 + 292
        while s < mem[_184]:
            mem[u] = mem[t + 12 len 20]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_184 + 196] = this.address
        mem[_184 + 228] = 525952 * 3600
        require ext_code.size(address(cd[((160 * idx) + cd[4] + 36)]))
        call address(cd[((160 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _184 + (32 * mem[_184]) + -mem[64] + 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _209 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _210 = mem[_209]
        require mem[_209] <= test266151307()
        require _209 + mem[_209] + 31 < _209 + return_data.size
        _211 = mem[_209 + mem[_209]]
        require mem[_209 + mem[_209]] <= test266151307()
        require _209 + ceil32(return_data.size) + (32 * mem[_209 + mem[_209]]) + 32 <= test266151307() and (32 * mem[_209 + mem[_209]]) + 32 >= 0
        mem[64] = _209 + ceil32(return_data.size) + (32 * mem[_209 + mem[_209]]) + 32
        mem[_209 + ceil32(return_data.size)] = _211
        require _210 + (32 * _211) + 32 <= return_data.size
        s = 0
        t = _209 + _210 + 32
        u = _209 + ceil32(return_data.size) + 32
        while s < _211:
            require mem[t] == mem[t]
            mem[u] = mem[t]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        if _211:
            require _211 - 1 < _211
            if mem[(32 * _211 - 1) + _209 + ceil32(return_data.size) + 32]:
                idx = idx + 1
                s = mem[(32 * _211 - 1) + _209 + ceil32(return_data.size) + 32]
                continue 
        return 0
    if s <= cd[36]:
        revert with 0, 'Negative!'
    return s
}

function sub_5c140aaa(?) {
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 128 <= test266151307() and (32 * ('cd', 36).length) + 128 >= 96
    mem[64] = (32 * ('cd', 36).length) + 128
    mem[96] = ('cd', 36).length
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[36] + cd[s] + 67 < calldata.size
        require cd[(cd[36] + cd[s] + 36)] <= test266151307()
        _114 = mem[64]
        require mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32 <= test266151307() and mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32 >= mem[64]
        mem[64] = mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32
        mem[_114] = cd[(cd[36] + cd[s] + 36)]
        require cd[36] + cd[s] + cd[(cd[36] + cd[s] + 36)] + 68 <= calldata.size
        mem[_114 + 32 len cd[(cd[36] + cd[s] + 36)]] = call.data[cd[36] + cd[s] + 68 len cd[(cd[36] + cd[s] + 36)]]
        mem[_114 + cd[(cd[36] + cd[s] + 36)] + 32] = 0
        mem[t] = _114
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] == cd[100]
    require ('cd', 4).length + 1 <= test266151307()
    _115 = mem[64]
    mem[mem[64]] = ('cd', 4).length + 1
    mem[64] = mem[64] + (32 * ('cd', 4).length + 1) + 32
    if not ('cd', 4).length + 1:
        require 0 < mem[_115]
        mem[_115 + 32] = cd[100]
        idx = 0
        s = cd[100]
        while idx < ('cd', 4).length:
            require idx < mem[96]
            _228 = mem[(32 * idx) + 128]
            require idx < ('cd', 68).length
            _232 = mem[64]
            mem[mem[64]] = 32
            mem[64] = mem[64] + 64
            mem[_232 + 32] = call.data[calldata.size]
            if cd[((32 * idx) + cd[68] + 36)] + 32 > mem[_228]:
                mem[_232 + 32] = s
                require idx < ('cd', 4).length
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                staticcall cd[((32 * idx) + cd[4] + 36)] with:
                     funct Mask(32, 224, s) >> 224
                        gas gas_remaining wei
                       args mem[_232 + 36 len mem[_232] - 4]
                mem[0] = ext_call.return_data[0]
                if 1 != ext_call.success:
                    mem[_232 + 64] = 0
                    mem[_232 + 96] = 64
                    if not ext_call.success:
                        _282 = mem[_115]
                        mem[_232 + 128] = mem[_115]
                        idx = 0
                        s = _115 + 32
                        t = _232 + 160
                        while idx < _282:
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        return memory
                          from mem[64]
                           len _232 + (32 * _282) + -mem[64] + 160
                    _287 = mem[_115]
                    mem[_232 + 128] = mem[_115]
                    idx = 0
                    s = _115 + 32
                    t = _232 + 160
                    while idx < _287:
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _232 + (32 * _287) + -mem[64] + 160
                if not ext_call.success:
                    mem[_232 + 64] = 0
                    mem[_232 + 96] = 64
                    _288 = mem[_115]
                    mem[_232 + 128] = mem[_115]
                    idx = 0
                    s = _115 + 32
                    t = _232 + 160
                    while idx < _288:
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _232 + (32 * _288) + -mem[64] + 160
                if ext_call.return_data[0]:
                    require idx + 1 < mem[_115]
                    mem[(32 * idx + 1) + _115 + 32] = ext_call.return_data[0]
                    idx = idx + 1
                    s = ext_call.return_data[0]
                    continue 
                mem[_232 + 64] = 0
                mem[_232 + 96] = 64
                _292 = mem[_115]
                mem[_232 + 128] = mem[_115]
                idx = 0
                s = _115 + 32
                t = _232 + 160
                while idx < _292:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _232 + (32 * _292) + -mem[64] + 160
            _236 = mem[_228]
            mem[_232 + 64] = cd[((32 * idx) + cd[68] + 36)]
            t = _228 + 32
            u = _232 + 96
            while u < _232 + cd[((32 * idx) + cd[68] + 36)] + 96:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                continue 
            mem[_232 + 32] = s
            mem[_232 + 64] = mem[_232 + 64] + 32
            s = _232 + 32
            t = _232 + cd[((32 * idx) + cd[68] + 36)] + 96
            while t < _232 + cd[((32 * idx) + cd[68] + 36)] + 128:
                mem[t] = mem[s]
                s = s + 32
                t = t + 32
                continue 
            mem[_232 + 64] = _236 + -cd[((32 * idx) + cd[68] + 36)] + mem[_232 + 64] - 32
            t = _228 + cd[((32 * idx) + cd[68] + 36)] + 64
            s = _232 + cd[((32 * idx) + cd[68] + 36)] + 128
            while s < _232 + _236 + 96:
                mem[s] = mem[t]
                t = t + 32
                s = s + 32
                continue 
            mem[64] = floor32(_232 + _236 + not _236 + -cd[((32 * idx) + cd[68] + 36)] + mem[_228] - 32 + 31) + 3
            require idx < ('cd', 4).length
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            staticcall cd[((32 * idx) + cd[4] + 36)].mem[_232 + 96 len 4] with:
                    gas gas_remaining wei
                   args mem[_232 + 100 len mem[_232 + 64] - 4]
            mem[0] = ext_call.return_data[0]
            if 1 != ext_call.success:
                if not ext_call.success:
                    _460 = mem[64]
                    mem[mem[64]] = 0
                    mem[mem[64] + 32] = 64
                    _468 = mem[_115]
                    mem[mem[64] + 64] = mem[_115]
                    idx = 0
                    s = _115 + 32
                    t = mem[64] + 96
                    while idx < _468:
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _460 + (32 * _468) + -mem[64] + 96
                _462 = mem[64]
                mem[mem[64]] = 0
                mem[mem[64] + 32] = 64
                _470 = mem[_115]
                mem[mem[64] + 64] = mem[_115]
                idx = 0
                s = _115 + 32
                t = mem[64] + 96
                while idx < _470:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _462 + (32 * _470) + -mem[64] + 96
            if not ext_call.success:
                _463 = mem[64]
                mem[mem[64]] = 0
                mem[mem[64] + 32] = 64
                _471 = mem[_115]
                mem[mem[64] + 64] = mem[_115]
                idx = 0
                s = _115 + 32
                t = mem[64] + 96
                while idx < _471:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _463 + (32 * _471) + -mem[64] + 96
            if ext_call.return_data[0]:
                require idx + 1 < mem[_115]
                mem[(32 * idx + 1) + _115 + 32] = ext_call.return_data[0]
                idx = idx + 1
                s = ext_call.return_data[0]
                continue 
            _466 = mem[64]
            mem[mem[64]] = 0
            mem[mem[64] + 32] = 64
            _474 = mem[_115]
            mem[mem[64] + 64] = mem[_115]
            idx = 0
            s = _115 + 32
            t = mem[64] + 96
            while idx < _474:
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _466 + (32 * _474) + -mem[64] + 96
        mem[mem[64]] = s
        mem[mem[64] + 32] = 64
        _244 = mem[_115]
        mem[mem[64] + 64] = mem[_115]
        mem[mem[64] + 96 len 32 * _244] = mem[_115 + 32 len 32 * _244]
        return s, 64, mem[mem[64] + 64 len (32 * _244) + 32]
    mem[_115 + 32 len 32 * ('cd', 4).length + 1] = call.data[calldata.size len 32 * ('cd', 4).length + 1]
    require 0 < mem[_115]
    mem[_115 + 32] = cd[100]
    idx = 0
    s = cd[100]
    while idx < ('cd', 4).length:
        require idx < mem[96]
        _229 = mem[(32 * idx) + 128]
        require idx < ('cd', 68).length
        _233 = mem[64]
        mem[mem[64]] = 32
        mem[64] = mem[64] + 64
        mem[_233 + 32] = call.data[calldata.size]
        if cd[((32 * idx) + cd[68] + 36)] + 32 > mem[_229]:
            mem[_233 + 32] = s
            require idx < ('cd', 4).length
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            staticcall cd[((32 * idx) + cd[4] + 36)] with:
                 funct Mask(32, 224, s) >> 224
                    gas gas_remaining wei
                   args mem[_233 + 36 len mem[_233] - 4]
            mem[0] = ext_call.return_data[0]
            if 1 != ext_call.success:
                mem[_233 + 64] = 0
                mem[_233 + 96] = 64
                if not ext_call.success:
                    _285 = mem[_115]
                    mem[_233 + 128] = mem[_115]
                    idx = 0
                    s = _115 + 32
                    t = _233 + 160
                    while idx < _285:
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _233 + (32 * _285) + -mem[64] + 160
                _290 = mem[_115]
                mem[_233 + 128] = mem[_115]
                idx = 0
                s = _115 + 32
                t = _233 + 160
                while idx < _290:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _233 + (32 * _290) + -mem[64] + 160
            if not ext_call.success:
                mem[_233 + 64] = 0
                mem[_233 + 96] = 64
                _291 = mem[_115]
                mem[_233 + 128] = mem[_115]
                idx = 0
                s = _115 + 32
                t = _233 + 160
                while idx < _291:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _233 + (32 * _291) + -mem[64] + 160
            if ext_call.return_data[0]:
                require idx + 1 < mem[_115]
                mem[(32 * idx + 1) + _115 + 32] = ext_call.return_data[0]
                idx = idx + 1
                s = ext_call.return_data[0]
                continue 
            mem[_233 + 64] = 0
            mem[_233 + 96] = 64
            _293 = mem[_115]
            mem[_233 + 128] = mem[_115]
            idx = 0
            s = _115 + 32
            t = _233 + 160
            while idx < _293:
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _233 + (32 * _293) + -mem[64] + 160
        _238 = mem[_229]
        mem[_233 + 64] = cd[((32 * idx) + cd[68] + 36)]
        t = _229 + 32
        u = _233 + 96
        while u < _233 + cd[((32 * idx) + cd[68] + 36)] + 96:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            continue 
        mem[_233 + 32] = s
        mem[_233 + 64] = mem[_233 + 64] + 32
        s = _233 + 32
        t = _233 + cd[((32 * idx) + cd[68] + 36)] + 96
        while t < _233 + cd[((32 * idx) + cd[68] + 36)] + 128:
            mem[t] = mem[s]
            s = s + 32
            t = t + 32
            continue 
        mem[_233 + 64] = _238 + -cd[((32 * idx) + cd[68] + 36)] + mem[_233 + 64] - 32
        t = _229 + cd[((32 * idx) + cd[68] + 36)] + 64
        s = _233 + cd[((32 * idx) + cd[68] + 36)] + 128
        while s < _233 + _238 + 96:
            mem[s] = mem[t]
            t = t + 32
            s = s + 32
            continue 
        mem[64] = floor32(_233 + _238 + not _238 + -cd[((32 * idx) + cd[68] + 36)] + mem[_229] - 32 + 31) + 3
        require idx < ('cd', 4).length
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        staticcall cd[((32 * idx) + cd[4] + 36)].mem[_233 + 96 len 4] with:
                gas gas_remaining wei
               args mem[_233 + 100 len mem[_233 + 64] - 4]
        mem[0] = ext_call.return_data[0]
        if 1 != ext_call.success:
            if not ext_call.success:
                _461 = mem[64]
                mem[mem[64]] = 0
                mem[mem[64] + 32] = 64
                _469 = mem[_115]
                mem[mem[64] + 64] = mem[_115]
                idx = 0
                s = _115 + 32
                t = mem[64] + 96
                while idx < _469:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _461 + (32 * _469) + -mem[64] + 96
            _464 = mem[64]
            mem[mem[64]] = 0
            mem[mem[64] + 32] = 64
            _472 = mem[_115]
            mem[mem[64] + 64] = mem[_115]
            idx = 0
            s = _115 + 32
            t = mem[64] + 96
            while idx < _472:
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _464 + (32 * _472) + -mem[64] + 96
        if not ext_call.success:
            _465 = mem[64]
            mem[mem[64]] = 0
            mem[mem[64] + 32] = 64
            _473 = mem[_115]
            mem[mem[64] + 64] = mem[_115]
            idx = 0
            s = _115 + 32
            t = mem[64] + 96
            while idx < _473:
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _465 + (32 * _473) + -mem[64] + 96
        if ext_call.return_data[0]:
            require idx + 1 < mem[_115]
            mem[(32 * idx + 1) + _115 + 32] = ext_call.return_data[0]
            idx = idx + 1
            s = ext_call.return_data[0]
            continue 
        _467 = mem[64]
        mem[mem[64]] = 0
        mem[mem[64] + 32] = 64
        _475 = mem[_115]
        mem[mem[64] + 64] = mem[_115]
        idx = 0
        s = _115 + 32
        t = mem[64] + 96
        while idx < _475:
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _467 + (32 * _475) + -mem[64] + 96
    mem[mem[64]] = s
    mem[mem[64] + 32] = 64
    _245 = mem[_115]
    mem[mem[64] + 64] = mem[_115]
    mem[mem[64] + 96 len 32 * _245] = mem[_115 + 32 len 32 * _245]
    return s, 64, mem[mem[64] + 64 len (32 * _245) + 32]
}

function sub_c8ee00be(?) payable {
    require calldata.size - 4 >= 160
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (160 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (64 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require (32 * ('cd', 68).length) + 128 <= test266151307() and (32 * ('cd', 68).length) + 128 >= 96
    mem[64] = (32 * ('cd', 68).length) + 128
    mem[96] = ('cd', 68).length
    idx = 0
    s = cd[68] + 36
    t = 128
    while idx < ('cd', 68).length:
        require cd[68] + cd[s] + 67 < calldata.size
        require cd[(cd[68] + cd[s] + 36)] <= test266151307()
        _734 = mem[64]
        require mem[64] + ceil32(cd[(cd[68] + cd[s] + 36)]) + 32 <= test266151307() and mem[64] + ceil32(cd[(cd[68] + cd[s] + 36)]) + 32 >= mem[64]
        mem[64] = mem[64] + ceil32(cd[(cd[68] + cd[s] + 36)]) + 32
        mem[_734] = cd[(cd[68] + cd[s] + 36)]
        require cd[68] + cd[s] + cd[(cd[68] + cd[s] + 36)] + 68 <= calldata.size
        mem[_734 + 32 len cd[(cd[68] + cd[s] + 36)]] = call.data[cd[68] + cd[s] + 68 len cd[(cd[68] + cd[s] + 36)]]
        mem[_734 + cd[(cd[68] + cd[s] + 36)] + 32] = 0
        mem[t] = _734
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] == cd[100]
    require cd[132] == bool(cd[132])
    mem[0] = msg.sender
    mem[32] = 2
    if not stor2[address(msg.sender)]:
        revert with 0, 'Permission denied!'
    _736 = mem[64]
    mem[64] = mem[64] + (32 * ('cd', 4).length) + 32
    mem[_736] = ('cd', 4).length
    s = _736 + 32
    idx = 0
    while idx < ('cd', 4).length:
        require calldata.size + (-160 * idx) + -cd[4] - 36 >= 160
        _1472 = mem[64]
        require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
        mem[64] = mem[64] + 160
        require cd[((160 * idx) + cd[4] + 36)] == address(cd[((160 * idx) + cd[4] + 36)])
        mem[_1472] = cd[((160 * idx) + cd[4] + 36)]
        require cd[((160 * idx) + cd[4] + 68)] == address(cd[((160 * idx) + cd[4] + 68)])
        mem[_1472 + 32] = cd[((160 * idx) + cd[4] + 68)]
        require cd[((160 * idx) + cd[4] + 100)] == address(cd[((160 * idx) + cd[4] + 100)])
        mem[_1472 + 64] = cd[((160 * idx) + cd[4] + 100)]
        require cd[((160 * idx) + cd[4] + 132)] == cd[((160 * idx) + cd[4] + 132)]
        mem[_1472 + 96] = cd[((160 * idx) + cd[4] + 132)]
        require cd[((160 * idx) + cd[4] + 164)] == cd[((160 * idx) + cd[4] + 164)]
        mem[_1472 + 128] = cd[((160 * idx) + cd[4] + 164)]
        mem[s] = _1472
        s = s + 32
        idx = idx + 1
        continue 
    _2193 = mem[_736]
    idx = 0
    while idx < _2193:
        require idx < mem[_736]
        if mem[mem[(32 * idx) + _736 + 32] + 44 len 20]:
            require idx < mem[_736]
            if mem[mem[(32 * idx) + _736 + 32] + 12 len 20]:
                require idx < mem[_736]
                _2204 = mem[mem[(32 * idx) + _736 + 32] + 32]
                require idx < mem[_736]
                _2208 = mem[mem[(32 * idx) + _736 + 32]]
                _2211 = mem[64]
                mem[mem[64] + 36] = this.address
                mem[mem[64] + 68] = address(_2208)
                _2232 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_2232 + 32] = mem[_2232 + 36 len 28] or 0xdd62ed3e00000000000000000000000000000000000000000000000000000000
                staticcall _2204.mem[_2232 + 32 len 4] with:
                        gas gas_remaining wei
                       args mem[_2232 + 36 len mem[_2232] - 4]
                mem[0] = ext_call.return_data[0]
                if 1 != ext_call.success:
                    mem[_2211 + 136] = address(_2208)
                    mem[_2211 + 168] = 10000000000 * 10^18
                    mem[_2211 + 100] = 68
                    mem[64] = _2211 + 200
                    mem[_2211 + 132] = address(_2208) << 64 or 0x95ea7b300000000000000000000000000000000000000000000000000000000
                    call _2204.approve(address rg1, uint256 rg2) with:
                         gas gas_remaining - 34710 wei
                        args address(_2208) << 64, 0, 10000000000 * 10^18
                else:
                    if ext_call.return_data[0] < 10000000000 * 10^18:
                        mem[_2211 + 136] = address(_2208)
                        mem[_2211 + 168] = 10000000000 * 10^18
                        mem[_2211 + 100] = 68
                        mem[64] = _2211 + 200
                        mem[_2211 + 132] = address(_2208) << 64 or 0x95ea7b300000000000000000000000000000000000000000000000000000000
                        call _2204.approve(address rg1, uint256 rg2) with:
                             gas gas_remaining - 34710 wei
                            args address(_2208) << 64, 0, 10000000000 * 10^18
        _2193 = mem[_736]
        idx = idx + 1
        continue 
    _2197 = mem[64]
    mem[64] = mem[64] + (32 * ('cd', 36).length) + 32
    mem[_2197] = ('cd', 36).length
    s = _2197 + 32
    idx = 0
    while idx < ('cd', 36).length:
        require calldata.size + -(64 * idx) + -cd[36] - 36 >= 64
        _2925 = mem[64]
        require mem[64] + 64 <= test266151307() and mem[64] + 64 >= mem[64]
        mem[64] = mem[64] + 64
        require cd[((64 * idx) + cd[36] + 36)] == address(cd[((64 * idx) + cd[36] + 36)])
        mem[_2925] = cd[((64 * idx) + cd[36] + 36)]
        require cd[((64 * idx) + cd[36] + 68)] == address(cd[((64 * idx) + cd[36] + 68)])
        mem[_2925 + 32] = cd[((64 * idx) + cd[36] + 68)]
        mem[s] = _2925
        s = s + 32
        idx = idx + 1
        continue 
    _3616 = mem[_2197]
    idx = 0
    while idx < _3616:
        require idx < mem[_2197]
        if mem[mem[(32 * idx) + _2197 + 32] + 12 len 20]:
            require idx < mem[_2197]
            if mem[mem[(32 * idx) + _2197 + 32] + 44 len 20]:
                require idx < mem[_2197]
                _3629 = mem[mem[(32 * idx) + _2197 + 32]]
                require idx < mem[_2197]
                _3633 = mem[mem[(32 * idx) + _2197 + 32] + 32]
                _3634 = mem[64]
                mem[mem[64] + 36] = this.address
                mem[mem[64] + 68] = address(_3633)
                _3648 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_3648 + 32] = mem[_3648 + 36 len 28] or 0xdd62ed3e00000000000000000000000000000000000000000000000000000000
                staticcall _3629.mem[_3648 + 32 len 4] with:
                        gas gas_remaining wei
                       args mem[_3648 + 36 len mem[_3648] - 4]
                mem[0] = ext_call.return_data[0]
                if 1 != ext_call.success:
                    mem[_3634 + 136] = address(_3633)
                    mem[_3634 + 168] = 10000000000 * 10^18
                    mem[_3634 + 100] = 68
                    mem[64] = _3634 + 200
                    mem[_3634 + 132] = address(_3633) << 64 or 0x95ea7b300000000000000000000000000000000000000000000000000000000
                    call _3629.approve(address rg1, uint256 rg2) with:
                         gas gas_remaining - 34710 wei
                        args address(_3633) << 64, 0, 10000000000 * 10^18
                else:
                    if ext_call.return_data[0] < 10000000000 * 10^18:
                        mem[_3634 + 136] = address(_3633)
                        mem[_3634 + 168] = 10000000000 * 10^18
                        mem[_3634 + 100] = 68
                        mem[64] = _3634 + 200
                        mem[_3634 + 132] = address(_3633) << 64 or 0x95ea7b300000000000000000000000000000000000000000000000000000000
                        call _3629.approve(address rg1, uint256 rg2) with:
                             gas gas_remaining - 34710 wei
                            args address(_3633) << 64, 0, 10000000000 * 10^18
        _3616 = mem[_2197]
        idx = idx + 1
        continue 
    _3620 = mem[64]
    mem[64] = mem[64] + (32 * ('cd', 4).length) + 32
    mem[_3620] = ('cd', 4).length
    s = _3620 + 32
    idx = 0
    while idx < ('cd', 4).length:
        require calldata.size + (-160 * idx) + -cd[4] - 36 >= 160
        _4316 = mem[64]
        require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
        mem[64] = mem[64] + 160
        require cd[((160 * idx) + cd[4] + 36)] == address(cd[((160 * idx) + cd[4] + 36)])
        mem[_4316] = cd[((160 * idx) + cd[4] + 36)]
        require cd[((160 * idx) + cd[4] + 68)] == address(cd[((160 * idx) + cd[4] + 68)])
        mem[_4316 + 32] = cd[((160 * idx) + cd[4] + 68)]
        require cd[((160 * idx) + cd[4] + 100)] == address(cd[((160 * idx) + cd[4] + 100)])
        mem[_4316 + 64] = cd[((160 * idx) + cd[4] + 100)]
        require cd[((160 * idx) + cd[4] + 132)] == cd[((160 * idx) + cd[4] + 132)]
        mem[_4316 + 96] = cd[((160 * idx) + cd[4] + 132)]
        require cd[((160 * idx) + cd[4] + 164)] == cd[((160 * idx) + cd[4] + 164)]
        mem[_4316 + 128] = cd[((160 * idx) + cd[4] + 164)]
        mem[s] = _4316
        s = s + 32
        idx = idx + 1
        continue 
    require 0 < mem[_3620]
    _4314 = mem[mem[_3620 + 32] + 32]
    mem[mem[64] + 36] = this.address
    _4317 = mem[64]
    mem[mem[64]] = 36
    mem[64] = mem[64] + 68
    mem[_4317 + 32 len 4] = unknown_0x70a08231(?????)
    staticcall _4314.0x70a08231 with:
            gas gas_remaining wei
           args mem[_4317 + 36 len mem[_4317] - 4]
    mem[0] = ext_call.return_data[0]
    if 1 != ext_call.success:
        _4979 = mem[_3620]
        s = 0
        s = cd[100]
        while _3620 + (32 * ('cd', 4).length) + 32 < _4979:
            _4981 = mem[64]
            mem[64] = mem[64] + 160
            mem[_4981] = 0
            mem[_4981 + 32] = 0
            mem[_4981 + 64] = 0
            mem[_4981 + 96] = 0
            mem[_4981 + 128] = 0
            require _3620 + (32 * ('cd', 4).length) + 32 < mem[_3620]
            _4985 = mem[(32 * _3620 + (32 * ('cd', 4).length) + 32) + _3620 + 32]
            require _3620 + (32 * ('cd', 4).length) + 32 < mem[96]
            _4989 = mem[(32 * _3620 + (32 * ('cd', 4).length) + 32) + 128]
            _4990 = mem[mem[(32 * _3620 + (32 * ('cd', 4).length) + 32) + _3620 + 32] + 128]
            _4996 = mem[64]
            mem[mem[64]] = 32
            mem[64] = mem[64] + 64
            mem[_4996 + 32] = call.data[calldata.size]
            if _4990 + 32 > mem[_4989]:
                mem[_4996 + 32] = ('cd', 4).length
                if mem[_4985 + 96] <= 0:
                    call mem[_4985] with:
                       funct Mask(32, 224, ('cd', 4).length) >> 224
                         gas gas_remaining - 34710 wei
                        args mem[_4996 + 36 len mem[_4996] - 4]
                    if not ext_call.success:
                        if cd[132]:
                            if 0 <= cd[100] + ((105000 * block.gasprice) + (5 * 16 * calldata.size * block.gasprice) / 8):
                                revert with 0, 'Negative!'
                        else:
                            if 0 <= cd[100] + (21000 * block.gasprice) + (16 * calldata.size * block.gasprice):
                                revert with 0, 'Negative!'
                        if msg.value > 0:
                            call wethAddress.0x2e1a7d4d with:
                                 gas gas_remaining - 34710 wei
                                args msg.value
                            call msg.sender with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                return 0
                        else:
                            return 0
                    _5081 = mem[_4985 + 64]
                    mem[_4996 + 100] = this.address
                    mem[_4996 + 64] = 36
                    mem[64] = _4996 + 132
                    mem[_4996 + 96] = address(this.address) << 64 or 0x70a0823100000000000000000000000000000000000000000000000000000000
                    staticcall _5081.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address) << 64, 0
                else:
                    if mem[_4985 + 96] >= ('cd', 4).length:
                        call mem[_4985] with:
                           funct Mask(32, 224, ('cd', 4).length) >> 224
                           value ('cd', 4).length wei
                             gas gas_remaining - 34710 wei
                            args mem[_4996 + 36 len mem[_4996] - 4]
                        if not ext_call.success:
                            if cd[132]:
                                if 0 <= cd[100] + ((105000 * block.gasprice) + (5 * 16 * calldata.size * block.gasprice) / 8):
                                    revert with 0, 'Negative!'
                            else:
                                if 0 <= cd[100] + (21000 * block.gasprice) + (16 * calldata.size * block.gasprice):
                                    revert with 0, 'Negative!'
                            if msg.value > 0:
                                call wethAddress.0x2e1a7d4d with:
                                     gas gas_remaining - 34710 wei
                                    args msg.value
                                call msg.sender with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    return 0
                            else:
                                return 0
                        _5088 = mem[_4985 + 64]
                        mem[_4996 + 100] = this.address
                        mem[_4996 + 64] = 36
                        mem[64] = _4996 + 132
                        mem[_4996 + 96] = address(this.address) << 64 or 0x70a0823100000000000000000000000000000000000000000000000000000000
                        staticcall _5088.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address) << 64, 0
                    else:
                        call mem[_4985] with:
                           funct Mask(32, 224, ('cd', 4).length) >> 224
                             gas gas_remaining - 34710 wei
                            args mem[_4996 + 36 len mem[_4996] - 4]
                        if not ext_call.success:
                            if cd[132]:
                                if 0 <= cd[100] + ((105000 * block.gasprice) + (5 * 16 * calldata.size * block.gasprice) / 8):
                                    revert with 0, 'Negative!'
                            else:
                                if 0 <= cd[100] + (21000 * block.gasprice) + (16 * calldata.size * block.gasprice):
                                    revert with 0, 'Negative!'
                            if msg.value > 0:
                                call wethAddress.0x2e1a7d4d with:
                                     gas gas_remaining - 34710 wei
                                    args msg.value
                                call msg.sender with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    return 0
                            else:
                                return 0
                        _5089 = mem[_4985 + 64]
                        mem[_4996 + 100] = this.address
                        mem[_4996 + 64] = 36
                        mem[64] = _4996 + 132
                        mem[_4996 + 96] = address(this.address) << 64 or 0x70a0823100000000000000000000000000000000000000000000000000000000
                        staticcall _5089.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address) << 64, 0
                mem[0] = ext_call.return_data[0]
                if 1 != ext_call.success:
                    if not mem[_4985 + 76 len 20]:
                        mem[_4996 + 132] = 4
                        mem[64] = _4996 + 168
                        mem[_4996 + 164] = mem[_4996 + 168 len 28] or 0xd0e30db000000000000000000000000000000000000000000000000000000000
                        call wethAddress.mem[_4996 + 164 len 4] with:
                             gas gas_remaining - 34710 wei
                    _4979 = mem[_3620]
                    s = _3620 + (32 * ('cd', 4).length) + 33
                    s = 0
                    continue 
                if not mem[_4985 + 76 len 20]:
                    mem[_4996 + 132] = 4
                    mem[64] = _4996 + 168
                    mem[_4996 + 164] = mem[_4996 + 168 len 28] or 0xd0e30db000000000000000000000000000000000000000000000000000000000
                    call wethAddress.mem[_4996 + 164 len 4] with:
                       value ext_call.return_data[0] wei
                         gas gas_remaining - 34710 wei
            else:
                _5009 = mem[_4989]
                mem[_4996 + 64] = _4990
                s = _4989 + 32
                idx = _4996 + 96
                while idx < _4996 + _4990 + 96:
                    mem[idx] = mem[s]
                    _4979 = mem[_3620]
                    s = s + 32
                    idx = idx + 32
                    continue 
                mem[_4996 + 32] = ('cd', 4).length
                mem[_4996 + 64] = _4990 + 32
                s = _4996 + 32
                idx = _4996 + _4990 + 96
                while idx < _4996 + _4990 + 128:
                    mem[idx] = mem[s]
                    _4979 = mem[_3620]
                    s = s + 32
                    idx = idx + 32
                    continue 
                mem[_4996 + 64] = _5009
                s = _4989 + _4990 + 64
                idx = _4996 + _4990 + 128
                while idx < _4996 + _5009 + 96:
                    mem[idx] = mem[s]
                    _4979 = mem[_3620]
                    s = s + 32
                    idx = idx + 32
                    continue 
                mem[64] = floor32(_4996 + _5009 + not _5009 + -_4990 + mem[_4989] - 32 + 31) + 3
                if mem[_4985 + 96] <= 0:
                    call mem[_4985].mem[_4996 + 96 len 4] with:
                         gas gas_remaining - 34710 wei
                        args mem[_4996 + 100 len _5009 - 4]
                    if not ext_call.success:
                        if cd[132]:
                            if 0 <= cd[100] + ((105000 * block.gasprice) + (5 * 16 * calldata.size * block.gasprice) / 8):
                                revert with 0, 'Negative!'
                            if msg.value > 0:
                                mem[mem[64] + 36] = msg.value
                                _6377 = mem[64]
                                mem[mem[64]] = 36
                                mem[64] = mem[64] + 68
                                mem[_6377 + 32] = mem[_6377 + 36 len 28] or 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                call wethAddress.mem[_6377 + 32 len 4] with:
                                     gas gas_remaining - 34710 wei
                                    args mem[_6377 + 36 len mem[_6377] - 4]
                                call msg.sender with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if 0 <= cd[100] + (21000 * block.gasprice) + (16 * calldata.size * block.gasprice):
                                revert with 0, 'Negative!'
                            if msg.value > 0:
                                mem[mem[64] + 36] = msg.value
                                _6349 = mem[64]
                                mem[mem[64]] = 36
                                mem[64] = mem[64] + 68
                                mem[_6349 + 32] = mem[_6349 + 36 len 28] or 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                call wethAddress.mem[_6349 + 32 len 4] with:
                                     gas gas_remaining - 34710 wei
                                    args mem[_6349 + 36 len mem[_6349] - 4]
                                call msg.sender with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        return 0
                    _6255 = mem[_4985 + 64]
                    _6257 = mem[64]
                    mem[mem[64] + 36] = this.address
                    _6295 = mem[64]
                    mem[mem[64]] = 36
                    mem[64] = mem[64] + 68
                    mem[_6295 + 32] = mem[_6295 + 36 len 28] or 0x70a0823100000000000000000000000000000000000000000000000000000000
                    staticcall _6255.mem[_6295 + 32 len 4] with:
                            gas gas_remaining wei
                           args mem[_6295 + 36 len mem[_6295] - 4]
                    mem[0] = ext_call.return_data[0]
                    if 1 != ext_call.success:
                        if not mem[_4985 + 76 len 20]:
                            mem[_6257 + 68] = 4
                            mem[64] = _6257 + 104
                            mem[_6257 + 100] = mem[_6257 + 104 len 28] or 0xd0e30db000000000000000000000000000000000000000000000000000000000
                            call wethAddress.mem[_6257 + 100 len 4] with:
                                 gas gas_remaining - 34710 wei
                        _4979 = mem[_3620]
                        s = _3620 + (32 * ('cd', 4).length) + 33
                        s = 0
                        continue 
                    if not mem[_4985 + 76 len 20]:
                        mem[_6257 + 68] = 4
                        mem[64] = _6257 + 104
                        mem[_6257 + 100] = mem[_6257 + 104 len 28] or 0xd0e30db000000000000000000000000000000000000000000000000000000000
                        call wethAddress.mem[_6257 + 100 len 4] with:
                           value ext_call.return_data[0] wei
                             gas gas_remaining - 34710 wei
                else:
                    if mem[_4985 + 96] >= ('cd', 4).length:
                        call mem[_4985].mem[_4996 + 96 len 4] with:
                           value ('cd', 4).length wei
                             gas gas_remaining - 34710 wei
                            args mem[_4996 + 100 len _5009 - 4]
                        if not ext_call.success:
                            if cd[132]:
                                if 0 <= cd[100] + ((105000 * block.gasprice) + (5 * 16 * calldata.size * block.gasprice) / 8):
                                    revert with 0, 'Negative!'
                                if msg.value > 0:
                                    mem[mem[64] + 36] = msg.value
                                    _6443 = mem[64]
                                    mem[mem[64]] = 36
                                    mem[64] = mem[64] + 68
                                    mem[_6443 + 32] = mem[_6443 + 36 len 28] or 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                    call wethAddress.mem[_6443 + 32 len 4] with:
                                         gas gas_remaining - 34710 wei
                                        args mem[_6443 + 36 len mem[_6443] - 4]
                                    call msg.sender with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if 0 <= cd[100] + (21000 * block.gasprice) + (16 * calldata.size * block.gasprice):
                                    revert with 0, 'Negative!'
                                if msg.value > 0:
                                    mem[mem[64] + 36] = msg.value
                                    _6389 = mem[64]
                                    mem[mem[64]] = 36
                                    mem[64] = mem[64] + 68
                                    mem[_6389 + 32] = mem[_6389 + 36 len 28] or 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                    call wethAddress.mem[_6389 + 32 len 4] with:
                                         gas gas_remaining - 34710 wei
                                        args mem[_6389 + 36 len mem[_6389] - 4]
                                    call msg.sender with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            return 0
                        _6258 = mem[_4985 + 64]
                        _6263 = mem[64]
                        mem[mem[64] + 36] = this.address
                        _6310 = mem[64]
                        mem[mem[64]] = 36
                        mem[64] = mem[64] + 68
                        mem[_6310 + 32] = mem[_6310 + 36 len 28] or 0x70a0823100000000000000000000000000000000000000000000000000000000
                        staticcall _6258.mem[_6310 + 32 len 4] with:
                                gas gas_remaining wei
                               args mem[_6310 + 36 len mem[_6310] - 4]
                        mem[0] = ext_call.return_data[0]
                        if 1 != ext_call.success:
                            if not mem[_4985 + 76 len 20]:
                                mem[_6263 + 68] = 4
                                mem[64] = _6263 + 104
                                mem[_6263 + 100] = mem[_6263 + 104 len 28] or 0xd0e30db000000000000000000000000000000000000000000000000000000000
                                call wethAddress.mem[_6263 + 100 len 4] with:
                                     gas gas_remaining - 34710 wei
                            _4979 = mem[_3620]
                            s = _3620 + (32 * ('cd', 4).length) + 33
                            s = 0
                            continue 
                        if not mem[_4985 + 76 len 20]:
                            mem[_6263 + 68] = 4
                            mem[64] = _6263 + 104
                            mem[_6263 + 100] = mem[_6263 + 104 len 28] or 0xd0e30db000000000000000000000000000000000000000000000000000000000
                            call wethAddress.mem[_6263 + 100 len 4] with:
                               value ext_call.return_data[0] wei
                                 gas gas_remaining - 34710 wei
                    else:
                        call mem[_4985].mem[_4996 + 96 len 4] with:
                             gas gas_remaining - 34710 wei
                            args mem[_4996 + 100 len _5009 - 4]
                        if not ext_call.success:
                            if cd[132]:
                                if 0 <= cd[100] + ((105000 * block.gasprice) + (5 * 16 * calldata.size * block.gasprice) / 8):
                                    revert with 0, 'Negative!'
                                if msg.value > 0:
                                    mem[mem[64] + 36] = msg.value
                                    _6455 = mem[64]
                                    mem[mem[64]] = 36
                                    mem[64] = mem[64] + 68
                                    mem[_6455 + 32] = mem[_6455 + 36 len 28] or 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                    call wethAddress.mem[_6455 + 32 len 4] with:
                                         gas gas_remaining - 34710 wei
                                        args mem[_6455 + 36 len mem[_6455] - 4]
                                    call msg.sender with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if 0 <= cd[100] + (21000 * block.gasprice) + (16 * calldata.size * block.gasprice):
                                    revert with 0, 'Negative!'
                                if msg.value > 0:
                                    mem[mem[64] + 36] = msg.value
                                    _6399 = mem[64]
                                    mem[mem[64]] = 36
                                    mem[64] = mem[64] + 68
                                    mem[_6399 + 32] = mem[_6399 + 36 len 28] or 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                    call wethAddress.mem[_6399 + 32 len 4] with:
                                         gas gas_remaining - 34710 wei
                                        args mem[_6399 + 36 len mem[_6399] - 4]
                                    call msg.sender with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            return 0
                        _6259 = mem[_4985 + 64]
                        _6264 = mem[64]
                        mem[mem[64] + 36] = this.address
                        _6313 = mem[64]
                        mem[mem[64]] = 36
                        mem[64] = mem[64] + 68
                        mem[_6313 + 32] = mem[_6313 + 36 len 28] or 0x70a0823100000000000000000000000000000000000000000000000000000000
                        staticcall _6259.mem[_6313 + 32 len 4] with:
                                gas gas_remaining wei
                               args mem[_6313 + 36 len mem[_6313] - 4]
                        mem[0] = ext_call.return_data[0]
                        if 1 != ext_call.success:
                            if not mem[_4985 + 76 len 20]:
                                mem[_6264 + 68] = 4
                                mem[64] = _6264 + 104
                                mem[_6264 + 100] = mem[_6264 + 104 len 28] or 0xd0e30db000000000000000000000000000000000000000000000000000000000
                                call wethAddress.mem[_6264 + 100 len 4] with:
                                     gas gas_remaining - 34710 wei
                            _4979 = mem[_3620]
                            s = _3620 + (32 * ('cd', 4).length) + 33
                            s = 0
                            continue 
                        if not mem[_4985 + 76 len 20]:
                            mem[_6264 + 68] = 4
                            mem[64] = _6264 + 104
                            mem[_6264 + 100] = mem[_6264 + 104 len 28] or 0xd0e30db000000000000000000000000000000000000000000000000000000000
                            call wethAddress.mem[_6264 + 100 len 4] with:
                               value ext_call.return_data[0] wei
                                 gas gas_remaining - 34710 wei
            _4979 = mem[_3620]
            s = _3620 + (32 * ('cd', 4).length) + 33
            s = ext_call.return_data[0]
            continue 
        if cd[132]:
            if ('cd', 4).length <= (105000 * block.gasprice) + (5 * 16 * calldata.size * block.gasprice) / 8:
                revert with 0, 'Negative!'
            if msg.value > 0:
                mem[mem[64] + 36] = msg.value
                _5040 = mem[64]
                mem[mem[64]] = 36
                mem[64] = mem[64] + 68
                call wethAddress.0x2e1a7d4d with:
                     gas gas_remaining - 34710 wei
                    args mem[_5040 + 36 len mem[_5040] - 4]
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            if ('cd', 4).length <= (21000 * block.gasprice) + (16 * calldata.size * block.gasprice):
                revert with 0, 'Negative!'
            if msg.value > 0:
                mem[mem[64] + 36] = msg.value
                _5026 = mem[64]
                mem[mem[64]] = 36
                mem[64] = mem[64] + 68
                call wethAddress.0x2e1a7d4d with:
                     gas gas_remaining - 34710 wei
                    args mem[_5026 + 36 len mem[_5026] - 4]
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        return (('cd', 4).length + cd[100])
    _4980 = mem[_3620]
    idx = 0
    s = cd[100]
    while idx < _4980:
        _4982 = mem[64]
        mem[64] = mem[64] + 160
        mem[_4982] = 0
        mem[_4982 + 32] = 0
        mem[_4982 + 64] = 0
        mem[_4982 + 96] = 0
        mem[_4982 + 128] = 0
        require idx < mem[_3620]
        _4987 = mem[(32 * idx) + _3620 + 32]
        require idx < mem[96]
        _4991 = mem[(32 * idx) + 128]
        _4992 = mem[mem[(32 * idx) + _3620 + 32] + 128]
        _4998 = mem[64]
        mem[mem[64]] = 32
        mem[64] = mem[64] + 64
        mem[_4998 + 32] = call.data[calldata.size]
        if _4992 + 32 > mem[_4991]:
            mem[_4998 + 32] = s
            if mem[_4987 + 96] <= 0:
                call mem[_4987] with:
                   funct Mask(32, 224, s) >> 224
                     gas gas_remaining - 34710 wei
                    args mem[_4998 + 36 len mem[_4998] - 4]
                if not ext_call.success:
                    if cd[132]:
                        if 0 <= cd[100] + ((105000 * block.gasprice) + (5 * 16 * calldata.size * block.gasprice) / 8):
                            revert with 0, 'Negative!'
                    else:
                        if 0 <= cd[100] + (21000 * block.gasprice) + (16 * calldata.size * block.gasprice):
                            revert with 0, 'Negative!'
                    if msg.value > 0:
                        call wethAddress.0x2e1a7d4d with:
                             gas gas_remaining - 34710 wei
                            args msg.value
                        call msg.sender with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            return 0
                    else:
                        return 0
                _5084 = mem[_4987 + 64]
                mem[_4998 + 100] = this.address
                mem[_4998 + 64] = 36
                mem[64] = _4998 + 132
                mem[_4998 + 96] = address(this.address) << 64 or 0x70a0823100000000000000000000000000000000000000000000000000000000
                staticcall _5084.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address) << 64, 0
            else:
                if mem[_4987 + 96] >= s:
                    call mem[_4987] with:
                       funct Mask(32, 224, s) >> 224
                       value s wei
                         gas gas_remaining - 34710 wei
                        args mem[_4998 + 36 len mem[_4998] - 4]
                    if not ext_call.success:
                        if cd[132]:
                            if 0 <= cd[100] + ((105000 * block.gasprice) + (5 * 16 * calldata.size * block.gasprice) / 8):
                                revert with 0, 'Negative!'
                        else:
                            if 0 <= cd[100] + (21000 * block.gasprice) + (16 * calldata.size * block.gasprice):
                                revert with 0, 'Negative!'
                        if msg.value > 0:
                            call wethAddress.0x2e1a7d4d with:
                                 gas gas_remaining - 34710 wei
                                args msg.value
                            call msg.sender with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                return 0
                        else:
                            return 0
                    _5093 = mem[_4987 + 64]
                    mem[_4998 + 100] = this.address
                    mem[_4998 + 64] = 36
                    mem[64] = _4998 + 132
                    mem[_4998 + 96] = address(this.address) << 64 or 0x70a0823100000000000000000000000000000000000000000000000000000000
                    staticcall _5093.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address) << 64, 0
                else:
                    call mem[_4987] with:
                       funct Mask(32, 224, s) >> 224
                         gas gas_remaining - 34710 wei
                        args mem[_4998 + 36 len mem[_4998] - 4]
                    if not ext_call.success:
                        if cd[132]:
                            if 0 <= cd[100] + ((105000 * block.gasprice) + (5 * 16 * calldata.size * block.gasprice) / 8):
                                revert with 0, 'Negative!'
                        else:
                            if 0 <= cd[100] + (21000 * block.gasprice) + (16 * calldata.size * block.gasprice):
                                revert with 0, 'Negative!'
                        if msg.value > 0:
                            call wethAddress.0x2e1a7d4d with:
                                 gas gas_remaining - 34710 wei
                                args msg.value
                            call msg.sender with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                return 0
                        else:
                            return 0
                    _5094 = mem[_4987 + 64]
                    mem[_4998 + 100] = this.address
                    mem[_4998 + 64] = 36
                    mem[64] = _4998 + 132
                    mem[_4998 + 96] = address(this.address) << 64 or 0x70a0823100000000000000000000000000000000000000000000000000000000
                    staticcall _5094.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address) << 64, 0
            mem[0] = ext_call.return_data[0]
            if 1 != ext_call.success:
                if not mem[_4987 + 76 len 20]:
                    mem[_4998 + 132] = 4
                    mem[64] = _4998 + 168
                    mem[_4998 + 164] = mem[_4998 + 168 len 28] or 0xd0e30db000000000000000000000000000000000000000000000000000000000
                    call wethAddress.mem[_4998 + 164 len 4] with:
                         gas gas_remaining - 34710 wei
                _4980 = mem[_3620]
                idx = idx + 1
                s = 0
                continue 
            if not mem[_4987 + 76 len 20]:
                mem[_4998 + 132] = 4
                mem[64] = _4998 + 168
                mem[_4998 + 164] = mem[_4998 + 168 len 28] or 0xd0e30db000000000000000000000000000000000000000000000000000000000
                call wethAddress.mem[_4998 + 164 len 4] with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining - 34710 wei
            _4980 = mem[_3620]
            idx = idx + 1
            s = ext_call.return_data[0]
            continue 
        _5011 = mem[_4991]
        mem[_4998 + 64] = _4992
        u = _4991 + 32
        t = _4998 + 96
        while t < _4998 + _4992 + 96:
            mem[t] = mem[u]
            _4980 = mem[_3620]
            u = u + 32
            t = t + 32
            continue 
        mem[_4998 + 32] = s
        mem[_4998 + 64] = _4992 + 32
        u = _4998 + 32
        t = _4998 + _4992 + 96
        while t < _4998 + _4992 + 128:
            mem[t] = mem[_736 + (32 * ('cd', 4).length) + 32]
            _4980 = mem[_3620]
            u = _736 + (32 * ('cd', 4).length) + 64
            t = t + 32
            continue 
        mem[_4998 + 64] = _5011
        t = _4991 + _4992 + 64
        s = _4998 + _4992 + 128
        while s < _4998 + _5011 + 96:
            mem[s] = mem[t]
            _4980 = mem[_3620]
            t = t + 32
            s = s + 32
            continue 
        mem[64] = floor32(_4998 + _5011 + not _5011 + -_4992 + mem[_4991] - 32 + 31) + 3
        if mem[_4987 + 96] <= 0:
            call mem[_4987].mem[_4998 + 96 len 4] with:
                 gas gas_remaining - 34710 wei
                args mem[_4998 + 100 len _5011 - 4]
            if not ext_call.success:
                if cd[132]:
                    if 0 <= cd[100] + ((105000 * block.gasprice) + (5 * 16 * calldata.size * block.gasprice) / 8):
                        revert with 0, 'Negative!'
                    if msg.value > 0:
                        mem[mem[64] + 36] = msg.value
                        _6409 = mem[64]
                        mem[mem[64]] = 36
                        mem[64] = mem[64] + 68
                        mem[_6409 + 32] = mem[_6409 + 36 len 28] or 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                        call wethAddress.mem[_6409 + 32 len 4] with:
                             gas gas_remaining - 34710 wei
                            args mem[_6409 + 36 len mem[_6409] - 4]
                        call msg.sender with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    if 0 <= cd[100] + (21000 * block.gasprice) + (16 * calldata.size * block.gasprice):
                        revert with 0, 'Negative!'
                    if msg.value > 0:
                        mem[mem[64] + 36] = msg.value
                        _6363 = mem[64]
                        mem[mem[64]] = 36
                        mem[64] = mem[64] + 68
                        mem[_6363 + 32] = mem[_6363 + 36 len 28] or 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                        call wethAddress.mem[_6363 + 32 len 4] with:
                             gas gas_remaining - 34710 wei
                            args mem[_6363 + 36 len mem[_6363] - 4]
                        call msg.sender with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                return 0
            _6256 = mem[_4987 + 64]
            _6260 = mem[64]
            mem[mem[64] + 36] = this.address
            _6302 = mem[64]
            mem[mem[64]] = 36
            mem[64] = mem[64] + 68
            mem[_6302 + 32] = mem[_6302 + 36 len 28] or 0x70a0823100000000000000000000000000000000000000000000000000000000
            staticcall _6256.mem[_6302 + 32 len 4] with:
                    gas gas_remaining wei
                   args mem[_6302 + 36 len mem[_6302] - 4]
            mem[0] = ext_call.return_data[0]
            if 1 != ext_call.success:
                if not mem[_4987 + 76 len 20]:
                    mem[_6260 + 68] = 4
                    mem[64] = _6260 + 104
                    mem[_6260 + 100] = mem[_6260 + 104 len 28] or 0xd0e30db000000000000000000000000000000000000000000000000000000000
                    call wethAddress.mem[_6260 + 100 len 4] with:
                         gas gas_remaining - 34710 wei
                _4980 = mem[_3620]
                idx = idx + 1
                u = 0
                continue 
            if not mem[_4987 + 76 len 20]:
                mem[_6260 + 68] = 4
                mem[64] = _6260 + 104
                mem[_6260 + 100] = mem[_6260 + 104 len 28] or 0xd0e30db000000000000000000000000000000000000000000000000000000000
                call wethAddress.mem[_6260 + 100 len 4] with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining - 34710 wei
        else:
            if mem[_4987 + 96] >= u:
                call mem[_4987].mem[_4998 + 96 len 4] with:
                   value u wei
                     gas gas_remaining - 34710 wei
                    args mem[_4998 + 100 len _5011 - 4]
                if not ext_call.success:
                    if cd[132]:
                        if 0 <= cd[100] + ((105000 * block.gasprice) + (5 * 16 * calldata.size * block.gasprice) / 8):
                            revert with 0, 'Negative!'
                        if msg.value > 0:
                            mem[mem[64] + 36] = msg.value
                            _6469 = mem[64]
                            mem[mem[64]] = 36
                            mem[64] = mem[64] + 68
                            mem[_6469 + 32] = mem[_6469 + 36 len 28] or 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                            call wethAddress.mem[_6469 + 32 len 4] with:
                                 gas gas_remaining - 34710 wei
                                args mem[_6469 + 36 len mem[_6469] - 4]
                            call msg.sender with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if 0 <= cd[100] + (21000 * block.gasprice) + (16 * calldata.size * block.gasprice):
                            revert with 0, 'Negative!'
                        if msg.value > 0:
                            mem[mem[64] + 36] = msg.value
                            _6421 = mem[64]
                            mem[mem[64]] = 36
                            mem[64] = mem[64] + 68
                            mem[_6421 + 32] = mem[_6421 + 36 len 28] or 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                            call wethAddress.mem[_6421 + 32 len 4] with:
                                 gas gas_remaining - 34710 wei
                                args mem[_6421 + 36 len mem[_6421] - 4]
                            call msg.sender with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    return 0
                _6261 = mem[_4987 + 64]
                _6265 = mem[64]
                mem[mem[64] + 36] = this.address
                _6317 = mem[64]
                mem[mem[64]] = 36
                mem[64] = mem[64] + 68
                mem[_6317 + 32] = mem[_6317 + 36 len 28] or 0x70a0823100000000000000000000000000000000000000000000000000000000
                staticcall _6261.mem[_6317 + 32 len 4] with:
                        gas gas_remaining wei
                       args mem[_6317 + 36 len mem[_6317] - 4]
                mem[0] = ext_call.return_data[0]
                if 1 != ext_call.success:
                    if not mem[_4987 + 76 len 20]:
                        mem[_6265 + 68] = 4
                        mem[64] = _6265 + 104
                        mem[_6265 + 100] = mem[_6265 + 104 len 28] or 0xd0e30db000000000000000000000000000000000000000000000000000000000
                        call wethAddress.mem[_6265 + 100 len 4] with:
                             gas gas_remaining - 34710 wei
                    _4980 = mem[_3620]
                    idx = idx + 1
                    u = 0
                    continue 
                if not mem[_4987 + 76 len 20]:
                    mem[_6265 + 68] = 4
                    mem[64] = _6265 + 104
                    mem[_6265 + 100] = mem[_6265 + 104 len 28] or 0xd0e30db000000000000000000000000000000000000000000000000000000000
                    call wethAddress.mem[_6265 + 100 len 4] with:
                       value ext_call.return_data[0] wei
                         gas gas_remaining - 34710 wei
            else:
                call mem[_4987].mem[_4998 + 96 len 4] with:
                     gas gas_remaining - 34710 wei
                    args mem[_4998 + 100 len _5011 - 4]
                if not ext_call.success:
                    if cd[132]:
                        if 0 <= cd[100] + ((105000 * block.gasprice) + (5 * 16 * calldata.size * block.gasprice) / 8):
                            revert with 0, 'Negative!'
                        if msg.value > 0:
                            mem[mem[64] + 36] = msg.value
                            _6481 = mem[64]
                            mem[mem[64]] = 36
                            mem[64] = mem[64] + 68
                            mem[_6481 + 32] = mem[_6481 + 36 len 28] or 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                            call wethAddress.mem[_6481 + 32 len 4] with:
                                 gas gas_remaining - 34710 wei
                                args mem[_6481 + 36 len mem[_6481] - 4]
                            call msg.sender with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if 0 <= cd[100] + (21000 * block.gasprice) + (16 * calldata.size * block.gasprice):
                            revert with 0, 'Negative!'
                        if msg.value > 0:
                            mem[mem[64] + 36] = msg.value
                            _6431 = mem[64]
                            mem[mem[64]] = 36
                            mem[64] = mem[64] + 68
                            mem[_6431 + 32] = mem[_6431 + 36 len 28] or 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                            call wethAddress.mem[_6431 + 32 len 4] with:
                                 gas gas_remaining - 34710 wei
                                args mem[_6431 + 36 len mem[_6431] - 4]
                            call msg.sender with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    return 0
                _6262 = mem[_4987 + 64]
                _6266 = mem[64]
                mem[mem[64] + 36] = this.address
                _6320 = mem[64]
                mem[mem[64]] = 36
                mem[64] = mem[64] + 68
                mem[_6320 + 32] = mem[_6320 + 36 len 28] or 0x70a0823100000000000000000000000000000000000000000000000000000000
                staticcall _6262.mem[_6320 + 32 len 4] with:
                        gas gas_remaining wei
                       args mem[_6320 + 36 len mem[_6320] - 4]
                mem[0] = ext_call.return_data[0]
                if 1 != ext_call.success:
                    if not mem[_4987 + 76 len 20]:
                        mem[_6266 + 68] = 4
                        mem[64] = _6266 + 104
                        mem[_6266 + 100] = mem[_6266 + 104 len 28] or 0xd0e30db000000000000000000000000000000000000000000000000000000000
                        call wethAddress.mem[_6266 + 100 len 4] with:
                             gas gas_remaining - 34710 wei
                    _4980 = mem[_3620]
                    idx = idx + 1
                    u = 0
                    continue 
                if not mem[_4987 + 76 len 20]:
                    mem[_6266 + 68] = 4
                    mem[64] = _6266 + 104
                    mem[_6266 + 100] = mem[_6266 + 104 len 28] or 0xd0e30db000000000000000000000000000000000000000000000000000000000
                    call wethAddress.mem[_6266 + 100 len 4] with:
                       value ext_call.return_data[0] wei
                         gas gas_remaining - 34710 wei
        _4980 = mem[_3620]
        idx = idx + 1
        u = ext_call.return_data[0]
        continue 
    if cd[132]:
        if s - ext_call.return_data[0] <= (105000 * block.gasprice) + (5 * 16 * calldata.size * block.gasprice) / 8:
            revert with 0, 'Negative!'
        if msg.value > 0:
            mem[mem[64] + 36] = msg.value
            _5048 = mem[64]
            mem[mem[64]] = 36
            mem[64] = mem[64] + 68
            call wethAddress.0x2e1a7d4d with:
                 gas gas_remaining - 34710 wei
                args mem[_5048 + 36 len mem[_5048] - 4]
            call msg.sender with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        if s - ext_call.return_data[0] <= (21000 * block.gasprice) + (16 * calldata.size * block.gasprice):
            revert with 0, 'Negative!'
        if msg.value > 0:
            mem[mem[64] + 36] = msg.value
            _5033 = mem[64]
            mem[mem[64]] = 36
            mem[64] = mem[64] + 68
            call wethAddress.0x2e1a7d4d with:
                 gas gas_remaining - 34710 wei
                args mem[_5033 + 36 len mem[_5033] - 4]
            call msg.sender with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    return (s - ext_call.return_data[0] + cd[100])
}



}
