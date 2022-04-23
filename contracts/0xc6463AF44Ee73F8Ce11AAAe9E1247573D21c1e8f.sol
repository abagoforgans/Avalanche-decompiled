contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
    revert
}

function transferAll(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sorry. Not for you my rose've bloomed'
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], mem[ceil32(return_data.size) + 196 len 28]
    call arg1.mem[ceil32(return_data.size) + 196 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(return_data.size) + 200 len 64]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TransferHelper::safeTransfer: transfer failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'TransferHelper::safeTransfer: transfer failed'
    else:
        mem[ceil32(return_data.size) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TransferHelper::safeTransfer: transfer failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 228] == bool(mem[ceil32(return_data.size) + 228])
            if not mem[ceil32(return_data.size) + 228]:
                revert with 0, 'TransferHelper::safeTransfer: transfer failed'
}

function checkPools(address arg1, address arg2, address[] arg3, uint256[] arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg3.length) + 97 > test266151307() or floor32(arg3.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg3.length
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    idx = 0
    s = arg3 + 36
    t = 128
    while idx < arg3.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg3.length) + floor32(arg4.length) + 98 > test266151307() or floor32(arg4.length) + 98 < 97:
        revert with 'NH{q', 65
    mem[64] = floor32(arg3.length) + floor32(arg4.length) + 98
    mem[floor32(arg3.length) + 97] = arg4.length
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    idx = 0
    s = arg4 + 36
    t = floor32(arg3.length) + 129
    while idx < arg4.length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if arg3.length != arg4.length:
        revert with 0, 'Not same length'
    idx = 0
    while idx < arg3.length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _219 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = arg2
        mem[mem[64] + 36] = address(_219)
        require ext_code.size(arg1)
        staticcall arg1.getPair(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(arg2), address(_219)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _224 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _225 = mem[_224]
        require mem[_224] == mem[_224 + 12 len 20]
        if mem[_224 + 12 len 20] != stor1:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _227 = mem[(32 * idx) + 128]
            require ext_code.size(mem[_224 + 12 len 20])
            staticcall mem[_224 + 12 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _230 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_230] == mem[_230 + 12 len 20]
            require ext_code.size(address(_225))
            staticcall address(_225).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[_230 + 12 len 20] != address(_227):
                _236 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_236] == mem[_236 + 18 len 14]
                _240 = mem[_236 + 32]
                require mem[_236 + 32] == mem[_236 + 50 len 14]
                require mem[_236 + 64] == mem[_236 + 92 len 4]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _250 = mem[(32 * idx) + 128]
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _256 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_256] == mem[_256 + 31 len 1]
                if not mem[_256 + 31 len 1]:
                    if idx >= mem[floor32(arg3.length) + 97]:
                        revert with 'NH{q', 50
                    if Mask(112, 0, _240) >= mem[(32 * idx) + floor32(arg3.length) + 129]:
                        return address(_250), Mask(112, 0, _240)
                else:
                    if bool(bool(mem[_256 + 31 len 1] < 78)) or bool(bool(mem[_256 + 31 len 1] < 32)):
                        if 10^mem[_256 + 31 len 1] > -1:
                            revert with 'NH{q', 17
                        if not 10^mem[_256 + 31 len 1]:
                            revert with 'NH{q', 18
                        if idx >= mem[floor32(arg3.length) + 97]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, _240) / 10^mem[_256 + 31 len 1] >= mem[(32 * idx) + floor32(arg3.length) + 129]:
                            return address(_250), Mask(112, 0, _240) / 10^mem[_256 + 31 len 1]
                    else:
                        t = 10
                        u = 1
                        s = mem[_256 + 31 len 1]
                        while s > 1:
                            if t > -1 / t:
                                revert with 'NH{q', 17
                            if not bool(s):
                                t = t * t
                                u = u
                                s = uint255(s) * 0.5
                                continue 
                            t = t * t
                            u = u * t
                            s = uint255(s) * 0.5
                            continue 
                        if u > -1 / t:
                            revert with 'NH{q', 17
                        if not u * t:
                            revert with 'NH{q', 18
                        if idx >= mem[floor32(arg3.length) + 97]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, _240) / u * t >= mem[(32 * idx) + floor32(arg3.length) + 129]:
                            return address(_250), Mask(112, 0, _240) / u * t
            else:
                _237 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _239 = mem[_237]
                require mem[_237] == mem[_237 + 18 len 14]
                require mem[_237 + 32] == mem[_237 + 50 len 14]
                require mem[_237 + 64] == mem[_237 + 92 len 4]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _253 = mem[(32 * idx) + 128]
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _257 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_257] == mem[_257 + 31 len 1]
                if not mem[_257 + 31 len 1]:
                    if idx >= mem[floor32(arg3.length) + 97]:
                        revert with 'NH{q', 50
                    if Mask(112, 0, _239) >= mem[(32 * idx) + floor32(arg3.length) + 129]:
                        return address(_253), Mask(112, 0, _239)
                else:
                    if bool(bool(mem[_257 + 31 len 1] < 78)) or bool(bool(mem[_257 + 31 len 1] < 32)):
                        if 10^mem[_257 + 31 len 1] > -1:
                            revert with 'NH{q', 17
                        if not 10^mem[_257 + 31 len 1]:
                            revert with 'NH{q', 18
                        if idx >= mem[floor32(arg3.length) + 97]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, _239) / 10^mem[_257 + 31 len 1] >= mem[(32 * idx) + floor32(arg3.length) + 129]:
                            return address(_253), Mask(112, 0, _239) / 10^mem[_257 + 31 len 1]
                    else:
                        t = 10
                        u = 1
                        s = mem[_257 + 31 len 1]
                        while s > 1:
                            if t > -1 / t:
                                revert with 'NH{q', 17
                            if not bool(s):
                                t = t * t
                                u = u
                                s = uint255(s) * 0.5
                                continue 
                            t = t * t
                            u = u * t
                            s = uint255(s) * 0.5
                            continue 
                        if u > -1 / t:
                            revert with 'NH{q', 17
                        if not u * t:
                            revert with 'NH{q', 18
                        if idx >= mem[floor32(arg3.length) + 97]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, _239) / u * t >= mem[(32 * idx) + floor32(arg3.length) + 129]:
                            return address(_253), Mask(112, 0, _239) / u * t
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return stor1, 0
}



}
