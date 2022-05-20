contract main {




// =====================  Runtime code  =====================


address owner;

function owner() payable {
    return owner
}

function destroy() payable {
    if owner != msg.sender:
        revert with 0, 'NOT_OWNER'
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function sub_7f57b120(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if ('cd', 4).length > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    if 2 * ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[96] = 2 * ('cd', 4).length
    mem[64] = (64 * ('cd', 4).length) + 128
    if not uint255(('cd', 4).length):
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _38 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _40 = mem[_38]
            require mem[_38] == mem[_38 + 18 len 14]
            require mem[_38 + 32] == mem[_38 + 50 len 14]
            require mem[_38 + 64] == mem[_38 + 92 len 4]
            if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if 2 * idx >= mem[96]:
                revert with 'NH{q', 50
            if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if 1 > !(2 * idx):
                revert with 'NH{q', 17
            if (2 * idx) + 1 >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * (2 * idx) + 1) + 128] = mem[_38 + 50 len 14]
            mem[(64 * idx) + 128] = Mask(112, 0, _40)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        mem[128 len 64 * ('cd', 4).length] = call.data[calldata.size len 64 * ('cd', 4).length]
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _39 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _41 = mem[_39]
            require mem[_39] == mem[_39 + 18 len 14]
            require mem[_39 + 32] == mem[_39 + 50 len 14]
            require mem[_39 + 64] == mem[_39 + 92 len 4]
            if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if 2 * idx >= mem[96]:
                revert with 'NH{q', 50
            if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if 1 > !(2 * idx):
                revert with 'NH{q', 17
            if (2 * idx) + 1 >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * (2 * idx) + 1) + 128] = mem[_39 + 50 len 14]
            mem[(64 * idx) + 128] = Mask(112, 0, _41)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
}

