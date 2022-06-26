contract main {




// =====================  Runtime code  =====================


address govAddress;
address vaultAddress;
address indexTokenAddress;
address quoteTokenAddress;
array of struct sub_4bb6b505;
array of struct sub_78a4f403;

function gov() payable {
    return govAddress
}

function quoteToken() payable {
    return quoteTokenAddress
}

function sub_4bb6b505(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_4bb6b505.length
    return sub_4bb6b505[arg1].field_0
}

function sub_78a4f403(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_78a4f403.length
    return sub_78a4f403[arg1].field_0
}

function indexToken() payable {
    return indexTokenAddress
}

function vault() payable {
    return vaultAddress
}

function _fallback() payable {
    revert
}

function setGov(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if govAddress != msg.sender:
        revert with 0, 'My: forbidden'
    govAddress = arg1
}

function sub_5636f86a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if govAddress != msg.sender:
        revert with 0, 'My: forbidden'
    idx = 0
    while idx < sub_4bb6b505.length:
        mem[0] = 4
        if sub_4bb6b505[idx].field_0 != address(arg1):
            idx = idx + 1
            continue 
        s = idx
        while s < sub_4bb6b505.length - 1:
            require s + 1 < sub_4bb6b505.length
            require s < sub_4bb6b505.length
            mem[0] = 4
            sub_4bb6b505[s].field_0 = sub_4bb6b505[s].field_256
            s = s + 1
            continue 
        require sub_4bb6b505.length
        sub_4bb6b505[sub_4bb6b505.length].field_0 = 0
        sub_4bb6b505.length--
}

function sub_6f99754b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if govAddress != msg.sender:
        revert with 0, 'My: forbidden'
    idx = 0
    while idx < sub_78a4f403.length:
        mem[0] = 5
        if sub_78a4f403[idx].field_0 != address(arg1):
            idx = idx + 1
            continue 
        s = idx
        while s < sub_78a4f403.length - 1:
            require s + 1 < sub_78a4f403.length
            require s < sub_78a4f403.length
            mem[0] = 5
            sub_78a4f403[s].field_0 = sub_78a4f403[s].field_256
            s = s + 1
            continue 
        require sub_78a4f403.length
        sub_78a4f403[sub_78a4f403.length].field_0 = 0
        sub_78a4f403.length--
}

function sub_1d110b5c(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if govAddress != msg.sender:
        revert with 0, 'My: forbidden'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        sub_4bb6b505.length++
        mem[0] = 4
        sub_4bb6b505[sub_4bb6b505.length].field_0 = address(cd[((32 * idx) + cd[4] + 36)])
        idx = idx + 1
        continue 
    idx = 0
    while idx < ('cd', 36).length:
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        sub_78a4f403.length++
        mem[0] = 5
        sub_78a4f403[sub_78a4f403.length].field_0 = address(cd[((32 * idx) + cd[36] + 36)])
        idx = idx + 1
        continue 
}

function sub_f9d1e698(?) payable {
    mem[64] = 96
    idx = 0
    s = 0
    while idx < sub_4bb6b505.length:
        mem[0] = 4
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.getPosition(address arg1, address arg2, address arg3, bool arg4) with:
                gas gas_remaining wei
               args sub_4bb6b505[idx].field_0, indexTokenAddress, indexTokenAddress, 1
        mem[mem[64] len 256] = ext_call.return_data[0 len 256]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _37 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 256
        require mem[_37] == mem[_37]
        require mem[_37 + 32] == mem[_37 + 32]
        require mem[_37 + 64] == mem[_37 + 64]
        require mem[_37 + 96] == mem[_37 + 96]
        require mem[_37 + 128] == mem[_37 + 128]
        require mem[_37 + 160] == mem[_37 + 160]
        require mem[_37 + 192] == bool(mem[_37 + 192])
        require mem[_37 + 224] == mem[_37 + 224]
        if mem[_37] <= 0:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    idx = 0
    t = 0
    while idx < sub_78a4f403.length:
        mem[0] = 5
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.getPosition(address arg1, address arg2, address arg3, bool arg4) with:
                gas gas_remaining wei
               args sub_78a4f403[idx].field_0, quoteTokenAddress, indexTokenAddress, 0
        mem[mem[64] len 256] = ext_call.return_data[0 len 256]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _62 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 256
        require mem[_62] == mem[_62]
        require mem[_62 + 32] == mem[_62 + 32]
        require mem[_62 + 64] == mem[_62 + 64]
        require mem[_62 + 96] == mem[_62 + 96]
        require mem[_62 + 128] == mem[_62 + 128]
        require mem[_62 + 160] == mem[_62 + 160]
        require mem[_62 + 192] == bool(mem[_62 + 192])
        require mem[_62 + 224] == mem[_62 + 224]
        if mem[_62] <= 0:
            idx = idx + 1
            t = t
            continue 
        idx = idx + 1
        t = t + 1
        continue 
    if uint8(t) <= uint8(s):
        return 1
    return 0
}

