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
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < Mask(112, 0, ext_call.return_data[0]):
        revert with 'NH{q', 17
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < Mask(112, 0, ext_call.return_data[32]):
        revert with 'NH{q', 17
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
    s = arg1 + 36
    t = 164
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(0x77a953c3de9525ab4fa39a53f37a6b241cda04c9)
    delegate 0x77a953c3de9525ab4fa39a53f37a6b241cda04c9.0xdcf2e4d9 with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=mem[164 len 32 * arg1.length])
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _20 = mem[96 len 4], 0
    require mem[96 len 4], 0 <= test266151307()
    require mem[96 len 4], 0 + 127 < return_data.size + 96
    _21 = mem[mem[96 len 4], 0 + 96]
    if mem[mem[96 len 4], 0 + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], 0 + 96])) + 97 > test266151307() or ceil32(ceil32(mem[mem[96 len 4], 0 + 96])) + 1 < 0:
        revert with 'NH{q', 65
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
           len _35 + ceil32(_21) + -mem[64] + 64
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
       len _36 + ceil32(_21) + -mem[64] + 64
}

function JustGo(bytes arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    mem[ceil32(ceil32(arg1.length)) + 97] = 0xaf91c8aa00000000000000000000000000000000000000000000000000000000
    mem[ceil32(ceil32(arg1.length)) + 101] = 32
    mem[ceil32(ceil32(arg1.length)) + 133] = arg1.length
    mem[ceil32(ceil32(arg1.length)) + 165 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 27) + 256, 32) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 27) + 256
    if ceil32(arg1.length) <= arg1.length:
        require ext_code.size(0x77a953c3de9525ab4fa39a53f37a6b241cda04c9)
        delegate 0x77a953c3de9525ab4fa39a53f37a6b241cda04c9.decodeAddress(bytes arg1) with:
             gas gas_remaining wei
            args Array(len=arg1.length, data=arg1[all])
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(ceil32(arg1.length)) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 97
        require return_data.size >= 32
        _94 = mem[ceil32(ceil32(arg1.length)) + 97 len 4], 0
        require mem[ceil32(ceil32(arg1.length)) + 97 len 4], 0 <= test266151307()
        require ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 97 len 4], 0 + 128 < ceil32(ceil32(arg1.length)) + return_data.size + 97
        _96 = mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 97 len 4], 0 + 97]
        if mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 97 len 4], 0 + 97] > test266151307():
            revert with 'NH{q', 65
        if ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + floor32(mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 97 len 4], 0 + 97]) + 98 > test266151307() or floor32(mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 97 len 4], 0 + 97]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + floor32(mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 97 len 4], 0 + 97]) + 98
        mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 97] = mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 97 len 4], 0 + 97]
        require _94 + (32 * _96) + 32 <= return_data.size
        idx = 0
        s = ceil32(ceil32(arg1.length)) + _94 + 129
        t = ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 129
        while idx < _96:
            require mem[s] == mem[s + 12 len 20]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if 0 >= _96:
            revert with 'NH{q', 50
        _178 = mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 129]
        mem[mem[64] + 4] = this.address
        require ext_code.size(WETHAddress)
        staticcall WETHAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _184 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _186 = mem[_184]
        require mem[_184] == mem[_184]
        _188 = mem[64]
        mem[64] = mem[64] + 32
        mem[_188 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        mem[_188 + 36] = arg2
        mem[_188 + 68] = arg3
        mem[_188 + 100] = this.address
        mem[_188 + 132] = 128
        mem[_188 + 164] = mem[_188]
        mem[_188 + 196 len ceil32(mem[_188])] = mem[_188 + 32 len ceil32(mem[_188])]
        if ceil32(mem[_188]) > mem[_188]:
            mem[_188 + mem[_188] + 196] = 0
        require ext_code.size(address(_178))
        call address(_178).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args arg2, arg3, address(this.address), Array(len=mem[_188], data=mem[_188 + 196 len ceil32(mem[_188])])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(WETHAddress)
        staticcall WETHAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < _186:
            revert with 'NH{q', 17
        if ext_call.return_data[0] - _186 < arg4:
            revert with 0, 'no profit'
    else:
        mem[ceil32(ceil32(arg1.length)) + arg1.length + 165] = 0
        require ext_code.size(0x77a953c3de9525ab4fa39a53f37a6b241cda04c9)
        delegate 0x77a953c3de9525ab4fa39a53f37a6b241cda04c9.decodeAddress(bytes arg1) with:
             gas gas_remaining wei
            args Array(len=arg1.length, data=arg1[all])
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(ceil32(arg1.length)) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 97
        require return_data.size >= 32
        _95 = mem[ceil32(ceil32(arg1.length)) + 97 len 4], 0
        require mem[ceil32(ceil32(arg1.length)) + 97 len 4], 0 <= test266151307()
        require ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 97 len 4], 0 + 128 < ceil32(ceil32(arg1.length)) + return_data.size + 97
        _97 = mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 97 len 4], 0 + 97]
        if mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 97 len 4], 0 + 97] > test266151307():
            revert with 'NH{q', 65
        if ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + floor32(mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 97 len 4], 0 + 97]) + 98 > test266151307() or floor32(mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 97 len 4], 0 + 97]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + floor32(mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 97 len 4], 0 + 97]) + 98
        mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 97] = mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 97 len 4], 0 + 97]
        require _95 + (32 * _97) + 32 <= return_data.size
        idx = 0
        s = ceil32(ceil32(arg1.length)) + _95 + 129
        t = ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 129
        while idx < _97:
            require mem[s] == mem[s + 12 len 20]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if 0 >= _97:
            revert with 'NH{q', 50
        _180 = mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 129]
        mem[mem[64] + 4] = this.address
        require ext_code.size(WETHAddress)
        staticcall WETHAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _185 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _187 = mem[_185]
        require mem[_185] == mem[_185]
        _189 = mem[64]
        mem[64] = mem[64] + 32
        mem[_189 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        mem[_189 + 36] = arg2
        mem[_189 + 68] = arg3
        mem[_189 + 100] = this.address
        mem[_189 + 132] = 128
        mem[_189 + 164] = mem[_189]
        mem[_189 + 196 len ceil32(mem[_189])] = mem[_189 + 32 len ceil32(mem[_189])]
        if ceil32(mem[_189]) > mem[_189]:
            mem[_189 + mem[_189] + 196] = 0
        require ext_code.size(address(_180))
        call address(_180).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args arg2, arg3, address(this.address), Array(len=mem[_189], data=mem[_189 + 196 len ceil32(mem[_189])])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(WETHAddress)
        staticcall WETHAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < _187:
            revert with 'NH{q', 17
        if ext_call.return_data[0] - _187 < arg4:
            revert with 0, 'no profit'
    if ext_call.return_data[0] > 0:
        require ext_code.size(WETHAddress)
        call WETHAddress.0x2e1a7d4d with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if eth.balance(this.address) > 0:
        call SELFAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