function sub_63d0d661(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    mem[64] = (32 * ('cd', 4).length) + 128
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _54 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _60 = mem[_54]
            require mem[_54] == mem[_54 + 18 len 14]
            _64 = mem[_54 + 32]
            require mem[_54 + 32] == mem[_54 + 50 len 14]
            require mem[_54 + 64] == mem[_54 + 92 len 4]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _69 = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _71 = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[mem[(32 * idx) + 128] + 64] = mem[_54 + 92 len 4]
            mem[_71 + 32] = Mask(112, 0, _64)
            mem[_69] = Mask(112, 0, _60)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _42 = mem[64]
        mem[mem[64]] = 32
        _44 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _44:
            _81 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_81 + 32]
            mem[t + 64] = mem[_81 + 92 len 4]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _42 + (96 * _44) + -mem[64] + 64
    mem[64] = (32 * ('cd', 4).length) + 224
    mem[(32 * ('cd', 4).length) + 128] = 0
    mem[(32 * ('cd', 4).length) + 160] = 0
    mem[(32 * ('cd', 4).length) + 192] = 0
    mem[var18002] = var18001
    if not var18003 - 1:
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _142 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _146 = mem[_142]
            require mem[_142] == mem[_142 + 18 len 14]
            _148 = mem[_142 + 32]
            require mem[_142 + 32] == mem[_142 + 50 len 14]
            require mem[_142 + 64] == mem[_142 + 92 len 4]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _153 = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _156 = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[mem[(32 * idx) + 128] + 64] = mem[_142 + 92 len 4]
            mem[_156 + 32] = Mask(112, 0, _148)
            mem[_153] = Mask(112, 0, _146)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _127 = mem[64]
        mem[mem[64]] = 32
        _128 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _128:
            _166 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_166 + 32]
            mem[t + 64] = mem[_166 + 92 len 4]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _127 + (96 * _128) + -mem[64] + 64
    mem[64] = (32 * ('cd', 4).length) + 320
    mem[(32 * ('cd', 4).length) + 224] = 0
    mem[(32 * ('cd', 4).length) + 256] = 0
    mem[(32 * ('cd', 4).length) + 288] = 0
    mem[var22002] = var22001
    if not var22003 - 1:
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _226 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _230 = mem[_226]
            require mem[_226] == mem[_226 + 18 len 14]
            _232 = mem[_226 + 32]
            require mem[_226 + 32] == mem[_226 + 50 len 14]
            require mem[_226 + 64] == mem[_226 + 92 len 4]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _237 = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _240 = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[mem[(32 * idx) + 128] + 64] = mem[_226 + 92 len 4]
            mem[_240 + 32] = Mask(112, 0, _232)
            mem[_237] = Mask(112, 0, _230)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _211 = mem[64]
        mem[mem[64]] = 32
        _212 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _212:
            _250 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_250 + 32]
            mem[t + 64] = mem[_250 + 92 len 4]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _211 + (96 * _212) + -mem[64] + 64
    mem[64] = (32 * ('cd', 4).length) + 416
    mem[(32 * ('cd', 4).length) + 320] = 0
    mem[(32 * ('cd', 4).length) + 352] = 0
    mem[(32 * ('cd', 4).length) + 384] = 0
    mem[var26002] = var26001
    if not var26003 - 1:
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _310 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _314 = mem[_310]
            require mem[_310] == mem[_310 + 18 len 14]
            _316 = mem[_310 + 32]
            require mem[_310 + 32] == mem[_310 + 50 len 14]
            require mem[_310 + 64] == mem[_310 + 92 len 4]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _321 = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _324 = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[mem[(32 * idx) + 128] + 64] = mem[_310 + 92 len 4]
            mem[_324 + 32] = Mask(112, 0, _316)
            mem[_321] = Mask(112, 0, _314)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _295 = mem[64]
        mem[mem[64]] = 32
        _296 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _296:
            _334 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_334 + 32]
            mem[t + 64] = mem[_334 + 92 len 4]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _295 + (96 * _296) + -mem[64] + 64
    mem[64] = (32 * ('cd', 4).length) + 512
    mem[(32 * ('cd', 4).length) + 416] = 0
    mem[(32 * ('cd', 4).length) + 448] = 0
    mem[(32 * ('cd', 4).length) + 480] = 0
    mem[var30002] = var30001
    if not var30003 - 1:
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _394 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _398 = mem[_394]
            require mem[_394] == mem[_394 + 18 len 14]
            _400 = mem[_394 + 32]
            require mem[_394 + 32] == mem[_394 + 50 len 14]
            require mem[_394 + 64] == mem[_394 + 92 len 4]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _405 = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _408 = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[mem[(32 * idx) + 128] + 64] = mem[_394 + 92 len 4]
            mem[_408 + 32] = Mask(112, 0, _400)
            mem[_405] = Mask(112, 0, _398)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _379 = mem[64]
        mem[mem[64]] = 32
        _380 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _380:
            _418 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_418 + 32]
            mem[t + 64] = mem[_418 + 92 len 4]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _379 + (96 * _380) + -mem[64] + 64
    mem[64] = (32 * ('cd', 4).length) + 608
    mem[(32 * ('cd', 4).length) + 512] = 0
    mem[(32 * ('cd', 4).length) + 544] = 0
    mem[(32 * ('cd', 4).length) + 576] = 0
    mem[var34002] = var34001
    if not var34003 - 1:
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _478 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _482 = mem[_478]
            require mem[_478] == mem[_478 + 18 len 14]
            _484 = mem[_478 + 32]
            require mem[_478 + 32] == mem[_478 + 50 len 14]
            require mem[_478 + 64] == mem[_478 + 92 len 4]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _489 = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _492 = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[mem[(32 * idx) + 128] + 64] = mem[_478 + 92 len 4]
            mem[_492 + 32] = Mask(112, 0, _484)
            mem[_489] = Mask(112, 0, _482)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _463 = mem[64]
        mem[mem[64]] = 32
        _464 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _464:
            _502 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_502 + 32]
            mem[t + 64] = mem[_502 + 92 len 4]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _463 + (96 * _464) + -mem[64] + 64
    mem[64] = (32 * ('cd', 4).length) + 704
    mem[(32 * ('cd', 4).length) + 608] = 0
    mem[(32 * ('cd', 4).length) + 640] = 0
    mem[(32 * ('cd', 4).length) + 672] = 0
    mem[var38002] = var38001
    if not var38003 - 1:
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _562 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _566 = mem[_562]
            require mem[_562] == mem[_562 + 18 len 14]
            _568 = mem[_562 + 32]
            require mem[_562 + 32] == mem[_562 + 50 len 14]
            require mem[_562 + 64] == mem[_562 + 92 len 4]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _573 = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _576 = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[mem[(32 * idx) + 128] + 64] = mem[_562 + 92 len 4]
            mem[_576 + 32] = Mask(112, 0, _568)
            mem[_573] = Mask(112, 0, _566)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _547 = mem[64]
        mem[mem[64]] = 32
        _548 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _548:
            _586 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_586 + 32]
            mem[t + 64] = mem[_586 + 92 len 4]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _547 + (96 * _548) + -mem[64] + 64
    mem[64] = (32 * ('cd', 4).length) + 800
    mem[(32 * ('cd', 4).length) + 704] = 0
    mem[(32 * ('cd', 4).length) + 736] = 0
    mem[(32 * ('cd', 4).length) + 768] = 0
    mem[var42002] = var42001
    if not var42003 - 1:
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _646 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _650 = mem[_646]
            require mem[_646] == mem[_646 + 18 len 14]
            _652 = mem[_646 + 32]
            require mem[_646 + 32] == mem[_646 + 50 len 14]
            require mem[_646 + 64] == mem[_646 + 92 len 4]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _657 = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _660 = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[mem[(32 * idx) + 128] + 64] = mem[_646 + 92 len 4]
            mem[_660 + 32] = Mask(112, 0, _652)
            mem[_657] = Mask(112, 0, _650)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _631 = mem[64]
        mem[mem[64]] = 32
        _632 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _632:
            _670 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_670 + 32]
            mem[t + 64] = mem[_670 + 92 len 4]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _631 + (96 * _632) + -mem[64] + 64
    mem[64] = (32 * ('cd', 4).length) + 896
    mem[(32 * ('cd', 4).length) + 800] = 0
    mem[(32 * ('cd', 4).length) + 832] = 0
    mem[(32 * ('cd', 4).length) + 864] = 0
    mem[var46002] = var46001
    if not var46003 - 1:
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _730 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _734 = mem[_730]
            require mem[_730] == mem[_730 + 18 len 14]
            _736 = mem[_730 + 32]
            require mem[_730 + 32] == mem[_730 + 50 len 14]
            require mem[_730 + 64] == mem[_730 + 92 len 4]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _741 = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _744 = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[mem[(32 * idx) + 128] + 64] = mem[_730 + 92 len 4]
            mem[_744 + 32] = Mask(112, 0, _736)
            mem[_741] = Mask(112, 0, _734)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _715 = mem[64]
        mem[mem[64]] = 32
        _716 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _716:
            _754 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_754 + 32]
            mem[t + 64] = mem[_754 + 92 len 4]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _715 + (96 * _716) + -mem[64] + 64
    mem[64] = (32 * ('cd', 4).length) + 992
    mem[(32 * ('cd', 4).length) + 896] = 0
    mem[(32 * ('cd', 4).length) + 928] = 0
    mem[(32 * ('cd', 4).length) + 960] = 0
    mem[var50002] = var50001
    if not var50003 - 1:
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _814 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _818 = mem[_814]
            require mem[_814] == mem[_814 + 18 len 14]
            _820 = mem[_814 + 32]
            require mem[_814 + 32] == mem[_814 + 50 len 14]
            require mem[_814 + 64] == mem[_814 + 92 len 4]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _825 = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _828 = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[mem[(32 * idx) + 128] + 64] = mem[_814 + 92 len 4]
            mem[_828 + 32] = Mask(112, 0, _820)
            mem[_825] = Mask(112, 0, _818)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    # nil
}

