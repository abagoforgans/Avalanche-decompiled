contract main {




// =====================  Runtime code  =====================


#
#  - sub_669da54c(?)
#  - sub_bf7f678d(?)
#
function _fallback() payable {
    revert
}

function sub_5b2e4dc5(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    staticcall address(arg1).oracle() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(ext_call.return_data[0]).getUnderlyingPrice(address arg1) with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    if not arg3:
        return 0
    if ext_call.return_data[0] and arg3 > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if ext_call.return_data[0] * arg3 / ext_call.return_data[0] != arg3:
        revert with 0, 'multiplication overflow', 0
    return (ext_call.return_data[0] * arg3 / 10^18)
}

function sub_1c1ebd7b(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        return 0
    staticcall address(arg2).exchangeRateStored() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    if not ext_call.return_data[0]:
        return 0
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 'multiplication overflow', 0
    return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
}

function sub_d04203a4(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    staticcall address(arg1).closeFactorMantissa() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 96] = 0xabfceffc00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = address(arg2)
    staticcall address(arg1).getAssetsIn(address arg1) with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _8 = mem[ceil32(return_data.size) + 96 len 4], address(arg2) << 64
    require mem[ceil32(return_data.size) + 96 len 4], address(arg2) << 64 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], address(arg2) << 64 + 127 < ceil32(return_data.size) + return_data.size + 96
    _9 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], address(arg2) << 64 + 96]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], address(arg2) << 64 + 96] > test266151307():
        revert with 'NH{q', 65
    if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], address(arg2) << 64 + 96]) + 97 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], address(arg2) << 64 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], address(arg2) << 64 + 96]) + 97
    mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], address(arg2) << 64 + 96]
    require (32 * _9) + _8 + 32 <= return_data.size
    s = (2 * ceil32(return_data.size)) + 128
    idx = ceil32(return_data.size) + _8 + 128
    while idx < (32 * _9) + ceil32(return_data.size) + _8 + 128:
        require mem[idx] == mem[idx + 12 len 20]
        mem[s] = mem[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if _9 > test266151307():
        revert with 'NH{q', 65
    _227 = mem[64]
    mem[mem[64]] = _9
    mem[64] = mem[64] + (32 * _9) + 32
    if not _9:
        idx = 0
        while idx < _9:
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            _443 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
            mem[mem[64] + 4] = address(arg2)
            staticcall address(_443).borrowBalanceStored(address arg1) with:
                    gas gas_remaining wei
                   args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _448 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _455 = mem[_448]
            _458 = mem[64]
            mem[64] = mem[64] + 128
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            mem[_458] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 140 len 20]
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            _468 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
            mem[mem[64] + 4] = address(arg2)
            staticcall address(_468).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _477 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _483 = mem[_477]
            if mem[_477] <= 0:
                mem[_458 + 32] = 0
                mem[_458 + 64] = _455
                _492 = mem[64]
                mem[64] = mem[64] + 32
                mem[_492] = ext_call.return_data[0]
                _495 = mem[64]
                mem[64] = mem[64] + 32
                mem[_495] = 0
                _496 = mem[64]
                mem[64] = mem[64] + 32
                _501 = mem[64]
                mem[64] = mem[64] + 64
                mem[_501] = 23
                mem[_501 + 32] = 'multiplication overflow'
                if not ext_call.return_data[0]:
                    mem[_496] = 0
                    mem[_458 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _458
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not _455:
                    mem[_496] = 0
                    mem[_458 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _458
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if ext_call.return_data[0] and _455 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if ext_call.return_data[0] * _455 / ext_call.return_data[0] == _455:
                    mem[_496] = ext_call.return_data[0] * _455
                    mem[_458 + 96] = ext_call.return_data[0] * _455 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _458
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _521 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[idx + _521 + 68] = mem[idx + _501 + 32]
                    idx = idx + 32
                    continue 
                mem[_521 + 91] = 0
                revert with memory
                  from mem[64]
                   len _521 + -mem[64] + 100
            _487 = mem[64]
            mem[64] = mem[64] + 32
            staticcall address(_468).exchangeRateStored() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _491 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[_487] = mem[_491]
            _503 = mem[64]
            mem[64] = mem[64] + 32
            mem[_503] = 0
            _504 = mem[64]
            mem[64] = mem[64] + 32
            _505 = mem[_487]
            _507 = mem[64]
            mem[64] = mem[64] + 64
            mem[_507] = 23
            mem[_507 + 32] = 'multiplication overflow'
            if not _505:
                mem[_504] = 0
                mem[_458 + 32] = 0 / 10^18
                mem[_458 + 64] = _455
                _540 = mem[64]
                mem[64] = mem[64] + 32
                mem[_540] = ext_call.return_data[0]
                _549 = mem[64]
                mem[64] = mem[64] + 32
                mem[_549] = 0
                _550 = mem[64]
                mem[64] = mem[64] + 32
                _554 = mem[64]
                mem[64] = mem[64] + 64
                mem[_554] = 23
                mem[_554 + 32] = 'multiplication overflow'
                if not ext_call.return_data[0]:
                    mem[_550] = 0
                    mem[_458 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _458
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not _455:
                    mem[_550] = 0
                    mem[_458 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _458
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if ext_call.return_data[0] and _455 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if ext_call.return_data[0] * _455 / ext_call.return_data[0] == _455:
                    mem[_550] = ext_call.return_data[0] * _455
                    mem[_458 + 96] = ext_call.return_data[0] * _455 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _458
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _585 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[idx + _585 + 68] = mem[idx + _554 + 32]
                    idx = idx + 32
                    continue 
                mem[_585 + 91] = 0
                revert with memory
                  from mem[64]
                   len _585 + -mem[64] + 100
            if not _483:
                mem[_504] = 0
                mem[_458 + 32] = 0 / 10^18
                mem[_458 + 64] = _455
                _546 = mem[64]
                mem[64] = mem[64] + 32
                mem[_546] = ext_call.return_data[0]
                _555 = mem[64]
                mem[64] = mem[64] + 32
                mem[_555] = 0
                _556 = mem[64]
                mem[64] = mem[64] + 32
                _561 = mem[64]
                mem[64] = mem[64] + 64
                mem[_561] = 23
                mem[_561 + 32] = 'multiplication overflow'
                if not ext_call.return_data[0]:
                    mem[_556] = 0
                    mem[_458 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _458
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not _455:
                    mem[_556] = 0
                    mem[_458 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _458
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if ext_call.return_data[0] and _455 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if ext_call.return_data[0] * _455 / ext_call.return_data[0] == _455:
                    mem[_556] = ext_call.return_data[0] * _455
                    mem[_458 + 96] = ext_call.return_data[0] * _455 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _458
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _590 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[idx + _590 + 68] = mem[idx + _561 + 32]
                    idx = idx + 32
                    continue 
                mem[_590 + 91] = 0
                revert with memory
                  from mem[64]
                   len _590 + -mem[64] + 100
            if _505 and _483 > -1 / _505:
                revert with 'NH{q', 17
            if not _505:
                revert with 'NH{q', 18
            if _505 * _483 / _505 != _483:
                _524 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[idx + _524 + 68] = mem[idx + _507 + 32]
                    idx = idx + 32
                    continue 
                mem[_524 + 91] = 0
                revert with memory
                  from mem[64]
                   len _524 + -mem[64] + 100
            mem[_504] = _505 * _483
            mem[_458 + 32] = _505 * _483 / 10^18
            mem[_458 + 64] = _455
            _569 = mem[64]
            mem[64] = mem[64] + 32
            mem[_569] = ext_call.return_data[0]
            _576 = mem[64]
            mem[64] = mem[64] + 32
            mem[_576] = 0
            _577 = mem[64]
            mem[64] = mem[64] + 32
            _580 = mem[64]
            mem[64] = mem[64] + 64
            mem[_580] = 23
            mem[_580 + 32] = 'multiplication overflow'
            if not ext_call.return_data[0]:
                mem[_577] = 0
                mem[_458 + 96] = 0 / 10^18
                if idx >= mem[_227]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _227 + 32] = _458
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if not _455:
                mem[_577] = 0
                mem[_458 + 96] = 0 / 10^18
                if idx >= mem[_227]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _227 + 32] = _458
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if ext_call.return_data[0] and _455 > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if ext_call.return_data[0] * _455 / ext_call.return_data[0] == _455:
                mem[_577] = ext_call.return_data[0] * _455
                mem[_458 + 96] = ext_call.return_data[0] * _455 / 10^18
                if idx >= mem[_227]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _227 + 32] = _458
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _614 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 23
            idx = 0
            while idx < 23:
                mem[idx + _614 + 68] = mem[idx + _580 + 32]
                idx = idx + 32
                continue 
            mem[_614 + 91] = 0
            revert with memory
              from mem[64]
               len _614 + -mem[64] + 100
        _442 = mem[64]
        mem[mem[64]] = 32
        _447 = mem[_227]
        mem[mem[64] + 32] = mem[_227]
        idx = 0
        s = _227 + 32
        t = mem[64] + 64
        while idx < _447:
            _651 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_651 + 32]
            mem[t + 64] = mem[_651 + 64]
            mem[t + 96] = mem[_651 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _442 + (128 * _447) + -mem[64] + 64
    mem[64] = _227 + (32 * _9) + 160
    mem[_227 + (32 * _9) + 32] = 0
    mem[_227 + (32 * _9) + 64] = 0
    mem[_227 + (32 * _9) + 96] = 0
    mem[_227 + (32 * _9) + 128] = 0
    mem[var34002] = var34001
    if not var34003 - 1:
        idx = 0
        while idx < _9:
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            _888 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
            mem[mem[64] + 4] = address(arg2)
            staticcall address(_888).borrowBalanceStored(address arg1) with:
                    gas gas_remaining wei
                   args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _892 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _900 = mem[_892]
            _906 = mem[64]
            mem[64] = mem[64] + 128
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            mem[_906] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 140 len 20]
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            _912 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
            mem[mem[64] + 4] = address(arg2)
            staticcall address(_912).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _924 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _928 = mem[_924]
            if mem[_924] <= 0:
                mem[_906 + 32] = 0
                mem[_906 + 64] = _900
                _937 = mem[64]
                mem[64] = mem[64] + 32
                mem[_937] = ext_call.return_data[0]
                _942 = mem[64]
                mem[64] = mem[64] + 32
                mem[_942] = 0
                _943 = mem[64]
                mem[64] = mem[64] + 32
                _946 = mem[64]
                mem[64] = mem[64] + 64
                mem[_946] = 23
                mem[_946 + 32] = 'multiplication overflow'
                if not ext_call.return_data[0]:
                    mem[_943] = 0
                    mem[_906 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _906
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not _900:
                    mem[_943] = 0
                    mem[_906 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _906
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if ext_call.return_data[0] and _900 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if ext_call.return_data[0] * _900 / ext_call.return_data[0] == _900:
                    mem[_943] = ext_call.return_data[0] * _900
                    mem[_906 + 96] = ext_call.return_data[0] * _900 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _906
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _965 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[idx + _965 + 68] = mem[idx + _946 + 32]
                    idx = idx + 32
                    continue 
                mem[_965 + 91] = 0
                revert with memory
                  from mem[64]
                   len _965 + -mem[64] + 100
            _932 = mem[64]
            mem[64] = mem[64] + 32
            staticcall address(_912).exchangeRateStored() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _935 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[_932] = mem[_935]
            _948 = mem[64]
            mem[64] = mem[64] + 32
            mem[_948] = 0
            _949 = mem[64]
            mem[64] = mem[64] + 32
            _950 = mem[_932]
            _952 = mem[64]
            mem[64] = mem[64] + 64
            mem[_952] = 23
            mem[_952 + 32] = 'multiplication overflow'
            if not _950:
                mem[_949] = 0
                mem[_906 + 32] = 0 / 10^18
                mem[_906 + 64] = _900
                _987 = mem[64]
                mem[64] = mem[64] + 32
                mem[_987] = ext_call.return_data[0]
                _995 = mem[64]
                mem[64] = mem[64] + 32
                mem[_995] = 0
                _996 = mem[64]
                mem[64] = mem[64] + 32
                _1000 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1000] = 23
                mem[_1000 + 32] = 'multiplication overflow'
                if not ext_call.return_data[0]:
                    mem[_996] = 0
                    mem[_906 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _906
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not _900:
                    mem[_996] = 0
                    mem[_906 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _906
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if ext_call.return_data[0] and _900 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if ext_call.return_data[0] * _900 / ext_call.return_data[0] == _900:
                    mem[_996] = ext_call.return_data[0] * _900
                    mem[_906 + 96] = ext_call.return_data[0] * _900 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _906
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _1032 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[idx + _1032 + 68] = mem[idx + _1000 + 32]
                    idx = idx + 32
                    continue 
                mem[_1032 + 91] = 0
                revert with memory
                  from mem[64]
                   len _1032 + -mem[64] + 100
            if not _928:
                mem[_949] = 0
                mem[_906 + 32] = 0 / 10^18
                mem[_906 + 64] = _900
                _992 = mem[64]
                mem[64] = mem[64] + 32
                mem[_992] = ext_call.return_data[0]
                _1001 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1001] = 0
                _1002 = mem[64]
                mem[64] = mem[64] + 32
                _1007 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1007] = 23
                mem[_1007 + 32] = 'multiplication overflow'
                if not ext_call.return_data[0]:
                    mem[_1002] = 0
                    mem[_906 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _906
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not _900:
                    mem[_1002] = 0
                    mem[_906 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _906
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if ext_call.return_data[0] and _900 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if ext_call.return_data[0] * _900 / ext_call.return_data[0] == _900:
                    mem[_1002] = ext_call.return_data[0] * _900
                    mem[_906 + 96] = ext_call.return_data[0] * _900 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _906
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _1036 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[idx + _1036 + 68] = mem[idx + _1007 + 32]
                    idx = idx + 32
                    continue 
                mem[_1036 + 91] = 0
                revert with memory
                  from mem[64]
                   len _1036 + -mem[64] + 100
            if _950 and _928 > -1 / _950:
                revert with 'NH{q', 17
            if not _950:
                revert with 'NH{q', 18
            if _950 * _928 / _950 != _928:
                _969 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[idx + _969 + 68] = mem[idx + _952 + 32]
                    idx = idx + 32
                    continue 
                mem[_969 + 91] = 0
                revert with memory
                  from mem[64]
                   len _969 + -mem[64] + 100
            mem[_949] = _950 * _928
            mem[_906 + 32] = _950 * _928 / 10^18
            mem[_906 + 64] = _900
            _1018 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1018] = ext_call.return_data[0]
            _1020 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1020] = 0
            _1021 = mem[64]
            mem[64] = mem[64] + 32
            _1024 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1024] = 23
            mem[_1024 + 32] = 'multiplication overflow'
            if not ext_call.return_data[0]:
                mem[_1021] = 0
                mem[_906 + 96] = 0 / 10^18
                if idx >= mem[_227]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _227 + 32] = _906
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if not _900:
                mem[_1021] = 0
                mem[_906 + 96] = 0 / 10^18
                if idx >= mem[_227]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _227 + 32] = _906
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if ext_call.return_data[0] and _900 > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if ext_call.return_data[0] * _900 / ext_call.return_data[0] == _900:
                mem[_1021] = ext_call.return_data[0] * _900
                mem[_906 + 96] = ext_call.return_data[0] * _900 / 10^18
                if idx >= mem[_227]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _227 + 32] = _906
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _1060 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 23
            idx = 0
            while idx < 23:
                mem[idx + _1060 + 68] = mem[idx + _1024 + 32]
                idx = idx + 32
                continue 
            mem[_1060 + 91] = 0
            revert with memory
              from mem[64]
               len _1060 + -mem[64] + 100
        _887 = mem[64]
        mem[mem[64]] = 32
        _891 = mem[_227]
        mem[mem[64] + 32] = mem[_227]
        idx = 0
        s = _227 + 32
        t = mem[64] + 64
        while idx < _891:
            _1096 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_1096 + 32]
            mem[t + 64] = mem[_1096 + 64]
            mem[t + 96] = mem[_1096 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _887 + (128 * _891) + -mem[64] + 64
    mem[64] = _227 + (32 * _9) + 288
    mem[_227 + (32 * _9) + 160] = 0
    mem[_227 + (32 * _9) + 192] = 0
    mem[_227 + (32 * _9) + 224] = 0
    mem[_227 + (32 * _9) + 256] = 0
    mem[var38002] = var38001
    if not var38003 - 1:
        idx = 0
        while idx < _9:
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            _1332 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
            mem[mem[64] + 4] = address(arg2)
            staticcall address(_1332).borrowBalanceStored(address arg1) with:
                    gas gas_remaining wei
                   args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1336 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1344 = mem[_1336]
            _1350 = mem[64]
            mem[64] = mem[64] + 128
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            mem[_1350] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 140 len 20]
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            _1356 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
            mem[mem[64] + 4] = address(arg2)
            staticcall address(_1356).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1368 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1372 = mem[_1368]
            if mem[_1368] <= 0:
                mem[_1350 + 32] = 0
                mem[_1350 + 64] = _1344
                _1381 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1381] = ext_call.return_data[0]
                _1386 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1386] = 0
                _1387 = mem[64]
                mem[64] = mem[64] + 32
                _1390 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1390] = 23
                mem[_1390 + 32] = 'multiplication overflow'
                if not ext_call.return_data[0]:
                    mem[_1387] = 0
                    mem[_1350 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _1350
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not _1344:
                    mem[_1387] = 0
                    mem[_1350 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _1350
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if ext_call.return_data[0] and _1344 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if ext_call.return_data[0] * _1344 / ext_call.return_data[0] == _1344:
                    mem[_1387] = ext_call.return_data[0] * _1344
                    mem[_1350 + 96] = ext_call.return_data[0] * _1344 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _1350
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _1409 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[idx + _1409 + 68] = mem[idx + _1390 + 32]
                    idx = idx + 32
                    continue 
                mem[_1409 + 91] = 0
                revert with memory
                  from mem[64]
                   len _1409 + -mem[64] + 100
            _1376 = mem[64]
            mem[64] = mem[64] + 32
            staticcall address(_1356).exchangeRateStored() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1379 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[_1376] = mem[_1379]
            _1392 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1392] = 0
            _1393 = mem[64]
            mem[64] = mem[64] + 32
            _1394 = mem[_1376]
            _1396 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1396] = 23
            mem[_1396 + 32] = 'multiplication overflow'
            if not _1394:
                mem[_1393] = 0
                mem[_1350 + 32] = 0 / 10^18
                mem[_1350 + 64] = _1344
                _1431 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1431] = ext_call.return_data[0]
                _1439 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1439] = 0
                _1440 = mem[64]
                mem[64] = mem[64] + 32
                _1444 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1444] = 23
                mem[_1444 + 32] = 'multiplication overflow'
                if not ext_call.return_data[0]:
                    mem[_1440] = 0
                    mem[_1350 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _1350
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not _1344:
                    mem[_1440] = 0
                    mem[_1350 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _1350
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if ext_call.return_data[0] and _1344 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if ext_call.return_data[0] * _1344 / ext_call.return_data[0] == _1344:
                    mem[_1440] = ext_call.return_data[0] * _1344
                    mem[_1350 + 96] = ext_call.return_data[0] * _1344 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _1350
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _1476 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[idx + _1476 + 68] = mem[idx + _1444 + 32]
                    idx = idx + 32
                    continue 
                mem[_1476 + 91] = 0
                revert with memory
                  from mem[64]
                   len _1476 + -mem[64] + 100
            if not _1372:
                mem[_1393] = 0
                mem[_1350 + 32] = 0 / 10^18
                mem[_1350 + 64] = _1344
                _1436 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1436] = ext_call.return_data[0]
                _1445 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1445] = 0
                _1446 = mem[64]
                mem[64] = mem[64] + 32
                _1451 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1451] = 23
                mem[_1451 + 32] = 'multiplication overflow'
                if not ext_call.return_data[0]:
                    mem[_1446] = 0
                    mem[_1350 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _1350
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not _1344:
                    mem[_1446] = 0
                    mem[_1350 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _1350
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if ext_call.return_data[0] and _1344 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if ext_call.return_data[0] * _1344 / ext_call.return_data[0] == _1344:
                    mem[_1446] = ext_call.return_data[0] * _1344
                    mem[_1350 + 96] = ext_call.return_data[0] * _1344 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _1350
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _1480 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[idx + _1480 + 68] = mem[idx + _1451 + 32]
                    idx = idx + 32
                    continue 
                mem[_1480 + 91] = 0
                revert with memory
                  from mem[64]
                   len _1480 + -mem[64] + 100
            if _1394 and _1372 > -1 / _1394:
                revert with 'NH{q', 17
            if not _1394:
                revert with 'NH{q', 18
            if _1394 * _1372 / _1394 != _1372:
                _1413 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[idx + _1413 + 68] = mem[idx + _1396 + 32]
                    idx = idx + 32
                    continue 
                mem[_1413 + 91] = 0
                revert with memory
                  from mem[64]
                   len _1413 + -mem[64] + 100
            mem[_1393] = _1394 * _1372
            mem[_1350 + 32] = _1394 * _1372 / 10^18
            mem[_1350 + 64] = _1344
            _1462 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1462] = ext_call.return_data[0]
            _1464 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1464] = 0
            _1465 = mem[64]
            mem[64] = mem[64] + 32
            _1468 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1468] = 23
            mem[_1468 + 32] = 'multiplication overflow'
            if not ext_call.return_data[0]:
                mem[_1465] = 0
                mem[_1350 + 96] = 0 / 10^18
                if idx >= mem[_227]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _227 + 32] = _1350
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if not _1344:
                mem[_1465] = 0
                mem[_1350 + 96] = 0 / 10^18
                if idx >= mem[_227]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _227 + 32] = _1350
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if ext_call.return_data[0] and _1344 > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if ext_call.return_data[0] * _1344 / ext_call.return_data[0] == _1344:
                mem[_1465] = ext_call.return_data[0] * _1344
                mem[_1350 + 96] = ext_call.return_data[0] * _1344 / 10^18
                if idx >= mem[_227]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _227 + 32] = _1350
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _1504 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 23
            idx = 0
            while idx < 23:
                mem[idx + _1504 + 68] = mem[idx + _1468 + 32]
                idx = idx + 32
                continue 
            mem[_1504 + 91] = 0
            revert with memory
              from mem[64]
               len _1504 + -mem[64] + 100
        _1331 = mem[64]
        mem[mem[64]] = 32
        _1335 = mem[_227]
        mem[mem[64] + 32] = mem[_227]
        idx = 0
        s = _227 + 32
        t = mem[64] + 64
        while idx < _1335:
            _1540 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_1540 + 32]
            mem[t + 64] = mem[_1540 + 64]
            mem[t + 96] = mem[_1540 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _1331 + (128 * _1335) + -mem[64] + 64
    mem[64] = _227 + (32 * _9) + 416
    mem[_227 + (32 * _9) + 288] = 0
    mem[_227 + (32 * _9) + 320] = 0
    mem[_227 + (32 * _9) + 352] = 0
    mem[_227 + (32 * _9) + 384] = 0
    mem[var42002] = var42001
    if not var42003 - 1:
        idx = 0
        while idx < _9:
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            _1776 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
            mem[mem[64] + 4] = address(arg2)
            staticcall address(_1776).borrowBalanceStored(address arg1) with:
                    gas gas_remaining wei
                   args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1780 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1788 = mem[_1780]
            _1794 = mem[64]
            mem[64] = mem[64] + 128
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            mem[_1794] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 140 len 20]
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            _1800 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
            mem[mem[64] + 4] = address(arg2)
            staticcall address(_1800).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1812 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1816 = mem[_1812]
            if mem[_1812] <= 0:
                mem[_1794 + 32] = 0
                mem[_1794 + 64] = _1788
                _1825 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1825] = ext_call.return_data[0]
                _1830 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1830] = 0
                _1831 = mem[64]
                mem[64] = mem[64] + 32
                _1834 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1834] = 23
                mem[_1834 + 32] = 'multiplication overflow'
                if not ext_call.return_data[0]:
                    mem[_1831] = 0
                    mem[_1794 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _1794
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not _1788:
                    mem[_1831] = 0
                    mem[_1794 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _1794
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if ext_call.return_data[0] and _1788 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if ext_call.return_data[0] * _1788 / ext_call.return_data[0] == _1788:
                    mem[_1831] = ext_call.return_data[0] * _1788
                    mem[_1794 + 96] = ext_call.return_data[0] * _1788 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _1794
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _1853 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[idx + _1853 + 68] = mem[idx + _1834 + 32]
                    idx = idx + 32
                    continue 
                mem[_1853 + 91] = 0
                revert with memory
                  from mem[64]
                   len _1853 + -mem[64] + 100
            _1820 = mem[64]
            mem[64] = mem[64] + 32
            staticcall address(_1800).exchangeRateStored() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1823 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[_1820] = mem[_1823]
            _1836 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1836] = 0
            _1837 = mem[64]
            mem[64] = mem[64] + 32
            _1838 = mem[_1820]
            _1840 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1840] = 23
            mem[_1840 + 32] = 'multiplication overflow'
            if not _1838:
                mem[_1837] = 0
                mem[_1794 + 32] = 0 / 10^18
                mem[_1794 + 64] = _1788
                _1875 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1875] = ext_call.return_data[0]
                _1883 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1883] = 0
                _1884 = mem[64]
                mem[64] = mem[64] + 32
                _1888 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1888] = 23
                mem[_1888 + 32] = 'multiplication overflow'
                if not ext_call.return_data[0]:
                    mem[_1884] = 0
                    mem[_1794 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _1794
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not _1788:
                    mem[_1884] = 0
                    mem[_1794 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _1794
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if ext_call.return_data[0] and _1788 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if ext_call.return_data[0] * _1788 / ext_call.return_data[0] == _1788:
                    mem[_1884] = ext_call.return_data[0] * _1788
                    mem[_1794 + 96] = ext_call.return_data[0] * _1788 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _1794
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _1920 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[idx + _1920 + 68] = mem[idx + _1888 + 32]
                    idx = idx + 32
                    continue 
                mem[_1920 + 91] = 0
                revert with memory
                  from mem[64]
                   len _1920 + -mem[64] + 100
            if not _1816:
                mem[_1837] = 0
                mem[_1794 + 32] = 0 / 10^18
                mem[_1794 + 64] = _1788
                _1880 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1880] = ext_call.return_data[0]
                _1889 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1889] = 0
                _1890 = mem[64]
                mem[64] = mem[64] + 32
                _1895 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1895] = 23
                mem[_1895 + 32] = 'multiplication overflow'
                if not ext_call.return_data[0]:
                    mem[_1890] = 0
                    mem[_1794 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _1794
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not _1788:
                    mem[_1890] = 0
                    mem[_1794 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _1794
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if ext_call.return_data[0] and _1788 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if ext_call.return_data[0] * _1788 / ext_call.return_data[0] == _1788:
                    mem[_1890] = ext_call.return_data[0] * _1788
                    mem[_1794 + 96] = ext_call.return_data[0] * _1788 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _1794
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _1924 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[idx + _1924 + 68] = mem[idx + _1895 + 32]
                    idx = idx + 32
                    continue 
                mem[_1924 + 91] = 0
                revert with memory
                  from mem[64]
                   len _1924 + -mem[64] + 100
            if _1838 and _1816 > -1 / _1838:
                revert with 'NH{q', 17
            if not _1838:
                revert with 'NH{q', 18
            if _1838 * _1816 / _1838 != _1816:
                _1857 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[idx + _1857 + 68] = mem[idx + _1840 + 32]
                    idx = idx + 32
                    continue 
                mem[_1857 + 91] = 0
                revert with memory
                  from mem[64]
                   len _1857 + -mem[64] + 100
            mem[_1837] = _1838 * _1816
            mem[_1794 + 32] = _1838 * _1816 / 10^18
            mem[_1794 + 64] = _1788
            _1906 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1906] = ext_call.return_data[0]
            _1908 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1908] = 0
            _1909 = mem[64]
            mem[64] = mem[64] + 32
            _1912 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1912] = 23
            mem[_1912 + 32] = 'multiplication overflow'
            if not ext_call.return_data[0]:
                mem[_1909] = 0
                mem[_1794 + 96] = 0 / 10^18
                if idx >= mem[_227]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _227 + 32] = _1794
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if not _1788:
                mem[_1909] = 0
                mem[_1794 + 96] = 0 / 10^18
                if idx >= mem[_227]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _227 + 32] = _1794
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if ext_call.return_data[0] and _1788 > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if ext_call.return_data[0] * _1788 / ext_call.return_data[0] == _1788:
                mem[_1909] = ext_call.return_data[0] * _1788
                mem[_1794 + 96] = ext_call.return_data[0] * _1788 / 10^18
                if idx >= mem[_227]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _227 + 32] = _1794
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _1948 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 23
            idx = 0
            while idx < 23:
                mem[idx + _1948 + 68] = mem[idx + _1912 + 32]
                idx = idx + 32
                continue 
            mem[_1948 + 91] = 0
            revert with memory
              from mem[64]
               len _1948 + -mem[64] + 100
        _1775 = mem[64]
        mem[mem[64]] = 32
        _1779 = mem[_227]
        mem[mem[64] + 32] = mem[_227]
        idx = 0
        s = _227 + 32
        t = mem[64] + 64
        while idx < _1779:
            _1984 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_1984 + 32]
            mem[t + 64] = mem[_1984 + 64]
            mem[t + 96] = mem[_1984 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _1775 + (128 * _1779) + -mem[64] + 64
    mem[64] = _227 + (32 * _9) + 544
    mem[_227 + (32 * _9) + 416] = 0
    mem[_227 + (32 * _9) + 448] = 0
    mem[_227 + (32 * _9) + 480] = 0
    mem[_227 + (32 * _9) + 512] = 0
    mem[var46002] = var46001
    if not var46003 - 1:
        idx = 0
        while idx < _9:
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            _2220 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
            mem[mem[64] + 4] = address(arg2)
            staticcall address(_2220).borrowBalanceStored(address arg1) with:
                    gas gas_remaining wei
                   args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2224 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2232 = mem[_2224]
            _2238 = mem[64]
            mem[64] = mem[64] + 128
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            mem[_2238] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 140 len 20]
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            _2244 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
            mem[mem[64] + 4] = address(arg2)
            staticcall address(_2244).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2256 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2260 = mem[_2256]
            if mem[_2256] <= 0:
                mem[_2238 + 32] = 0
                mem[_2238 + 64] = _2232
                _2269 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2269] = ext_call.return_data[0]
                _2274 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2274] = 0
                _2275 = mem[64]
                mem[64] = mem[64] + 32
                _2278 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2278] = 23
                mem[_2278 + 32] = 'multiplication overflow'
                if not ext_call.return_data[0]:
                    mem[_2275] = 0
                    mem[_2238 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _2238
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not _2232:
                    mem[_2275] = 0
                    mem[_2238 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _2238
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if ext_call.return_data[0] and _2232 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if ext_call.return_data[0] * _2232 / ext_call.return_data[0] == _2232:
                    mem[_2275] = ext_call.return_data[0] * _2232
                    mem[_2238 + 96] = ext_call.return_data[0] * _2232 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _2238
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _2297 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[idx + _2297 + 68] = mem[idx + _2278 + 32]
                    idx = idx + 32
                    continue 
                mem[_2297 + 91] = 0
                revert with memory
                  from mem[64]
                   len _2297 + -mem[64] + 100
            _2264 = mem[64]
            mem[64] = mem[64] + 32
            staticcall address(_2244).exchangeRateStored() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2267 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[_2264] = mem[_2267]
            _2280 = mem[64]
            mem[64] = mem[64] + 32
            mem[_2280] = 0
            _2281 = mem[64]
            mem[64] = mem[64] + 32
            _2282 = mem[_2264]
            _2284 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2284] = 23
            mem[_2284 + 32] = 'multiplication overflow'
            if not _2282:
                mem[_2281] = 0
                mem[_2238 + 32] = 0 / 10^18
                mem[_2238 + 64] = _2232
                _2319 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2319] = ext_call.return_data[0]
                _2327 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2327] = 0
                _2328 = mem[64]
                mem[64] = mem[64] + 32
                _2332 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2332] = 23
                mem[_2332 + 32] = 'multiplication overflow'
                if not ext_call.return_data[0]:
                    mem[_2328] = 0
                    mem[_2238 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _2238
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not _2232:
                    mem[_2328] = 0
                    mem[_2238 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _2238
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if ext_call.return_data[0] and _2232 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if ext_call.return_data[0] * _2232 / ext_call.return_data[0] == _2232:
                    mem[_2328] = ext_call.return_data[0] * _2232
                    mem[_2238 + 96] = ext_call.return_data[0] * _2232 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _2238
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _2364 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[idx + _2364 + 68] = mem[idx + _2332 + 32]
                    idx = idx + 32
                    continue 
                mem[_2364 + 91] = 0
                revert with memory
                  from mem[64]
                   len _2364 + -mem[64] + 100
            if not _2260:
                mem[_2281] = 0
                mem[_2238 + 32] = 0 / 10^18
                mem[_2238 + 64] = _2232
                _2324 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2324] = ext_call.return_data[0]
                _2333 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2333] = 0
                _2334 = mem[64]
                mem[64] = mem[64] + 32
                _2339 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2339] = 23
                mem[_2339 + 32] = 'multiplication overflow'
                if not ext_call.return_data[0]:
                    mem[_2334] = 0
                    mem[_2238 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _2238
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not _2232:
                    mem[_2334] = 0
                    mem[_2238 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _2238
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if ext_call.return_data[0] and _2232 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if ext_call.return_data[0] * _2232 / ext_call.return_data[0] == _2232:
                    mem[_2334] = ext_call.return_data[0] * _2232
                    mem[_2238 + 96] = ext_call.return_data[0] * _2232 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _2238
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _2368 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[idx + _2368 + 68] = mem[idx + _2339 + 32]
                    idx = idx + 32
                    continue 
                mem[_2368 + 91] = 0
                revert with memory
                  from mem[64]
                   len _2368 + -mem[64] + 100
            if _2282 and _2260 > -1 / _2282:
                revert with 'NH{q', 17
            if not _2282:
                revert with 'NH{q', 18
            if _2282 * _2260 / _2282 != _2260:
                _2301 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[idx + _2301 + 68] = mem[idx + _2284 + 32]
                    idx = idx + 32
                    continue 
                mem[_2301 + 91] = 0
                revert with memory
                  from mem[64]
                   len _2301 + -mem[64] + 100
            mem[_2281] = _2282 * _2260
            mem[_2238 + 32] = _2282 * _2260 / 10^18
            mem[_2238 + 64] = _2232
            _2350 = mem[64]
            mem[64] = mem[64] + 32
            mem[_2350] = ext_call.return_data[0]
            _2352 = mem[64]
            mem[64] = mem[64] + 32
            mem[_2352] = 0
            _2353 = mem[64]
            mem[64] = mem[64] + 32
            _2356 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2356] = 23
            mem[_2356 + 32] = 'multiplication overflow'
            if not ext_call.return_data[0]:
                mem[_2353] = 0
                mem[_2238 + 96] = 0 / 10^18
                if idx >= mem[_227]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _227 + 32] = _2238
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if not _2232:
                mem[_2353] = 0
                mem[_2238 + 96] = 0 / 10^18
                if idx >= mem[_227]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _227 + 32] = _2238
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if ext_call.return_data[0] and _2232 > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if ext_call.return_data[0] * _2232 / ext_call.return_data[0] == _2232:
                mem[_2353] = ext_call.return_data[0] * _2232
                mem[_2238 + 96] = ext_call.return_data[0] * _2232 / 10^18
                if idx >= mem[_227]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _227 + 32] = _2238
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _2392 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 23
            idx = 0
            while idx < 23:
                mem[idx + _2392 + 68] = mem[idx + _2356 + 32]
                idx = idx + 32
                continue 
            mem[_2392 + 91] = 0
            revert with memory
              from mem[64]
               len _2392 + -mem[64] + 100
        _2219 = mem[64]
        mem[mem[64]] = 32
        _2223 = mem[_227]
        mem[mem[64] + 32] = mem[_227]
        idx = 0
        s = _227 + 32
        t = mem[64] + 64
        while idx < _2223:
            _2428 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_2428 + 32]
            mem[t + 64] = mem[_2428 + 64]
            mem[t + 96] = mem[_2428 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _2219 + (128 * _2223) + -mem[64] + 64
    mem[64] = _227 + (32 * _9) + 672
    mem[_227 + (32 * _9) + 544] = 0
    mem[_227 + (32 * _9) + 576] = 0
    mem[_227 + (32 * _9) + 608] = 0
    mem[_227 + (32 * _9) + 640] = 0
    mem[var50002] = var50001
    if not var50003 - 1:
        idx = 0
        while idx < _9:
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            _2664 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
            mem[mem[64] + 4] = address(arg2)
            staticcall address(_2664).borrowBalanceStored(address arg1) with:
                    gas gas_remaining wei
                   args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2668 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2676 = mem[_2668]
            _2682 = mem[64]
            mem[64] = mem[64] + 128
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            mem[_2682] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 140 len 20]
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            _2688 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
            mem[mem[64] + 4] = address(arg2)
            staticcall address(_2688).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2700 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2704 = mem[_2700]
            if mem[_2700] <= 0:
                mem[_2682 + 32] = 0
                mem[_2682 + 64] = _2676
                _2713 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2713] = ext_call.return_data[0]
                _2718 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2718] = 0
                _2719 = mem[64]
                mem[64] = mem[64] + 32
                _2722 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2722] = 23
                mem[_2722 + 32] = 'multiplication overflow'
                if not ext_call.return_data[0]:
                    mem[_2719] = 0
                    mem[_2682 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _2682
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not _2676:
                    mem[_2719] = 0
                    mem[_2682 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _2682
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if ext_call.return_data[0] and _2676 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if ext_call.return_data[0] * _2676 / ext_call.return_data[0] == _2676:
                    mem[_2719] = ext_call.return_data[0] * _2676
                    mem[_2682 + 96] = ext_call.return_data[0] * _2676 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _2682
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _2741 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[idx + _2741 + 68] = mem[idx + _2722 + 32]
                    idx = idx + 32
                    continue 
                mem[_2741 + 91] = 0
                revert with memory
                  from mem[64]
                   len _2741 + -mem[64] + 100
            _2708 = mem[64]
            mem[64] = mem[64] + 32
            staticcall address(_2688).exchangeRateStored() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2711 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[_2708] = mem[_2711]
            _2724 = mem[64]
            mem[64] = mem[64] + 32
            mem[_2724] = 0
            _2725 = mem[64]
            mem[64] = mem[64] + 32
            _2726 = mem[_2708]
            _2728 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2728] = 23
            mem[_2728 + 32] = 'multiplication overflow'
            if not _2726:
                mem[_2725] = 0
                mem[_2682 + 32] = 0 / 10^18
                mem[_2682 + 64] = _2676
                _2763 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2763] = ext_call.return_data[0]
                _2771 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2771] = 0
                _2772 = mem[64]
                mem[64] = mem[64] + 32
                _2776 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2776] = 23
                mem[_2776 + 32] = 'multiplication overflow'
                if not ext_call.return_data[0]:
                    mem[_2772] = 0
                    mem[_2682 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _2682
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not _2676:
                    mem[_2772] = 0
                    mem[_2682 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _2682
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if ext_call.return_data[0] and _2676 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if ext_call.return_data[0] * _2676 / ext_call.return_data[0] == _2676:
                    mem[_2772] = ext_call.return_data[0] * _2676
                    mem[_2682 + 96] = ext_call.return_data[0] * _2676 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _2682
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _2808 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[idx + _2808 + 68] = mem[idx + _2776 + 32]
                    idx = idx + 32
                    continue 
                mem[_2808 + 91] = 0
                revert with memory
                  from mem[64]
                   len _2808 + -mem[64] + 100
            if not _2704:
                mem[_2725] = 0
                mem[_2682 + 32] = 0 / 10^18
                mem[_2682 + 64] = _2676
                _2768 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2768] = ext_call.return_data[0]
                _2777 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2777] = 0
                _2778 = mem[64]
                mem[64] = mem[64] + 32
                _2783 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2783] = 23
                mem[_2783 + 32] = 'multiplication overflow'
                if not ext_call.return_data[0]:
                    mem[_2778] = 0
                    mem[_2682 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _2682
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not _2676:
                    mem[_2778] = 0
                    mem[_2682 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _2682
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if ext_call.return_data[0] and _2676 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if ext_call.return_data[0] * _2676 / ext_call.return_data[0] == _2676:
                    mem[_2778] = ext_call.return_data[0] * _2676
                    mem[_2682 + 96] = ext_call.return_data[0] * _2676 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _2682
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _2812 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[idx + _2812 + 68] = mem[idx + _2783 + 32]
                    idx = idx + 32
                    continue 
                mem[_2812 + 91] = 0
                revert with memory
                  from mem[64]
                   len _2812 + -mem[64] + 100
            if _2726 and _2704 > -1 / _2726:
                revert with 'NH{q', 17
            if not _2726:
                revert with 'NH{q', 18
            if _2726 * _2704 / _2726 != _2704:
                _2745 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[idx + _2745 + 68] = mem[idx + _2728 + 32]
                    idx = idx + 32
                    continue 
                mem[_2745 + 91] = 0
                revert with memory
                  from mem[64]
                   len _2745 + -mem[64] + 100
            mem[_2725] = _2726 * _2704
            mem[_2682 + 32] = _2726 * _2704 / 10^18
            mem[_2682 + 64] = _2676
            _2794 = mem[64]
            mem[64] = mem[64] + 32
            mem[_2794] = ext_call.return_data[0]
            _2796 = mem[64]
            mem[64] = mem[64] + 32
            mem[_2796] = 0
            _2797 = mem[64]
            mem[64] = mem[64] + 32
            _2800 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2800] = 23
            mem[_2800 + 32] = 'multiplication overflow'
            if not ext_call.return_data[0]:
                mem[_2797] = 0
                mem[_2682 + 96] = 0 / 10^18
                if idx >= mem[_227]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _227 + 32] = _2682
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if not _2676:
                mem[_2797] = 0
                mem[_2682 + 96] = 0 / 10^18
                if idx >= mem[_227]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _227 + 32] = _2682
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if ext_call.return_data[0] and _2676 > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if ext_call.return_data[0] * _2676 / ext_call.return_data[0] == _2676:
                mem[_2797] = ext_call.return_data[0] * _2676
                mem[_2682 + 96] = ext_call.return_data[0] * _2676 / 10^18
                if idx >= mem[_227]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _227 + 32] = _2682
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _2836 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 23
            idx = 0
            while idx < 23:
                mem[idx + _2836 + 68] = mem[idx + _2800 + 32]
                idx = idx + 32
                continue 
            mem[_2836 + 91] = 0
            revert with memory
              from mem[64]
               len _2836 + -mem[64] + 100
        _2663 = mem[64]
        mem[mem[64]] = 32
        _2667 = mem[_227]
        mem[mem[64] + 32] = mem[_227]
        idx = 0
        s = _227 + 32
        t = mem[64] + 64
        while idx < _2667:
            _2872 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_2872 + 32]
            mem[t + 64] = mem[_2872 + 64]
            mem[t + 96] = mem[_2872 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _2663 + (128 * _2667) + -mem[64] + 64
    mem[64] = _227 + (32 * _9) + 800
    mem[_227 + (32 * _9) + 672] = 0
    mem[_227 + (32 * _9) + 704] = 0
    mem[_227 + (32 * _9) + 736] = 0
    mem[_227 + (32 * _9) + 768] = 0
    mem[var54002] = var54001
    if not var54003 - 1:
        idx = 0
        while idx < _9:
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            _3108 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
            mem[mem[64] + 4] = address(arg2)
            staticcall address(_3108).borrowBalanceStored(address arg1) with:
                    gas gas_remaining wei
                   args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3112 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _3120 = mem[_3112]
            _3126 = mem[64]
            mem[64] = mem[64] + 128
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            mem[_3126] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 140 len 20]
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            _3132 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
            mem[mem[64] + 4] = address(arg2)
            staticcall address(_3132).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3144 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _3148 = mem[_3144]
            if mem[_3144] <= 0:
                mem[_3126 + 32] = 0
                mem[_3126 + 64] = _3120
                _3157 = mem[64]
                mem[64] = mem[64] + 32
                mem[_3157] = ext_call.return_data[0]
                _3162 = mem[64]
                mem[64] = mem[64] + 32
                mem[_3162] = 0
                _3163 = mem[64]
                mem[64] = mem[64] + 32
                _3166 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3166] = 23
                mem[_3166 + 32] = 'multiplication overflow'
                if not ext_call.return_data[0]:
                    mem[_3163] = 0
                    mem[_3126 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _3126
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not _3120:
                    mem[_3163] = 0
                    mem[_3126 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _3126
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if ext_call.return_data[0] and _3120 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if ext_call.return_data[0] * _3120 / ext_call.return_data[0] == _3120:
                    mem[_3163] = ext_call.return_data[0] * _3120
                    mem[_3126 + 96] = ext_call.return_data[0] * _3120 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _3126
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _3185 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[idx + _3185 + 68] = mem[idx + _3166 + 32]
                    idx = idx + 32
                    continue 
                mem[_3185 + 91] = 0
                revert with memory
                  from mem[64]
                   len _3185 + -mem[64] + 100
            _3152 = mem[64]
            mem[64] = mem[64] + 32
            staticcall address(_3132).exchangeRateStored() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3155 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[_3152] = mem[_3155]
            _3168 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3168] = 0
            _3169 = mem[64]
            mem[64] = mem[64] + 32
            _3170 = mem[_3152]
            _3172 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3172] = 23
            mem[_3172 + 32] = 'multiplication overflow'
            if not _3170:
                mem[_3169] = 0
                mem[_3126 + 32] = 0 / 10^18
                mem[_3126 + 64] = _3120
                _3207 = mem[64]
                mem[64] = mem[64] + 32
                mem[_3207] = ext_call.return_data[0]
                _3215 = mem[64]
                mem[64] = mem[64] + 32
                mem[_3215] = 0
                _3216 = mem[64]
                mem[64] = mem[64] + 32
                _3220 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3220] = 23
                mem[_3220 + 32] = 'multiplication overflow'
                if not ext_call.return_data[0]:
                    mem[_3216] = 0
                    mem[_3126 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _3126
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not _3120:
                    mem[_3216] = 0
                    mem[_3126 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _3126
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if ext_call.return_data[0] and _3120 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if ext_call.return_data[0] * _3120 / ext_call.return_data[0] == _3120:
                    mem[_3216] = ext_call.return_data[0] * _3120
                    mem[_3126 + 96] = ext_call.return_data[0] * _3120 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _3126
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _3252 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[idx + _3252 + 68] = mem[idx + _3220 + 32]
                    idx = idx + 32
                    continue 
                mem[_3252 + 91] = 0
                revert with memory
                  from mem[64]
                   len _3252 + -mem[64] + 100
            if not _3148:
                mem[_3169] = 0
                mem[_3126 + 32] = 0 / 10^18
                mem[_3126 + 64] = _3120
                _3212 = mem[64]
                mem[64] = mem[64] + 32
                mem[_3212] = ext_call.return_data[0]
                _3221 = mem[64]
                mem[64] = mem[64] + 32
                mem[_3221] = 0
                _3222 = mem[64]
                mem[64] = mem[64] + 32
                _3227 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3227] = 23
                mem[_3227 + 32] = 'multiplication overflow'
                if not ext_call.return_data[0]:
                    mem[_3222] = 0
                    mem[_3126 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _3126
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not _3120:
                    mem[_3222] = 0
                    mem[_3126 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _3126
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if ext_call.return_data[0] and _3120 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if ext_call.return_data[0] * _3120 / ext_call.return_data[0] == _3120:
                    mem[_3222] = ext_call.return_data[0] * _3120
                    mem[_3126 + 96] = ext_call.return_data[0] * _3120 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _3126
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _3256 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[idx + _3256 + 68] = mem[idx + _3227 + 32]
                    idx = idx + 32
                    continue 
                mem[_3256 + 91] = 0
                revert with memory
                  from mem[64]
                   len _3256 + -mem[64] + 100
            if _3170 and _3148 > -1 / _3170:
                revert with 'NH{q', 17
            if not _3170:
                revert with 'NH{q', 18
            if _3170 * _3148 / _3170 != _3148:
                _3189 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[idx + _3189 + 68] = mem[idx + _3172 + 32]
                    idx = idx + 32
                    continue 
                mem[_3189 + 91] = 0
                revert with memory
                  from mem[64]
                   len _3189 + -mem[64] + 100
            mem[_3169] = _3170 * _3148
            mem[_3126 + 32] = _3170 * _3148 / 10^18
            mem[_3126 + 64] = _3120
            _3238 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3238] = ext_call.return_data[0]
            _3240 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3240] = 0
            _3241 = mem[64]
            mem[64] = mem[64] + 32
            _3244 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3244] = 23
            mem[_3244 + 32] = 'multiplication overflow'
            if not ext_call.return_data[0]:
                mem[_3241] = 0
                mem[_3126 + 96] = 0 / 10^18
                if idx >= mem[_227]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _227 + 32] = _3126
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if not _3120:
                mem[_3241] = 0
                mem[_3126 + 96] = 0 / 10^18
                if idx >= mem[_227]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _227 + 32] = _3126
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if ext_call.return_data[0] and _3120 > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if ext_call.return_data[0] * _3120 / ext_call.return_data[0] == _3120:
                mem[_3241] = ext_call.return_data[0] * _3120
                mem[_3126 + 96] = ext_call.return_data[0] * _3120 / 10^18
                if idx >= mem[_227]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _227 + 32] = _3126
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _3280 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 23
            idx = 0
            while idx < 23:
                mem[idx + _3280 + 68] = mem[idx + _3244 + 32]
                idx = idx + 32
                continue 
            mem[_3280 + 91] = 0
            revert with memory
              from mem[64]
               len _3280 + -mem[64] + 100
        _3107 = mem[64]
        mem[mem[64]] = 32
        _3111 = mem[_227]
        mem[mem[64] + 32] = mem[_227]
        idx = 0
        s = _227 + 32
        t = mem[64] + 64
        while idx < _3111:
            _3316 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_3316 + 32]
            mem[t + 64] = mem[_3316 + 64]
            mem[t + 96] = mem[_3316 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _3107 + (128 * _3111) + -mem[64] + 64
    mem[64] = _227 + (32 * _9) + 928
    mem[_227 + (32 * _9) + 800] = 0
    mem[_227 + (32 * _9) + 832] = 0
    mem[_227 + (32 * _9) + 864] = 0
    mem[_227 + (32 * _9) + 896] = 0
    mem[var58002] = var58001
    if not var58003 - 1:
        idx = 0
        while idx < _9:
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            _3552 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
            mem[mem[64] + 4] = address(arg2)
            staticcall address(_3552).borrowBalanceStored(address arg1) with:
                    gas gas_remaining wei
                   args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3556 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _3564 = mem[_3556]
            _3570 = mem[64]
            mem[64] = mem[64] + 128
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            mem[_3570] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 140 len 20]
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            _3576 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
            mem[mem[64] + 4] = address(arg2)
            staticcall address(_3576).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3588 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _3592 = mem[_3588]
            if mem[_3588] <= 0:
                mem[_3570 + 32] = 0
                mem[_3570 + 64] = _3564
                _3601 = mem[64]
                mem[64] = mem[64] + 32
                mem[_3601] = ext_call.return_data[0]
                _3606 = mem[64]
                mem[64] = mem[64] + 32
                mem[_3606] = 0
                _3607 = mem[64]
                mem[64] = mem[64] + 32
                _3610 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3610] = 23
                mem[_3610 + 32] = 'multiplication overflow'
                if not ext_call.return_data[0]:
                    mem[_3607] = 0
                    mem[_3570 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _3570
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not _3564:
                    mem[_3607] = 0
                    mem[_3570 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _3570
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if ext_call.return_data[0] and _3564 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if ext_call.return_data[0] * _3564 / ext_call.return_data[0] == _3564:
                    mem[_3607] = ext_call.return_data[0] * _3564
                    mem[_3570 + 96] = ext_call.return_data[0] * _3564 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _3570
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _3629 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[idx + _3629 + 68] = mem[idx + _3610 + 32]
                    idx = idx + 32
                    continue 
                mem[_3629 + 91] = 0
                revert with memory
                  from mem[64]
                   len _3629 + -mem[64] + 100
            _3596 = mem[64]
            mem[64] = mem[64] + 32
            staticcall address(_3576).exchangeRateStored() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3599 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[_3596] = mem[_3599]
            _3612 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3612] = 0
            _3613 = mem[64]
            mem[64] = mem[64] + 32
            _3614 = mem[_3596]
            _3616 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3616] = 23
            mem[_3616 + 32] = 'multiplication overflow'
            if not _3614:
                mem[_3613] = 0
                mem[_3570 + 32] = 0 / 10^18
                mem[_3570 + 64] = _3564
                _3651 = mem[64]
                mem[64] = mem[64] + 32
                mem[_3651] = ext_call.return_data[0]
                _3659 = mem[64]
                mem[64] = mem[64] + 32
                mem[_3659] = 0
                _3660 = mem[64]
                mem[64] = mem[64] + 32
                _3664 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3664] = 23
                mem[_3664 + 32] = 'multiplication overflow'
                if not ext_call.return_data[0]:
                    mem[_3660] = 0
                    mem[_3570 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _3570
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not _3564:
                    mem[_3660] = 0
                    mem[_3570 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _3570
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if ext_call.return_data[0] and _3564 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if ext_call.return_data[0] * _3564 / ext_call.return_data[0] == _3564:
                    mem[_3660] = ext_call.return_data[0] * _3564
                    mem[_3570 + 96] = ext_call.return_data[0] * _3564 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _3570
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _3696 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[idx + _3696 + 68] = mem[idx + _3664 + 32]
                    idx = idx + 32
                    continue 
                mem[_3696 + 91] = 0
                revert with memory
                  from mem[64]
                   len _3696 + -mem[64] + 100
            if not _3592:
                mem[_3613] = 0
                mem[_3570 + 32] = 0 / 10^18
                mem[_3570 + 64] = _3564
                _3656 = mem[64]
                mem[64] = mem[64] + 32
                mem[_3656] = ext_call.return_data[0]
                _3665 = mem[64]
                mem[64] = mem[64] + 32
                mem[_3665] = 0
                _3666 = mem[64]
                mem[64] = mem[64] + 32
                _3671 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3671] = 23
                mem[_3671 + 32] = 'multiplication overflow'
                if not ext_call.return_data[0]:
                    mem[_3666] = 0
                    mem[_3570 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _3570
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not _3564:
                    mem[_3666] = 0
                    mem[_3570 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _3570
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if ext_call.return_data[0] and _3564 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if ext_call.return_data[0] * _3564 / ext_call.return_data[0] == _3564:
                    mem[_3666] = ext_call.return_data[0] * _3564
                    mem[_3570 + 96] = ext_call.return_data[0] * _3564 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _3570
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _3700 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[idx + _3700 + 68] = mem[idx + _3671 + 32]
                    idx = idx + 32
                    continue 
                mem[_3700 + 91] = 0
                revert with memory
                  from mem[64]
                   len _3700 + -mem[64] + 100
            if _3614 and _3592 > -1 / _3614:
                revert with 'NH{q', 17
            if not _3614:
                revert with 'NH{q', 18
            if _3614 * _3592 / _3614 != _3592:
                _3633 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[idx + _3633 + 68] = mem[idx + _3616 + 32]
                    idx = idx + 32
                    continue 
                mem[_3633 + 91] = 0
                revert with memory
                  from mem[64]
                   len _3633 + -mem[64] + 100
            mem[_3613] = _3614 * _3592
            mem[_3570 + 32] = _3614 * _3592 / 10^18
            mem[_3570 + 64] = _3564
            _3682 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3682] = ext_call.return_data[0]
            _3684 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3684] = 0
            _3685 = mem[64]
            mem[64] = mem[64] + 32
            _3688 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3688] = 23
            mem[_3688 + 32] = 'multiplication overflow'
            if not ext_call.return_data[0]:
                mem[_3685] = 0
                mem[_3570 + 96] = 0 / 10^18
                if idx >= mem[_227]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _227 + 32] = _3570
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if not _3564:
                mem[_3685] = 0
                mem[_3570 + 96] = 0 / 10^18
                if idx >= mem[_227]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _227 + 32] = _3570
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if ext_call.return_data[0] and _3564 > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if ext_call.return_data[0] * _3564 / ext_call.return_data[0] == _3564:
                mem[_3685] = ext_call.return_data[0] * _3564
                mem[_3570 + 96] = ext_call.return_data[0] * _3564 / 10^18
                if idx >= mem[_227]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _227 + 32] = _3570
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _3724 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 23
            idx = 0
            while idx < 23:
                mem[idx + _3724 + 68] = mem[idx + _3688 + 32]
                idx = idx + 32
                continue 
            mem[_3724 + 91] = 0
            revert with memory
              from mem[64]
               len _3724 + -mem[64] + 100
        _3551 = mem[64]
        mem[mem[64]] = 32
        _3555 = mem[_227]
        mem[mem[64] + 32] = mem[_227]
        idx = 0
        s = _227 + 32
        t = mem[64] + 64
        while idx < _3555:
            _3760 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_3760 + 32]
            mem[t + 64] = mem[_3760 + 64]
            mem[t + 96] = mem[_3760 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _3551 + (128 * _3555) + -mem[64] + 64
    mem[64] = _227 + (32 * _9) + 1056
    mem[_227 + (32 * _9) + 928] = 0
    mem[_227 + (32 * _9) + 960] = 0
    mem[_227 + (32 * _9) + 992] = 0
    mem[_227 + (32 * _9) + 1024] = 0
    mem[var62002] = var62001
    if var62003 - 1:
        # nil
    else:
        idx = 0
        while idx < _9:
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            _3996 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
            mem[mem[64] + 4] = address(arg2)
            staticcall address(_3996).borrowBalanceStored(address arg1) with:
                    gas gas_remaining wei
                   args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4000 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _4008 = mem[_4000]
            _4014 = mem[64]
            mem[64] = mem[64] + 128
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            mem[_4014] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 140 len 20]
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            _4020 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
            mem[mem[64] + 4] = address(arg2)
            staticcall address(_4020).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4032 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _4036 = mem[_4032]
            if mem[_4032] <= 0:
                mem[_4014 + 32] = 0
                mem[_4014 + 64] = _4008
                _4045 = mem[64]
                mem[64] = mem[64] + 32
                mem[_4045] = ext_call.return_data[0]
                _4050 = mem[64]
                mem[64] = mem[64] + 32
                mem[_4050] = 0
                _4051 = mem[64]
                mem[64] = mem[64] + 32
                _4054 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4054] = 23
                mem[_4054 + 32] = 'multiplication overflow'
                if not ext_call.return_data[0]:
                    mem[_4051] = 0
                    mem[_4014 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _4014
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not _4008:
                    mem[_4051] = 0
                    mem[_4014 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _4014
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if ext_call.return_data[0] and _4008 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if ext_call.return_data[0] * _4008 / ext_call.return_data[0] == _4008:
                    mem[_4051] = ext_call.return_data[0] * _4008
                    mem[_4014 + 96] = ext_call.return_data[0] * _4008 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _4014
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _4073 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[idx + _4073 + 68] = mem[idx + _4054 + 32]
                    idx = idx + 32
                    continue 
                mem[_4073 + 91] = 0
                revert with memory
                  from mem[64]
                   len _4073 + -mem[64] + 100
            _4040 = mem[64]
            mem[64] = mem[64] + 32
            staticcall address(_4020).exchangeRateStored() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4043 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[_4040] = mem[_4043]
            _4056 = mem[64]
            mem[64] = mem[64] + 32
            mem[_4056] = 0
            _4057 = mem[64]
            mem[64] = mem[64] + 32
            _4058 = mem[_4040]
            _4060 = mem[64]
            mem[64] = mem[64] + 64
            mem[_4060] = 23
            mem[_4060 + 32] = 'multiplication overflow'
            if not _4058:
                mem[_4057] = 0
                mem[_4014 + 32] = 0 / 10^18
                mem[_4014 + 64] = _4008
                _4095 = mem[64]
                mem[64] = mem[64] + 32
                mem[_4095] = ext_call.return_data[0]
                _4103 = mem[64]
                mem[64] = mem[64] + 32
                mem[_4103] = 0
                _4104 = mem[64]
                mem[64] = mem[64] + 32
                _4108 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4108] = 23
                mem[_4108 + 32] = 'multiplication overflow'
                if not ext_call.return_data[0]:
                    mem[_4104] = 0
                    mem[_4014 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _4014
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not _4008:
                    mem[_4104] = 0
                    mem[_4014 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _4014
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if ext_call.return_data[0] and _4008 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if ext_call.return_data[0] * _4008 / ext_call.return_data[0] == _4008:
                    mem[_4104] = ext_call.return_data[0] * _4008
                    mem[_4014 + 96] = ext_call.return_data[0] * _4008 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _4014
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _4140 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[idx + _4140 + 68] = mem[idx + _4108 + 32]
                    idx = idx + 32
                    continue 
                mem[_4140 + 91] = 0
                revert with memory
                  from mem[64]
                   len _4140 + -mem[64] + 100
            if not _4036:
                mem[_4057] = 0
                mem[_4014 + 32] = 0 / 10^18
                mem[_4014 + 64] = _4008
                _4100 = mem[64]
                mem[64] = mem[64] + 32
                mem[_4100] = ext_call.return_data[0]
                _4109 = mem[64]
                mem[64] = mem[64] + 32
                mem[_4109] = 0
                _4110 = mem[64]
                mem[64] = mem[64] + 32
                _4115 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4115] = 23
                mem[_4115 + 32] = 'multiplication overflow'
                if not ext_call.return_data[0]:
                    mem[_4110] = 0
                    mem[_4014 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _4014
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not _4008:
                    mem[_4110] = 0
                    mem[_4014 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _4014
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if ext_call.return_data[0] and _4008 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if ext_call.return_data[0] * _4008 / ext_call.return_data[0] == _4008:
                    mem[_4110] = ext_call.return_data[0] * _4008
                    mem[_4014 + 96] = ext_call.return_data[0] * _4008 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _4014
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _4144 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[idx + _4144 + 68] = mem[idx + _4115 + 32]
                    idx = idx + 32
                    continue 
                mem[_4144 + 91] = 0
                revert with memory
                  from mem[64]
                   len _4144 + -mem[64] + 100
            if _4058 and _4036 > -1 / _4058:
                revert with 'NH{q', 17
            if not _4058:
                revert with 'NH{q', 18
            if _4058 * _4036 / _4058 != _4036:
                _4077 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[idx + _4077 + 68] = mem[idx + _4060 + 32]
                    idx = idx + 32
                    continue 
                mem[_4077 + 91] = 0
                revert with memory
                  from mem[64]
                   len _4077 + -mem[64] + 100
            mem[_4057] = _4058 * _4036
            mem[_4014 + 32] = _4058 * _4036 / 10^18
            mem[_4014 + 64] = _4008
            _4126 = mem[64]
            mem[64] = mem[64] + 32
            mem[_4126] = ext_call.return_data[0]
            _4128 = mem[64]
            mem[64] = mem[64] + 32
            mem[_4128] = 0
            _4129 = mem[64]
            mem[64] = mem[64] + 32
            _4132 = mem[64]
            mem[64] = mem[64] + 64
            mem[_4132] = 23
            mem[_4132 + 32] = 'multiplication overflow'
            if not ext_call.return_data[0]:
                mem[_4129] = 0
                mem[_4014 + 96] = 0 / 10^18
                if idx >= mem[_227]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _227 + 32] = _4014
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if not _4008:
                mem[_4129] = 0
                mem[_4014 + 96] = 0 / 10^18
                if idx >= mem[_227]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _227 + 32] = _4014
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if ext_call.return_data[0] and _4008 > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if ext_call.return_data[0] * _4008 / ext_call.return_data[0] == _4008:
                mem[_4129] = ext_call.return_data[0] * _4008
                mem[_4014 + 96] = ext_call.return_data[0] * _4008 / 10^18
                if idx >= mem[_227]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _227 + 32] = _4014
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _4168 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 23
            idx = 0
            while idx < 23:
                mem[idx + _4168 + 68] = mem[idx + _4132 + 32]
                idx = idx + 32
                continue 
            mem[_4168 + 91] = 0
            revert with memory
              from mem[64]
               len _4168 + -mem[64] + 100
        _3995 = mem[64]
        mem[mem[64]] = 32
        _3999 = mem[_227]
        mem[mem[64] + 32] = mem[_227]
        idx = 0
        s = _227 + 32
        t = mem[64] + 64
        while idx < _3999:
            _4204 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_4204 + 32]
            mem[t + 64] = mem[_4204 + 64]
            mem[t + 96] = mem[_4204 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _3995 + (128 * _3999) + -mem[64] + 64
}



}