function sub_6f167004(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if govAddress != msg.sender:
        revert with 0, 'My: forbidden'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if govAddress != msg.sender:
            revert with 0, 'My: forbidden'
        s = 0
        while s < sub_4bb6b505.length:
            mem[0] = 4
            if sub_4bb6b505[s].field_0 != address(cd[((32 * idx) + cd[4] + 36)]):
                s = s + 1
                continue 
            t = s
            while t < sub_4bb6b505.length - 1:
                require t + 1 < sub_4bb6b505.length
                require t < sub_4bb6b505.length
                mem[0] = 4
                sub_4bb6b505[t].field_0 = sub_4bb6b505[t].field_256
                t = t + 1
                continue 
            require sub_4bb6b505.length
            mem[0] = 4
            sub_4bb6b505[sub_4bb6b505.length].field_0 = 0
            sub_4bb6b505.length--
            idx = idx + 1
            continue 
        idx = idx + 1
        continue 
    idx = 0
    while idx < ('cd', 36).length:
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        if govAddress != msg.sender:
            revert with 0, 'My: forbidden'
        s = 0
        while s < sub_78a4f403.length:
            mem[0] = 5
            if sub_78a4f403[s].field_0 != address(cd[((32 * idx) + cd[36] + 36)]):
                s = s + 1
                continue 
            t = s
            while t < sub_78a4f403.length - 1:
                require t + 1 < sub_78a4f403.length
                require t < sub_78a4f403.length
                mem[0] = 5
                sub_78a4f403[t].field_0 = sub_78a4f403[t].field_256
                t = t + 1
                continue 
            require sub_78a4f403.length
            mem[0] = 5
            sub_78a4f403[sub_78a4f403.length].field_0 = 0
            sub_78a4f403.length--
            idx = idx + 1
            continue 
        idx = idx + 1
        continue 
}

