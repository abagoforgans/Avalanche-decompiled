contract main {




// =====================  Runtime code  =====================


const callChainId = chainid

const callGasLeft = gas_remaining

const callOrigin = tx.origin

const callCoinbase = address(block.coinbase)

const callDifficulty = block.difficulty

const callGasPrice = block.gasprice

const callBlockNumber = block.gas_limit

const callGasLimit = block.gas_limit

const callTimestamp = block.timestamp


function _fallback() payable {
    revert
}

function callBlockhash(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return block.hash(arg1)
}

function callBalanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return eth.balance(arg1)
}

function callCodeHash(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return ext_code.hash(arg1)
}

function callCodeSize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return ext_code.size(arg1)
}

function callCode(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[64] = ceil32(ext_code.size(arg1)) + 97
    mem[96] = ext_code.size(arg1)
    mem[128 len ext_code.size(arg1)] = ext_code.copy(arg1, 0 len ext_code.size(arg1))
    mem[ceil32(ext_code.size(arg1)) + 97] = 32
    mem[ceil32(ext_code.size(arg1)) + 129] = ext_code.size(arg1)
    mem[ceil32(ext_code.size(arg1)) + 161 len ceil32(ext_code.size(arg1))] = mem[128 len ceil32(ext_code.size(arg1))]
    if ceil32(ext_code.size(arg1)) > ext_code.size(arg1):
        mem[ceil32(ext_code.size(arg1)) + ext_code.size(arg1) + 161] = 0
    return memory
      from ceil32(ext_code.size(arg1)) + 97
       len ceil32(ext_code.size(arg1)) + 64
}

