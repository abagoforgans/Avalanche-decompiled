contract main {




// =====================  Runtime code  =====================


address stor0;

function withdrawToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_168e3356(?) {
    require calldata.size - 4 >= 96
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 < 96 or ceil32(32 * ('cd', 36).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    s = 128
    idx = cd[36] + 36
    while idx < cd[36] + (32 * ('cd', 36).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 68).length) + 98 < 97 or ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 36).length) + 97] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = cd[68] + 36
    s = ceil32(32 * ('cd', 36).length) + 129
    while idx < cd[68] + (32 * ('cd', 68).length) + 36:
        require cd[idx] == bool(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require msg.sender == stor0
    mem[ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 98 len 128] = call.data[calldata.size len 128]
    mem[64] = ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 354
    mem[ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 226 len 128] = call.data[calldata.size len 128]
    idx = 0
    s = cd[4]
    t = 0
    t = 0
    t = 0
    t = 0
    t = 0
    while idx < ('cd', 36).length:
        if idx >= mem[96]:
            revert with 0, 50
        staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _219 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _221 = mem[_219]
        require mem[_219] == mem[_219 + 18 len 14]
        _223 = mem[_219 + 32]
        require mem[_219 + 32] == mem[_219 + 50 len 14]
        require mem[_219 + 64] == mem[_219 + 92 len 4]
        if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
            revert with 0, 50
        if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
            revert with 0, 50
        if s > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
            revert with 0, 17
        if mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129]:
            if mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129]:
                if 997 * s and mem[_219 + 18 len 14] > -1 / 997 * s:
                    revert with 0, 17
                if mem[_219 + 50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 0, 17
                if 1000 * mem[_219 + 50 len 14] > !(997 * s):
                    revert with 0, 17
                if not (1000 * mem[_219 + 50 len 14]) + (997 * s):
                    revert with 0, 18
                if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                    revert with 0, 50
                if idx >= 4:
                    revert with 0, 50
                if mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129]:
                    mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 98] = 997 * s * mem[_219 + 18 len 14] / (1000 * mem[_219 + 50 len 14]) + (997 * s)
                else:
                    mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 98] = 0
                if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                    revert with 0, 50
                if idx >= 4:
                    revert with 0, 50
                if mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129]:
                    mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 226] = 0
                else:
                    mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 226] = 997 * s * Mask(112, 0, _221) / (1000 * Mask(112, 0, _223)) + (997 * s)
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = 997 * s * Mask(112, 0, _221) / (1000 * Mask(112, 0, _223)) + (997 * s)
                t = (1000 * Mask(112, 0, _223)) + (997 * s)
                t = 997 * s * Mask(112, 0, _221)
                t = 997 * s
                t = Mask(112, 0, _221)
                t = Mask(112, 0, _223)
                continue 
            if 997 * s and mem[_219 + 50 len 14] > -1 / 997 * s:
                revert with 0, 17
            if mem[_219 + 50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if 1000 * mem[_219 + 50 len 14] > !(997 * s):
                revert with 0, 17
            if not (1000 * mem[_219 + 50 len 14]) + (997 * s):
                revert with 0, 18
            if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                revert with 0, 50
            if idx >= 4:
                revert with 0, 50
            if mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129]:
                mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 98] = 997 * s * mem[_219 + 50 len 14] / (1000 * mem[_219 + 50 len 14]) + (997 * s)
            else:
                mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 98] = 0
            if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                revert with 0, 50
            if idx >= 4:
                revert with 0, 50
            if mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129]:
                mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 226] = 0
            else:
                mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 226] = 997 * s * Mask(112, 0, _223) / (1000 * Mask(112, 0, _223)) + (997 * s)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = 997 * s * Mask(112, 0, _223) / (1000 * Mask(112, 0, _223)) + (997 * s)
            t = (1000 * Mask(112, 0, _223)) + (997 * s)
            t = 997 * s * Mask(112, 0, _223)
            t = 997 * s
            t = Mask(112, 0, _223)
            t = Mask(112, 0, _223)
            continue 
        if mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129]:
            if 997 * s and mem[_219 + 18 len 14] > -1 / 997 * s:
                revert with 0, 17
            if mem[_219 + 18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if 1000 * mem[_219 + 18 len 14] > !(997 * s):
                revert with 0, 17
            if not (1000 * mem[_219 + 18 len 14]) + (997 * s):
                revert with 0, 18
            if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                revert with 0, 50
            if idx >= 4:
                revert with 0, 50
            if mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129]:
                mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 98] = 997 * s * mem[_219 + 18 len 14] / (1000 * mem[_219 + 18 len 14]) + (997 * s)
            else:
                mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 98] = 0
            if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                revert with 0, 50
            if idx >= 4:
                revert with 0, 50
            if mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129]:
                mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 226] = 0
            else:
                mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 226] = 997 * s * Mask(112, 0, _221) / (1000 * Mask(112, 0, _221)) + (997 * s)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = 997 * s * Mask(112, 0, _221) / (1000 * Mask(112, 0, _221)) + (997 * s)
            t = (1000 * Mask(112, 0, _221)) + (997 * s)
            t = 997 * s * Mask(112, 0, _221)
            t = 997 * s
            t = Mask(112, 0, _221)
            t = Mask(112, 0, _221)
            continue 
        if 997 * s and mem[_219 + 50 len 14] > -1 / 997 * s:
            revert with 0, 17
        if mem[_219 + 18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
            revert with 0, 17
        if 1000 * mem[_219 + 18 len 14] > !(997 * s):
            revert with 0, 17
        if not (1000 * mem[_219 + 18 len 14]) + (997 * s):
            revert with 0, 18
        if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
            revert with 0, 50
        if idx >= 4:
            revert with 0, 50
        if mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129]:
            mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 98] = 997 * s * mem[_219 + 50 len 14] / (1000 * mem[_219 + 18 len 14]) + (997 * s)
        else:
            mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 98] = 0
        if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
            revert with 0, 50
        if idx >= 4:
            revert with 0, 50
        if mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129]:
            mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 226] = 0
        else:
            mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 226] = 997 * s * Mask(112, 0, _223) / (1000 * Mask(112, 0, _221)) + (997 * s)
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = 997 * s * Mask(112, 0, _223) / (1000 * Mask(112, 0, _221)) + (997 * s)
        t = (1000 * Mask(112, 0, _221)) + (997 * s)
        t = 997 * s * Mask(112, 0, _223)
        t = 997 * s
        t = Mask(112, 0, _223)
        t = Mask(112, 0, _221)
        continue 
    require s > cd[4]
    if s < 8 * 10^15:
        revert with 0, 17
    require s - 8 * 10^15 > cd[4]
    _220 = mem[96]
    if mem[96] < 1:
        revert with 0, 17
    if 0 >= mem[96]:
        revert with 0, 50
    mem[mem[64] + 4] = mem[140 len 20]
    mem[mem[64] + 36] = cd[4]
    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xa9059cbb with:
         gas gas_remaining wei
        args mem[mem[64] + 4], cd[4]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _228 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_228] == bool(mem[_228])
    idx = 0
    while idx < _220 - 1:
        if idx >= mem[96]:
            revert with 0, 50
        _285 = mem[(32 * idx) + 128]
        if idx >= 4:
            revert with 0, 50
        _287 = mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 98]
        _290 = mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 226]
        if 1 > !idx:
            revert with 0, 17
        if idx + 1 >= mem[96]:
            revert with 0, 50
        _295 = mem[(32 * idx + 1) + 128]
        _296 = mem[64]
        mem[64] = mem[64] + 32
        mem[_296 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        mem[_296 + 36] = _287
        mem[_296 + 68] = _290
        mem[_296 + 100] = address(_295)
        mem[_296 + 132] = 128
        mem[_296 + 164] = mem[_296]
        s = 0
        while s < mem[_296]:
            mem[s + _296 + 196] = mem[s + _296 + 32]
            s = s + 32
            continue 
        if ceil32(mem[_296]) > mem[_296]:
            mem[_296 + mem[_296] + 196] = 0
        require ext_code.size(address(_285))
        call address(_285).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args _287, _290, address(_295), Array(len=mem[_296], data=mem[_296 + 196 len ceil32(mem[_296])])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if _220 - 1 >= mem[96]:
        revert with 0, 50
    if _220 - 1 >= 4:
        revert with 0, 50
    _289 = mem[64]
    mem[64] = mem[64] + 32
    mem[_289 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
    mem[_289 + 36] = mem[(32 * _220 - 1) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 98]
    mem[_289 + 68] = mem[(32 * _220 - 1) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 226]
    mem[_289 + 100] = this.address
    mem[_289 + 132] = 128
    mem[_289 + 164] = mem[_289]
    mem[_289 + 196 len ceil32(mem[_289])] = mem[_289 + 32 len ceil32(mem[_289])]
    if ceil32(mem[_289]) > mem[_289]:
        mem[_289 + mem[_289] + 196] = 0
    require ext_code.size(mem[(32 * _220 - 1) + 140 len 20])
    call mem[(32 * _220 - 1) + 140 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args mem[(32 * _220 - 1) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 98], mem[(32 * _220 - 1) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 226], address(this.address), Array(len=mem[_289], data=mem[_289 + 196 len ceil32(mem[_289])])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if uint32(call.func_hash) >> 224 != unknown_0x168e3356(?????):
            require unknown_0x89476069(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            require calldata.size - 4 >= 32
            require cd[4] == address(cd[4])
            require msg.sender == stor0
            staticcall address(cd[4]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            call address(cd[4]).0xa9059cbb with:
                 gas gas_remaining wei
                args stor0, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
        else:
            require not msg.value
            require calldata.size - 4 >= 96
            require cd[36] <= test266151307()
            require cd[36] + 35 < calldata.size
            if ('cd', 36).length > test266151307():
                revert with 0, 65
            if ceil32(32 * ('cd', 36).length) + 129 < 128 or ceil32(32 * ('cd', 36).length) + 129 > test266151307():
                revert with 0, 65
            mem[128] = ('cd', 36).length
            require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
            s = 160
            idx = cd[36] + 36
            while idx < cd[36] + (32 * ('cd', 36).length) + 36:
                require cd[idx] == address(cd[idx])
                mem[s] = cd[idx]
                s = s + 32
                idx = idx + 32
                continue 
            require cd[68] <= test266151307()
            require cd[68] + 35 < calldata.size
            if ('cd', 68).length > test266151307():
                revert with 0, 65
            if ceil32(32 * ('cd', 68).length) + 130 < 129 or ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 130 > test266151307():
                revert with 0, 65
            mem[ceil32(32 * ('cd', 36).length) + 129] = ('cd', 68).length
            require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
            idx = cd[68] + 36
            s = ceil32(32 * ('cd', 36).length) + 161
            while idx < cd[68] + (32 * ('cd', 68).length) + 36:
                require cd[idx] == bool(cd[idx])
                mem[s] = cd[idx]
                idx = idx + 32
                s = s + 32
                continue 
            require msg.sender == stor0
            mem[ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 130 len 128] = call.data[calldata.size len 128]
            mem[64] = ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 386
            mem[ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 258 len 128] = call.data[calldata.size len 128]
            idx = 0
            s = cd[4]
            t = 0
            t = 0
            t = 0
            t = 0
            t = 0
            while idx < ('cd', 36).length:
                if idx >= mem[128]:
                    revert with 0, 50
                staticcall mem[(32 * idx) + 172 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _227 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _229 = mem[_227]
                require mem[_227] == mem[_227 + 18 len 14]
                _231 = mem[_227 + 32]
                require mem[_227 + 32] == mem[_227 + 50 len 14]
                require mem[_227 + 64] == mem[_227 + 92 len 4]
                if idx >= mem[ceil32(32 * ('cd', 36).length) + 129]:
                    revert with 0, 50
                if idx >= mem[ceil32(32 * ('cd', 36).length) + 129]:
                    revert with 0, 50
                if s > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 0, 17
                if mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 161]:
                    if mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 161]:
                        if 997 * s and mem[_227 + 18 len 14] > -1 / 997 * s:
                            revert with 0, 17
                        if mem[_227 + 50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                            revert with 0, 17
                        if 1000 * mem[_227 + 50 len 14] > !(997 * s):
                            revert with 0, 17
                        if not (1000 * mem[_227 + 50 len 14]) + (997 * s):
                            revert with 0, 18
                        if idx >= mem[ceil32(32 * ('cd', 36).length) + 129]:
                            revert with 0, 50
                        if idx >= 4:
                            revert with 0, 50
                        if mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 161]:
                            mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 130] = 997 * s * mem[_227 + 18 len 14] / (1000 * mem[_227 + 50 len 14]) + (997 * s)
                        else:
                            mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 130] = 0
                        if idx >= mem[ceil32(32 * ('cd', 36).length) + 129]:
                            revert with 0, 50
                        if idx >= 4:
                            revert with 0, 50
                        if mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 161]:
                            mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 258] = 0
                        else:
                            mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 258] = 997 * s * Mask(112, 0, _229) / (1000 * Mask(112, 0, _231)) + (997 * s)
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 997 * s * Mask(112, 0, _229) / (1000 * Mask(112, 0, _231)) + (997 * s)
                        t = (1000 * Mask(112, 0, _231)) + (997 * s)
                        t = 997 * s * Mask(112, 0, _229)
                        t = 997 * s
                        t = Mask(112, 0, _229)
                        t = Mask(112, 0, _231)
                        continue 
                    if 997 * s and mem[_227 + 50 len 14] > -1 / 997 * s:
                        revert with 0, 17
                    if mem[_227 + 50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 0, 17
                    if 1000 * mem[_227 + 50 len 14] > !(997 * s):
                        revert with 0, 17
                    if not (1000 * mem[_227 + 50 len 14]) + (997 * s):
                        revert with 0, 18
                    if idx >= mem[ceil32(32 * ('cd', 36).length) + 129]:
                        revert with 0, 50
                    if idx >= 4:
                        revert with 0, 50
                    if mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 161]:
                        mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 130] = 997 * s * mem[_227 + 50 len 14] / (1000 * mem[_227 + 50 len 14]) + (997 * s)
                    else:
                        mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 130] = 0
                    if idx >= mem[ceil32(32 * ('cd', 36).length) + 129]:
                        revert with 0, 50
                    if idx >= 4:
                        revert with 0, 50
                    if mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 161]:
                        mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 258] = 0
                    else:
                        mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 258] = 997 * s * Mask(112, 0, _231) / (1000 * Mask(112, 0, _231)) + (997 * s)
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = 997 * s * Mask(112, 0, _231) / (1000 * Mask(112, 0, _231)) + (997 * s)
                    t = (1000 * Mask(112, 0, _231)) + (997 * s)
                    t = 997 * s * Mask(112, 0, _231)
                    t = 997 * s
                    t = Mask(112, 0, _231)
                    t = Mask(112, 0, _231)
                    continue 
                if mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 161]:
                    if 997 * s and mem[_227 + 18 len 14] > -1 / 997 * s:
                        revert with 0, 17
                    if mem[_227 + 18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 0, 17
                    if 1000 * mem[_227 + 18 len 14] > !(997 * s):
                        revert with 0, 17
                    if not (1000 * mem[_227 + 18 len 14]) + (997 * s):
                        revert with 0, 18
                    if idx >= mem[ceil32(32 * ('cd', 36).length) + 129]:
                        revert with 0, 50
                    if idx >= 4:
                        revert with 0, 50
                    if mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 161]:
                        mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 130] = 997 * s * mem[_227 + 18 len 14] / (1000 * mem[_227 + 18 len 14]) + (997 * s)
                    else:
                        mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 130] = 0
                    if idx >= mem[ceil32(32 * ('cd', 36).length) + 129]:
                        revert with 0, 50
                    if idx >= 4:
                        revert with 0, 50
                    if mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 161]:
                        mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 258] = 0
                    else:
                        mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 258] = 997 * s * Mask(112, 0, _229) / (1000 * Mask(112, 0, _229)) + (997 * s)
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = 997 * s * Mask(112, 0, _229) / (1000 * Mask(112, 0, _229)) + (997 * s)
                    t = (1000 * Mask(112, 0, _229)) + (997 * s)
                    t = 997 * s * Mask(112, 0, _229)
                    t = 997 * s
                    t = Mask(112, 0, _229)
                    t = Mask(112, 0, _229)
                    continue 
                if 997 * s and mem[_227 + 50 len 14] > -1 / 997 * s:
                    revert with 0, 17
                if mem[_227 + 18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 0, 17
                if 1000 * mem[_227 + 18 len 14] > !(997 * s):
                    revert with 0, 17
                if not (1000 * mem[_227 + 18 len 14]) + (997 * s):
                    revert with 0, 18
                if idx >= mem[ceil32(32 * ('cd', 36).length) + 129]:
                    revert with 0, 50
                if idx >= 4:
                    revert with 0, 50
                if mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 161]:
                    mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 130] = 997 * s * mem[_227 + 50 len 14] / (1000 * mem[_227 + 18 len 14]) + (997 * s)
                else:
                    mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 130] = 0
                if idx >= mem[ceil32(32 * ('cd', 36).length) + 129]:
                    revert with 0, 50
                if idx >= 4:
                    revert with 0, 50
                if mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 161]:
                    mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 258] = 0
                else:
                    mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 258] = 997 * s * Mask(112, 0, _231) / (1000 * Mask(112, 0, _229)) + (997 * s)
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = 997 * s * Mask(112, 0, _231) / (1000 * Mask(112, 0, _229)) + (997 * s)
                t = (1000 * Mask(112, 0, _229)) + (997 * s)
                t = 997 * s * Mask(112, 0, _231)
                t = 997 * s
                t = Mask(112, 0, _231)
                t = Mask(112, 0, _229)
                continue 
            require s > cd[4]
            if s < 8 * 10^15:
                revert with 0, 17
            require s - 8 * 10^15 > cd[4]
            _228 = mem[128]
            if mem[128] < 1:
                revert with 0, 17
            if 0 >= mem[128]:
                revert with 0, 50
            mem[mem[64] + 4] = mem[172 len 20]
            mem[mem[64] + 36] = cd[4]
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xa9059cbb with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], cd[4]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _236 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_236] == bool(mem[_236])
            idx = 0
            while idx < _228 - 1:
                if idx >= mem[128]:
                    revert with 0, 50
                _293 = mem[(32 * idx) + 160]
                if idx >= 4:
                    revert with 0, 50
                _295 = mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 130]
                _298 = mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 258]
                if 1 > !idx:
                    revert with 0, 17
                if idx + 1 >= mem[128]:
                    revert with 0, 50
                _303 = mem[(32 * idx + 1) + 160]
                _304 = mem[64]
                mem[64] = mem[64] + 32
                mem[_304 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_304 + 36] = _295
                mem[_304 + 68] = _298
                mem[_304 + 100] = address(_303)
                mem[_304 + 132] = 128
                mem[_304 + 164] = mem[_304]
                s = 0
                while s < mem[_304]:
                    mem[s + _304 + 196] = mem[s + _304 + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_304]) > mem[_304]:
                    mem[_304 + mem[_304] + 196] = 0
                require ext_code.size(address(_293))
                call address(_293).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _295, _298, address(_303), Array(len=mem[_304], data=mem[_304 + 196 len ceil32(mem[_304])])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if _228 - 1 >= mem[128]:
                revert with 0, 50
            if _228 - 1 >= 4:
                revert with 0, 50
            _297 = mem[64]
            mem[64] = mem[64] + 32
            mem[_297 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_297 + 36] = mem[(32 * _228 - 1) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 130]
            mem[_297 + 68] = mem[(32 * _228 - 1) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 258]
            mem[_297 + 100] = this.address
            mem[_297 + 132] = 128
            mem[_297 + 164] = mem[_297]
            mem[_297 + 196 len ceil32(mem[_297])] = mem[_297 + 32 len ceil32(mem[_297])]
            if ceil32(mem[_297]) > mem[_297]:
                mem[_297 + mem[_297] + 196] = 0
            require ext_code.size(mem[(32 * _228 - 1) + 172 len 20])
            call mem[(32 * _228 - 1) + 172 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args mem[(32 * _228 - 1) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 130], mem[(32 * _228 - 1) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 258], address(this.address), Array(len=mem[_297], data=mem[_297 + 196 len ceil32(mem[_297])])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}



}
