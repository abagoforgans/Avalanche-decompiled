contract main {




// =====================  Runtime code  =====================


address SELFAddress;
address WETHAddress;

function SELF() {
    return SELFAddress
}

function WETH() {
    return WETHAddress
}

function _fallback() payable {
    revert
}

function check(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(arg1)
    staticcall arg1.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(arg1)
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 17
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < Mask(112, 0, ext_call.return_data[32]):
        revert with 0, 17
    return address(ext_call.return_data[0]), 
           address(ext_call.return_data[0]),
           ext_call.return_data[0] << 144,
           ext_call.return_data[32] << 144,
           Mask(144, 112, ext_call.return_data[0]),
           ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32])
}

function encodeAddress(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = 0xdcf2e4d900000000000000000000000000000000000000000000000000000000
    mem[100] = 32
    mem[132] = arg1.length
    idx = 0
    s = 164
    t = arg1 + 36
    while idx < arg1.length:
        require cd[t] == address(cd[t])
        mem[s] = address(cd[t])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(0x8539fbb16d06e51ddd22d89bd10b4b41852337a1)
    delegate 0x8539fbb16d06e51ddd22d89bd10b4b41852337a1.0xdcf2e4d9 with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=mem[164 len 32 * arg1.length])
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _20 = mem[96 len 4], 0
    require mem[96 len 4], 0 <= test266151307()
    require return_data.size + 96 > mem[96 len 4], 0 + 127
    _21 = mem[mem[96 len 4], 0 + 96]
    if mem[mem[96 len 4], 0 + 96] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[mem[96 len 4], 0 + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], 0 + 96])) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], 0 + 96])) + 97
    mem[ceil32(return_data.size) + 96] = _21
    require _20 + _21 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_21)] = mem[_20 + 128 len ceil32(_21)]
    if ceil32(_21) <= _21:
        _35 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _21
        mem[mem[64] + 64 len ceil32(_21)] = mem[ceil32(return_data.size) + 128 len ceil32(_21)]
        if ceil32(_21) <= _21:
            return Array(len=_21, data=mem[mem[64] + 64 len ceil32(_21)])
        mem[mem[64] + _21 + 64] = 0
        return memory
          from mem[64]
           len ceil32(_21) + _35 + -mem[64] + 64
    mem[ceil32(return_data.size) + _21 + 128] = 0
    _36 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _21
    mem[mem[64] + 64 len ceil32(_21)] = mem[ceil32(return_data.size) + 128 len ceil32(_21)]
    if ceil32(_21) <= _21:
        return Array(len=_21, data=mem[mem[64] + 64 len ceil32(_21)])
    mem[mem[64] + _21 + 64] = 0
    return memory
      from mem[64]
       len ceil32(_21) + _36 + -mem[64] + 64
}