function closeAll() payable {
    mem[64] = 96
    if govAddress != msg.sender:
        revert with 0, 'My: forbidden'
    idx = 0
    while idx < sub_78a4f403.length:
        mem[0] = 5
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.getPosition(address arg1, address arg2, address arg3, bool arg4) with:
                gas gas_remaining wei
               args sub_78a4f403[idx].field_0, quoteTokenAddress, indexTokenAddress, 0
        mem[mem[64] len 256] = ext_call.return_data[0 len 256]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _43 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 256
        _45 = mem[_43]
        require mem[_43] == mem[_43]
        require mem[_43 + 32] == mem[_43 + 32]
        require mem[_43 + 64] == mem[_43 + 64]
        require mem[_43 + 96] == mem[_43 + 96]
        require mem[_43 + 128] == mem[_43 + 128]
        require mem[_43 + 160] == mem[_43 + 160]
        require mem[_43 + 192] == bool(mem[_43 + 192])
        require mem[_43 + 224] == mem[_43 + 224]
        if mem[_43] > 0:
            require idx < sub_78a4f403.length
            mem[0] = 5
            mem[mem[64] + 4] = sub_78a4f403[idx].field_0
            mem[mem[64] + 36] = quoteTokenAddress
            mem[mem[64] + 68] = indexTokenAddress
            mem[mem[64] + 100] = 0
            mem[mem[64] + 132] = _45
            mem[mem[64] + 164] = 0
            mem[mem[64] + 196] = msg.sender
            require ext_code.size(vaultAddress)
            call vaultAddress.decreasePosition(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, bool arg6, address arg7) with:
                 gas gas_remaining wei
                args sub_78a4f403[idx].field_0, quoteTokenAddress, indexTokenAddress, 0, _45, 0, msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _67 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_67] == mem[_67]
        idx = idx + 1
        continue 
    idx = 0
    while idx < sub_4bb6b505.length:
        mem[0] = 4
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.getPosition(address arg1, address arg2, address arg3, bool arg4) with:
                gas gas_remaining wei
               args sub_4bb6b505[idx].field_0, indexTokenAddress, indexTokenAddress, 1
        mem[mem[64] len 256] = ext_call.return_data[0 len 256]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _74 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 256
        _75 = mem[_74]
        require mem[_74] == mem[_74]
        require mem[_74 + 32] == mem[_74 + 32]
        require mem[_74 + 64] == mem[_74 + 64]
        require mem[_74 + 96] == mem[_74 + 96]
        require mem[_74 + 128] == mem[_74 + 128]
        require mem[_74 + 160] == mem[_74 + 160]
        require mem[_74 + 192] == bool(mem[_74 + 192])
        require mem[_74 + 224] == mem[_74 + 224]
        if mem[_74] > 0:
            require idx < sub_4bb6b505.length
            mem[0] = 4
            mem[mem[64] + 4] = sub_4bb6b505[idx].field_0
            mem[mem[64] + 36] = indexTokenAddress
            mem[mem[64] + 68] = indexTokenAddress
            mem[mem[64] + 100] = 0
            mem[mem[64] + 132] = _75
            mem[mem[64] + 164] = 1
            mem[mem[64] + 196] = msg.sender
            require ext_code.size(vaultAddress)
            call vaultAddress.decreasePosition(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, bool arg6, address arg7) with:
                 gas gas_remaining wei
                args sub_4bb6b505[idx].field_0, indexTokenAddress, indexTokenAddress, 0, _75, 1, msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _86 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_86] == mem[_86]
        idx = idx + 1
        continue 
}

