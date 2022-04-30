contract main {




// =====================  Runtime code  =====================


address troveManagerAddress;
address sortedTrovesAddress;

function troveManager() payable {
    return troveManagerAddress
}

function sortedTroves() payable {
    return sortedTrovesAddress
}

function _fallback() payable {
    revert
}

function getMultipleSortedTroves(int256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(sortedTrovesAddress)
    staticcall sortedTrovesAddress.0xde8fa431 with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 < 0:
        if -arg1 - 1 >= ext_call.return_data[0]:
            mem[ceil32(return_data.size) + 96] = 0
            mem[64] = ceil32(return_data.size) + 128
            mem[ceil32(return_data.size) + 128] = 32
            mem[ceil32(return_data.size) + 160] = 0
            idx = 0
            s = ceil32(return_data.size) + 128
            t = ceil32(return_data.size) + 192
            while idx < mem[ceil32(return_data.size) + 96]:
                _385 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_385 + 32]
                mem[t + 64] = mem[_385 + 64]
                mem[t + 96] = mem[_385 + 96]
                mem[t + 128] = mem[_385 + 128]
                mem[t + 160] = mem[_385 + 160]
                idx = idx + 1
                s = s + 32
                t = t + 192
                continue 
            return memory
              from mem[64]
               len ceil32(return_data.size) + -mem[64] + 192
        require ext_code.size(sortedTrovesAddress)
        staticcall sortedTrovesAddress.0x4d622831 with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if arg2 <= ext_call.return_data[0] + arg1 + 1:
            idx = 0
            s = mem[ceil32(return_data.size) + 96]
            while idx < -arg1 - 1:
                mem[mem[64] + 4] = address(s)
                require ext_code.size(sortedTrovesAddress)
                staticcall sortedTrovesAddress.0xb72703ac with:
                        gas gas_remaining wei
                       args address(s)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _413 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_413] == mem[_413 + 12 len 20]
                idx = idx + 1
                s = mem[_413]
                continue 
            require arg2 <= test266151307()
            _401 = mem[64]
            mem[mem[64]] = arg2
            mem[64] = mem[64] + (32 * arg2) + 32
            if not arg2:
                idx = 0
                t = s
                while idx < arg2:
                    require idx < mem[_401]
                    mem[mem[(32 * idx) + _401 + 32]] = address(t)
                    require ext_code.size(troveManagerAddress)
                    staticcall troveManagerAddress.0x6ef64338 with:
                            gas gas_remaining wei
                           args address(t)
                    mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _760 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 160
                    _786 = mem[_760]
                    _787 = mem[_760 + 32]
                    require mem[_760 + 96] < 5
                    require mem[_760 + 128] == mem[_760 + 144 len 16]
                    require idx < mem[_401]
                    _851 = mem[(32 * idx) + _401 + 32]
                    require idx < mem[_401]
                    _859 = mem[(32 * idx) + _401 + 32]
                    require idx < mem[_401]
                    mem[mem[(32 * idx) + _401 + 32] + 96] = mem[_760 + 64]
                    mem[_859 + 64] = _787
                    mem[_851 + 32] = _786
                    require ext_code.size(troveManagerAddress)
                    staticcall troveManagerAddress.0x1673c79a with:
                            gas gas_remaining wei
                           args address(t)
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _943 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _963 = mem[_943]
                    require idx < mem[_401]
                    _979 = mem[(32 * idx) + _401 + 32]
                    require idx < mem[_401]
                    mem[mem[(32 * idx) + _401 + 32] + 160] = mem[_943 + 32]
                    mem[_979 + 128] = _963
                    mem[mem[64] + 4] = address(t)
                    require ext_code.size(sortedTrovesAddress)
                    staticcall sortedTrovesAddress.0xb72703ac with:
                            gas gas_remaining wei
                           args address(t)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1015 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1015] == mem[_1015 + 12 len 20]
                    idx = idx + 1
                    t = mem[_1015]
                    continue 
                _755 = mem[64]
                mem[mem[64]] = 32
                _759 = mem[_401]
                mem[mem[64] + 32] = mem[_401]
                idx = 0
                s = _401 + 32
                t = mem[64] + 64
                while idx < _759:
                    _1055 = mem[s]
                    mem[t] = mem[mem[s] + 12 len 20]
                    mem[t + 32] = mem[_1055 + 32]
                    mem[t + 64] = mem[_1055 + 64]
                    mem[t + 96] = mem[_1055 + 96]
                    mem[t + 128] = mem[_1055 + 128]
                    mem[t + 160] = mem[_1055 + 160]
                    idx = idx + 1
                    s = s + 32
                    t = t + 192
                    continue 
                return memory
                  from mem[64]
                   len _755 + (192 * _759) + -mem[64] + 64
            mem[64] = _401 + (32 * arg2) + 224
            mem[_401 + (32 * arg2) + 32] = 0
            mem[_401 + (32 * arg2) + 64] = 0
            mem[_401 + (32 * arg2) + 96] = 0
            mem[_401 + (32 * arg2) + 128] = 0
            mem[_401 + (32 * arg2) + 160] = 0
            mem[_401 + (32 * arg2) + 192] = 0
            mem[var31001] = _401 + (32 * arg2) + 32
            t = var31001
            idx = var31002
            while idx - 1:
                mem[64] = mem[64] + 192
                mem[_401 + (32 * arg2) + 32] = 0
                mem[_401 + (32 * arg2) + 64] = 0
                mem[_401 + (32 * arg2) + 96] = 0
                mem[_401 + (32 * arg2) + 128] = 0
                mem[_401 + (32 * arg2) + 160] = 0
                mem[_401 + (32 * arg2) + 192] = 0
                mem[t + 32] = _401 + (32 * arg2) + 32
                t = t + 32
                idx = idx - 1
                continue 
            idx = 0
            s = t
            while idx < arg2:
                require idx < mem[_401]
                mem[mem[(32 * idx) + _401 + 32]] = address(s)
                require ext_code.size(troveManagerAddress)
                staticcall troveManagerAddress.0x6ef64338 with:
                        gas gas_remaining wei
                       args address(s)
                mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1264 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 160
                _1278 = mem[_1264]
                _1279 = mem[_1264 + 32]
                require mem[_1264 + 96] < 5
                require mem[_1264 + 128] == mem[_1264 + 144 len 16]
                require idx < mem[_401]
                _1327 = mem[(32 * idx) + _401 + 32]
                require idx < mem[_401]
                _1335 = mem[(32 * idx) + _401 + 32]
                require idx < mem[_401]
                mem[mem[(32 * idx) + _401 + 32] + 96] = mem[_1264 + 64]
                mem[_1335 + 64] = _1279
                mem[_1327 + 32] = _1278
                require ext_code.size(troveManagerAddress)
                staticcall troveManagerAddress.0x1673c79a with:
                        gas gas_remaining wei
                       args address(s)
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1355 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _1359 = mem[_1355]
                require idx < mem[_401]
                _1371 = mem[(32 * idx) + _401 + 32]
                require idx < mem[_401]
                mem[mem[(32 * idx) + _401 + 32] + 160] = mem[_1355 + 32]
                mem[_1371 + 128] = _1359
                mem[mem[64] + 4] = address(s)
                require ext_code.size(sortedTrovesAddress)
                staticcall sortedTrovesAddress.0xb72703ac with:
                        gas gas_remaining wei
                       args address(s)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1391 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1391] == mem[_1391 + 12 len 20]
                idx = idx + 1
                s = mem[_1391]
                continue 
            _1259 = mem[64]
            mem[mem[64]] = 32
            _1263 = mem[_401]
            mem[mem[64] + 32] = mem[_401]
            idx = 0
            s = _401 + 32
            t = mem[64] + 64
            while idx < _1263:
                _1399 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_1399 + 32]
                mem[t + 64] = mem[_1399 + 64]
                mem[t + 96] = mem[_1399 + 96]
                mem[t + 128] = mem[_1399 + 128]
                mem[t + 160] = mem[_1399 + 160]
                idx = idx + 1
                s = s + 32
                t = t + 192
                continue 
            return memory
              from mem[64]
               len _1259 + (192 * _1263) + -mem[64] + 64
        idx = 0
        s = mem[ceil32(return_data.size) + 96]
        while idx < -arg1 - 1:
            mem[mem[64] + 4] = address(s)
            require ext_code.size(sortedTrovesAddress)
            staticcall sortedTrovesAddress.0xb72703ac with:
                    gas gas_remaining wei
                   args address(s)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _416 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_416] == mem[_416 + 12 len 20]
            idx = idx + 1
            s = mem[_416]
            continue 
        require ext_call.return_data[0] + arg1 + 1 <= test266151307()
        _402 = mem[64]
        mem[mem[64]] = ext_call.return_data[0] + arg1 + 1
        mem[64] = mem[64] + (32 * ext_call.return_data[0] + arg1 + 1) + 32
        if not ext_call.return_data[0] + arg1 + 1:
            idx = 0
            t = s
            while idx < ext_call.return_data[0] + arg1 + 1:
                require idx < mem[_402]
                mem[mem[(32 * idx) + _402 + 32]] = address(t)
                require ext_code.size(troveManagerAddress)
                staticcall troveManagerAddress.0x6ef64338 with:
                        gas gas_remaining wei
                       args address(t)
                mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _763 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 160
                _797 = mem[_763]
                _798 = mem[_763 + 32]
                require mem[_763 + 96] < 5
                require mem[_763 + 128] == mem[_763 + 144 len 16]
                require idx < mem[_402]
                _853 = mem[(32 * idx) + _402 + 32]
                require idx < mem[_402]
                _872 = mem[(32 * idx) + _402 + 32]
                require idx < mem[_402]
                mem[mem[(32 * idx) + _402 + 32] + 96] = mem[_763 + 64]
                mem[_872 + 64] = _798
                mem[_853 + 32] = _797
                require ext_code.size(troveManagerAddress)
                staticcall troveManagerAddress.0x1673c79a with:
                        gas gas_remaining wei
                       args address(t)
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _946 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _965 = mem[_946]
                require idx < mem[_402]
                _981 = mem[(32 * idx) + _402 + 32]
                require idx < mem[_402]
                mem[mem[(32 * idx) + _402 + 32] + 160] = mem[_946 + 32]
                mem[_981 + 128] = _965
                mem[mem[64] + 4] = address(t)
                require ext_code.size(sortedTrovesAddress)
                staticcall sortedTrovesAddress.0xb72703ac with:
                        gas gas_remaining wei
                       args address(t)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1018 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1018] == mem[_1018 + 12 len 20]
                idx = idx + 1
                t = mem[_1018]
                continue 
            _756 = mem[64]
            mem[mem[64]] = 32
            _762 = mem[_402]
            mem[mem[64] + 32] = mem[_402]
            idx = 0
            s = _402 + 32
            t = mem[64] + 64
            while idx < _762:
                _1062 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_1062 + 32]
                mem[t + 64] = mem[_1062 + 64]
                mem[t + 96] = mem[_1062 + 96]
                mem[t + 128] = mem[_1062 + 128]
                mem[t + 160] = mem[_1062 + 160]
                idx = idx + 1
                s = s + 32
                t = t + 192
                continue 
            return memory
              from mem[64]
               len _756 + (192 * _762) + -mem[64] + 64
        mem[64] = _402 + (32 * ext_call.return_data[0] + arg1 + 1) + 224
        mem[_402 + (32 * ext_call.return_data[0] + arg1 + 1) + 32] = 0
        mem[_402 + (32 * ext_call.return_data[0] + arg1 + 1) + 64] = 0
        mem[_402 + (32 * ext_call.return_data[0] + arg1 + 1) + 96] = 0
        mem[_402 + (32 * ext_call.return_data[0] + arg1 + 1) + 128] = 0
        mem[_402 + (32 * ext_call.return_data[0] + arg1 + 1) + 160] = 0
        mem[_402 + (32 * ext_call.return_data[0] + arg1 + 1) + 192] = 0
        mem[var32001] = _402 + (32 * ext_call.return_data[0] + arg1 + 1) + 32
        t = var32001
        idx = var32002
        while idx - 1:
            mem[64] = mem[64] + 192
            mem[_402 + (32 * ext_call.return_data[0] + arg1 + 1) + 32] = 0
            mem[_402 + (32 * ext_call.return_data[0] + arg1 + 1) + 64] = 0
            mem[_402 + (32 * ext_call.return_data[0] + arg1 + 1) + 96] = 0
            mem[_402 + (32 * ext_call.return_data[0] + arg1 + 1) + 128] = 0
            mem[_402 + (32 * ext_call.return_data[0] + arg1 + 1) + 160] = 0
            mem[_402 + (32 * ext_call.return_data[0] + arg1 + 1) + 192] = 0
            mem[t + 32] = _402 + (32 * ext_call.return_data[0] + arg1 + 1) + 32
            t = t + 32
            idx = idx - 1
            continue 
        idx = 0
        s = t
        while idx < ext_call.return_data[0] + arg1 + 1:
            require idx < mem[_402]
            mem[mem[(32 * idx) + _402 + 32]] = address(s)
            require ext_code.size(troveManagerAddress)
            staticcall troveManagerAddress.0x6ef64338 with:
                    gas gas_remaining wei
                   args address(s)
            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1266 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 160
            _1289 = mem[_1266]
            _1290 = mem[_1266 + 32]
            require mem[_1266 + 96] < 5
            require mem[_1266 + 128] == mem[_1266 + 144 len 16]
            require idx < mem[_402]
            _1329 = mem[(32 * idx) + _402 + 32]
            require idx < mem[_402]
            _1337 = mem[(32 * idx) + _402 + 32]
            require idx < mem[_402]
            mem[mem[(32 * idx) + _402 + 32] + 96] = mem[_1266 + 64]
            mem[_1337 + 64] = _1290
            mem[_1329 + 32] = _1289
            require ext_code.size(troveManagerAddress)
            staticcall troveManagerAddress.0x1673c79a with:
                    gas gas_remaining wei
                   args address(s)
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1356 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _1361 = mem[_1356]
            require idx < mem[_402]
            _1373 = mem[(32 * idx) + _402 + 32]
            require idx < mem[_402]
            mem[mem[(32 * idx) + _402 + 32] + 160] = mem[_1356 + 32]
            mem[_1373 + 128] = _1361
            mem[mem[64] + 4] = address(s)
            require ext_code.size(sortedTrovesAddress)
            staticcall sortedTrovesAddress.0xb72703ac with:
                    gas gas_remaining wei
                   args address(s)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1392 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1392] == mem[_1392 + 12 len 20]
            idx = idx + 1
            s = mem[_1392]
            continue 
        _1260 = mem[64]
        mem[mem[64]] = 32
        _1265 = mem[_402]
        mem[mem[64] + 32] = mem[_402]
        idx = 0
        s = _402 + 32
        t = mem[64] + 64
        while idx < _1265:
            _1406 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_1406 + 32]
            mem[t + 64] = mem[_1406 + 64]
            mem[t + 96] = mem[_1406 + 96]
            mem[t + 128] = mem[_1406 + 128]
            mem[t + 160] = mem[_1406 + 160]
            idx = idx + 1
            s = s + 32
            t = t + 192
            continue 
        return memory
          from mem[64]
           len _1260 + (192 * _1265) + -mem[64] + 64
    if arg1 >= ext_call.return_data[0]:
        mem[ceil32(return_data.size) + 96] = 0
        mem[64] = ceil32(return_data.size) + 128
        mem[ceil32(return_data.size) + 128] = 32
        mem[ceil32(return_data.size) + 160] = 0
        idx = 0
        s = ceil32(return_data.size) + 128
        t = ceil32(return_data.size) + 192
        while idx < mem[ceil32(return_data.size) + 96]:
            _394 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_394 + 32]
            mem[t + 64] = mem[_394 + 64]
            mem[t + 96] = mem[_394 + 96]
            mem[t + 128] = mem[_394 + 128]
            mem[t + 160] = mem[_394 + 160]
            idx = idx + 1
            s = s + 32
            t = t + 192
            continue 
        return memory
          from mem[64]
           len ceil32(return_data.size) + -mem[64] + 192
    require ext_code.size(sortedTrovesAddress)
    staticcall sortedTrovesAddress.0x1e223143 with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if arg2 <= ext_call.return_data[0] - arg1:
        idx = 0
        s = mem[ceil32(return_data.size) + 96]
        while idx < arg1:
            mem[mem[64] + 4] = address(s)
            require ext_code.size(sortedTrovesAddress)
            staticcall sortedTrovesAddress.0x765e0159 with:
                    gas gas_remaining wei
                   args address(s)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _419 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_419] == mem[_419 + 12 len 20]
            idx = idx + 1
            s = mem[_419]
            continue 
        require arg2 <= test266151307()
        _404 = mem[64]
        mem[mem[64]] = arg2
        mem[64] = mem[64] + (32 * arg2) + 32
        if not arg2:
            idx = 0
            t = s
            while idx < arg2:
                require idx < mem[_404]
                mem[mem[(32 * idx) + _404 + 32]] = address(t)
                require ext_code.size(troveManagerAddress)
                staticcall troveManagerAddress.0x6ef64338 with:
                        gas gas_remaining wei
                       args address(t)
                mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _766 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 160
                _808 = mem[_766]
                _809 = mem[_766 + 32]
                require mem[_766 + 96] < 5
                require mem[_766 + 128] == mem[_766 + 144 len 16]
                require idx < mem[_404]
                _855 = mem[(32 * idx) + _404 + 32]
                require idx < mem[_404]
                _885 = mem[(32 * idx) + _404 + 32]
                require idx < mem[_404]
                mem[mem[(32 * idx) + _404 + 32] + 96] = mem[_766 + 64]
                mem[_885 + 64] = _809
                mem[_855 + 32] = _808
                require ext_code.size(troveManagerAddress)
                staticcall troveManagerAddress.0x1673c79a with:
                        gas gas_remaining wei
                       args address(t)
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _949 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _967 = mem[_949]
                require idx < mem[_404]
                _983 = mem[(32 * idx) + _404 + 32]
                require idx < mem[_404]
                mem[mem[(32 * idx) + _404 + 32] + 160] = mem[_949 + 32]
                mem[_983 + 128] = _967
                mem[mem[64] + 4] = address(t)
                require ext_code.size(sortedTrovesAddress)
                staticcall sortedTrovesAddress.0x765e0159 with:
                        gas gas_remaining wei
                       args address(t)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1021 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1021] == mem[_1021 + 12 len 20]
                idx = idx + 1
                t = mem[_1021]
                continue 
            _757 = mem[64]
            mem[mem[64]] = 32
            _765 = mem[_404]
            mem[mem[64] + 32] = mem[_404]
            idx = 0
            s = _404 + 32
            t = mem[64] + 64
            while idx < _765:
                _1069 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_1069 + 32]
                mem[t + 64] = mem[_1069 + 64]
                mem[t + 96] = mem[_1069 + 96]
                mem[t + 128] = mem[_1069 + 128]
                mem[t + 160] = mem[_1069 + 160]
                idx = idx + 1
                s = s + 32
                t = t + 192
                continue 
            return memory
              from mem[64]
               len _757 + (192 * _765) + -mem[64] + 64
        mem[64] = _404 + (32 * arg2) + 224
        mem[_404 + (32 * arg2) + 32] = 0
        mem[_404 + (32 * arg2) + 64] = 0
        mem[_404 + (32 * arg2) + 96] = 0
        mem[_404 + (32 * arg2) + 128] = 0
        mem[_404 + (32 * arg2) + 160] = 0
        mem[_404 + (32 * arg2) + 192] = 0
        mem[var31001] = _404 + (32 * arg2) + 32
        t = var31001
        idx = var31002
        while idx - 1:
            mem[64] = mem[64] + 192
            mem[_404 + (32 * arg2) + 32] = 0
            mem[_404 + (32 * arg2) + 64] = 0
            mem[_404 + (32 * arg2) + 96] = 0
            mem[_404 + (32 * arg2) + 128] = 0
            mem[_404 + (32 * arg2) + 160] = 0
            mem[_404 + (32 * arg2) + 192] = 0
            mem[t + 32] = _404 + (32 * arg2) + 32
            t = t + 32
            idx = idx - 1
            continue 
        idx = 0
        s = t
        while idx < arg2:
            require idx < mem[_404]
            mem[mem[(32 * idx) + _404 + 32]] = address(s)
            require ext_code.size(troveManagerAddress)
            staticcall troveManagerAddress.0x6ef64338 with:
                    gas gas_remaining wei
                   args address(s)
            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1268 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 160
            _1300 = mem[_1268]
            _1301 = mem[_1268 + 32]
            require mem[_1268 + 96] < 5
            require mem[_1268 + 128] == mem[_1268 + 144 len 16]
            require idx < mem[_404]
            _1331 = mem[(32 * idx) + _404 + 32]
            require idx < mem[_404]
            _1339 = mem[(32 * idx) + _404 + 32]
            require idx < mem[_404]
            mem[mem[(32 * idx) + _404 + 32] + 96] = mem[_1268 + 64]
            mem[_1339 + 64] = _1301
            mem[_1331 + 32] = _1300
            require ext_code.size(troveManagerAddress)
            staticcall troveManagerAddress.0x1673c79a with:
                    gas gas_remaining wei
                   args address(s)
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1357 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _1363 = mem[_1357]
            require idx < mem[_404]
            _1375 = mem[(32 * idx) + _404 + 32]
            require idx < mem[_404]
            mem[mem[(32 * idx) + _404 + 32] + 160] = mem[_1357 + 32]
            mem[_1375 + 128] = _1363
            mem[mem[64] + 4] = address(s)
            require ext_code.size(sortedTrovesAddress)
            staticcall sortedTrovesAddress.0x765e0159 with:
                    gas gas_remaining wei
                   args address(s)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1393 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1393] == mem[_1393 + 12 len 20]
            idx = idx + 1
            s = mem[_1393]
            continue 
        _1261 = mem[64]
        mem[mem[64]] = 32
        _1267 = mem[_404]
        mem[mem[64] + 32] = mem[_404]
        idx = 0
        s = _404 + 32
        t = mem[64] + 64
        while idx < _1267:
            _1413 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_1413 + 32]
            mem[t + 64] = mem[_1413 + 64]
            mem[t + 96] = mem[_1413 + 96]
            mem[t + 128] = mem[_1413 + 128]
            mem[t + 160] = mem[_1413 + 160]
            idx = idx + 1
            s = s + 32
            t = t + 192
            continue 
        return memory
          from mem[64]
           len _1261 + (192 * _1267) + -mem[64] + 64
    idx = 0
    s = mem[ceil32(return_data.size) + 96]
    while idx < arg1:
        mem[mem[64] + 4] = address(s)
        require ext_code.size(sortedTrovesAddress)
        staticcall sortedTrovesAddress.0x765e0159 with:
                gas gas_remaining wei
               args address(s)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _422 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_422] == mem[_422 + 12 len 20]
        idx = idx + 1
        s = mem[_422]
        continue 
    require ext_call.return_data[0] - arg1 <= test266151307()
    _405 = mem[64]
    mem[mem[64]] = ext_call.return_data[0] - arg1
    mem[64] = mem[64] + (32 * ext_call.return_data[0] - arg1) + 32
    if not ext_call.return_data[0] - arg1:
        idx = 0
        t = s
        while idx < ext_call.return_data[0] - arg1:
            require idx < mem[_405]
            mem[mem[(32 * idx) + _405 + 32]] = address(t)
            require ext_code.size(troveManagerAddress)
            staticcall troveManagerAddress.0x6ef64338 with:
                    gas gas_remaining wei
                   args address(t)
            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _769 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 160
            _819 = mem[_769]
            _820 = mem[_769 + 32]
            require mem[_769 + 96] < 5
            require mem[_769 + 128] == mem[_769 + 144 len 16]
            require idx < mem[_405]
            _857 = mem[(32 * idx) + _405 + 32]
            require idx < mem[_405]
            _898 = mem[(32 * idx) + _405 + 32]
            require idx < mem[_405]
            mem[mem[(32 * idx) + _405 + 32] + 96] = mem[_769 + 64]
            mem[_898 + 64] = _820
            mem[_857 + 32] = _819
            require ext_code.size(troveManagerAddress)
            staticcall troveManagerAddress.0x1673c79a with:
                    gas gas_remaining wei
                   args address(t)
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _952 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _969 = mem[_952]
            require idx < mem[_405]
            _985 = mem[(32 * idx) + _405 + 32]
            require idx < mem[_405]
            mem[mem[(32 * idx) + _405 + 32] + 160] = mem[_952 + 32]
            mem[_985 + 128] = _969
            mem[mem[64] + 4] = address(t)
            require ext_code.size(sortedTrovesAddress)
            staticcall sortedTrovesAddress.0x765e0159 with:
                    gas gas_remaining wei
                   args address(t)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1024 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1024] == mem[_1024 + 12 len 20]
            idx = idx + 1
            t = mem[_1024]
            continue 
        _758 = mem[64]
        mem[mem[64]] = 32
        _768 = mem[_405]
        mem[mem[64] + 32] = mem[_405]
        idx = 0
        s = _405 + 32
        t = mem[64] + 64
        while idx < _768:
            _1076 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_1076 + 32]
            mem[t + 64] = mem[_1076 + 64]
            mem[t + 96] = mem[_1076 + 96]
            mem[t + 128] = mem[_1076 + 128]
            mem[t + 160] = mem[_1076 + 160]
            idx = idx + 1
            s = s + 32
            t = t + 192
            continue 
        return memory
          from mem[64]
           len _758 + (192 * _768) + -mem[64] + 64
    mem[64] = _405 + (32 * ext_call.return_data[0] - arg1) + 224
    mem[_405 + (32 * ext_call.return_data[0] - arg1) + 32] = 0
    mem[_405 + (32 * ext_call.return_data[0] - arg1) + 64] = 0
    mem[_405 + (32 * ext_call.return_data[0] - arg1) + 96] = 0
    mem[_405 + (32 * ext_call.return_data[0] - arg1) + 128] = 0
    mem[_405 + (32 * ext_call.return_data[0] - arg1) + 160] = 0
    mem[_405 + (32 * ext_call.return_data[0] - arg1) + 192] = 0
    mem[var32001] = _405 + (32 * ext_call.return_data[0] - arg1) + 32
    t = var32001
    idx = var32002
    while idx - 1:
        mem[64] = mem[64] + 192
        mem[_405 + (32 * ext_call.return_data[0] - arg1) + 32] = 0
        mem[_405 + (32 * ext_call.return_data[0] - arg1) + 64] = 0
        mem[_405 + (32 * ext_call.return_data[0] - arg1) + 96] = 0
        mem[_405 + (32 * ext_call.return_data[0] - arg1) + 128] = 0
        mem[_405 + (32 * ext_call.return_data[0] - arg1) + 160] = 0
        mem[_405 + (32 * ext_call.return_data[0] - arg1) + 192] = 0
        mem[t + 32] = _405 + (32 * ext_call.return_data[0] - arg1) + 32
        t = t + 32
        idx = idx - 1
        continue 
    idx = 0
    s = t
    while idx < ext_call.return_data[0] - arg1:
        require idx < mem[_405]
        mem[mem[(32 * idx) + _405 + 32]] = address(s)
        require ext_code.size(troveManagerAddress)
        staticcall troveManagerAddress.0x6ef64338 with:
                gas gas_remaining wei
               args address(s)
        mem[mem[64] len 160] = ext_call.return_data[0 len 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1270 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 160
        _1311 = mem[_1270]
        _1312 = mem[_1270 + 32]
        require mem[_1270 + 96] < 5
        require mem[_1270 + 128] == mem[_1270 + 144 len 16]
        require idx < mem[_405]
        _1333 = mem[(32 * idx) + _405 + 32]
        require idx < mem[_405]
        _1341 = mem[(32 * idx) + _405 + 32]
        require idx < mem[_405]
        mem[mem[(32 * idx) + _405 + 32] + 96] = mem[_1270 + 64]
        mem[_1341 + 64] = _1312
        mem[_1333 + 32] = _1311
        require ext_code.size(troveManagerAddress)
        staticcall troveManagerAddress.0x1673c79a with:
                gas gas_remaining wei
               args address(s)
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1358 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _1365 = mem[_1358]
        require idx < mem[_405]
        _1377 = mem[(32 * idx) + _405 + 32]
        require idx < mem[_405]
        mem[mem[(32 * idx) + _405 + 32] + 160] = mem[_1358 + 32]
        mem[_1377 + 128] = _1365
        mem[mem[64] + 4] = address(s)
        require ext_code.size(sortedTrovesAddress)
        staticcall sortedTrovesAddress.0x765e0159 with:
                gas gas_remaining wei
               args address(s)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1394 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1394] == mem[_1394 + 12 len 20]
        idx = idx + 1
        s = mem[_1394]
        continue 
    _1262 = mem[64]
    mem[mem[64]] = 32
    _1269 = mem[_405]
    mem[mem[64] + 32] = mem[_405]
    idx = 0
    s = _405 + 32
    t = mem[64] + 64
    while idx < _1269:
        _1420 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_1420 + 32]
        mem[t + 64] = mem[_1420 + 64]
        mem[t + 96] = mem[_1420 + 96]
        mem[t + 128] = mem[_1420 + 128]
        mem[t + 160] = mem[_1420 + 160]
        idx = idx + 1
        s = s + 32
        t = t + 192
        continue 
    return memory
      from mem[64]
       len _1262 + (192 * _1269) + -mem[64] + 64
}



}
