contract main {




// =====================  Runtime code  =====================


address sub_6b6a461bAddress;

function sub_6b6a461b(?) payable {
    return sub_6b6a461bAddress
}

function _fallback() payable {
    revert
}

function sub_2e0bcb43(?) payable {
    mem[96] = 0x97331bf900000000000000000000000000000000000000000000000000000000
    require ext_code.size(sub_6b6a461bAddress)
    staticcall sub_6b6a461bAddress.getAllVaults() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= 4294967296
    require mem[96] + 32 <= return_data.size
    require mem[mem[96] + 96] <= 4294967296 and mem[96] + (32 * mem[mem[96] + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96] + 96]
    _7 = mem[_4 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[_4 + 96])] = mem[_4 + 128 len floor32(mem[_4 + 96])]
    _329 = mem[ceil32(return_data.size) + 96]
    require mem[ceil32(return_data.size) + 96] <= test266151307()
    mem[(32 * _7) + ceil32(return_data.size) + 128] = mem[ceil32(return_data.size) + 96]
    if not mem[ceil32(return_data.size) + 96]:
        require mem[ceil32(return_data.size) + 96] <= test266151307()
        _332 = (32 * _7) + ceil32(return_data.size) + (32 * mem[ceil32(return_data.size) + 96]) + 160
        mem[(32 * _7) + ceil32(return_data.size) + (32 * mem[ceil32(return_data.size) + 96]) + 160] = mem[ceil32(return_data.size) + 96]
        if not mem[ceil32(return_data.size) + 96]:
            require mem[ceil32(return_data.size) + 96] <= test266151307()
            _334 = (32 * _7) + ceil32(return_data.size) + (64 * mem[ceil32(return_data.size) + 96]) + 192
            mem[(32 * _7) + ceil32(return_data.size) + (64 * mem[ceil32(return_data.size) + 96]) + 192] = mem[ceil32(return_data.size) + 96]
            mem[64] = (32 * _7) + ceil32(return_data.size) + (98 * mem[ceil32(return_data.size) + 96]) + 224
            if not mem[ceil32(return_data.size) + 96]:
                idx = 0
                while idx < _329:
                    require idx < mem[ceil32(return_data.size) + 96]
                    require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
                    staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].getOracleAddress() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
                    staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].collateralToken() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < mem[(32 * _7) + ceil32(return_data.size) + 128]
                    mem[(32 * idx) + (32 * _7) + ceil32(return_data.size) + 160] = address(ext_call.return_data[0])
                    require idx < mem[(32 * _7) + ceil32(return_data.size) + 128]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).decimals() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < mem[_332]
                    mem[(32 * idx) + _332 + 32] = uint8(ext_call.return_data[0])
                    require idx < mem[(32 * _7) + ceil32(return_data.size) + 128]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getPriceInfo(address arg1) with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0])
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require idx < mem[_334]
                    mem[(32 * idx) + _334 + 32] = ext_call.return_data[32]
                    idx = idx + 1
                    continue 
                _658 = mem[64]
                mem[mem[64]] = 128
                mem[mem[64] + 128] = mem[ceil32(return_data.size) + 96]
                _660 = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + 160 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                mem[mem[64] + 32] = (32 * _660) + 160
                mem[(32 * _660) + mem[64] + 160] = mem[(32 * _7) + ceil32(return_data.size) + 128]
                _963 = mem[(32 * _7) + ceil32(return_data.size) + 128]
                mem[(32 * _660) + mem[64] + 192 len floor32(mem[(32 * _7) + ceil32(return_data.size) + 128])] = mem[(32 * _7) + ceil32(return_data.size) + 160 len floor32(mem[(32 * _7) + ceil32(return_data.size) + 128])]
                mem[mem[64] + 64] = (32 * _963) + (32 * _660) + 192
                mem[(32 * _963) + (32 * _660) + _658 + 192] = mem[_332]
                _1051 = mem[_332]
                mem[(32 * _963) + (32 * _660) + _658 + 224 len floor32(mem[_332])] = mem[_332 + 32 len floor32(mem[_332])]
                mem[_658 + 96] = (32 * _1051) + (32 * _963) + (32 * _660) + 224
                mem[(32 * _1051) + (32 * _963) + (32 * _660) + _658 + 224] = mem[_334]
                _1115 = mem[_334]
                mem[(32 * _1051) + (32 * _963) + (32 * _660) + _658 + 256 len floor32(mem[_334])] = mem[_334 + 32 len floor32(mem[_334])]
                return memory
                  from mem[64]
                   len (32 * _1115) + (32 * _1051) + (32 * _963) + (32 * _660) + _658 + -mem[64] + 256
            mem[(32 * _7) + ceil32(return_data.size) + (64 * mem[ceil32(return_data.size) + 96]) + 224 len 32 * mem[ceil32(return_data.size) + 96]] = call.data[calldata.size len 32 * mem[ceil32(return_data.size) + 96]]
            idx = 0
            while idx < _329:
                require idx < mem[ceil32(return_data.size) + 96]
                require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
                staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].getOracleAddress() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
                staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].collateralToken() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[(32 * _7) + ceil32(return_data.size) + 128]
                mem[(32 * idx) + (32 * _7) + ceil32(return_data.size) + 160] = address(ext_call.return_data[0])
                require idx < mem[(32 * _7) + ceil32(return_data.size) + 128]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).decimals() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[_332]
                mem[(32 * idx) + _332 + 32] = uint8(ext_call.return_data[0])
                require idx < mem[(32 * _7) + ceil32(return_data.size) + 128]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getPriceInfo(address arg1) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require idx < mem[_334]
                mem[(32 * idx) + _334 + 32] = ext_call.return_data[32]
                idx = idx + 1
                continue 
            _664 = mem[64]
            mem[mem[64]] = 128
            mem[mem[64] + 128] = mem[ceil32(return_data.size) + 96]
            _666 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 160 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
            mem[mem[64] + 32] = (32 * _666) + 160
            mem[(32 * _666) + mem[64] + 160] = mem[(32 * _7) + ceil32(return_data.size) + 128]
            _966 = mem[(32 * _7) + ceil32(return_data.size) + 128]
            mem[(32 * _666) + mem[64] + 192 len floor32(mem[(32 * _7) + ceil32(return_data.size) + 128])] = mem[(32 * _7) + ceil32(return_data.size) + 160 len floor32(mem[(32 * _7) + ceil32(return_data.size) + 128])]
            mem[mem[64] + 64] = (32 * _966) + (32 * _666) + 192
            mem[(32 * _966) + (32 * _666) + _664 + 192] = mem[_332]
            _1054 = mem[_332]
            mem[(32 * _966) + (32 * _666) + _664 + 224 len floor32(mem[_332])] = mem[_332 + 32 len floor32(mem[_332])]
            mem[_664 + 96] = (32 * _1054) + (32 * _966) + (32 * _666) + 224
            mem[(32 * _1054) + (32 * _966) + (32 * _666) + _664 + 224] = mem[_334]
            _1118 = mem[_334]
            mem[(32 * _1054) + (32 * _966) + (32 * _666) + _664 + 256 len floor32(mem[_334])] = mem[_334 + 32 len floor32(mem[_334])]
            return memory
              from mem[64]
               len (32 * _1118) + (32 * _1054) + (32 * _966) + (32 * _666) + _664 + -mem[64] + 256
        mem[(32 * _7) + ceil32(return_data.size) + (32 * mem[ceil32(return_data.size) + 96]) + 192 len 32 * mem[ceil32(return_data.size) + 96]] = call.data[calldata.size len 32 * mem[ceil32(return_data.size) + 96]]
        require mem[ceil32(return_data.size) + 96] <= test266151307()
        mem[(32 * _7) + ceil32(return_data.size) + (64 * mem[ceil32(return_data.size) + 96]) + 192] = mem[ceil32(return_data.size) + 96]
        mem[64] = (32 * _7) + ceil32(return_data.size) + (98 * mem[ceil32(return_data.size) + 96]) + 224
        if not mem[ceil32(return_data.size) + 96]:
            idx = 0
            while idx < _329:
                require idx < mem[ceil32(return_data.size) + 96]
                require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
                staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].getOracleAddress() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
                staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].collateralToken() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[(32 * _7) + ceil32(return_data.size) + 128]
                mem[(32 * idx) + (32 * _7) + ceil32(return_data.size) + 160] = address(ext_call.return_data[0])
                require idx < mem[(32 * _7) + ceil32(return_data.size) + 128]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).decimals() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[_332]
                mem[(32 * idx) + _332 + 32] = uint8(ext_call.return_data[0])
                require idx < mem[(32 * _7) + ceil32(return_data.size) + 128]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getPriceInfo(address arg1) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require idx < mem[_332 + (32 * _329) + 32]
                mem[(32 * idx) + _332 + (32 * _329) + 64] = ext_call.return_data[32]
                idx = idx + 1
                continue 
            mem[mem[64]] = 128
            mem[mem[64] + 128] = mem[ceil32(return_data.size) + 96]
            _672 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 160 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
            mem[mem[64] + 32] = (32 * _672) + 160
            mem[(32 * _672) + mem[64] + 160] = mem[(32 * _7) + ceil32(return_data.size) + 128]
            _969 = mem[(32 * _7) + ceil32(return_data.size) + 128]
            mem[(32 * _672) + mem[64] + 192 len floor32(mem[(32 * _7) + ceil32(return_data.size) + 128])] = mem[(32 * _7) + ceil32(return_data.size) + 160 len floor32(mem[(32 * _7) + ceil32(return_data.size) + 128])]
            mem[mem[64] + 64] = (32 * _969) + (32 * _672) + 192
            mem[(32 * _969) + (32 * _672) + mem[64] + 192] = mem[_332]
            _1057 = mem[_332]
            mem[(32 * _969) + (32 * _672) + mem[64] + 224 len floor32(mem[_332])] = mem[_332 + 32 len floor32(mem[_332])]
            mem[mem[64] + 96] = (32 * _1057) + (32 * _969) + (32 * _672) + 224
            mem[(32 * _1057) + (32 * _969) + (32 * _672) + mem[64] + 224] = mem[_332 + (32 * _329) + 32]
            _1121 = mem[_332 + (32 * _329) + 32]
            mem[(32 * _1057) + (32 * _969) + (32 * _672) + mem[64] + 256 len floor32(mem[_332 + (32 * _329) + 32])] = mem[_332 + (32 * _329) + 64 len floor32(mem[_332 + (32 * _329) + 32])]
            return 128, 
                   (32 * _672) + 160,
                   (32 * _969) + (32 * _672) + 192,
                   (32 * _1057) + (32 * _969) + (32 * _672) + 224,
                   mem[mem[64] + 128 len (32 * _1121) + (32 * _1057) + (32 * _969) + (32 * _672) + 128]
        mem[(32 * _7) + ceil32(return_data.size) + (64 * mem[ceil32(return_data.size) + 96]) + 224 len 32 * mem[ceil32(return_data.size) + 96]] = call.data[calldata.size len 32 * mem[ceil32(return_data.size) + 96]]
        idx = 0
        while idx < _329:
            require idx < mem[ceil32(return_data.size) + 96]
            require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
            staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].getOracleAddress() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
            staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].collateralToken() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(32 * _7) + ceil32(return_data.size) + 128]
            mem[(32 * idx) + (32 * _7) + ceil32(return_data.size) + 160] = address(ext_call.return_data[0])
            require idx < mem[(32 * _7) + ceil32(return_data.size) + 128]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).decimals() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[_332]
            mem[(32 * idx) + _332 + 32] = uint8(ext_call.return_data[0])
            require idx < mem[(32 * _7) + ceil32(return_data.size) + 128]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getPriceInfo(address arg1) with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0])
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require idx < mem[_332 + (32 * _329) + 32]
            mem[(32 * idx) + _332 + (32 * _329) + 64] = ext_call.return_data[32]
            idx = idx + 1
            continue 
        _676 = mem[64]
        mem[mem[64]] = 128
        mem[mem[64] + 128] = mem[ceil32(return_data.size) + 96]
        _678 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 160 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
        mem[mem[64] + 32] = (32 * _678) + 160
        mem[(32 * _678) + mem[64] + 160] = mem[(32 * _7) + ceil32(return_data.size) + 128]
        _972 = mem[(32 * _7) + ceil32(return_data.size) + 128]
        mem[(32 * _678) + mem[64] + 192 len floor32(mem[(32 * _7) + ceil32(return_data.size) + 128])] = mem[(32 * _7) + ceil32(return_data.size) + 160 len floor32(mem[(32 * _7) + ceil32(return_data.size) + 128])]
        mem[mem[64] + 64] = (32 * _972) + (32 * _678) + 192
        mem[(32 * _972) + (32 * _678) + _676 + 192] = mem[_332]
        _1060 = mem[_332]
        mem[(32 * _972) + (32 * _678) + _676 + 224 len floor32(mem[_332])] = mem[_332 + 32 len floor32(mem[_332])]
        mem[_676 + 96] = (32 * _1060) + (32 * _972) + (32 * _678) + 224
        mem[(32 * _1060) + (32 * _972) + (32 * _678) + _676 + 224] = mem[_332 + (32 * _329) + 32]
        _1124 = mem[_332 + (32 * _329) + 32]
        mem[(32 * _1060) + (32 * _972) + (32 * _678) + _676 + 256 len floor32(mem[_332 + (32 * _329) + 32])] = mem[_332 + (32 * _329) + 64 len floor32(mem[_332 + (32 * _329) + 32])]
        return memory
          from mem[64]
           len (32 * _1124) + (32 * _1060) + (32 * _972) + (32 * _678) + _676 + -mem[64] + 256
    mem[(32 * _7) + ceil32(return_data.size) + 160 len 32 * mem[ceil32(return_data.size) + 96]] = call.data[calldata.size len 32 * mem[ceil32(return_data.size) + 96]]
    require mem[ceil32(return_data.size) + 96] <= test266151307()
    mem[(32 * _7) + ceil32(return_data.size) + (32 * mem[ceil32(return_data.size) + 96]) + 160] = mem[ceil32(return_data.size) + 96]
    if not mem[ceil32(return_data.size) + 96]:
        require mem[ceil32(return_data.size) + 96] <= test266151307()
        mem[(32 * _7) + ceil32(return_data.size) + (64 * mem[ceil32(return_data.size) + 96]) + 192] = mem[ceil32(return_data.size) + 96]
        mem[64] = (32 * _7) + ceil32(return_data.size) + (98 * mem[ceil32(return_data.size) + 96]) + 224
        if not mem[ceil32(return_data.size) + 96]:
            idx = 0
            while idx < _329:
                require idx < mem[ceil32(return_data.size) + 96]
                require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
                staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].getOracleAddress() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
                staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].collateralToken() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[(32 * _7) + ceil32(return_data.size) + 128]
                mem[(32 * idx) + (32 * _7) + ceil32(return_data.size) + 160] = address(ext_call.return_data[0])
                require idx < mem[(32 * _7) + ceil32(return_data.size) + 128]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).decimals() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[(32 * _7) + ceil32(return_data.size) + (32 * _329) + 160]
                mem[(32 * idx) + (32 * _7) + ceil32(return_data.size) + (32 * _329) + 192] = uint8(ext_call.return_data[0])
                require idx < mem[(32 * _7) + ceil32(return_data.size) + 128]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getPriceInfo(address arg1) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require idx < mem[(32 * _7) + ceil32(return_data.size) + (64 * _329) + 192]
                mem[(32 * idx) + (32 * _7) + ceil32(return_data.size) + (64 * _329) + 224] = ext_call.return_data[32]
                idx = idx + 1
                continue 
            _682 = mem[64]
            mem[mem[64]] = 128
            mem[mem[64] + 128] = mem[ceil32(return_data.size) + 96]
            _684 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 160 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
            mem[mem[64] + 32] = (32 * _684) + 160
            mem[(32 * _684) + mem[64] + 160] = mem[(32 * _7) + ceil32(return_data.size) + 128]
            _975 = mem[(32 * _7) + ceil32(return_data.size) + 128]
            mem[(32 * _684) + mem[64] + 192 len floor32(mem[(32 * _7) + ceil32(return_data.size) + 128])] = mem[(32 * _7) + ceil32(return_data.size) + 160 len floor32(mem[(32 * _7) + ceil32(return_data.size) + 128])]
            mem[mem[64] + 64] = (32 * _975) + (32 * _684) + 192
            mem[(32 * _975) + (32 * _684) + _682 + 192] = mem[(32 * _7) + ceil32(return_data.size) + (32 * _329) + 160]
            _1063 = mem[(32 * _7) + ceil32(return_data.size) + (32 * _329) + 160]
            mem[(32 * _975) + (32 * _684) + _682 + 224 len floor32(mem[(32 * _7) + ceil32(return_data.size) + (32 * _329) + 160])] = mem[(32 * _7) + ceil32(return_data.size) + (32 * _329) + 192 len floor32(mem[(32 * _7) + ceil32(return_data.size) + (32 * _329) + 160])]
            mem[_682 + 96] = (32 * _1063) + (32 * _975) + (32 * _684) + 224
            mem[(32 * _1063) + (32 * _975) + (32 * _684) + _682 + 224] = mem[(32 * _7) + ceil32(return_data.size) + (64 * _329) + 192]
            _1127 = mem[(32 * _7) + ceil32(return_data.size) + (64 * _329) + 192]
            mem[(32 * _1063) + (32 * _975) + (32 * _684) + _682 + 256 len floor32(mem[(32 * _7) + ceil32(return_data.size) + (64 * _329) + 192])] = mem[(32 * _7) + ceil32(return_data.size) + (64 * _329) + 224 len floor32(mem[(32 * _7) + ceil32(return_data.size) + (64 * _329) + 192])]
            return memory
              from mem[64]
               len (32 * _1127) + (32 * _1063) + (32 * _975) + (32 * _684) + _682 + -mem[64] + 256
        mem[(32 * _7) + ceil32(return_data.size) + (64 * mem[ceil32(return_data.size) + 96]) + 224 len 32 * mem[ceil32(return_data.size) + 96]] = call.data[calldata.size len 32 * mem[ceil32(return_data.size) + 96]]
        idx = 0
        while idx < _329:
            require idx < mem[ceil32(return_data.size) + 96]
            require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
            staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].getOracleAddress() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
            staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].collateralToken() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(32 * _7) + ceil32(return_data.size) + 128]
            mem[(32 * idx) + (32 * _7) + ceil32(return_data.size) + 160] = address(ext_call.return_data[0])
            require idx < mem[(32 * _7) + ceil32(return_data.size) + 128]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).decimals() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(32 * _7) + ceil32(return_data.size) + (32 * _329) + 160]
            mem[(32 * idx) + (32 * _7) + ceil32(return_data.size) + (32 * _329) + 192] = uint8(ext_call.return_data[0])
            require idx < mem[(32 * _7) + ceil32(return_data.size) + 128]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getPriceInfo(address arg1) with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0])
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require idx < mem[(32 * _7) + ceil32(return_data.size) + (64 * _329) + 192]
            mem[(32 * idx) + (32 * _7) + ceil32(return_data.size) + (64 * _329) + 224] = ext_call.return_data[32]
            idx = idx + 1
            continue 
        mem[mem[64]] = 128
        mem[mem[64] + 128] = mem[ceil32(return_data.size) + 96]
        _690 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 160 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
        mem[mem[64] + 32] = (32 * _690) + 160
        mem[(32 * _690) + mem[64] + 160] = mem[(32 * _7) + ceil32(return_data.size) + 128]
        _978 = mem[(32 * _7) + ceil32(return_data.size) + 128]
        mem[(32 * _690) + mem[64] + 192 len floor32(mem[(32 * _7) + ceil32(return_data.size) + 128])] = mem[(32 * _7) + ceil32(return_data.size) + 160 len floor32(mem[(32 * _7) + ceil32(return_data.size) + 128])]
        mem[mem[64] + 64] = (32 * _978) + (32 * _690) + 192
        mem[(32 * _978) + (32 * _690) + mem[64] + 192] = mem[(32 * _7) + ceil32(return_data.size) + (32 * _329) + 160]
        _1066 = mem[(32 * _7) + ceil32(return_data.size) + (32 * _329) + 160]
        mem[(32 * _978) + (32 * _690) + mem[64] + 224 len floor32(mem[(32 * _7) + ceil32(return_data.size) + (32 * _329) + 160])] = mem[(32 * _7) + ceil32(return_data.size) + (32 * _329) + 192 len floor32(mem[(32 * _7) + ceil32(return_data.size) + (32 * _329) + 160])]
        mem[mem[64] + 96] = (32 * _1066) + (32 * _978) + (32 * _690) + 224
        mem[(32 * _1066) + (32 * _978) + (32 * _690) + mem[64] + 224] = mem[(32 * _7) + ceil32(return_data.size) + (64 * _329) + 192]
        _1130 = mem[(32 * _7) + ceil32(return_data.size) + (64 * _329) + 192]
        mem[(32 * _1066) + (32 * _978) + (32 * _690) + mem[64] + 256 len floor32(mem[(32 * _7) + ceil32(return_data.size) + (64 * _329) + 192])] = mem[(32 * _7) + ceil32(return_data.size) + (64 * _329) + 224 len floor32(mem[(32 * _7) + ceil32(return_data.size) + (64 * _329) + 192])]
        return 128, 
               (32 * _690) + 160,
               (32 * _978) + (32 * _690) + 192,
               (32 * _1066) + (32 * _978) + (32 * _690) + 224,
               mem[mem[64] + 128 len (32 * _1130) + (32 * _1066) + (32 * _978) + (32 * _690) + 128]
    mem[(32 * _7) + ceil32(return_data.size) + (32 * mem[ceil32(return_data.size) + 96]) + 192 len 32 * mem[ceil32(return_data.size) + 96]] = call.data[calldata.size len 32 * mem[ceil32(return_data.size) + 96]]
    require mem[ceil32(return_data.size) + 96] <= test266151307()
    mem[(32 * _7) + ceil32(return_data.size) + (64 * mem[ceil32(return_data.size) + 96]) + 192] = mem[ceil32(return_data.size) + 96]
    mem[64] = (32 * _7) + ceil32(return_data.size) + (98 * mem[ceil32(return_data.size) + 96]) + 224
    if not mem[ceil32(return_data.size) + 96]:
        idx = 0
        while idx < _329:
            require idx < mem[ceil32(return_data.size) + 96]
            require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
            staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].getOracleAddress() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
            staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].collateralToken() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(32 * _7) + ceil32(return_data.size) + 128]
            mem[(32 * idx) + (32 * _7) + ceil32(return_data.size) + 160] = address(ext_call.return_data[0])
            require idx < mem[(32 * _7) + ceil32(return_data.size) + 128]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).decimals() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(32 * _7) + ceil32(return_data.size) + (32 * _329) + 160]
            mem[(32 * idx) + (32 * _7) + ceil32(return_data.size) + (32 * _329) + 192] = uint8(ext_call.return_data[0])
            require idx < mem[(32 * _7) + ceil32(return_data.size) + 128]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getPriceInfo(address arg1) with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0])
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require idx < mem[(32 * _7) + ceil32(return_data.size) + (64 * _329) + 192]
            mem[(32 * idx) + (32 * _7) + ceil32(return_data.size) + (64 * _329) + 224] = ext_call.return_data[32]
            idx = idx + 1
            continue 
        _694 = mem[64]
        mem[mem[64]] = 128
        mem[mem[64] + 128] = mem[ceil32(return_data.size) + 96]
        _696 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 160 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
        mem[mem[64] + 32] = (32 * _696) + 160
        mem[(32 * _696) + mem[64] + 160] = mem[(32 * _7) + ceil32(return_data.size) + 128]
        _981 = mem[(32 * _7) + ceil32(return_data.size) + 128]
        mem[(32 * _696) + mem[64] + 192 len floor32(mem[(32 * _7) + ceil32(return_data.size) + 128])] = mem[(32 * _7) + ceil32(return_data.size) + 160 len floor32(mem[(32 * _7) + ceil32(return_data.size) + 128])]
        mem[mem[64] + 64] = (32 * _981) + (32 * _696) + 192
        mem[(32 * _981) + (32 * _696) + _694 + 192] = mem[(32 * _7) + ceil32(return_data.size) + (32 * _329) + 160]
        _1069 = mem[(32 * _7) + ceil32(return_data.size) + (32 * _329) + 160]
        mem[(32 * _981) + (32 * _696) + _694 + 224 len floor32(mem[(32 * _7) + ceil32(return_data.size) + (32 * _329) + 160])] = mem[(32 * _7) + ceil32(return_data.size) + (32 * _329) + 192 len floor32(mem[(32 * _7) + ceil32(return_data.size) + (32 * _329) + 160])]
        mem[_694 + 96] = (32 * _1069) + (32 * _981) + (32 * _696) + 224
        mem[(32 * _1069) + (32 * _981) + (32 * _696) + _694 + 224] = mem[(32 * _7) + ceil32(return_data.size) + (64 * _329) + 192]
        _1133 = mem[(32 * _7) + ceil32(return_data.size) + (64 * _329) + 192]
        mem[(32 * _1069) + (32 * _981) + (32 * _696) + _694 + 256 len floor32(mem[(32 * _7) + ceil32(return_data.size) + (64 * _329) + 192])] = mem[(32 * _7) + ceil32(return_data.size) + (64 * _329) + 224 len floor32(mem[(32 * _7) + ceil32(return_data.size) + (64 * _329) + 192])]
        return memory
          from mem[64]
           len (32 * _1133) + (32 * _1069) + (32 * _981) + (32 * _696) + _694 + -mem[64] + 256
    mem[(32 * _7) + ceil32(return_data.size) + (64 * mem[ceil32(return_data.size) + 96]) + 224 len 32 * mem[ceil32(return_data.size) + 96]] = call.data[calldata.size len 32 * mem[ceil32(return_data.size) + 96]]
    idx = 0
    while idx < _329:
        require idx < mem[ceil32(return_data.size) + 96]
        require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
        staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].getOracleAddress() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
        staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].collateralToken() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < mem[(32 * _7) + ceil32(return_data.size) + 128]
        mem[(32 * idx) + (32 * _7) + ceil32(return_data.size) + 160] = address(ext_call.return_data[0])
        require idx < mem[(32 * _7) + ceil32(return_data.size) + 128]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).decimals() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < mem[(32 * _7) + ceil32(return_data.size) + (32 * _329) + 160]
        mem[(32 * idx) + (32 * _7) + ceil32(return_data.size) + (32 * _329) + 192] = uint8(ext_call.return_data[0])
        require idx < mem[(32 * _7) + ceil32(return_data.size) + 128]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getPriceInfo(address arg1) with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require idx < mem[(32 * _7) + ceil32(return_data.size) + (64 * _329) + 192]
        mem[(32 * idx) + (32 * _7) + ceil32(return_data.size) + (64 * _329) + 224] = ext_call.return_data[32]
        idx = idx + 1
        continue 
    _700 = mem[64]
    mem[mem[64]] = 128
    mem[mem[64] + 128] = mem[ceil32(return_data.size) + 96]
    _702 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 160 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
    mem[mem[64] + 32] = (32 * _702) + 160
    mem[(32 * _702) + mem[64] + 160] = mem[(32 * _7) + ceil32(return_data.size) + 128]
    _984 = mem[(32 * _7) + ceil32(return_data.size) + 128]
    mem[(32 * _702) + mem[64] + 192 len floor32(mem[(32 * _7) + ceil32(return_data.size) + 128])] = mem[(32 * _7) + ceil32(return_data.size) + 160 len floor32(mem[(32 * _7) + ceil32(return_data.size) + 128])]
    mem[mem[64] + 64] = (32 * _984) + (32 * _702) + 192
    mem[(32 * _984) + (32 * _702) + _700 + 192] = mem[(32 * _7) + ceil32(return_data.size) + (32 * _329) + 160]
    _1072 = mem[(32 * _7) + ceil32(return_data.size) + (32 * _329) + 160]
    mem[(32 * _984) + (32 * _702) + _700 + 224 len floor32(mem[(32 * _7) + ceil32(return_data.size) + (32 * _329) + 160])] = mem[(32 * _7) + ceil32(return_data.size) + (32 * _329) + 192 len floor32(mem[(32 * _7) + ceil32(return_data.size) + (32 * _329) + 160])]
    mem[_700 + 96] = (32 * _1072) + (32 * _984) + (32 * _702) + 224
    mem[(32 * _1072) + (32 * _984) + (32 * _702) + _700 + 224] = mem[(32 * _7) + ceil32(return_data.size) + (64 * _329) + 192]
    _1136 = mem[(32 * _7) + ceil32(return_data.size) + (64 * _329) + 192]
    mem[(32 * _1072) + (32 * _984) + (32 * _702) + _700 + 256 len floor32(mem[(32 * _7) + ceil32(return_data.size) + (64 * _329) + 192])] = mem[(32 * _7) + ceil32(return_data.size) + (64 * _329) + 224 len floor32(mem[(32 * _7) + ceil32(return_data.size) + (64 * _329) + 192])]
    return memory
      from mem[64]
       len (32 * _1136) + (32 * _1072) + (32 * _984) + (32 * _702) + _700 + -mem[64] + 256
}



}