function sub_a1cf946b(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    mem[96] = arg1
    require arg2 == arg2
    mem[128] = arg2
    require arg3 == arg3
    mem[160] = arg3
    require arg4 == arg4
    mem[192] = arg4
    require arg5 == arg5
    mem[224] = arg5
    if govAddress != msg.sender:
        revert with 0, 'My: forbidden'
    if arg5 < block.timestamp:
        revert with 0, 'My: EXPIRED'
    mem[260] = indexTokenAddress
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.getMinPrice(address arg1) with:
            gas gas_remaining wei
           args indexTokenAddress
    mem[256] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 260] = indexTokenAddress
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.getMaxPrice(address arg1) with:
            gas gas_remaining wei
           args indexTokenAddress
    mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= arg3:
        require ext_code.size(this.address)
        staticcall this.address.0xf9d1e698 with:
                gas gas_remaining wei
        mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 256
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if ext_call.return_data[31 len 1]:
            return 0
        idx = 0
        while idx < sub_78a4f403.length:
            mem[0] = 5
            require ext_code.size(vaultAddress)
            staticcall vaultAddress.getPosition(address arg1, address arg2, address arg3, bool arg4) with:
                    gas gas_remaining wei
                   args sub_78a4f403[idx].field_0, quoteTokenAddress, indexTokenAddress, 0
            mem[mem[64] len 256] = ext_call.return_data[0 len 256]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _110 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 256
            _114 = mem[_110]
            require mem[_110] == mem[_110]
            require mem[_110 + 32] == mem[_110 + 32]
            _122 = mem[_110 + 64]
            require mem[_110 + 64] == mem[_110 + 64]
            require mem[_110 + 96] == mem[_110 + 96]
            require mem[_110 + 128] == mem[_110 + 128]
            require mem[_110 + 160] == mem[_110 + 160]
            require mem[_110 + 192] == bool(mem[_110 + 192])
            _142 = mem[_110 + 224]
            require mem[_110 + 224] == mem[_110 + 224]
            if mem[_110] <= 0:
                idx = idx + 1
                continue 
            mem[mem[64] + 36] = mem[_110]
            mem[mem[64] + 68] = _122
            mem[mem[64] + 100] = 0
            mem[mem[64] + 132] = _142
            require ext_code.size(vaultAddress)
            staticcall vaultAddress.getDelta(address arg1, uint256 arg2, uint256 arg3, bool arg4, uint256 arg5) with:
                    gas gas_remaining wei
                   args indexTokenAddress, _114, _122, 0, _142
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _168 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            require mem[_168] == bool(mem[_168])
            require mem[_168 + 32] == mem[_168 + 32]
            if ext_call.return_data[0] >= _122:
                require idx < sub_78a4f403.length
                mem[0] = 5
                mem[mem[64] + 4] = sub_78a4f403[idx].field_0
                mem[mem[64] + 36] = quoteTokenAddress
                mem[mem[64] + 68] = indexTokenAddress
                mem[mem[64] + 100] = 0
                mem[mem[64] + 132] = _114
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = msg.sender
                require ext_code.size(vaultAddress)
                call vaultAddress.decreasePosition(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, bool arg6, address arg7) with:
                     gas gas_remaining wei
                    args sub_78a4f403[idx].field_0, quoteTokenAddress, indexTokenAddress, 0, _114, 0, msg.sender
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _576 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_576] == mem[_576]
            else:
                if mem[_168 + 32] <= 0:
                    idx = idx + 1
                    continue 
                require idx < sub_78a4f403.length
                mem[0] = 5
                mem[mem[64] + 4] = sub_78a4f403[idx].field_0
                mem[mem[64] + 36] = quoteTokenAddress
                mem[mem[64] + 68] = indexTokenAddress
                mem[mem[64] + 100] = 0
                mem[mem[64] + 132] = _114
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = msg.sender
                require ext_code.size(vaultAddress)
                call vaultAddress.decreasePosition(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, bool arg6, address arg7) with:
                     gas gas_remaining wei
                    args sub_78a4f403[idx].field_0, quoteTokenAddress, indexTokenAddress, 0, _114, 0, msg.sender
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _580 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_580] == mem[_580]
            require idx < sub_78a4f403.length
            emit 0x602b9438: sub_78a4f403[idx].field_0, 1, _114, ext_call.return_data[0]
            return 1
        idx = 0
        while idx < sub_4bb6b505.length:
            mem[0] = 4
            require ext_code.size(vaultAddress)
            staticcall vaultAddress.getPosition(address arg1, address arg2, address arg3, bool arg4) with:
                    gas gas_remaining wei
                   args sub_4bb6b505[idx].field_0, indexTokenAddress, indexTokenAddress, 1
            mem[mem[64] len 256] = ext_call.return_data[0 len 256]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _688 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 256
            require mem[_688] == mem[_688]
            require mem[_688 + 32] == mem[_688 + 32]
            require mem[_688 + 64] == mem[_688 + 64]
            require mem[_688 + 96] == mem[_688 + 96]
            require mem[_688 + 128] == mem[_688 + 128]
            require mem[_688 + 160] == mem[_688 + 160]
            require mem[_688 + 192] == bool(mem[_688 + 192])
            require mem[_688 + 224] == mem[_688 + 224]
            if mem[_688]:
                idx = idx + 1
                continue 
            require ext_code.size(indexTokenAddress)
            staticcall indexTokenAddress.0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _710 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _712 = mem[_710]
            require mem[_710] == mem[_710 + 31 len 1]
            _714 = mem[128]
            if not 10^mem[_710 + 31 len 1]:
                require ext_call.return_data[0]
                _718 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = vaultAddress
                mem[mem[64] + 100] = 0 / ext_call.return_data[0]
                _725 = mem[64]
                mem[mem[64]] = 100
                mem[64] = mem[64] + 132
                mem[_725 + 32] = mem[_725 + 36 len 28] or 0x23b872dd00000000000000000000000000000000000000000000000000000000
                mem[64] = _718 + 196
                mem[_718 + 132] = 32
                mem[_718 + 164] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(indexTokenAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _749 = mem[_725]
                s = 0
                while s < _749:
                    mem[_718 + s + 196] = mem[_725 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_749) > _749:
                    mem[_718 + _749 + 196] = 0
                call indexTokenAddress.mem[_718 + 196 len 4] with:
                     gas gas_remaining wei
                    args mem[_718 + 200 len _749 - 4]
                if return_data.size:
                    mem[_718 + 196] = return_data.size
                    mem[_718 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_718 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_718 + ceil32(return_data.size) + 201] = 32
                        idx = 0
                        while idx < 32:
                            mem[_718 + ceil32(return_data.size) + idx + 265] = mem[_718 + idx + 164]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_718 + ceil32(return_data.size) + 265]
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[_718 + 228] == bool(mem[_718 + 228])
                        if not mem[_718 + 228]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require idx < sub_4bb6b505.length
                    if mem[96] + mem[128] < mem[96]:
                        revert with 0, 'ds-math-add-overflow'
                    require ext_code.size(vaultAddress)
                    call vaultAddress.increasePosition(address arg1, address arg2, address arg3, uint256 arg4, bool arg5) with:
                         gas gas_remaining wei
                        args sub_4bb6b505[idx].field_0, indexTokenAddress, indexTokenAddress, mem[96] + mem[128], 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require idx < sub_4bb6b505.length
                else:
                    if not ext_call.success:
                        if mem[96] > 0:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_718 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_718 + 200] = 32
                        idx = 0
                        while idx < 32:
                            mem[_718 + idx + 264] = mem[_718 + idx + 164]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_718 + 264]
                    if mem[96] > 0:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require idx < sub_4bb6b505.length
                    if mem[96] + mem[128] < mem[96]:
                        revert with 0, 'ds-math-add-overflow'
                    mem[_718 + 196] = 0x48d91abf00000000000000000000000000000000000000000000000000000000
                    mem[_718 + 200] = sub_4bb6b505[idx].field_0
                    mem[_718 + 232] = indexTokenAddress
                    mem[_718 + 264] = indexTokenAddress
                    mem[_718 + 296] = mem[96] + mem[128]
                    mem[_718 + 328] = 1
                    require ext_code.size(vaultAddress)
                    call vaultAddress.increasePosition(address arg1, address arg2, address arg3, uint256 arg4, bool arg5) with:
                         gas gas_remaining wei
                        args sub_4bb6b505[idx].field_0, indexTokenAddress, indexTokenAddress, mem[96] + mem[128], 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require idx < sub_4bb6b505.length
                    mem[_718 + 196] = sub_4bb6b505[idx].field_0
                    mem[_718 + 228] = 1
                    mem[_718 + 260] = mem[96]
                    mem[_718 + 292] = ext_call.return_data[0]
            else:
                require 10^mem[_710 + 31 len 1]
                if mem[128] * 10^mem[_710 + 31 len 1] / 10^mem[_710 + 31 len 1] != mem[128]:
                    revert with 0, 'ds-math-mul-overflow'
                require ext_call.return_data[0]
                _720 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = vaultAddress
                mem[mem[64] + 100] = _714 * 10^uint8(_712) / ext_call.return_data[0]
                _731 = mem[64]
                mem[mem[64]] = 100
                mem[64] = mem[64] + 132
                mem[_731 + 32] = mem[_731 + 36 len 28] or 0x23b872dd00000000000000000000000000000000000000000000000000000000
                mem[64] = _720 + 196
                mem[_720 + 132] = 32
                mem[_720 + 164] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(indexTokenAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _753 = mem[_731]
                s = 0
                while s < _753:
                    mem[_720 + s + 196] = mem[_731 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_753) > _753:
                    mem[_720 + _753 + 196] = 0
                call indexTokenAddress.mem[_720 + 196 len 4] with:
                     gas gas_remaining wei
                    args mem[_720 + 200 len _753 - 4]
                if return_data.size:
                    mem[_720 + 196] = return_data.size
                    mem[_720 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_720 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_720 + ceil32(return_data.size) + 201] = 32
                        idx = 0
                        while idx < 32:
                            mem[_720 + ceil32(return_data.size) + idx + 265] = mem[_720 + idx + 164]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_720 + ceil32(return_data.size) + 265]
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[_720 + 228] == bool(mem[_720 + 228])
                        if not mem[_720 + 228]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require idx < sub_4bb6b505.length
                    if mem[96] + mem[128] < mem[96]:
                        revert with 0, 'ds-math-add-overflow'
                    require ext_code.size(vaultAddress)
                    call vaultAddress.increasePosition(address arg1, address arg2, address arg3, uint256 arg4, bool arg5) with:
                         gas gas_remaining wei
                        args sub_4bb6b505[idx].field_0, indexTokenAddress, indexTokenAddress, mem[96] + mem[128], 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require idx < sub_4bb6b505.length
                else:
                    if not ext_call.success:
                        if mem[96] > 0:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_720 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_720 + 200] = 32
                        idx = 0
                        while idx < 32:
                            mem[_720 + idx + 264] = mem[_720 + idx + 164]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_720 + 264]
                    if mem[96] > 0:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require idx < sub_4bb6b505.length
                    if mem[96] + mem[128] < mem[96]:
                        revert with 0, 'ds-math-add-overflow'
                    mem[_720 + 196] = 0x48d91abf00000000000000000000000000000000000000000000000000000000
                    mem[_720 + 200] = sub_4bb6b505[idx].field_0
                    mem[_720 + 232] = indexTokenAddress
                    mem[_720 + 264] = indexTokenAddress
                    mem[_720 + 296] = mem[96] + mem[128]
                    mem[_720 + 328] = 1
                    require ext_code.size(vaultAddress)
                    call vaultAddress.increasePosition(address arg1, address arg2, address arg3, uint256 arg4, bool arg5) with:
                         gas gas_remaining wei
                        args sub_4bb6b505[idx].field_0, indexTokenAddress, indexTokenAddress, mem[96] + mem[128], 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require idx < sub_4bb6b505.length
                    mem[_720 + 196] = sub_4bb6b505[idx].field_0
                    mem[_720 + 228] = 1
                    mem[_720 + 260] = mem[96]
                    mem[_720 + 292] = ext_call.return_data[0]
            emit 0x602b9438: sub_4bb6b505[idx].field_0, 1, mem[96], ext_call.return_data[0]
            return 2
        return 5
    if ext_call.return_data[0] < arg4:
        return 0
    require ext_code.size(this.address)
    staticcall this.address.0xf9d1e698 with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 256
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if ext_call.return_data[31 len 1] != 1:
        return 0
    idx = 0
    while idx < sub_4bb6b505.length:
        mem[0] = 4
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.getPosition(address arg1, address arg2, address arg3, bool arg4) with:
                gas gas_remaining wei
               args sub_4bb6b505[idx].field_0, indexTokenAddress, indexTokenAddress, 1
        mem[mem[64] len 256] = ext_call.return_data[0 len 256]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _108 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 256
        _113 = mem[_108]
        require mem[_108] == mem[_108]
        _117 = mem[_108 + 32]
        require mem[_108 + 32] == mem[_108 + 32]
        _121 = mem[_108 + 64]
        require mem[_108 + 64] == mem[_108 + 64]
        require mem[_108 + 96] == mem[_108 + 96]
        require mem[_108 + 128] == mem[_108 + 128]
        require mem[_108 + 160] == mem[_108 + 160]
        require mem[_108 + 192] == bool(mem[_108 + 192])
        _141 = mem[_108 + 224]
        require mem[_108 + 224] == mem[_108 + 224]
        if mem[_108] <= 0:
            idx = idx + 1
            continue 
        mem[mem[64] + 36] = mem[_108]
        mem[mem[64] + 68] = _121
        mem[mem[64] + 100] = 1
        mem[mem[64] + 132] = _141
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.getDelta(address arg1, uint256 arg2, uint256 arg3, bool arg4, uint256 arg5) with:
                gas gas_remaining wei
               args indexTokenAddress, _113, _121, 1, _141
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _167 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        require mem[_167] == bool(mem[_167])
        require mem[_167 + 32] == mem[_167 + 32]
        if ext_call.return_data[0] <= _121:
            require idx < sub_4bb6b505.length
            mem[0] = 4
            mem[mem[64] + 4] = sub_4bb6b505[idx].field_0
            mem[mem[64] + 36] = indexTokenAddress
            mem[mem[64] + 68] = indexTokenAddress
            mem[mem[64] + 100] = 0
            mem[mem[64] + 132] = _113
            mem[mem[64] + 164] = 1
            mem[mem[64] + 196] = msg.sender
            require ext_code.size(vaultAddress)
            call vaultAddress.decreasePosition(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, bool arg6, address arg7) with:
                 gas gas_remaining wei
                args sub_4bb6b505[idx].field_0, indexTokenAddress, indexTokenAddress, 0, _113, 1, msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _573 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_573] == mem[_573]
        else:
            if mem[_167 + 32] <= 0:
                idx = idx + 1
                continue 
            require idx < sub_4bb6b505.length
            mem[0] = 4
            mem[mem[64] + 4] = sub_4bb6b505[idx].field_0
            mem[mem[64] + 36] = indexTokenAddress
            mem[mem[64] + 68] = indexTokenAddress
            mem[mem[64] + 100] = 0
            mem[mem[64] + 132] = _113
            mem[mem[64] + 164] = 1
            mem[mem[64] + 196] = msg.sender
            require ext_code.size(vaultAddress)
            call vaultAddress.decreasePosition(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, bool arg6, address arg7) with:
                 gas gas_remaining wei
                args sub_4bb6b505[idx].field_0, indexTokenAddress, indexTokenAddress, 0, _113, 1, msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _577 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_577] == mem[_577]
        require idx < sub_4bb6b505.length
        if _113 - _117 > _113:
            revert with 0, 'ds-math-sub-underflow'
        emit 0x602b9438: sub_4bb6b505[idx].field_0, 0, _113 - _117, ext_call.return_data[0]
        return 3
    idx = 0
    while idx < sub_78a4f403.length:
        mem[0] = 5
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.getPosition(address arg1, address arg2, address arg3, bool arg4) with:
                gas gas_remaining wei
               args sub_78a4f403[idx].field_0, quoteTokenAddress, indexTokenAddress, 0
        mem[mem[64] len 256] = ext_call.return_data[0 len 256]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _687 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 256
        require mem[_687] == mem[_687]
        require mem[_687 + 32] == mem[_687 + 32]
        require mem[_687 + 64] == mem[_687 + 64]
        require mem[_687 + 96] == mem[_687 + 96]
        require mem[_687 + 128] == mem[_687 + 128]
        require mem[_687 + 160] == mem[_687 + 160]
        require mem[_687 + 192] == bool(mem[_687 + 192])
        require mem[_687 + 224] == mem[_687 + 224]
        if mem[_687]:
            idx = idx + 1
            continue 
        require ext_code.size(quoteTokenAddress)
        staticcall quoteTokenAddress.0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _709 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _711 = mem[_709]
        require mem[_709] == mem[_709 + 31 len 1]
        _713 = mem[128]
        if not 10^mem[_709 + 31 len 1]:
            _717 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = vaultAddress
            mem[mem[64] + 100] = 0
            _723 = mem[64]
            mem[mem[64]] = 100
            mem[64] = mem[64] + 132
            mem[_723 + 32] = mem[_723 + 36 len 28] or 0x23b872dd00000000000000000000000000000000000000000000000000000000
            mem[64] = _717 + 196
            mem[_717 + 132] = 32
            mem[_717 + 164] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(quoteTokenAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            _747 = mem[_723]
            s = 0
            while s < _747:
                mem[_717 + s + 196] = mem[_723 + s + 32]
                s = s + 32
                continue 
            if ceil32(_747) > _747:
                mem[_717 + _747 + 196] = 0
            call quoteTokenAddress.mem[_717 + 196 len 4] with:
                 gas gas_remaining wei
                args mem[_717 + 200 len _747 - 4]
            if return_data.size:
                mem[_717 + 196] = return_data.size
                mem[_717 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_717 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_717 + ceil32(return_data.size) + 201] = 32
                    idx = 0
                    while idx < 32:
                        mem[_717 + ceil32(return_data.size) + idx + 265] = mem[_717 + idx + 164]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_717 + ceil32(return_data.size) + 265]
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[_717 + 228] == bool(mem[_717 + 228])
                    if not mem[_717 + 228]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                require idx < sub_78a4f403.length
                require ext_code.size(vaultAddress)
                call vaultAddress.increasePosition(address arg1, address arg2, address arg3, uint256 arg4, bool arg5) with:
                     gas gas_remaining wei
                    args sub_78a4f403[idx].field_0, quoteTokenAddress, indexTokenAddress, mem[96], 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require idx < sub_78a4f403.length
            else:
                if not ext_call.success:
                    if mem[96] > 0:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_717 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_717 + 200] = 32
                    idx = 0
                    while idx < 32:
                        mem[_717 + idx + 264] = mem[_717 + idx + 164]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_717 + 264]
                if mem[96] > 0:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                require idx < sub_78a4f403.length
                mem[_717 + 196] = 0x48d91abf00000000000000000000000000000000000000000000000000000000
                mem[_717 + 200] = sub_78a4f403[idx].field_0
                mem[_717 + 232] = quoteTokenAddress
                mem[_717 + 264] = indexTokenAddress
                mem[_717 + 296] = mem[96]
                mem[_717 + 328] = 0
                require ext_code.size(vaultAddress)
                call vaultAddress.increasePosition(address arg1, address arg2, address arg3, uint256 arg4, bool arg5) with:
                     gas gas_remaining wei
                    args sub_78a4f403[idx].field_0, quoteTokenAddress, indexTokenAddress, mem[96], 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require idx < sub_78a4f403.length
                mem[_717 + 196] = sub_78a4f403[idx].field_0
                mem[_717 + 228] = 0
                mem[_717 + 260] = mem[96]
                mem[_717 + 292] = ext_call.return_data[0]
        else:
            require 10^mem[_709 + 31 len 1]
            if mem[128] * 10^mem[_709 + 31 len 1] / 10^mem[_709 + 31 len 1] != mem[128]:
                revert with 0, 'ds-math-mul-overflow'
            _719 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = vaultAddress
            mem[mem[64] + 100] = _713 * 10^uint8(_711) / 1000000000000 * 10^18
            _729 = mem[64]
            mem[mem[64]] = 100
            mem[64] = mem[64] + 132
            mem[_729 + 32] = mem[_729 + 36 len 28] or 0x23b872dd00000000000000000000000000000000000000000000000000000000
            mem[64] = _719 + 196
            mem[_719 + 132] = 32
            mem[_719 + 164] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(quoteTokenAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            _751 = mem[_729]
            s = 0
            while s < _751:
                mem[_719 + s + 196] = mem[_729 + s + 32]
                s = s + 32
                continue 
            if ceil32(_751) > _751:
                mem[_719 + _751 + 196] = 0
            call quoteTokenAddress.mem[_719 + 196 len 4] with:
                 gas gas_remaining wei
                args mem[_719 + 200 len _751 - 4]
            if return_data.size:
                mem[_719 + 196] = return_data.size
                mem[_719 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_719 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_719 + ceil32(return_data.size) + 201] = 32
                    idx = 0
                    while idx < 32:
                        mem[_719 + ceil32(return_data.size) + idx + 265] = mem[_719 + idx + 164]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_719 + ceil32(return_data.size) + 265]
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[_719 + 228] == bool(mem[_719 + 228])
                    if not mem[_719 + 228]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                require idx < sub_78a4f403.length
                require ext_code.size(vaultAddress)
                call vaultAddress.increasePosition(address arg1, address arg2, address arg3, uint256 arg4, bool arg5) with:
                     gas gas_remaining wei
                    args sub_78a4f403[idx].field_0, quoteTokenAddress, indexTokenAddress, mem[96], 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require idx < sub_78a4f403.length
            else:
                if not ext_call.success:
                    if mem[96] > 0:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_719 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_719 + 200] = 32
                    idx = 0
                    while idx < 32:
                        mem[_719 + idx + 264] = mem[_719 + idx + 164]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_719 + 264]
                if mem[96] > 0:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                require idx < sub_78a4f403.length
                mem[_719 + 196] = 0x48d91abf00000000000000000000000000000000000000000000000000000000
                mem[_719 + 200] = sub_78a4f403[idx].field_0
                mem[_719 + 232] = quoteTokenAddress
                mem[_719 + 264] = indexTokenAddress
                mem[_719 + 296] = mem[96]
                mem[_719 + 328] = 0
                require ext_code.size(vaultAddress)
                call vaultAddress.increasePosition(address arg1, address arg2, address arg3, uint256 arg4, bool arg5) with:
                     gas gas_remaining wei
                    args sub_78a4f403[idx].field_0, quoteTokenAddress, indexTokenAddress, mem[96], 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require idx < sub_78a4f403.length
                mem[_719 + 196] = sub_78a4f403[idx].field_0
                mem[_719 + 228] = 0
                mem[_719 + 260] = mem[96]
                mem[_719 + 292] = ext_call.return_data[0]
        emit 0x602b9438: sub_78a4f403[idx].field_0, 0, mem[96], ext_call.return_data[0]
        return 4
    return 6
}



}