function sub_035865dc(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    mem[96] = ('cd', 36).length
    mem[64] = (32 * ('cd', 36).length) + 128
    if not ('cd', 36).length:
        idx = 0
        while idx < ('cd', 36).length:
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            staticcall address(cd[((32 * idx) + cd[36] + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _69 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _76 = mem[_69]
            require mem[_69] == mem[_69 + 18 len 14]
            _80 = mem[_69 + 32]
            require mem[_69 + 32] == mem[_69 + 50 len 14]
            require mem[_69 + 64] == mem[_69 + 92 len 4]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _85 = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _87 = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[mem[(32 * idx) + 128] + 64] = mem[_69 + 92 len 4]
            mem[_87 + 32] = Mask(112, 0, _80)
            mem[_85] = Mask(112, 0, _76)
            if idx >= ('cd', 36).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
            staticcall address(cd[4]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[36] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _99 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[mem[(32 * idx) + 128] + 96] = mem[_99]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _56 = mem[64]
        mem[mem[64]] = 32
        _58 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _58:
            _109 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_109 + 32]
            mem[t + 64] = mem[_109 + 92 len 4]
            mem[t + 96] = mem[_109 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _56 + (128 * _58) + -mem[64] + 64
    mem[64] = (32 * ('cd', 36).length) + 256
    mem[(32 * ('cd', 36).length) + 128] = 0
    mem[(32 * ('cd', 36).length) + 160] = 0
    mem[(32 * ('cd', 36).length) + 192] = 0
    mem[(32 * ('cd', 36).length) + 224] = 0
    mem[var21002] = var21001
    if not var21003 - 1:
        idx = 0
        while idx < ('cd', 36).length:
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            staticcall address(cd[((32 * idx) + cd[36] + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _187 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _191 = mem[_187]
            require mem[_187] == mem[_187 + 18 len 14]
            _193 = mem[_187 + 32]
            require mem[_187 + 32] == mem[_187 + 50 len 14]
            require mem[_187 + 64] == mem[_187 + 92 len 4]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _198 = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _201 = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[mem[(32 * idx) + 128] + 64] = mem[_187 + 92 len 4]
            mem[_201 + 32] = Mask(112, 0, _193)
            mem[_198] = Mask(112, 0, _191)
            if idx >= ('cd', 36).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
            staticcall address(cd[4]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[36] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _212 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[mem[(32 * idx) + 128] + 96] = mem[_212]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _170 = mem[64]
        mem[mem[64]] = 32
        _171 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _171:
            _223 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_223 + 32]
            mem[t + 64] = mem[_223 + 92 len 4]
            mem[t + 96] = mem[_223 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _170 + (128 * _171) + -mem[64] + 64
    mem[64] = (32 * ('cd', 36).length) + 384
    mem[(32 * ('cd', 36).length) + 256] = 0
    mem[(32 * ('cd', 36).length) + 288] = 0
    mem[(32 * ('cd', 36).length) + 320] = 0
    mem[(32 * ('cd', 36).length) + 352] = 0
    mem[var25002] = var25001
    if not var25003 - 1:
        idx = 0
        while idx < ('cd', 36).length:
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            staticcall address(cd[((32 * idx) + cd[36] + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _300 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _304 = mem[_300]
            require mem[_300] == mem[_300 + 18 len 14]
            _306 = mem[_300 + 32]
            require mem[_300 + 32] == mem[_300 + 50 len 14]
            require mem[_300 + 64] == mem[_300 + 92 len 4]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _311 = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _314 = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[mem[(32 * idx) + 128] + 64] = mem[_300 + 92 len 4]
            mem[_314 + 32] = Mask(112, 0, _306)
            mem[_311] = Mask(112, 0, _304)
            if idx >= ('cd', 36).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
            staticcall address(cd[4]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[36] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _325 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[mem[(32 * idx) + 128] + 96] = mem[_325]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _283 = mem[64]
        mem[mem[64]] = 32
        _284 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _284:
            _336 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_336 + 32]
            mem[t + 64] = mem[_336 + 92 len 4]
            mem[t + 96] = mem[_336 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _283 + (128 * _284) + -mem[64] + 64
    mem[64] = (32 * ('cd', 36).length) + 512
    mem[(32 * ('cd', 36).length) + 384] = 0
    mem[(32 * ('cd', 36).length) + 416] = 0
    mem[(32 * ('cd', 36).length) + 448] = 0
    mem[(32 * ('cd', 36).length) + 480] = 0
    mem[var29002] = var29001
    if not var29003 - 1:
        idx = 0
        while idx < ('cd', 36).length:
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            staticcall address(cd[((32 * idx) + cd[36] + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _413 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _417 = mem[_413]
            require mem[_413] == mem[_413 + 18 len 14]
            _419 = mem[_413 + 32]
            require mem[_413 + 32] == mem[_413 + 50 len 14]
            require mem[_413 + 64] == mem[_413 + 92 len 4]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _424 = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _427 = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[mem[(32 * idx) + 128] + 64] = mem[_413 + 92 len 4]
            mem[_427 + 32] = Mask(112, 0, _419)
            mem[_424] = Mask(112, 0, _417)
            if idx >= ('cd', 36).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
            staticcall address(cd[4]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[36] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _438 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[mem[(32 * idx) + 128] + 96] = mem[_438]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _396 = mem[64]
        mem[mem[64]] = 32
        _397 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _397:
            _449 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_449 + 32]
            mem[t + 64] = mem[_449 + 92 len 4]
            mem[t + 96] = mem[_449 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _396 + (128 * _397) + -mem[64] + 64
    mem[64] = (32 * ('cd', 36).length) + 640
    mem[(32 * ('cd', 36).length) + 512] = 0
    mem[(32 * ('cd', 36).length) + 544] = 0
    mem[(32 * ('cd', 36).length) + 576] = 0
    mem[(32 * ('cd', 36).length) + 608] = 0
    mem[var33002] = var33001
    if not var33003 - 1:
        idx = 0
        while idx < ('cd', 36).length:
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            staticcall address(cd[((32 * idx) + cd[36] + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _526 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _530 = mem[_526]
            require mem[_526] == mem[_526 + 18 len 14]
            _532 = mem[_526 + 32]
            require mem[_526 + 32] == mem[_526 + 50 len 14]
            require mem[_526 + 64] == mem[_526 + 92 len 4]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _537 = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _540 = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[mem[(32 * idx) + 128] + 64] = mem[_526 + 92 len 4]
            mem[_540 + 32] = Mask(112, 0, _532)
            mem[_537] = Mask(112, 0, _530)
            if idx >= ('cd', 36).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
            staticcall address(cd[4]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[36] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _551 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[mem[(32 * idx) + 128] + 96] = mem[_551]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _509 = mem[64]
        mem[mem[64]] = 32
        _510 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _510:
            _562 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_562 + 32]
            mem[t + 64] = mem[_562 + 92 len 4]
            mem[t + 96] = mem[_562 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _509 + (128 * _510) + -mem[64] + 64
    mem[64] = (32 * ('cd', 36).length) + 768
    mem[(32 * ('cd', 36).length) + 640] = 0
    mem[(32 * ('cd', 36).length) + 672] = 0
    mem[(32 * ('cd', 36).length) + 704] = 0
    mem[(32 * ('cd', 36).length) + 736] = 0
    mem[var37002] = var37001
    if not var37003 - 1:
        idx = 0
        while idx < ('cd', 36).length:
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            staticcall address(cd[((32 * idx) + cd[36] + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _639 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _643 = mem[_639]
            require mem[_639] == mem[_639 + 18 len 14]
            _645 = mem[_639 + 32]
            require mem[_639 + 32] == mem[_639 + 50 len 14]
            require mem[_639 + 64] == mem[_639 + 92 len 4]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _650 = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _653 = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[mem[(32 * idx) + 128] + 64] = mem[_639 + 92 len 4]
            mem[_653 + 32] = Mask(112, 0, _645)
            mem[_650] = Mask(112, 0, _643)
            if idx >= ('cd', 36).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
            staticcall address(cd[4]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[36] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _664 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[mem[(32 * idx) + 128] + 96] = mem[_664]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _622 = mem[64]
        mem[mem[64]] = 32
        _623 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _623:
            _675 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_675 + 32]
            mem[t + 64] = mem[_675 + 92 len 4]
            mem[t + 96] = mem[_675 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _622 + (128 * _623) + -mem[64] + 64
    mem[64] = (32 * ('cd', 36).length) + 896
    mem[(32 * ('cd', 36).length) + 768] = 0
    mem[(32 * ('cd', 36).length) + 800] = 0
    mem[(32 * ('cd', 36).length) + 832] = 0
    mem[(32 * ('cd', 36).length) + 864] = 0
    mem[var41002] = var41001
    if not var41003 - 1:
        idx = 0
        while idx < ('cd', 36).length:
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            staticcall address(cd[((32 * idx) + cd[36] + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _752 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _756 = mem[_752]
            require mem[_752] == mem[_752 + 18 len 14]
            _758 = mem[_752 + 32]
            require mem[_752 + 32] == mem[_752 + 50 len 14]
            require mem[_752 + 64] == mem[_752 + 92 len 4]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _763 = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _766 = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[mem[(32 * idx) + 128] + 64] = mem[_752 + 92 len 4]
            mem[_766 + 32] = Mask(112, 0, _758)
            mem[_763] = Mask(112, 0, _756)
            if idx >= ('cd', 36).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
            staticcall address(cd[4]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[36] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _777 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[mem[(32 * idx) + 128] + 96] = mem[_777]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _735 = mem[64]
        mem[mem[64]] = 32
        _736 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _736:
            _788 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_788 + 32]
            mem[t + 64] = mem[_788 + 92 len 4]
            mem[t + 96] = mem[_788 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _735 + (128 * _736) + -mem[64] + 64
    mem[64] = (32 * ('cd', 36).length) + 1024
    mem[(32 * ('cd', 36).length) + 896] = 0
    mem[(32 * ('cd', 36).length) + 928] = 0
    mem[(32 * ('cd', 36).length) + 960] = 0
    mem[(32 * ('cd', 36).length) + 992] = 0
    mem[var45002] = var45001
    if not var45003 - 1:
        idx = 0
        while idx < ('cd', 36).length:
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            staticcall address(cd[((32 * idx) + cd[36] + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _865 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _869 = mem[_865]
            require mem[_865] == mem[_865 + 18 len 14]
            _871 = mem[_865 + 32]
            require mem[_865 + 32] == mem[_865 + 50 len 14]
            require mem[_865 + 64] == mem[_865 + 92 len 4]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _876 = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _879 = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[mem[(32 * idx) + 128] + 64] = mem[_865 + 92 len 4]
            mem[_879 + 32] = Mask(112, 0, _871)
            mem[_876] = Mask(112, 0, _869)
            if idx >= ('cd', 36).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
            staticcall address(cd[4]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[36] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _890 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[mem[(32 * idx) + 128] + 96] = mem[_890]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _848 = mem[64]
        mem[mem[64]] = 32
        _849 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _849:
            _901 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_901 + 32]
            mem[t + 64] = mem[_901 + 92 len 4]
            mem[t + 96] = mem[_901 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _848 + (128 * _849) + -mem[64] + 64
    mem[64] = (32 * ('cd', 36).length) + 1152
    mem[(32 * ('cd', 36).length) + 1024] = 0
    mem[(32 * ('cd', 36).length) + 1056] = 0
    mem[(32 * ('cd', 36).length) + 1088] = 0
    mem[(32 * ('cd', 36).length) + 1120] = 0
    mem[var49002] = var49001
    if not var49003 - 1:
        idx = 0
        while idx < ('cd', 36).length:
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            staticcall address(cd[((32 * idx) + cd[36] + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _978 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _982 = mem[_978]
            require mem[_978] == mem[_978 + 18 len 14]
            _984 = mem[_978 + 32]
            require mem[_978 + 32] == mem[_978 + 50 len 14]
            require mem[_978 + 64] == mem[_978 + 92 len 4]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _989 = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _992 = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[mem[(32 * idx) + 128] + 64] = mem[_978 + 92 len 4]
            mem[_992 + 32] = Mask(112, 0, _984)
            mem[_989] = Mask(112, 0, _982)
            if idx >= ('cd', 36).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
            staticcall address(cd[4]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[36] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1003 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[mem[(32 * idx) + 128] + 96] = mem[_1003]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _961 = mem[64]
        mem[mem[64]] = 32
        _962 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _962:
            _1014 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_1014 + 32]
            mem[t + 64] = mem[_1014 + 92 len 4]
            mem[t + 96] = mem[_1014 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _961 + (128 * _962) + -mem[64] + 64
    mem[64] = (32 * ('cd', 36).length) + 1280
    mem[(32 * ('cd', 36).length) + 1152] = 0
    mem[(32 * ('cd', 36).length) + 1184] = 0
    mem[(32 * ('cd', 36).length) + 1216] = 0
    mem[(32 * ('cd', 36).length) + 1248] = 0
    mem[var53002] = var53001
    if not var53003 - 1:
        idx = 0
        while idx < ('cd', 36).length:
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            staticcall address(cd[((32 * idx) + cd[36] + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1091 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _1095 = mem[_1091]
            require mem[_1091] == mem[_1091 + 18 len 14]
            _1097 = mem[_1091 + 32]
            require mem[_1091 + 32] == mem[_1091 + 50 len 14]
            require mem[_1091 + 64] == mem[_1091 + 92 len 4]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _1102 = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _1105 = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[mem[(32 * idx) + 128] + 64] = mem[_1091 + 92 len 4]
            mem[_1105 + 32] = Mask(112, 0, _1097)
            mem[_1102] = Mask(112, 0, _1095)
            if idx >= ('cd', 36).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
            staticcall address(cd[4]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[36] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1116 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[mem[(32 * idx) + 128] + 96] = mem[_1116]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    # nil
}



}
