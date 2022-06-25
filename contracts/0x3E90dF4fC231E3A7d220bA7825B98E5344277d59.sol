contract main {




// =====================  Runtime code  =====================


const getCurrentBlockTimestamp = block.timestamp

const getLastBlockHash = block.hash(block.number - 1)

const getCurrentBlockDifficulty = block.difficulty

const getCurrentBlockGasLimit = block.gas_limit

const getCurrentBlockCoinbase = address(block.coinbase)


address stor0;

function _fallback() payable {
    revert
}

function getBlockHash(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return block.hash(arg1)
}

function getEthBalance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return eth.balance(arg1)
}

function rescueBNB(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_6a6ac854(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 <= test266151307() and (32 * ('cd', 4).length) + 128 >= 96
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require calldata.size + -cd[4] + -cd[s] - 36 >= 128
        _192 = mem[64]
        require mem[64] + 128 <= test266151307() and mem[64] + 128 >= mem[64]
        mem[64] = mem[64] + 128
        require cd[(cd[4] + cd[s] + 36)] == address(cd[(cd[4] + cd[s] + 36)])
        mem[_192] = cd[(cd[4] + cd[s] + 36)]
        require cd[(cd[4] + cd[s] + 68)] <= test266151307()
        require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 67 < calldata.size
        require cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)] <= test266151307()
        _271 = mem[64]
        require mem[64] + ceil32(cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)]) + 32 <= test266151307() and mem[64] + ceil32(cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)]) + 32 >= mem[64]
        mem[64] = mem[64] + ceil32(cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)]) + 32
        mem[_271] = cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)]
        require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)] + 68 <= calldata.size
        mem[_271 + 32 len cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)]] = call.data[cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 68 len cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)]]
        mem[_271 + cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)] + 32] = 0
        mem[_192 + 32] = _271
        require cd[(cd[4] + cd[s] + 100)] == cd[(cd[4] + cd[s] + 100)]
        mem[_192 + 64] = cd[(cd[4] + cd[s] + 100)]
        require cd[(cd[4] + cd[s] + 132)] == cd[(cd[4] + cd[s] + 132)]
        mem[_192 + 96] = cd[(cd[4] + cd[s] + 132)]
        mem[t] = _192
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _190 = mem[96]
    _191 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _190) + 32
    if not _190:
        _193 = mem[96]
        mem[_191 + (32 * _190) + 32] = mem[96]
        if _193:
            mem[_191 + (32 * _190) + 64 len 32 * _193] = call.data[calldata.size len 32 * _193]
            mem[64] = _191 + (32 * _190) + (32 * _193) + 128
            mem[_191 + (32 * _190) + (32 * _193) + 64] = 1
            mem[_191 + (32 * _190) + (32 * _193) + 96] = 0
            _379 = mem[96]
            idx = 0
            while idx < _379:
                require idx < mem[96]
                _388 = mem[mem[(32 * idx) + 128]]
                require idx < mem[96]
                _396 = mem[mem[(32 * idx) + 128] + 64]
                require idx < mem[96]
                _403 = mem[mem[(32 * idx) + 128] + 96]
                require idx < mem[96]
                _411 = mem[mem[(32 * idx) + 128] + 32]
                _412 = mem[64]
                _428 = mem[mem[mem[(32 * idx) + 128] + 32]]
                s = 0
                while s < _428:
                    mem[_412 + s] = mem[_411 + s + 32]
                    _379 = mem[96]
                    s = s + 32
                    continue 
                if ceil32(_428) <= _428:
                    call address(_388).mem[mem[64] len 4] with:
                       value _396 wei
                         gas _403 wei
                        args mem[mem[64] + 4 len _412 + _428 + -mem[64] - 4]
                    if not return_data.size:
                        require idx < mem[_191]
                        if ext_call.success:
                            mem[(32 * idx) + _191 + 32] = 96
                        else:
                            mem[(32 * idx) + _191 + 32] = _191 + (32 * _190) + (32 * _193) + 64
                    else:
                        _600 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_600] = return_data.size
                        mem[_600 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require idx < mem[_191]
                        if ext_call.success:
                            mem[(32 * idx) + _191 + 32] = _600
                        else:
                            mem[(32 * idx) + _191 + 32] = _191 + (32 * _190) + (32 * _193) + 64
                else:
                    mem[_412 + _428] = 0
                    call address(_388).mem[mem[64] len 4] with:
                       value _396 wei
                         gas _403 wei
                        args mem[mem[64] + 4 len _412 + _428 + -mem[64] - 4]
                    if not return_data.size:
                        require idx < mem[_191]
                        if ext_call.success:
                            mem[(32 * idx) + _191 + 32] = 96
                        else:
                            mem[(32 * idx) + _191 + 32] = _191 + (32 * _190) + (32 * _193) + 64
                    else:
                        _603 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_603] = return_data.size
                        mem[_603 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require idx < mem[_191]
                        if ext_call.success:
                            mem[(32 * idx) + _191 + 32] = _603
                        else:
                            mem[(32 * idx) + _191 + 32] = _191 + (32 * _190) + (32 * _193) + 64
                require idx < mem[_191 + (32 * _190) + 32]
                mem[(32 * idx) + _191 + (32 * _190) + 64] = 0
                _379 = mem[96]
                idx = idx + 1
                continue 
            _386 = mem[64]
            mem[mem[64]] = block.number
            mem[mem[64] + 32] = 96
            _436 = mem[_191]
            mem[mem[64] + 96] = mem[_191]
            idx = 0
            s = _191 + 32
            t = mem[64] + (32 * _436) + 128
            u = mem[64] + 128
            while idx < _436:
                mem[u] = t + -_386 - 128
                _562 = mem[s]
                _583 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _583:
                    mem[t + v + 32] = mem[_562 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_583) > _583:
                    mem[t + _583 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_583) + 32
                u = u + 32
                continue 
            mem[_386 + 64] = t - _386
            _582 = mem[_191 + (32 * _190) + 32]
            mem[t] = mem[_191 + (32 * _190) + 32]
            mem[t + 32 len 32 * _582] = mem[_191 + (32 * _190) + 64 len 32 * _582]
            return memory
              from mem[64]
               len t + (32 * _582) + -mem[64] + 32
        mem[64] = _191 + (32 * _190) + (32 * _193) + 128
        mem[_191 + (32 * _190) + (32 * _193) + 64] = 1
        mem[_191 + (32 * _190) + (32 * _193) + 96] = 0
        _378 = mem[96]
        idx = 0
        while idx < _378:
            require idx < mem[96]
            _384 = mem[mem[(32 * idx) + 128]]
            require idx < mem[96]
            _393 = mem[mem[(32 * idx) + 128] + 64]
            require idx < mem[96]
            _400 = mem[mem[(32 * idx) + 128] + 96]
            require idx < mem[96]
            _408 = mem[mem[(32 * idx) + 128] + 32]
            _409 = mem[64]
            _427 = mem[mem[mem[(32 * idx) + 128] + 32]]
            s = 0
            while s < _427:
                mem[_409 + s] = mem[_408 + s + 32]
                _378 = mem[96]
                s = s + 32
                continue 
            if ceil32(_427) <= _427:
                call address(_384).mem[mem[64] len 4] with:
                   value _393 wei
                     gas _400 wei
                    args mem[mem[64] + 4 len _409 + _427 + -mem[64] - 4]
                if not return_data.size:
                    require idx < mem[_191]
                    if ext_call.success:
                        mem[(32 * idx) + _191 + 32] = 96
                    else:
                        mem[(32 * idx) + _191 + 32] = _191 + (32 * _190) + (32 * _193) + 64
                else:
                    _598 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_598] = return_data.size
                    mem[_598 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require idx < mem[_191]
                    if ext_call.success:
                        mem[(32 * idx) + _191 + 32] = _598
                    else:
                        mem[(32 * idx) + _191 + 32] = _191 + (32 * _190) + (32 * _193) + 64
            else:
                mem[_409 + _427] = 0
                call address(_384).mem[mem[64] len 4] with:
                   value _393 wei
                     gas _400 wei
                    args mem[mem[64] + 4 len _409 + _427 + -mem[64] - 4]
                if not return_data.size:
                    require idx < mem[_191]
                    if ext_call.success:
                        mem[(32 * idx) + _191 + 32] = 96
                    else:
                        mem[(32 * idx) + _191 + 32] = _191 + (32 * _190) + (32 * _193) + 64
                else:
                    _602 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_602] = return_data.size
                    mem[_602 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require idx < mem[_191]
                    if ext_call.success:
                        mem[(32 * idx) + _191 + 32] = _602
                    else:
                        mem[(32 * idx) + _191 + 32] = _191 + (32 * _190) + (32 * _193) + 64
            require idx < mem[_191 + (32 * _190) + 32]
            mem[(32 * idx) + _191 + (32 * _190) + 64] = 0
            _378 = mem[96]
            idx = idx + 1
            continue 
        _382 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = 96
        _435 = mem[_191]
        mem[mem[64] + 96] = mem[_191]
        s = 0
        s = _191 + 32
        s = mem[64] + (32 * _435) + 128
        t = mem[64] + 128
        while ('cd', 4).length < _435:
            mem[t] = s + -_382 - 128
            _560 = mem[cd[4] + (32 * ('cd', 4).length) + 36]
            _581 = mem[mem[cd[4] + (32 * ('cd', 4).length) + 36]]
            mem[s] = mem[mem[cd[4] + (32 * ('cd', 4).length) + 36]]
            idx = 0
            while idx < _581:
                mem[s + idx + 32] = mem[_560 + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_581) > _581:
                mem[s + _581 + 32] = 0
            s = ('cd', 4).length + 1
            s = cd[4] + (32 * ('cd', 4).length) + 68
            s = s + ceil32(_581) + 32
            t = t + 32
            continue 
        mem[_382 + 64] = s - _382
        _580 = mem[_191 + (32 * _190) + 32]
        mem[s] = mem[_191 + (32 * _190) + 32]
        mem[s + 32 len 32 * _580] = mem[_191 + (32 * _190) + 64 len 32 * _580]
        var59001 = _580
        var59002 = _191 + (32 * _190) + (32 * _580) + 64
        return memory
          from mem[64]
           len s + (32 * _580) + -mem[64] + 32
    mem[_191 + 32] = 96
    s = _191 + 32
    idx = _190
    while idx - 1:
        mem[s + 32] = 96
        s = s + 32
        idx = idx - 1
        continue 
    _390 = mem[96]
    _391 = mem[64]
    mem[mem[64]] = mem[96]
    if _390:
        mem[mem[64] + 32 len 32 * _390] = call.data[calldata.size len 32 * _390]
        mem[64] = mem[64] + (32 * _390) + 96
        mem[_391 + (32 * _390) + 32] = 1
        mem[_391 + (32 * _390) + 64] = 0
        _559 = mem[96]
        idx = 0
        while idx < _559:
            require idx < mem[96]
            _572 = mem[mem[(32 * idx) + 128]]
            require idx < mem[96]
            _578 = mem[mem[(32 * idx) + 128] + 64]
            require idx < mem[96]
            _588 = mem[mem[(32 * idx) + 128] + 96]
            require idx < mem[96]
            _596 = mem[mem[(32 * idx) + 128] + 32]
            _597 = mem[64]
            _609 = mem[mem[mem[(32 * idx) + 128] + 32]]
            s = 0
            while s < _609:
                mem[_597 + s] = mem[_596 + s + 32]
                _559 = mem[96]
                s = s + 32
                continue 
            if ceil32(_609) <= _609:
                call address(_572).mem[mem[64] len 4] with:
                   value _578 wei
                     gas _588 wei
                    args mem[mem[64] + 4 len _597 + _609 + -mem[64] - 4]
                if not return_data.size:
                    require idx < mem[_191]
                    if ext_call.success:
                        mem[(32 * idx) + _191 + 32] = 96
                    else:
                        mem[(32 * idx) + _191 + 32] = _391 + (32 * _390) + 32
                else:
                    _718 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_718] = return_data.size
                    mem[_718 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require idx < mem[_191]
                    if ext_call.success:
                        mem[(32 * idx) + _191 + 32] = _718
                    else:
                        mem[(32 * idx) + _191 + 32] = _391 + (32 * _390) + 32
            else:
                mem[_597 + _609] = 0
                call address(_572).mem[mem[64] len 4] with:
                   value _578 wei
                     gas _588 wei
                    args mem[mem[64] + 4 len _597 + _609 + -mem[64] - 4]
                if not return_data.size:
                    require idx < mem[_191]
                    if ext_call.success:
                        mem[(32 * idx) + _191 + 32] = 96
                    else:
                        mem[(32 * idx) + _191 + 32] = _391 + (32 * _390) + 32
                else:
                    _721 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_721] = return_data.size
                    mem[_721 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require idx < mem[_191]
                    if ext_call.success:
                        mem[(32 * idx) + _191 + 32] = _721
                    else:
                        mem[(32 * idx) + _191 + 32] = _391 + (32 * _390) + 32
            require idx < mem[_391]
            mem[(32 * idx) + _391 + 32] = 0
            _559 = mem[96]
            idx = idx + 1
            continue 
        _570 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = 96
        _623 = mem[_191]
        mem[mem[64] + 96] = mem[_191]
        idx = 0
        s = _191 + 32
        t = mem[64] + (32 * _623) + 128
        u = mem[64] + 128
        while idx < _623:
            mem[u] = t + -_570 - 128
            _706 = mem[s]
            _713 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _713:
                mem[t + v + 32] = mem[_706 + v + 32]
                v = v + 32
                continue 
            if ceil32(_713) > _713:
                mem[t + _713 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_713) + 32
            u = u + 32
            continue 
        mem[_570 + 64] = t - _570
        _712 = mem[_391]
        mem[t] = mem[_391]
        mem[t + 32 len 32 * _712] = mem[_391 + 32 len 32 * _712]
        return memory
          from mem[64]
           len t + (32 * _712) + -mem[64] + 32
    _398 = mem[64] + (32 * _390) + 32
    mem[64] = mem[64] + (32 * _390) + 96
    mem[_398] = 1
    mem[_398 + 32] = 0
    _558 = mem[96]
    idx = 0
    while idx < _558:
        require idx < mem[96]
        _568 = mem[mem[(32 * idx) + 128]]
        require idx < mem[96]
        _575 = mem[mem[(32 * idx) + 128] + 64]
        require idx < mem[96]
        _585 = mem[mem[(32 * idx) + 128] + 96]
        require idx < mem[96]
        _593 = mem[mem[(32 * idx) + 128] + 32]
        _594 = mem[64]
        _608 = mem[mem[mem[(32 * idx) + 128] + 32]]
        s = 0
        while s < _608:
            mem[_594 + s] = mem[_593 + s + 32]
            _558 = mem[96]
            s = s + 32
            continue 
        if ceil32(_608) <= _608:
            call address(_568).mem[mem[64] len 4] with:
               value _575 wei
                 gas _585 wei
                args mem[mem[64] + 4 len _594 + _608 + -mem[64] - 4]
            if not return_data.size:
                require idx < mem[_191]
                if ext_call.success:
                    mem[(32 * idx) + _191 + 32] = 96
                else:
                    mem[(32 * idx) + _191 + 32] = _398
            else:
                _716 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_716] = return_data.size
                mem[_716 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require idx < mem[_191]
                if ext_call.success:
                    mem[(32 * idx) + _191 + 32] = _716
                else:
                    mem[(32 * idx) + _191 + 32] = _398
        else:
            mem[_594 + _608] = 0
            call address(_568).mem[mem[64] len 4] with:
               value _575 wei
                 gas _585 wei
                args mem[mem[64] + 4 len _594 + _608 + -mem[64] - 4]
            if not return_data.size:
                require idx < mem[_191]
                if ext_call.success:
                    mem[(32 * idx) + _191 + 32] = 96
                else:
                    mem[(32 * idx) + _191 + 32] = _398
            else:
                _720 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_720] = return_data.size
                mem[_720 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require idx < mem[_191]
                if ext_call.success:
                    mem[(32 * idx) + _191 + 32] = _720
                else:
                    mem[(32 * idx) + _191 + 32] = _398
        require idx < mem[_391]
        mem[(32 * idx) + _391 + 32] = 0
        _558 = mem[96]
        idx = idx + 1
        continue 
    _566 = mem[64]
    mem[mem[64]] = block.number
    mem[mem[64] + 32] = 96
    _622 = mem[_191]
    mem[mem[64] + 96] = mem[_191]
    idx = 0
    s = _191 + 32
    t = mem[64] + (32 * _622) + 128
    u = mem[64] + 128
    while idx < _622:
        mem[u] = t + -_566 - 128
        _704 = mem[s]
        _711 = mem[mem[s]]
        mem[t] = mem[mem[s]]
        v = 0
        while v < _711:
            mem[t + v + 32] = mem[_704 + v + 32]
            v = v + 32
            continue 
        if ceil32(_711) > _711:
            mem[t + _711 + 32] = 0
        idx = idx + 1
        s = s + 32
        t = t + ceil32(_711) + 32
        u = u + 32
        continue 
    mem[_566 + 64] = t - _566
    _710 = mem[_391]
    mem[t] = mem[_391]
    mem[t + 32 len 32 * _710] = mem[_391 + 32 len 32 * _710]
    var63001 = _710
    var63002 = _391 + (32 * _710) + 32
    return memory
      from mem[64]
       len t + (32 * _710) + -mem[64] + 32
}



}