function JustGo(bytes arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(ceil32(arg1.length)) + 97] = 0xaf91c8aa00000000000000000000000000000000000000000000000000000000
    mem[ceil32(ceil32(arg1.length)) + 101] = 32
    mem[ceil32(ceil32(arg1.length)) + 133] = arg1.length
    mem[ceil32(ceil32(arg1.length)) + 165 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 27) + 256, 32) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 27) + 256
    if ceil32(arg1.length) <= arg1.length:
        require ext_code.size(0x8539fbb16d06e51ddd22d89bd10b4b41852337a1)
        delegate 0x8539fbb16d06e51ddd22d89bd10b4b41852337a1.decodeAddress(bytes arg1) with:
             gas gas_remaining wei
            args Array(len=arg1.length, data=arg1[all])
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(ceil32(arg1.length)) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 97
        require return_data.size >= 32
        _84 = mem[ceil32(ceil32(arg1.length)) + 97 len 4], 0
        require mem[ceil32(ceil32(arg1.length)) + 97 len 4], 0 <= test266151307()
        require ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 97 len 4], 0 + 128 < ceil32(ceil32(arg1.length)) + return_data.size + 97
        _86 = mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 97 len 4], 0 + 97]
        if mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 97 len 4], 0 + 97] > test266151307():
            revert with 0, 65
        if floor32(mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 97 len 4], 0 + 97]) + 1 < 0 or ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + floor32(mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 97 len 4], 0 + 97]) + 98 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + floor32(mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 97 len 4], 0 + 97]) + 98
        mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 97] = mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 97 len 4], 0 + 97]
        require return_data.size >= _84 + (32 * _86) + 32
        s = ceil32(ceil32(arg1.length)) + _84 + 129
        t = ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 129
        u = 32 * _86
        idx = 0
        while idx < _86:
            _154 = mem[s]
            require mem[s] == mem[s + 12 len 20]
            mem[t] = mem[s]
            s = s + 32
            t = t + 32
            u = _154
            idx = idx + 1
            continue 
        if 0 >= _86:
            revert with 0, 50
        _158 = mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 129]
        mem[mem[64] + 4] = this.address
        require ext_code.size(WETHAddress)
        staticcall WETHAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _164 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _166 = mem[_164]
        _168 = mem[64]
        mem[mem[64]] = 0
        mem[64] = mem[64] + 32
        mem[_168 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        mem[_168 + 36] = arg2
        mem[_168 + 68] = arg3
        mem[_168 + 100] = this.address
        mem[_168 + 132] = 128
        mem[_168 + 164] = mem[_168]
        mem[_168 + 196 len ceil32(mem[_168])] = mem[_168 + 32 len ceil32(mem[_168])]
        if ceil32(mem[_168]) <= mem[_168]:
            require ext_code.size(address(_158))
            call address(_158) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len ceil32(mem[_168]) + _168 + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = this.address
            require ext_code.size(WETHAddress)
            staticcall WETHAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _232 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_232] < _166:
                revert with 0, 17
            if mem[_232] - _166 < arg4:
                revert with 0, 'no profit'
            if mem[_232]:
                require ext_code.size(WETHAddress)
                call WETHAddress.withdraw(uint256 arg1) with:
                     gas gas_remaining wei
                    args mem[_232]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            mem[_168 + mem[_168] + 196] = 0
            require ext_code.size(address(_158))
            call address(_158) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len ceil32(mem[_168]) + _168 + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = this.address
            require ext_code.size(WETHAddress)
            staticcall WETHAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _234 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_234] < _166:
                revert with 0, 17
            if mem[_234] - _166 < arg4:
                revert with 0, 'no profit'
            if mem[_234]:
                require ext_code.size(WETHAddress)
                call WETHAddress.withdraw(uint256 arg1) with:
                     gas gas_remaining wei
                    args mem[_234]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    else:
        mem[ceil32(ceil32(arg1.length)) + arg1.length + 165] = 0
        require ext_code.size(0x8539fbb16d06e51ddd22d89bd10b4b41852337a1)
        delegate 0x8539fbb16d06e51ddd22d89bd10b4b41852337a1.decodeAddress(bytes arg1) with:
             gas gas_remaining wei
            args Array(len=arg1.length, data=arg1[all])
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(ceil32(arg1.length)) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 97
        require return_data.size >= 32
        _85 = mem[ceil32(ceil32(arg1.length)) + 97 len 4], 0
        require mem[ceil32(ceil32(arg1.length)) + 97 len 4], 0 <= test266151307()
        require ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 97 len 4], 0 + 128 < ceil32(ceil32(arg1.length)) + return_data.size + 97
        _87 = mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 97 len 4], 0 + 97]
        if mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 97 len 4], 0 + 97] > test266151307():
            revert with 0, 65
        if floor32(mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 97 len 4], 0 + 97]) + 1 < 0 or ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + floor32(mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 97 len 4], 0 + 97]) + 98 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + floor32(mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 97 len 4], 0 + 97]) + 98
        mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 97] = mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 97 len 4], 0 + 97]
        require return_data.size >= _85 + (32 * _87) + 32
        s = ceil32(ceil32(arg1.length)) + _85 + 129
        t = ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 129
        u = 32 * _87
        idx = 0
        while idx < _87:
            _155 = mem[s]
            require mem[s] == mem[s + 12 len 20]
            mem[t] = mem[s]
            s = s + 32
            t = t + 32
            u = _155
            idx = idx + 1
            continue 
        if 0 >= _87:
            revert with 0, 50
        _160 = mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 129]
        mem[mem[64] + 4] = this.address
        require ext_code.size(WETHAddress)
        staticcall WETHAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _165 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _167 = mem[_165]
        _169 = mem[64]
        mem[mem[64]] = 0
        mem[64] = mem[64] + 32
        mem[_169 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        mem[_169 + 36] = arg2
        mem[_169 + 68] = arg3
        mem[_169 + 100] = this.address
        mem[_169 + 132] = 128
        mem[_169 + 164] = mem[_169]
        mem[_169 + 196 len ceil32(mem[_169])] = mem[_169 + 32 len ceil32(mem[_169])]
        if ceil32(mem[_169]) <= mem[_169]:
            require ext_code.size(address(_160))
            call address(_160) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len ceil32(mem[_169]) + _169 + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = this.address
            require ext_code.size(WETHAddress)
            staticcall WETHAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _233 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_233] < _167:
                revert with 0, 17
            if mem[_233] - _167 < arg4:
                revert with 0, 'no profit'
            if mem[_233]:
                require ext_code.size(WETHAddress)
                call WETHAddress.withdraw(uint256 arg1) with:
                     gas gas_remaining wei
                    args mem[_233]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            mem[_169 + mem[_169] + 196] = 0
            require ext_code.size(address(_160))
            call address(_160) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len ceil32(mem[_169]) + _169 + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = this.address
            require ext_code.size(WETHAddress)
            staticcall WETHAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _235 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_235] < _167:
                revert with 0, 17
            if mem[_235] - _167 < arg4:
                revert with 0, 'no profit'
            if mem[_235]:
                require ext_code.size(WETHAddress)
                call WETHAddress.withdraw(uint256 arg1) with:
                     gas gas_remaining wei
                    args mem[_235]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    if eth.balance(this.address):
        call SELFAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