function multiCall(bool arg1, bool arg2, uint256 arg3, address arg4, uint256 arg5, bytes[] arg6) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 <= test266151307() and (32 * arg1.length) + 128 >= 96
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require calldata.size + -arg1 + -cd[s] - 36 >= 192
        _446 = mem[64]
        require mem[64] + 192 <= test266151307() and mem[64] + 192 >= mem[64]
        mem[64] = mem[64] + 192
        require cd[(arg1 + cd[s] + 36)] == bool(cd[(arg1 + cd[s] + 36)])
        mem[_446] = cd[(arg1 + cd[s] + 36)]
        require cd[(arg1 + cd[s] + 68)] == bool(cd[(arg1 + cd[s] + 68)])
        mem[_446 + 32] = cd[(arg1 + cd[s] + 68)]
        require cd[(arg1 + cd[s] + 100)] == cd[(arg1 + cd[s] + 100)]
        mem[_446 + 64] = cd[(arg1 + cd[s] + 100)]
        require cd[(arg1 + cd[s] + 132)] == address(cd[(arg1 + cd[s] + 132)])
        mem[_446 + 96] = cd[(arg1 + cd[s] + 132)]
        require cd[(arg1 + cd[s] + 164)] == cd[(arg1 + cd[s] + 164)]
        mem[_446 + 128] = cd[(arg1 + cd[s] + 164)]
        require cd[(arg1 + cd[s] + 196)] <= test266151307()
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 196)] + 67 < calldata.size
        require cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 196)] + 36)] <= test266151307()
        _889 = mem[64]
        require mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 196)] + 36)]) + 32 <= test266151307() and mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 196)] + 36)]) + 32 >= mem[64]
        mem[64] = mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 196)] + 36)]) + 32
        mem[_889] = cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 196)] + 36)]
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 196)] + cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 196)] + 36)] + 68 <= calldata.size
        mem[_889 + 32 len cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 196)] + 36)]] = call.data[arg1 + cd[s] + cd[(arg1 + cd[s] + 196)] + 68 len cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 196)] + 36)]]
        mem[_889 + cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 196)] + 36)] + 32] = 0
        mem[_446 + 160] = _889
        mem[t] = _446
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _447 = mem[96]
    require mem[96] <= test266151307()
    _448 = mem[64]
    mem[mem[64]] = mem[96]
    if not _447:
        _449 = mem[96]
        require mem[96] <= test266151307()
        mem[mem[64] + (32 * _447) + 32] = mem[96]
        mem[64] = mem[64] + (32 * _447) + (32 * mem[96]) + 64
        if not mem[96]:
            _890 = mem[96]
            idx = 0
            while idx < _890:
                require idx < mem[96]
                if mem[mem[(32 * idx) + 128]]:
                    revert with 0, 'MultiCallUtils#multiCall: delegateCall not allowed'
                if gas_remaining < mem[mem[(32 * idx) + 128] + 64]:
                    revert with 0, 'MultiCallUtils#multiCall: NOT_ENOUGH_GAS'
                _906 = mem[mem[(32 * idx) + 128] + 96]
                _907 = mem[mem[(32 * idx) + 128] + 128]
                if not mem[mem[(32 * idx) + 128] + 64]:
                    _926 = mem[mem[(32 * idx) + 128] + 160]
                    _927 = mem[64]
                    _950 = mem[mem[mem[(32 * idx) + 128] + 160]]
                    s = 0
                    while s < _950:
                        mem[_927 + s] = mem[_926 + s + 32]
                        _890 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(_950) <= _950:
                        call address(_906).mem[mem[64] len 4] with:
                           value _907 wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _927 + _950 + -mem[64] - 4]
                        if not return_data.size:
                            require idx < mem[_448]
                            require idx < mem[_448 + (32 * _447) + 32]
                            mem[(32 * idx) + _448 + (32 * _447) + 64] = 96
                        else:
                            _1364 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1364] = return_data.size
                            mem[_1364 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require idx < mem[_448]
                            require idx < mem[_448 + (32 * _447) + 32]
                            mem[(32 * idx) + _448 + (32 * _447) + 64] = _1364
                    else:
                        mem[_927 + _950] = 0
                        call address(_906).mem[mem[64] len 4] with:
                           value _907 wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _927 + _950 + -mem[64] - 4]
                        if not return_data.size:
                            require idx < mem[_448]
                            require idx < mem[_448 + (32 * _447) + 32]
                            mem[(32 * idx) + _448 + (32 * _447) + 64] = 96
                        else:
                            _1382 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1382] = return_data.size
                            mem[_1382 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require idx < mem[_448]
                            require idx < mem[_448 + (32 * _447) + 32]
                            mem[(32 * idx) + _448 + (32 * _447) + 64] = _1382
                else:
                    _917 = mem[mem[(32 * idx) + 128] + 64]
                    _928 = mem[mem[(32 * idx) + 128] + 160]
                    _929 = mem[64]
                    _951 = mem[mem[mem[(32 * idx) + 128] + 160]]
                    s = 0
                    while s < _951:
                        mem[_929 + s] = mem[_928 + s + 32]
                        _890 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(_951) <= _951:
                        call address(_906).mem[mem[64] len 4] with:
                           value _907 wei
                             gas _917 wei
                            args mem[mem[64] + 4 len _929 + _951 + -mem[64] - 4]
                        if not return_data.size:
                            require idx < mem[_448]
                            require idx < mem[_448 + (32 * _447) + 32]
                            mem[(32 * idx) + _448 + (32 * _447) + 64] = 96
                        else:
                            _1366 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1366] = return_data.size
                            mem[_1366 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require idx < mem[_448]
                            require idx < mem[_448 + (32 * _447) + 32]
                            mem[(32 * idx) + _448 + (32 * _447) + 64] = _1366
                    else:
                        mem[_929 + _951] = 0
                        call address(_906).mem[mem[64] len 4] with:
                           value _907 wei
                             gas _917 wei
                            args mem[mem[64] + 4 len _929 + _951 + -mem[64] - 4]
                        if not return_data.size:
                            require idx < mem[_448]
                            require idx < mem[_448 + (32 * _447) + 32]
                            mem[(32 * idx) + _448 + (32 * _447) + 64] = 96
                        else:
                            _1385 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1385] = return_data.size
                            mem[_1385 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require idx < mem[_448]
                            require idx < mem[_448 + (32 * _447) + 32]
                            mem[(32 * idx) + _448 + (32 * _447) + 64] = _1385
                mem[(32 * idx) + _448 + 32] = bool(ext_call.success)
                require idx < mem[_448]
                if not ext_call.success:
                    require idx < mem[96]
                    if mem[mem[(32 * idx) + 128] + 32]:
                        revert with 0, 'MultiCallUtils#multiCall: CALL_REVERTED'
                _890 = mem[96]
                idx = idx + 1
                continue 
            _894 = mem[64]
            mem[mem[64]] = 64
            _916 = mem[_448]
            mem[mem[64] + 64] = mem[_448]
            idx = 0
            s = _448 + 32
            t = mem[64] + 96
            while idx < _916:
                mem[t] = bool(mem[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_894 + 32] = (32 * _916) + 96
            _1346 = mem[_448 + (32 * _447) + 32]
            mem[_894 + (32 * _916) + 96] = mem[_448 + (32 * _447) + 32]
            idx = 0
            s = _448 + (32 * _447) + 64
            t = _894 + (32 * _916) + (32 * _1346) + 128
            u = _894 + (32 * _916) + 128
            while idx < _1346:
                mem[u] = t + -_894 + -(32 * _916) - 128
                _1720 = mem[s]
                _1730 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _1730:
                    mem[t + v + 32] = mem[_1720 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_1730) > _1730:
                    mem[t + _1730 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_1730) + 32
                u = u + 32
                continue 
        else:
            mem[_448 + (32 * _447) + 64] = 96
            s = _448 + (32 * _447) + 64
            idx = _449
            while idx - 1:
                mem[s + 32] = 96
                s = s + 32
                idx = idx - 1
                continue 
            _1326 = mem[96]
            idx = 0
            while idx < _1326:
                require idx < mem[96]
                if mem[mem[(32 * idx) + 128]]:
                    revert with 0, 'MultiCallUtils#multiCall: delegateCall not allowed'
                if gas_remaining < mem[mem[(32 * idx) + 128] + 64]:
                    revert with 0, 'MultiCallUtils#multiCall: NOT_ENOUGH_GAS'
                _1347 = mem[mem[(32 * idx) + 128] + 96]
                _1348 = mem[mem[(32 * idx) + 128] + 128]
                if not mem[mem[(32 * idx) + 128] + 64]:
                    _1368 = mem[mem[(32 * idx) + 128] + 160]
                    _1369 = mem[64]
                    _1416 = mem[mem[mem[(32 * idx) + 128] + 160]]
                    s = 0
                    while s < _1416:
                        mem[_1369 + s] = mem[_1368 + s + 32]
                        _1326 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(_1416) <= _1416:
                        call address(_1347).mem[mem[64] len 4] with:
                           value _1348 wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1369 + _1416 + -mem[64] - 4]
                        if not return_data.size:
                            require idx < mem[_448]
                            require idx < mem[_448 + (32 * _447) + 32]
                            mem[(32 * idx) + _448 + (32 * _447) + 64] = 96
                        else:
                            _1738 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1738] = return_data.size
                            mem[_1738 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require idx < mem[_448]
                            require idx < mem[_448 + (32 * _447) + 32]
                            mem[(32 * idx) + _448 + (32 * _447) + 64] = _1738
                    else:
                        mem[_1369 + _1416] = 0
                        call address(_1347).mem[mem[64] len 4] with:
                           value _1348 wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1369 + _1416 + -mem[64] - 4]
                        if not return_data.size:
                            require idx < mem[_448]
                            require idx < mem[_448 + (32 * _447) + 32]
                            mem[(32 * idx) + _448 + (32 * _447) + 64] = 96
                        else:
                            _1748 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1748] = return_data.size
                            mem[_1748 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require idx < mem[_448]
                            require idx < mem[_448 + (32 * _447) + 32]
                            mem[(32 * idx) + _448 + (32 * _447) + 64] = _1748
                else:
                    _1359 = mem[mem[(32 * idx) + 128] + 64]
                    _1370 = mem[mem[(32 * idx) + 128] + 160]
                    _1371 = mem[64]
                    _1417 = mem[mem[mem[(32 * idx) + 128] + 160]]
                    s = 0
                    while s < _1417:
                        mem[_1371 + s] = mem[_1370 + s + 32]
                        _1326 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(_1417) <= _1417:
                        call address(_1347).mem[mem[64] len 4] with:
                           value _1348 wei
                             gas _1359 wei
                            args mem[mem[64] + 4 len _1371 + _1417 + -mem[64] - 4]
                        if not return_data.size:
                            require idx < mem[_448]
                            require idx < mem[_448 + (32 * _447) + 32]
                            mem[(32 * idx) + _448 + (32 * _447) + 64] = 96
                        else:
                            _1740 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1740] = return_data.size
                            mem[_1740 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require idx < mem[_448]
                            require idx < mem[_448 + (32 * _447) + 32]
                            mem[(32 * idx) + _448 + (32 * _447) + 64] = _1740
                    else:
                        mem[_1371 + _1417] = 0
                        call address(_1347).mem[mem[64] len 4] with:
                           value _1348 wei
                             gas _1359 wei
                            args mem[mem[64] + 4 len _1371 + _1417 + -mem[64] - 4]
                        if not return_data.size:
                            require idx < mem[_448]
                            require idx < mem[_448 + (32 * _447) + 32]
                            mem[(32 * idx) + _448 + (32 * _447) + 64] = 96
                        else:
                            _1751 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1751] = return_data.size
                            mem[_1751 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require idx < mem[_448]
                            require idx < mem[_448 + (32 * _447) + 32]
                            mem[(32 * idx) + _448 + (32 * _447) + 64] = _1751
                mem[(32 * idx) + _448 + 32] = bool(ext_call.success)
                require idx < mem[_448]
                if not ext_call.success:
                    require idx < mem[96]
                    if mem[mem[(32 * idx) + 128] + 32]:
                        revert with 0, 'MultiCallUtils#multiCall: CALL_REVERTED'
                _1326 = mem[96]
                idx = idx + 1
                continue 
            _1336 = mem[64]
            mem[mem[64]] = 64
            _1358 = mem[_448]
            mem[mem[64] + 64] = mem[_448]
            idx = 0
            s = _448 + 32
            t = mem[64] + 96
            while idx < _1358:
                mem[t] = bool(mem[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1336 + 32] = (32 * _1358) + 96
            _1731 = mem[_448 + (32 * _447) + 32]
            mem[_1336 + (32 * _1358) + 96] = mem[_448 + (32 * _447) + 32]
            idx = 0
            s = _448 + (32 * _447) + 64
            t = _1336 + (32 * _1358) + (32 * _1731) + 128
            u = _1336 + (32 * _1358) + 128
            while idx < _1731:
                mem[u] = t + -_1336 + -(32 * _1358) - 128
                _1905 = mem[s]
                _1910 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _1910:
                    mem[t + v + 32] = mem[_1905 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_1910) > _1910:
                    mem[t + _1910 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_1910) + 32
                u = u + 32
                continue 
    else:
        mem[mem[64] + 32 len 32 * _447] = call.data[calldata.size len 32 * _447]
        _451 = mem[96]
        require mem[96] <= test266151307()
        mem[mem[64] + (32 * _447) + 32] = mem[96]
        mem[64] = mem[64] + (32 * _447) + (32 * mem[96]) + 64
        if not mem[96]:
            _891 = mem[96]
            idx = 0
            while idx < _891:
                require idx < mem[96]
                if mem[mem[(32 * idx) + 128]]:
                    revert with 0, 'MultiCallUtils#multiCall: delegateCall not allowed'
                if gas_remaining < mem[mem[(32 * idx) + 128] + 64]:
                    revert with 0, 'MultiCallUtils#multiCall: NOT_ENOUGH_GAS'
                _911 = mem[mem[(32 * idx) + 128] + 96]
                _912 = mem[mem[(32 * idx) + 128] + 128]
                if not mem[mem[(32 * idx) + 128] + 64]:
                    _932 = mem[mem[(32 * idx) + 128] + 160]
                    _933 = mem[64]
                    _957 = mem[mem[mem[(32 * idx) + 128] + 160]]
                    s = 0
                    while s < _957:
                        mem[_933 + s] = mem[_932 + s + 32]
                        _891 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(_957) <= _957:
                        call address(_911).mem[mem[64] len 4] with:
                           value _912 wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _933 + _957 + -mem[64] - 4]
                        if not return_data.size:
                            require idx < mem[_448]
                            require idx < mem[_448 + (32 * _447) + 32]
                            mem[(32 * idx) + _448 + (32 * _447) + 64] = 96
                        else:
                            _1372 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1372] = return_data.size
                            mem[_1372 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require idx < mem[_448]
                            require idx < mem[_448 + (32 * _447) + 32]
                            mem[(32 * idx) + _448 + (32 * _447) + 64] = _1372
                    else:
                        mem[_933 + _957] = 0
                        call address(_911).mem[mem[64] len 4] with:
                           value _912 wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _933 + _957 + -mem[64] - 4]
                        if not return_data.size:
                            require idx < mem[_448]
                            require idx < mem[_448 + (32 * _447) + 32]
                            mem[(32 * idx) + _448 + (32 * _447) + 64] = 96
                        else:
                            _1388 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1388] = return_data.size
                            mem[_1388 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require idx < mem[_448]
                            require idx < mem[_448 + (32 * _447) + 32]
                            mem[(32 * idx) + _448 + (32 * _447) + 64] = _1388
                else:
                    _922 = mem[mem[(32 * idx) + 128] + 64]
                    _934 = mem[mem[(32 * idx) + 128] + 160]
                    _935 = mem[64]
                    _958 = mem[mem[mem[(32 * idx) + 128] + 160]]
                    s = 0
                    while s < _958:
                        mem[_935 + s] = mem[_934 + s + 32]
                        _891 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(_958) <= _958:
                        call address(_911).mem[mem[64] len 4] with:
                           value _912 wei
                             gas _922 wei
                            args mem[mem[64] + 4 len _935 + _958 + -mem[64] - 4]
                        if not return_data.size:
                            require idx < mem[_448]
                            require idx < mem[_448 + (32 * _447) + 32]
                            mem[(32 * idx) + _448 + (32 * _447) + 64] = 96
                        else:
                            _1374 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1374] = return_data.size
                            mem[_1374 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require idx < mem[_448]
                            require idx < mem[_448 + (32 * _447) + 32]
                            mem[(32 * idx) + _448 + (32 * _447) + 64] = _1374
                    else:
                        mem[_935 + _958] = 0
                        call address(_911).mem[mem[64] len 4] with:
                           value _912 wei
                             gas _922 wei
                            args mem[mem[64] + 4 len _935 + _958 + -mem[64] - 4]
                        if not return_data.size:
                            require idx < mem[_448]
                            require idx < mem[_448 + (32 * _447) + 32]
                            mem[(32 * idx) + _448 + (32 * _447) + 64] = 96
                        else:
                            _1391 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1391] = return_data.size
                            mem[_1391 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require idx < mem[_448]
                            require idx < mem[_448 + (32 * _447) + 32]
                            mem[(32 * idx) + _448 + (32 * _447) + 64] = _1391
                mem[(32 * idx) + _448 + 32] = bool(ext_call.success)
                require idx < mem[_448]
                if not ext_call.success:
                    require idx < mem[96]
                    if mem[mem[(32 * idx) + 128] + 32]:
                        revert with 0, 'MultiCallUtils#multiCall: CALL_REVERTED'
                _891 = mem[96]
                idx = idx + 1
                continue 
            _897 = mem[64]
            mem[mem[64]] = 64
            _921 = mem[_448]
            mem[mem[64] + 64] = mem[_448]
            idx = 0
            s = _448 + 32
            t = mem[64] + 96
            while idx < _921:
                mem[t] = bool(mem[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_897 + 32] = (32 * _921) + 96
            _1351 = mem[_448 + (32 * _447) + 32]
            mem[_897 + (32 * _921) + 96] = mem[_448 + (32 * _447) + 32]
            idx = 0
            s = _448 + (32 * _447) + 64
            t = _897 + (32 * _921) + (32 * _1351) + 128
            u = _897 + (32 * _921) + 128
            while idx < _1351:
                mem[u] = t + -_897 + -(32 * _921) - 128
                _1724 = mem[s]
                _1732 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _1732:
                    mem[t + v + 32] = mem[_1724 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_1732) > _1732:
                    mem[t + _1732 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_1732) + 32
                u = u + 32
                continue 
        else:
            mem[_448 + (32 * _447) + 64] = 96
            s = _448 + (32 * _447) + 64
            idx = _451
            while idx - 1:
                mem[s + 32] = 96
                s = s + 32
                idx = idx - 1
                continue 
            _1327 = mem[96]
            idx = 0
            while idx < _1327:
                require idx < mem[96]
                if mem[mem[(32 * idx) + 128]]:
                    revert with 0, 'MultiCallUtils#multiCall: delegateCall not allowed'
                if gas_remaining < mem[mem[(32 * idx) + 128] + 64]:
                    revert with 0, 'MultiCallUtils#multiCall: NOT_ENOUGH_GAS'
                _1352 = mem[mem[(32 * idx) + 128] + 96]
                _1353 = mem[mem[(32 * idx) + 128] + 128]
                if not mem[mem[(32 * idx) + 128] + 64]:
                    _1376 = mem[mem[(32 * idx) + 128] + 160]
                    _1377 = mem[64]
                    _1427 = mem[mem[mem[(32 * idx) + 128] + 160]]
                    s = 0
                    while s < _1427:
                        mem[_1377 + s] = mem[_1376 + s + 32]
                        _1327 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(_1427) <= _1427:
                        call address(_1352).mem[mem[64] len 4] with:
                           value _1353 wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1377 + _1427 + -mem[64] - 4]
                        if not return_data.size:
                            require idx < mem[_448]
                            require idx < mem[_448 + (32 * _447) + 32]
                            mem[(32 * idx) + _448 + (32 * _447) + 64] = 96
                        else:
                            _1742 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1742] = return_data.size
                            mem[_1742 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require idx < mem[_448]
                            require idx < mem[_448 + (32 * _447) + 32]
                            mem[(32 * idx) + _448 + (32 * _447) + 64] = _1742
                    else:
                        mem[_1377 + _1427] = 0
                        call address(_1352).mem[mem[64] len 4] with:
                           value _1353 wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1377 + _1427 + -mem[64] - 4]
                        if not return_data.size:
                            require idx < mem[_448]
                            require idx < mem[_448 + (32 * _447) + 32]
                            mem[(32 * idx) + _448 + (32 * _447) + 64] = 96
                        else:
                            _1754 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1754] = return_data.size
                            mem[_1754 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require idx < mem[_448]
                            require idx < mem[_448 + (32 * _447) + 32]
                            mem[(32 * idx) + _448 + (32 * _447) + 64] = _1754
                else:
                    _1363 = mem[mem[(32 * idx) + 128] + 64]
                    _1378 = mem[mem[(32 * idx) + 128] + 160]
                    _1379 = mem[64]
                    _1428 = mem[mem[mem[(32 * idx) + 128] + 160]]
                    s = 0
                    while s < _1428:
                        mem[_1379 + s] = mem[_1378 + s + 32]
                        _1327 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(_1428) <= _1428:
                        call address(_1352).mem[mem[64] len 4] with:
                           value _1353 wei
                             gas _1363 wei
                            args mem[mem[64] + 4 len _1379 + _1428 + -mem[64] - 4]
                        if not return_data.size:
                            require idx < mem[_448]
                            require idx < mem[_448 + (32 * _447) + 32]
                            mem[(32 * idx) + _448 + (32 * _447) + 64] = 96
                        else:
                            _1744 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1744] = return_data.size
                            mem[_1744 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require idx < mem[_448]
                            require idx < mem[_448 + (32 * _447) + 32]
                            mem[(32 * idx) + _448 + (32 * _447) + 64] = _1744
                    else:
                        mem[_1379 + _1428] = 0
                        call address(_1352).mem[mem[64] len 4] with:
                           value _1353 wei
                             gas _1363 wei
                            args mem[mem[64] + 4 len _1379 + _1428 + -mem[64] - 4]
                        if not return_data.size:
                            require idx < mem[_448]
                            require idx < mem[_448 + (32 * _447) + 32]
                            mem[(32 * idx) + _448 + (32 * _447) + 64] = 96
                        else:
                            _1757 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1757] = return_data.size
                            mem[_1757 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require idx < mem[_448]
                            require idx < mem[_448 + (32 * _447) + 32]
                            mem[(32 * idx) + _448 + (32 * _447) + 64] = _1757
                mem[(32 * idx) + _448 + 32] = bool(ext_call.success)
                require idx < mem[_448]
                if not ext_call.success:
                    require idx < mem[96]
                    if mem[mem[(32 * idx) + 128] + 32]:
                        revert with 0, 'MultiCallUtils#multiCall: CALL_REVERTED'
                _1327 = mem[96]
                idx = idx + 1
                continue 
            _1339 = mem[64]
            mem[mem[64]] = 64
            _1362 = mem[_448]
            mem[mem[64] + 64] = mem[_448]
            idx = 0
            s = _448 + 32
            t = mem[64] + 96
            while idx < _1362:
                mem[t] = bool(mem[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1339 + 32] = (32 * _1362) + 96
            _1733 = mem[_448 + (32 * _447) + 32]
            mem[_1339 + (32 * _1362) + 96] = mem[_448 + (32 * _447) + 32]
            idx = 0
            s = _448 + (32 * _447) + 64
            t = _1339 + (32 * _1362) + (32 * _1733) + 128
            u = _1339 + (32 * _1362) + 128
            while idx < _1733:
                mem[u] = t + -_1339 + -(32 * _1362) - 128
                _1907 = mem[s]
                _1911 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _1911:
                    mem[t + v + 32] = mem[_1907 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_1911) > _1911:
                    mem[t + _1911 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_1911) + 32
                u = u + 32
                continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
