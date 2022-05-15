contract main {




// =====================  Runtime code  =====================


#
#  - JustGo(address arg1, address arg2, address arg3, address arg4)
#  - _fallback()
#
address stor0;
address WETHAddress;
mapping of uint8 stor2;

function WETH() {
    return WETHAddress
}

function setAdmin(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor0 != msg.sender:
        revert with 0, 'only self can do.'
    stor2[address(arg1)] = uint8(arg2)
}

function sub_ac861cf3(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if not stor2[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AdminOpt: caller is not the admin'
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'balance loss'
    require ext_code.size(address(arg1))
    staticcall address(arg1).factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args WETHAddress, address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    call address(arg1).removeLiquidityAVAXSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0] / 10, 0, 0, msg.sender, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_7b65434d(?) {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg5 == address(arg5)
    if not address(arg5):
        mem[96] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(arg3))
        staticcall address(arg3).0x95d89b41 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _7 = mem[96]
        require mem[96] <= test266151307()
        require mem[96] + 127 < return_data.size + 96
        _9 = mem[mem[96] + 96]
        if mem[mem[96] + 96] > test266151307():
            revert with 0, 65
        if ceil32(ceil32(mem[mem[96] + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[96] + 96])) + 97 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96] + 96])) + 97
        mem[ceil32(return_data.size) + 96] = _9
        require _7 + _9 + 32 <= return_data.size
        mem[ceil32(return_data.size) + 128 len ceil32(_9)] = mem[_7 + 128 len ceil32(_9)]
        if ceil32(_9) <= _9:
            require ext_code.size(address(arg3))
            staticcall address(arg3).0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _239 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _245 = mem[_239]
            require mem[_239] == mem[_239 + 31 len 1]
            mem[mem[64] + 4] = WETHAddress
            mem[mem[64] + 36] = address(arg3)
            require ext_code.size(address(arg2))
            staticcall address(arg2).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args WETHAddress, address(arg3)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _263 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _269 = mem[_263]
            require mem[_263] == mem[_263 + 12 len 20]
            if not mem[_263 + 12 len 20]:
                mem[mem[64]] = 128
                mem[mem[64] + 128] = _9
                mem[mem[64] + 160 len ceil32(_9)] = mem[ceil32(return_data.size) + 128 len ceil32(_9)]
                if ceil32(_9) > _9:
                    mem[mem[64] + _9 + 160] = 0
                mem[mem[64] + 64] = address(_269)
                mem[mem[64] + 96] = 0
                return 128, _245 << 248, address(_269), 0, _9, mem[mem[64] + 160 len ceil32(_9)]
            require ext_code.size(mem[_263 + 12 len 20])
            staticcall mem[_263 + 12 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _290 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _302 = mem[_290]
            require mem[_290] == mem[_290 + 12 len 20]
            require ext_code.size(address(_269))
            staticcall address(_269).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _330 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _347 = mem[_330]
            require mem[_330] == mem[_330 + 18 len 14]
            _353 = mem[_330 + 32]
            require mem[_330 + 32] == mem[_330 + 50 len 14]
            require mem[_330 + 64] == mem[_330 + 92 len 4]
            if arg4 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 0, 17
            if address(arg3) == address(_302):
                if 997 * arg4 and mem[_330 + 50 len 14] > -1 / 997 * arg4:
                    revert with 0, 17
                if mem[_330 + 18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 0, 17
                if 1000 * mem[_330 + 18 len 14] > !(997 * arg4):
                    revert with 0, 17
                if not (1000 * mem[_330 + 18 len 14]) + (997 * arg4):
                    revert with 0, 18
                mem[mem[64]] = 128
                mem[mem[64] + 128] = _9
                mem[mem[64] + 160 len ceil32(_9)] = mem[ceil32(return_data.size) + 128 len ceil32(_9)]
                if ceil32(_9) > _9:
                    mem[mem[64] + _9 + 160] = 0
                mem[mem[64] + 64] = address(_269)
                mem[mem[64] + 96] = 997 * arg4 * Mask(112, 0, _353) / (1000 * Mask(112, 0, _347)) + (997 * arg4)
                return Array(len=_9, data=mem[mem[64] + 160 len ceil32(_9)]), 
                       _245 << 248,
                       address(_269),
                       997 * arg4 * Mask(112, 0, _353) / (1000 * Mask(112, 0, _347)) + (997 * arg4)
            if 997 * arg4 and mem[_330 + 18 len 14] > -1 / 997 * arg4:
                revert with 0, 17
            if mem[_330 + 50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if 1000 * mem[_330 + 50 len 14] > !(997 * arg4):
                revert with 0, 17
            if not (1000 * mem[_330 + 50 len 14]) + (997 * arg4):
                revert with 0, 18
            mem[mem[64]] = 128
            mem[mem[64] + 128] = _9
            mem[mem[64] + 160 len ceil32(_9)] = mem[ceil32(return_data.size) + 128 len ceil32(_9)]
            if ceil32(_9) > _9:
                mem[mem[64] + _9 + 160] = 0
            mem[mem[64] + 64] = address(_269)
            mem[mem[64] + 96] = 997 * arg4 * Mask(112, 0, _347) / (1000 * Mask(112, 0, _353)) + (997 * arg4)
            return Array(len=_9, data=mem[mem[64] + 160 len ceil32(_9)]), 
                   _245 << 248,
                   address(_269),
                   997 * arg4 * Mask(112, 0, _347) / (1000 * Mask(112, 0, _353)) + (997 * arg4)
        mem[ceil32(return_data.size) + _9 + 128] = 0
        require ext_code.size(address(arg3))
        staticcall address(arg3).0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _242 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _248 = mem[_242]
        require mem[_242] == mem[_242 + 31 len 1]
        mem[mem[64] + 4] = WETHAddress
        mem[mem[64] + 36] = address(arg3)
        require ext_code.size(address(arg2))
        staticcall address(arg2).getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args WETHAddress, address(arg3)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _266 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _272 = mem[_266]
        require mem[_266] == mem[_266 + 12 len 20]
        if not mem[_266 + 12 len 20]:
            mem[mem[64]] = 128
            mem[mem[64] + 128] = _9
            mem[mem[64] + 160 len ceil32(_9)] = mem[ceil32(return_data.size) + 128 len ceil32(_9)]
            if ceil32(_9) > _9:
                mem[mem[64] + _9 + 160] = 0
            mem[mem[64] + 64] = address(_272)
            mem[mem[64] + 96] = 0
            return 128, _248 << 248, address(_272), 0, _9, mem[mem[64] + 160 len ceil32(_9)]
        require ext_code.size(mem[_266 + 12 len 20])
        staticcall mem[_266 + 12 len 20].token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _297 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _308 = mem[_297]
        require mem[_297] == mem[_297 + 12 len 20]
        require ext_code.size(address(_272))
        staticcall address(_272).getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _337 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _350 = mem[_337]
        require mem[_337] == mem[_337 + 18 len 14]
        _356 = mem[_337 + 32]
        require mem[_337 + 32] == mem[_337 + 50 len 14]
        require mem[_337 + 64] == mem[_337 + 92 len 4]
        if arg4 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
            revert with 0, 17
        if address(arg3) == address(_308):
            if 997 * arg4 and mem[_337 + 50 len 14] > -1 / 997 * arg4:
                revert with 0, 17
            if mem[_337 + 18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if 1000 * mem[_337 + 18 len 14] > !(997 * arg4):
                revert with 0, 17
            if not (1000 * mem[_337 + 18 len 14]) + (997 * arg4):
                revert with 0, 18
            mem[mem[64]] = 128
            mem[mem[64] + 128] = _9
            mem[mem[64] + 160 len ceil32(_9)] = mem[ceil32(return_data.size) + 128 len ceil32(_9)]
            if ceil32(_9) > _9:
                mem[mem[64] + _9 + 160] = 0
            mem[mem[64] + 64] = address(_272)
            mem[mem[64] + 96] = 997 * arg4 * Mask(112, 0, _356) / (1000 * Mask(112, 0, _350)) + (997 * arg4)
            return Array(len=_9, data=mem[mem[64] + 160 len ceil32(_9)]), 
                   _248 << 248,
                   address(_272),
                   997 * arg4 * Mask(112, 0, _356) / (1000 * Mask(112, 0, _350)) + (997 * arg4)
        if 997 * arg4 and mem[_337 + 18 len 14] > -1 / 997 * arg4:
            revert with 0, 17
        if mem[_337 + 50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
            revert with 0, 17
        if 1000 * mem[_337 + 50 len 14] > !(997 * arg4):
            revert with 0, 17
        if not (1000 * mem[_337 + 50 len 14]) + (997 * arg4):
            revert with 0, 18
        mem[mem[64]] = 128
        mem[mem[64] + 128] = _9
        mem[mem[64] + 160 len ceil32(_9)] = mem[ceil32(return_data.size) + 128 len ceil32(_9)]
        if ceil32(_9) > _9:
            mem[mem[64] + _9 + 160] = 0
        mem[mem[64] + 64] = address(_272)
        mem[mem[64] + 96] = 997 * arg4 * Mask(112, 0, _350) / (1000 * Mask(112, 0, _356)) + (997 * arg4)
        return Array(len=_9, data=mem[mem[64] + 160 len ceil32(_9)]), 
               _248 << 248,
               address(_272),
               997 * arg4 * Mask(112, 0, _350) / (1000 * Mask(112, 0, _356)) + (997 * arg4)
    mem[100] = address(arg1)
    require ext_code.size(address(arg5))
    staticcall address(arg5).0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 96] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(arg3))
    staticcall address(arg3).0x95d89b41 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg6:
        _19 = mem[ceil32(return_data.size) + 96]
        require mem[ceil32(return_data.size) + 96] <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 127 < ceil32(return_data.size) + return_data.size + 96
        _22 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96] > test266151307():
            revert with 0, 65
        if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96])) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96])) + 97 > test266151307():
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96])) + 97
        mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]
        require _19 + _22 + 32 <= return_data.size
        mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_22)] = mem[ceil32(return_data.size) + _19 + 128 len ceil32(_22)]
        if ceil32(_22) <= _22:
            require ext_code.size(address(arg3))
            staticcall address(arg3).0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _241 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _247 = mem[_241]
            require mem[_241] == mem[_241 + 31 len 1]
            mem[mem[64] + 4] = WETHAddress
            mem[mem[64] + 36] = address(arg3)
            require ext_code.size(address(arg2))
            staticcall address(arg2).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args WETHAddress, address(arg3)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _265 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _271 = mem[_265]
            require mem[_265] == mem[_265 + 12 len 20]
            if not mem[_265 + 12 len 20]:
                _287 = mem[64]
                mem[mem[64]] = 128
                mem[mem[64] + 128] = _22
                mem[mem[64] + 160 len ceil32(_22)] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_22)]
                if ceil32(_22) <= _22:
                    mem[mem[64] + 64] = address(_271)
                    mem[mem[64] + 96] = 0
                    return 128, _247 << 248, address(_271), 0, _22, mem[mem[64] + 160 len ceil32(_22)]
                mem[mem[64] + _22 + 160] = 0
                mem[mem[64] + 32] = uint8(_247)
                mem[_287 + 64] = address(_271)
                mem[_287 + 96] = 0
                return memory
                  from mem[64]
                   len ceil32(_22) + _287 + -mem[64] + 160
            require ext_code.size(mem[_265 + 12 len 20])
            staticcall mem[_265 + 12 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _294 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _306 = mem[_294]
            require mem[_294] == mem[_294 + 12 len 20]
            require ext_code.size(address(_271))
            staticcall address(_271).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _334 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _349 = mem[_334]
            require mem[_334] == mem[_334 + 18 len 14]
            _355 = mem[_334 + 32]
            require mem[_334 + 32] == mem[_334 + 50 len 14]
            require mem[_334 + 64] == mem[_334 + 92 len 4]
            if address(arg3) == address(_306):
                if False and mem[_334 + 50 len 14] > 0:
                    revert with 0, 17
                if mem[_334 + 18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 0, 17
                if 1000 * mem[_334 + 18 len 14] > -1:
                    revert with 0, 17
                if not 1000 * mem[_334 + 18 len 14]:
                    revert with 0, 18
                _369 = mem[64]
                mem[mem[64]] = 128
                mem[mem[64] + 128] = _22
                mem[mem[64] + 160 len ceil32(_22)] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_22)]
                if ceil32(_22) <= _22:
                    mem[mem[64] + 64] = address(_271)
                    mem[mem[64] + 96] = 0 / 1000 * Mask(112, 0, _349)
                    return Array(len=_22, data=mem[mem[64] + 160 len ceil32(_22)]), _247 << 248, address(_271), 0 / 1000 * Mask(112, 0, _349)
                mem[mem[64] + _22 + 160] = 0
                mem[mem[64] + 32] = uint8(_247)
                mem[_369 + 64] = address(_271)
                mem[_369 + 96] = 0 / 1000 * Mask(112, 0, _349)
                return memory
                  from mem[64]
                   len ceil32(_22) + _369 + -mem[64] + 160
            if False and mem[_334 + 18 len 14] > 0:
                revert with 0, 17
            if mem[_334 + 50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if 1000 * mem[_334 + 50 len 14] > -1:
                revert with 0, 17
            if not 1000 * mem[_334 + 50 len 14]:
                revert with 0, 18
            _370 = mem[64]
            mem[mem[64]] = 128
            mem[mem[64] + 128] = _22
            mem[mem[64] + 160 len ceil32(_22)] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_22)]
            if ceil32(_22) <= _22:
                mem[mem[64] + 64] = address(_271)
                mem[mem[64] + 96] = 0 / 1000 * Mask(112, 0, _355)
                return Array(len=_22, data=mem[mem[64] + 160 len ceil32(_22)]), _247 << 248, address(_271), 0 / 1000 * Mask(112, 0, _355)
            mem[mem[64] + _22 + 160] = 0
            mem[mem[64] + 32] = uint8(_247)
            mem[_370 + 64] = address(_271)
            mem[_370 + 96] = 0 / 1000 * Mask(112, 0, _355)
            return memory
              from mem[64]
               len ceil32(_22) + _370 + -mem[64] + 160
        mem[(2 * ceil32(return_data.size)) + _22 + 128] = 0
        require ext_code.size(address(arg3))
        staticcall address(arg3).0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _244 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _250 = mem[_244]
        require mem[_244] == mem[_244 + 31 len 1]
        mem[mem[64] + 4] = WETHAddress
        mem[mem[64] + 36] = address(arg3)
        require ext_code.size(address(arg2))
        staticcall address(arg2).getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args WETHAddress, address(arg3)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _268 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _274 = mem[_268]
        require mem[_268] == mem[_268 + 12 len 20]
        if not mem[_268 + 12 len 20]:
            _295 = mem[64]
            mem[mem[64]] = 128
            mem[mem[64] + 128] = _22
            mem[mem[64] + 160 len ceil32(_22)] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_22)]
            if ceil32(_22) <= _22:
                mem[mem[64] + 64] = address(_274)
                mem[mem[64] + 96] = 0
                return 128, _250 << 248, address(_274), 0, _22, mem[mem[64] + 160 len ceil32(_22)]
            mem[mem[64] + _22 + 160] = 0
            mem[mem[64] + 32] = uint8(_250)
            mem[_295 + 64] = address(_274)
            mem[_295 + 96] = 0
            return memory
              from mem[64]
               len ceil32(_22) + _295 + -mem[64] + 160
        require ext_code.size(mem[_268 + 12 len 20])
        staticcall mem[_268 + 12 len 20].token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _301 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _310 = mem[_301]
        require mem[_301] == mem[_301 + 12 len 20]
        require ext_code.size(address(_274))
        staticcall address(_274).getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _343 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _352 = mem[_343]
        require mem[_343] == mem[_343 + 18 len 14]
        _358 = mem[_343 + 32]
        require mem[_343 + 32] == mem[_343 + 50 len 14]
        require mem[_343 + 64] == mem[_343 + 92 len 4]
        if address(arg3) == address(_310):
            if False and mem[_343 + 50 len 14] > 0:
                revert with 0, 17
            if mem[_343 + 18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if 1000 * mem[_343 + 18 len 14] > -1:
                revert with 0, 17
            if not 1000 * mem[_343 + 18 len 14]:
                revert with 0, 18
            _375 = mem[64]
            mem[mem[64]] = 128
            mem[mem[64] + 128] = _22
            mem[mem[64] + 160 len ceil32(_22)] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_22)]
            if ceil32(_22) <= _22:
                mem[mem[64] + 64] = address(_274)
                mem[mem[64] + 96] = 0 / 1000 * Mask(112, 0, _352)
                return Array(len=_22, data=mem[mem[64] + 160 len ceil32(_22)]), _250 << 248, address(_274), 0 / 1000 * Mask(112, 0, _352)
            mem[mem[64] + _22 + 160] = 0
            mem[mem[64] + 32] = uint8(_250)
            mem[_375 + 64] = address(_274)
            mem[_375 + 96] = 0 / 1000 * Mask(112, 0, _352)
            return memory
              from mem[64]
               len ceil32(_22) + _375 + -mem[64] + 160
        if False and mem[_343 + 18 len 14] > 0:
            revert with 0, 17
        if mem[_343 + 50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
            revert with 0, 17
        if 1000 * mem[_343 + 50 len 14] > -1:
            revert with 0, 17
        if not 1000 * mem[_343 + 50 len 14]:
            revert with 0, 18
        _376 = mem[64]
        mem[mem[64]] = 128
        mem[mem[64] + 128] = _22
        mem[mem[64] + 160 len ceil32(_22)] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_22)]
        if ceil32(_22) <= _22:
            mem[mem[64] + 64] = address(_274)
            mem[mem[64] + 96] = 0 / 1000 * Mask(112, 0, _358)
            return Array(len=_22, data=mem[mem[64] + 160 len ceil32(_22)]), _250 << 248, address(_274), 0 / 1000 * Mask(112, 0, _358)
        mem[mem[64] + _22 + 160] = 0
        mem[mem[64] + 32] = uint8(_250)
        mem[_376 + 64] = address(_274)
        mem[_376 + 96] = 0 / 1000 * Mask(112, 0, _358)
        return memory
          from mem[64]
           len ceil32(_22) + _376 + -mem[64] + 160
    _17 = mem[ceil32(return_data.size) + 96]
    require mem[ceil32(return_data.size) + 96] <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 127 < ceil32(return_data.size) + return_data.size + 96
    _20 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96])) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96])) + 97 > test266151307():
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96])) + 97
    mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]
    require _17 + _20 + 32 <= return_data.size
    mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_20)] = mem[ceil32(return_data.size) + _17 + 128 len ceil32(_20)]
    if ceil32(_20) <= _20:
        require ext_code.size(address(arg3))
        staticcall address(arg3).0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _240 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _246 = mem[_240]
        require mem[_240] == mem[_240 + 31 len 1]
        mem[mem[64] + 4] = WETHAddress
        mem[mem[64] + 36] = address(arg3)
        require ext_code.size(address(arg2))
        staticcall address(arg2).getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args WETHAddress, address(arg3)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _264 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _270 = mem[_264]
        require mem[_264] == mem[_264 + 12 len 20]
        if not mem[_264 + 12 len 20]:
            _284 = mem[64]
            mem[mem[64]] = 128
            mem[mem[64] + 128] = _20
            mem[mem[64] + 160 len ceil32(_20)] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_20)]
            if ceil32(_20) <= _20:
                mem[mem[64] + 64] = address(_270)
                mem[mem[64] + 96] = 0
                return 128, _246 << 248, address(_270), 0, _20, mem[mem[64] + 160 len ceil32(_20)]
            mem[mem[64] + _20 + 160] = 0
            mem[mem[64] + 32] = uint8(_246)
            mem[_284 + 64] = address(_270)
            mem[_284 + 96] = 0
            return memory
              from mem[64]
               len ceil32(_20) + _284 + -mem[64] + 160
        require ext_code.size(mem[_264 + 12 len 20])
        staticcall mem[_264 + 12 len 20].token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _292 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _304 = mem[_292]
        require mem[_292] == mem[_292 + 12 len 20]
        require ext_code.size(address(_270))
        staticcall address(_270).getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _332 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _348 = mem[_332]
        require mem[_332] == mem[_332 + 18 len 14]
        _354 = mem[_332 + 32]
        require mem[_332 + 32] == mem[_332 + 50 len 14]
        require mem[_332 + 64] == mem[_332 + 92 len 4]
        if arg4 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
            revert with 0, 17
        if address(arg3) == address(_304):
            if 997 * arg4 and mem[_332 + 50 len 14] > -1 / 997 * arg4:
                revert with 0, 17
            if mem[_332 + 18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if 1000 * mem[_332 + 18 len 14] > !(997 * arg4):
                revert with 0, 17
            if not (1000 * mem[_332 + 18 len 14]) + (997 * arg4):
                revert with 0, 18
            _367 = mem[64]
            mem[mem[64]] = 128
            mem[mem[64] + 128] = _20
            mem[mem[64] + 160 len ceil32(_20)] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_20)]
            if ceil32(_20) <= _20:
                mem[mem[64] + 64] = address(_270)
                mem[mem[64] + 96] = 997 * arg4 * Mask(112, 0, _354) / (1000 * Mask(112, 0, _348)) + (997 * arg4)
                return Array(len=_20, data=mem[mem[64] + 160 len ceil32(_20)]), 
                       _246 << 248,
                       address(_270),
                       997 * arg4 * Mask(112, 0, _354) / (1000 * Mask(112, 0, _348)) + (997 * arg4)
            mem[mem[64] + _20 + 160] = 0
            mem[mem[64] + 32] = uint8(_246)
            mem[_367 + 64] = address(_270)
            mem[_367 + 96] = 997 * arg4 * Mask(112, 0, _354) / (1000 * Mask(112, 0, _348)) + (997 * arg4)
            return memory
              from mem[64]
               len ceil32(_20) + _367 + -mem[64] + 160
        if 997 * arg4 and mem[_332 + 18 len 14] > -1 / 997 * arg4:
            revert with 0, 17
        if mem[_332 + 50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
            revert with 0, 17
        if 1000 * mem[_332 + 50 len 14] > !(997 * arg4):
            revert with 0, 17
        if not (1000 * mem[_332 + 50 len 14]) + (997 * arg4):
            revert with 0, 18
        _368 = mem[64]
        mem[mem[64]] = 128
        mem[mem[64] + 128] = _20
        mem[mem[64] + 160 len ceil32(_20)] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_20)]
        if ceil32(_20) <= _20:
            mem[mem[64] + 64] = address(_270)
            mem[mem[64] + 96] = 997 * arg4 * Mask(112, 0, _348) / (1000 * Mask(112, 0, _354)) + (997 * arg4)
            return Array(len=_20, data=mem[mem[64] + 160 len ceil32(_20)]), 
                   _246 << 248,
                   address(_270),
                   997 * arg4 * Mask(112, 0, _348) / (1000 * Mask(112, 0, _354)) + (997 * arg4)
        mem[mem[64] + _20 + 160] = 0
        mem[mem[64] + 32] = uint8(_246)
        mem[_368 + 64] = address(_270)
        mem[_368 + 96] = 997 * arg4 * Mask(112, 0, _348) / (1000 * Mask(112, 0, _354)) + (997 * arg4)
        return memory
          from mem[64]
           len ceil32(_20) + _368 + -mem[64] + 160
    mem[(2 * ceil32(return_data.size)) + _20 + 128] = 0
    require ext_code.size(address(arg3))
    staticcall address(arg3).0x313ce567 with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _243 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _249 = mem[_243]
    require mem[_243] == mem[_243 + 31 len 1]
    mem[mem[64] + 4] = WETHAddress
    mem[mem[64] + 36] = address(arg3)
    require ext_code.size(address(arg2))
    staticcall address(arg2).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args WETHAddress, address(arg3)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _267 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _273 = mem[_267]
    require mem[_267] == mem[_267 + 12 len 20]
    if not mem[_267 + 12 len 20]:
        _293 = mem[64]
        mem[mem[64]] = 128
        mem[mem[64] + 128] = _20
        mem[mem[64] + 160 len ceil32(_20)] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_20)]
        if ceil32(_20) <= _20:
            mem[mem[64] + 64] = address(_273)
            mem[mem[64] + 96] = 0
            return 128, _249 << 248, address(_273), 0, _20, mem[mem[64] + 160 len ceil32(_20)]
        mem[mem[64] + _20 + 160] = 0
        mem[mem[64] + 32] = uint8(_249)
        mem[_293 + 64] = address(_273)
        mem[_293 + 96] = 0
        return memory
          from mem[64]
           len ceil32(_20) + _293 + -mem[64] + 160
    require ext_code.size(mem[_267 + 12 len 20])
    staticcall mem[_267 + 12 len 20].token0() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _299 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _309 = mem[_299]
    require mem[_299] == mem[_299 + 12 len 20]
    require ext_code.size(address(_273))
    staticcall address(_273).getReserves() with:
            gas gas_remaining wei
    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _340 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 96
    _351 = mem[_340]
    require mem[_340] == mem[_340 + 18 len 14]
    _357 = mem[_340 + 32]
    require mem[_340 + 32] == mem[_340 + 50 len 14]
    require mem[_340 + 64] == mem[_340 + 92 len 4]
    if arg4 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
        revert with 0, 17
    if address(arg3) == address(_309):
        if 997 * arg4 and mem[_340 + 50 len 14] > -1 / 997 * arg4:
            revert with 0, 17
        if mem[_340 + 18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
            revert with 0, 17
        if 1000 * mem[_340 + 18 len 14] > !(997 * arg4):
            revert with 0, 17
        if not (1000 * mem[_340 + 18 len 14]) + (997 * arg4):
            revert with 0, 18
        _373 = mem[64]
        mem[mem[64]] = 128
        mem[mem[64] + 128] = _20
        mem[mem[64] + 160 len ceil32(_20)] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_20)]
        if ceil32(_20) <= _20:
            mem[mem[64] + 64] = address(_273)
            mem[mem[64] + 96] = 997 * arg4 * Mask(112, 0, _357) / (1000 * Mask(112, 0, _351)) + (997 * arg4)
            return Array(len=_20, data=mem[mem[64] + 160 len ceil32(_20)]), 
                   _249 << 248,
                   address(_273),
                   997 * arg4 * Mask(112, 0, _357) / (1000 * Mask(112, 0, _351)) + (997 * arg4)
        mem[mem[64] + _20 + 160] = 0
        mem[mem[64] + 32] = uint8(_249)
        mem[_373 + 64] = address(_273)
        mem[_373 + 96] = 997 * arg4 * Mask(112, 0, _357) / (1000 * Mask(112, 0, _351)) + (997 * arg4)
        return memory
          from mem[64]
           len ceil32(_20) + _373 + -mem[64] + 160
    if 997 * arg4 and mem[_340 + 18 len 14] > -1 / 997 * arg4:
        revert with 0, 17
    if mem[_340 + 50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
        revert with 0, 17
    if 1000 * mem[_340 + 50 len 14] > !(997 * arg4):
        revert with 0, 17
    if not (1000 * mem[_340 + 50 len 14]) + (997 * arg4):
        revert with 0, 18
    _374 = mem[64]
    mem[mem[64]] = 128
    mem[mem[64] + 128] = _20
    mem[mem[64] + 160 len ceil32(_20)] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_20)]
    if ceil32(_20) <= _20:
        mem[mem[64] + 64] = address(_273)
        mem[mem[64] + 96] = 997 * arg4 * Mask(112, 0, _351) / (1000 * Mask(112, 0, _357)) + (997 * arg4)
        return Array(len=_20, data=mem[mem[64] + 160 len ceil32(_20)]), 
               _249 << 248,
               address(_273),
               997 * arg4 * Mask(112, 0, _351) / (1000 * Mask(112, 0, _357)) + (997 * arg4)
    mem[mem[64] + _20 + 160] = 0
    mem[mem[64] + 32] = uint8(_249)
    mem[_374 + 64] = address(_273)
    mem[_374 + 96] = 997 * arg4 * Mask(112, 0, _351) / (1000 * Mask(112, 0, _357)) + (997 * arg4)
    return memory
      from mem[64]
       len ceil32(_20) + _374 + -mem[64] + 160
}



}
