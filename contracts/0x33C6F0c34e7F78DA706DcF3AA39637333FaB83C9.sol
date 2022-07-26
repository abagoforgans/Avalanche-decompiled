contract main {




// =====================  Runtime code  =====================


#
#  - sub_37b0df58(?)
#
const sub_5f9d4d2e(?) = 0x65285e9dfab318f57051ab2b139cccf232945451

const sub_cce47e55(?) = 0x69fa688f1dc47d4b5d8029d5a35fb7a548310654

const sub_dac4e0e9(?) = 0x65285e9dfab318f57051ab2b139cccf232945451

const aaveLendingAddr = 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c


address stor1;

function _fallback() payable {
    revert
}

function sub_5ccaebad(?) payable {
    mem[96] = 0x7e92807200000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor1)
    staticcall stor1.getRoutes() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= test266151307()
    require return_data.size + 96 > mem[96] + 127
    _5 = mem[mem[96] + 96]
    if mem[mem[96] + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[96] + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96] + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96] + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + (32 * _5) + 32 <= return_data.size
    s = _4 + 128
    t = ceil32(return_data.size) + 128
    idx = 0
    while idx < _5:
        require mem[s] == mem[s + 30 len 2]
        mem[t] = mem[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if _5 > test266151307():
        revert with 0, 65
    _40 = mem[64]
    mem[mem[64]] = _5
    mem[64] = mem[64] + (32 * _5) + 32
    if not _5:
        idx = 0
        while idx < _5:
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            _74 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 158 len 2]
            require ext_code.size(stor1)
            staticcall stor1.0x426bfa4d with:
                    gas gas_remaining wei
                   args (_74 << 240)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _83 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx >= mem[_40]:
                revert with 0, 50
            mem[(32 * idx) + _40 + 32] = mem[_83]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _73 = mem[64]
        mem[mem[64]] = 64
        _81 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 64] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 96
        while idx < _81:
            mem[t] = mem[s + 30 len 2]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_73 + 32] = (32 * _81) + 96
        _99 = mem[_40]
        mem[_73 + (32 * _81) + 96] = mem[_40]
        s = 0
        s = _40 + 32
        t = _73 + (32 * _81) + 128
        while _5 < _99:
            mem[t] = mem[s]
            s = _5 + 1
            s = s + 32
            t = t + 32
            continue 
    else:
        mem[_40 + 32 len 32 * _5] = call.data[calldata.size len 32 * _5]
        idx = 0
        while idx < _5:
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            _77 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 158 len 2]
            require ext_code.size(stor1)
            staticcall stor1.0x426bfa4d with:
                    gas gas_remaining wei
                   args (_77 << 240)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _84 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx >= mem[_40]:
                revert with 0, 50
            mem[(32 * idx) + _40 + 32] = mem[_84]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _76 = mem[64]
        mem[mem[64]] = 64
        _82 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 64] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 96
        while idx < _82:
            mem[t] = mem[s + 30 len 2]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_76 + 32] = (32 * _82) + 96
        _100 = mem[_40]
        mem[_76 + (32 * _82) + 96] = mem[_40]
        s = 0
        s = _40 + 32
        t = _76 + (32 * _82) + 128
        while _5 < _100:
            mem[t] = mem[s]
            s = _5 + 1
            s = s + 32
            t = t + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function sub_1f3f6ff9(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = ceil32(32 * ('cd', 4).length) + 129
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, 'array-lengths-not-same'
    if var52001 < 1:
        revert with 0, 17
    if var56002 < var56001:
        if var84001 < var58001:
            revert with 0, 17
        if var90001 < 1:
            revert with 0, 17
        if var94002 >= var94001:
            if var76001 == -1:
                revert with 0, 17
            # nil
        else:
            if 1 > !var98002:
                revert with 0, 17
            if var102001 >= ('cd', 4).length:
                revert with 0, 50
            if var102003 >= ('cd', 4).length:
                revert with 0, 50
            if mem[(32 * var102003) + 140 len 20] <= mem[(32 * var102001) + 140 len 20]:
                if var102003 == -1:
                    revert with 0, 17
                # nil
            else:
                if 1 > !var102003:
                    revert with 0, 17
                if var102003 + 1 >= ('cd', 4).length:
                    revert with 0, 50
                if var102003 >= ('cd', 4).length:
                    revert with 0, 50
                if 1 > !var102003:
                    revert with 0, 17
                if var102003 + 1 >= ('cd', 36).length:
                    revert with 0, 50
                if var102003 >= ('cd', 36).length:
                    revert with 0, 50
                if var102003 >= ('cd', 4).length:
                    revert with 0, 50
                if 1 > !var102003:
                    revert with 0, 17
                if var102003 + 1 >= ('cd', 4).length:
                    revert with 0, 50
                if var102003 >= ('cd', 36).length:
                    revert with 0, 50
                if 1 > !var102003:
                    revert with 0, 17
                if var102003 + 1 >= ('cd', 36).length:
                    revert with 0, 50
                if var102003 == -1:
                    revert with 0, 17
                # nil
    else:
        if var61001 < 1:
            revert with 0, 17
        if var65002 < var65001:
            if 1 > !var69002:
                revert with 0, 17
            idx = var71003 + 1
            s = var71006
            while idx < ('cd', 4).length:
                if s >= ('cd', 4).length:
                    revert with 0, 50
                if mem[(32 * s) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'non-unique-tokens'
                if s == -1:
                    revert with 0, 17
                if ('cd', 4).length < 1:
                    revert with 0, 17
                if s + 1 < ('cd', 4).length - 1:
                    if 1 > !(s + 1):
                        revert with 0, 17
                    idx = s + 2
                    s = s + 1
                    continue 
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] = 0x7e92807200000000000000000000000000000000000000000000000000000000
                require ext_code.size(stor1)
                staticcall stor1.getRoutes() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _3778 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                require mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] <= test266151307()
                require ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + return_data.size + 98 > ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] + 129
                _3785 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] + 98]
                if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] + 98] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] + 98]) + 1 < 0 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] + 98]) + 99 > test266151307():
                    revert with 0, 65
                mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] + 98]) + 99
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 98] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] + 98]
                require _3778 + (32 * _3785) + 32 <= return_data.size
                s = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + _3778 + 130
                t = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130
                idx = 0
                while idx < _3785:
                    require mem[s] == mem[s + 30 len 2]
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    idx = idx + 1
                    continue 
                _4338 = mem[64]
                mem[mem[64]] = 7
                mem[64] = mem[64] + 256
                mem[_4338 + 32 len 224] = call.data[calldata.size len 224]
                idx = 0
                while idx < _3785:
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 98]:
                        revert with 0, 50
                    if 1 == mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 160 len 2]:
                        _5459 = mem[96]
                        s = 0
                        while s < _5459:
                            if s >= mem[96]:
                                revert with 0, 50
                            _5471 = mem[(32 * s) + 128]
                            if s >= mem[96]:
                                revert with 0, 50
                            require ext_code.size(0x65285e9dfab318f57051ab2b139cccf232945451)
                            staticcall 0x65285e9dfab318f57051ab2b139cccf232945451.getReserveConfigurationData(address arg1) with:
                                    gas gas_remaining wei
                                   args address(mem[(32 * s) + 128])
                            mem[mem[64] len 320] = ext_call.return_data[0 len 320]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5508 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 320
                            require mem[_5508 + 160] == bool(mem[_5508 + 160])
                            require mem[_5508 + 192] == bool(mem[_5508 + 192])
                            require mem[_5508 + 224] == bool(mem[_5508 + 224])
                            _5579 = mem[_5508 + 256]
                            require mem[_5508 + 256] == bool(mem[_5508 + 256])
                            require mem[_5508 + 288] == bool(mem[_5508 + 288])
                            if s >= mem[96]:
                                revert with 0, 50
                            require ext_code.size(0x65285e9dfab318f57051ab2b139cccf232945451)
                            staticcall 0x65285e9dfab318f57051ab2b139cccf232945451.getReserveTokensAddresses(address arg1) with:
                                    gas gas_remaining wei
                                   args address(mem[(32 * s) + 128])
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5609 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _5616 = mem[_5609]
                            require mem[_5609] == mem[_5609 + 12 len 20]
                            require mem[_5609 + 32] == mem[_5609 + 44 len 20]
                            require mem[_5609 + 64] == mem[_5609 + 76 len 20]
                            if _5579:
                                if s >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                    revert with 0, 50
                                _5678 = mem[(32 * s) + ceil32(32 * ('cd', 4).length) + 129]
                                mem[mem[64] + 4] = mem[_5609 + 12 len 20]
                                require ext_code.size(address(_5471))
                                staticcall address(_5471).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(_5616)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5696 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_5696] >= _5678:
                                    if s == -1:
                                        revert with 0, 17
                                    _5459 = mem[96]
                                    s = s + 1
                                    continue 
                            if idx == -1:
                                revert with 0, 17
                            _5459 = mem[96]
                            idx = idx + 1
                            continue 
                    else:
                        if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 98]:
                            revert with 0, 50
                        if mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 160 len 2] != 9:
                            revert with 0, 'invalid-route'
                        _4916 = mem[96]
                        s = 0
                        while s < _4916:
                            if s >= mem[96]:
                                revert with 0, 50
                            _5469 = mem[(32 * s) + 128]
                            if s >= mem[96]:
                                revert with 0, 50
                            require ext_code.size(0x69fa688f1dc47d4b5d8029d5a35fb7a548310654)
                            staticcall 0x69fa688f1dc47d4b5d8029d5a35fb7a548310654.getReserveConfigurationData(address arg1) with:
                                    gas gas_remaining wei
                                   args address(mem[(32 * s) + 128])
                            mem[mem[64] len 320] = ext_call.return_data[0 len 320]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5507 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 320
                            require mem[_5507 + 160] == bool(mem[_5507 + 160])
                            require mem[_5507 + 192] == bool(mem[_5507 + 192])
                            require mem[_5507 + 224] == bool(mem[_5507 + 224])
                            _5578 = mem[_5507 + 256]
                            require mem[_5507 + 256] == bool(mem[_5507 + 256])
                            require mem[_5507 + 288] == bool(mem[_5507 + 288])
                            if s >= mem[96]:
                                revert with 0, 50
                            require ext_code.size(0x69fa688f1dc47d4b5d8029d5a35fb7a548310654)
                            staticcall 0x69fa688f1dc47d4b5d8029d5a35fb7a548310654.getReserveTokensAddresses(address arg1) with:
                                    gas gas_remaining wei
                                   args address(mem[(32 * s) + 128])
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5608 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _5615 = mem[_5608]
                            require mem[_5608] == mem[_5608 + 12 len 20]
                            require mem[_5608 + 32] == mem[_5608 + 44 len 20]
                            require mem[_5608 + 64] == mem[_5608 + 76 len 20]
                            if _5578:
                                if s >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                    revert with 0, 50
                                _5675 = mem[(32 * s) + ceil32(32 * ('cd', 4).length) + 129]
                                mem[mem[64] + 4] = mem[_5608 + 12 len 20]
                                require ext_code.size(address(_5469))
                                staticcall address(_5469).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(_5615)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5695 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_5695] >= _5675:
                                    if s == -1:
                                        revert with 0, 17
                                    s = s + 1
                                    continue 
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 98]:
                        revert with 0, 50
                    if 0 >= mem[_4338]:
                        revert with 0, 50
                    mem[_4338 + 32] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 160 len 2]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _4900 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 98]
                if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 98] > test266151307():
                    revert with 0, 65
                _4903 = mem[64]
                mem[mem[64]] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 98]
                mem[64] = mem[64] + (32 * _4900) + 32
                if not _4900:
                    _5457 = mem[_4338]
                    idx = 0
                    s = 0
                    t = -1
                    while idx < _5457:
                        if idx >= mem[_4338]:
                            revert with 0, 50
                        if 0 == mem[(32 * idx) + _4338 + 62 len 2]:
                            if idx == -1:
                                revert with 0, 17
                            _5457 = mem[_4338]
                            idx = idx + 1
                            s = s
                            t = t
                            continue 
                        if idx >= mem[_4338]:
                            revert with 0, 50
                        _5484 = mem[(32 * idx) + _4338 + 32]
                        mem[mem[64] + 4] = mem[(32 * idx) + _4338 + 62 len 2]
                        require ext_code.size(stor1)
                        staticcall stor1.0x426bfa4d with:
                                gas gas_remaining wei
                               args (_5484 << 240)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5512 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5535 = mem[_5512]
                        if t > mem[_5512]:
                            if idx >= mem[_4338]:
                                revert with 0, 50
                            if 0 >= mem[_4903]:
                                revert with 0, 50
                            mem[_4903 + 32] = mem[(32 * idx) + _4338 + 62 len 2]
                            if idx == -1:
                                revert with 0, 17
                            _5457 = mem[_4338]
                            idx = idx + 1
                            s = 1
                            t = _5535
                            continue 
                        if t != mem[_5512]:
                            if idx == -1:
                                revert with 0, 17
                            _5457 = mem[_4338]
                            idx = idx + 1
                            s = s
                            t = t
                            continue 
                        if idx >= mem[_4338]:
                            revert with 0, 50
                        if uint16(s) >= mem[_4903]:
                            revert with 0, 50
                        mem[(32 * uint16(s)) + _4903 + 32] = mem[(32 * idx) + _4338 + 62 len 2]
                        if uint16(s) == 65535:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        _5457 = mem[_4338]
                        idx = idx + 1
                        s = uint16(s) + 1
                        t = t
                        continue 
                    if uint16(s) > test266151307():
                        revert with 0, 65
                    _5465 = mem[64]
                    mem[mem[64]] = uint16(s)
                    mem[64] = mem[64] + (32 * uint16(s)) + 32
                    if not uint16(s):
                        u = 0
                        while u < uint16(s):
                            if u >= mem[_4903]:
                                revert with 0, 50
                            if u >= mem[_5465]:
                                revert with 0, 50
                            mem[(32 * u) + _5465 + 32] = mem[(32 * u) + _4903 + 62 len 2]
                            if u == -1:
                                revert with 0, 17
                            u = u + 1
                            continue 
                        _6034 = mem[64]
                        mem[mem[64]] = 64
                        _6047 = mem[_5465]
                        mem[mem[64] + 64] = mem[_5465]
                        idx = 0
                        s = _5465 + 32
                        u = mem[64] + 96
                        while idx < _6047:
                            mem[u] = mem[s + 30 len 2]
                            idx = idx + 1
                            s = s + 32
                            u = u + 32
                            continue 
                        mem[_6034 + 32] = t
                        return memory
                          from mem[64]
                           len _6034 + (32 * _6047) + -mem[64] + 96
                    mem[_5465 + 32 len 32 * uint16(s)] = call.data[calldata.size len 32 * uint16(s)]
                    u = 0
                    while u < uint16(s):
                        if u >= mem[_4903]:
                            revert with 0, 50
                        if u >= mem[_5465]:
                            revert with 0, 50
                        mem[(32 * u) + _5465 + 32] = mem[(32 * u) + _4903 + 62 len 2]
                        if u == -1:
                            revert with 0, 17
                        u = u + 1
                        continue 
                    _6037 = mem[64]
                    mem[mem[64]] = 64
                    _6048 = mem[_5465]
                    mem[mem[64] + 64] = mem[_5465]
                    idx = 0
                    s = _5465 + 32
                    u = mem[64] + 96
                    while idx < _6048:
                        mem[u] = mem[s + 30 len 2]
                        idx = idx + 1
                        s = s + 32
                        u = u + 32
                        continue 
                    mem[_6037 + 32] = t
                    return memory
                      from mem[64]
                       len _6037 + (32 * _6048) + -mem[64] + 96
                mem[_4903 + 32 len 32 * _4900] = call.data[calldata.size len 32 * _4900]
                _5458 = mem[_4338]
                idx = 0
                s = 0
                t = -1
                while idx < _5458:
                    if idx >= mem[_4338]:
                        revert with 0, 50
                    if 0 == mem[(32 * idx) + _4338 + 62 len 2]:
                        if idx == -1:
                            revert with 0, 17
                        _5458 = mem[_4338]
                        idx = idx + 1
                        s = s
                        t = t
                        continue 
                    if idx >= mem[_4338]:
                        revert with 0, 50
                    _5486 = mem[(32 * idx) + _4338 + 32]
                    mem[mem[64] + 4] = mem[(32 * idx) + _4338 + 62 len 2]
                    require ext_code.size(stor1)
                    staticcall stor1.0x426bfa4d with:
                            gas gas_remaining wei
                           args (_5486 << 240)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5516 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _5537 = mem[_5516]
                    if t > mem[_5516]:
                        if idx >= mem[_4338]:
                            revert with 0, 50
                        if 0 >= mem[_4903]:
                            revert with 0, 50
                        mem[_4903 + 32] = mem[(32 * idx) + _4338 + 62 len 2]
                        if idx == -1:
                            revert with 0, 17
                        _5458 = mem[_4338]
                        idx = idx + 1
                        s = 1
                        t = _5537
                        continue 
                    if t != mem[_5516]:
                        if idx == -1:
                            revert with 0, 17
                        _5458 = mem[_4338]
                        idx = idx + 1
                        s = s
                        t = t
                        continue 
                    if idx >= mem[_4338]:
                        revert with 0, 50
                    if uint16(s) >= mem[_4903]:
                        revert with 0, 50
                    mem[(32 * uint16(s)) + _4903 + 32] = mem[(32 * idx) + _4338 + 62 len 2]
                    if uint16(s) == 65535:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    _5458 = mem[_4338]
                    idx = idx + 1
                    s = uint16(s) + 1
                    t = t
                    continue 
                if uint16(s) > test266151307():
                    revert with 0, 65
                _5467 = mem[64]
                mem[mem[64]] = uint16(s)
                mem[64] = mem[64] + (32 * uint16(s)) + 32
                if not uint16(s):
                    u = 0
                    while u < uint16(s):
                        if u >= mem[_4903]:
                            revert with 0, 50
                        if u >= mem[_5467]:
                            revert with 0, 50
                        mem[(32 * u) + _5467 + 32] = mem[(32 * u) + _4903 + 62 len 2]
                        if u == -1:
                            revert with 0, 17
                        u = u + 1
                        continue 
                    _6040 = mem[64]
                    mem[mem[64]] = 64
                    _6049 = mem[_5467]
                    mem[mem[64] + 64] = mem[_5467]
                    idx = 0
                    s = _5467 + 32
                    u = mem[64] + 96
                    while idx < _6049:
                        mem[u] = mem[s + 30 len 2]
                        idx = idx + 1
                        s = s + 32
                        u = u + 32
                        continue 
                    mem[_6040 + 32] = t
                    return memory
                      from mem[64]
                       len _6040 + (32 * _6049) + -mem[64] + 96
                mem[_5467 + 32 len 32 * uint16(s)] = call.data[calldata.size len 32 * uint16(s)]
                u = 0
                while u < uint16(s):
                    if u >= mem[_4903]:
                        revert with 0, 50
                    if u >= mem[_5467]:
                        revert with 0, 50
                    mem[(32 * u) + _5467 + 32] = mem[(32 * u) + _4903 + 62 len 2]
                    if u == -1:
                        revert with 0, 17
                    u = u + 1
                    continue 
                _6043 = mem[64]
                mem[mem[64]] = 64
                _6050 = mem[_5467]
                mem[mem[64] + 64] = mem[_5467]
                idx = 0
                s = _5467 + 32
                u = mem[64] + 96
                while idx < _6050:
                    mem[u] = mem[s + 30 len 2]
                    idx = idx + 1
                    s = s + 32
                    u = u + 32
                    continue 
                mem[_6043 + 32] = t
                return memory
                  from mem[64]
                   len _6043 + (32 * _6050) + -mem[64] + 96
            revert with 0, 50
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] = 0x7e92807200000000000000000000000000000000000000000000000000000000
        require ext_code.size(stor1)
        staticcall stor1.getRoutes() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _2085 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
        require mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] <= test266151307()
        require ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + return_data.size + 98 > ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] + 129
        _2088 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] + 98]
        if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] + 98] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] + 98]) + 1 < 0 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] + 98]) + 99 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] + 98]) + 99
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 98] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] + 98]
        require _2085 + (32 * _2088) + 32 <= return_data.size
        s = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + _2085 + 130
        t = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130
        idx = 0
        while idx < _2088:
            require mem[s] == mem[s + 30 len 2]
            mem[t] = mem[s]
            s = s + 32
            t = t + 32
            idx = idx + 1
            continue 
        _2495 = mem[64]
        mem[mem[64]] = 7
        mem[64] = mem[64] + 256
        mem[_2495 + 32 len 224] = call.data[calldata.size len 224]
        idx = 0
        while idx < _2088:
            if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 98]:
                revert with 0, 50
            if 1 == mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 160 len 2]:
                _3312 = mem[96]
                s = 0
                while s < _3312:
                    if s >= mem[96]:
                        revert with 0, 50
                    _3324 = mem[(32 * s) + 128]
                    if s >= mem[96]:
                        revert with 0, 50
                    require ext_code.size(0x65285e9dfab318f57051ab2b139cccf232945451)
                    staticcall 0x65285e9dfab318f57051ab2b139cccf232945451.getReserveConfigurationData(address arg1) with:
                            gas gas_remaining wei
                           args address(mem[(32 * s) + 128])
                    mem[mem[64] len 320] = ext_call.return_data[0 len 320]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3363 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 320
                    require mem[_3363 + 160] == bool(mem[_3363 + 160])
                    require mem[_3363 + 192] == bool(mem[_3363 + 192])
                    require mem[_3363 + 224] == bool(mem[_3363 + 224])
                    _3434 = mem[_3363 + 256]
                    require mem[_3363 + 256] == bool(mem[_3363 + 256])
                    require mem[_3363 + 288] == bool(mem[_3363 + 288])
                    if s >= mem[96]:
                        revert with 0, 50
                    require ext_code.size(0x65285e9dfab318f57051ab2b139cccf232945451)
                    staticcall 0x65285e9dfab318f57051ab2b139cccf232945451.getReserveTokensAddresses(address arg1) with:
                            gas gas_remaining wei
                           args address(mem[(32 * s) + 128])
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3464 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _3468 = mem[_3464]
                    require mem[_3464] == mem[_3464 + 12 len 20]
                    require mem[_3464 + 32] == mem[_3464 + 44 len 20]
                    require mem[_3464 + 64] == mem[_3464 + 76 len 20]
                    if _3434:
                        if s >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                            revert with 0, 50
                        _3533 = mem[(32 * s) + ceil32(32 * ('cd', 4).length) + 129]
                        mem[mem[64] + 4] = mem[_3464 + 12 len 20]
                        require ext_code.size(address(_3324))
                        staticcall address(_3324).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_3468)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3555 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_3555] >= _3533:
                            if s == -1:
                                revert with 0, 17
                            _3312 = mem[96]
                            s = s + 1
                            continue 
                    if idx == -1:
                        revert with 0, 17
                    _3312 = mem[96]
                    idx = idx + 1
                    continue 
            else:
                if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 98]:
                    revert with 0, 50
                if mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 160 len 2] != 9:
                    revert with 0, 'invalid-route'
                _2921 = mem[96]
                s = 0
                while s < _2921:
                    if s >= mem[96]:
                        revert with 0, 50
                    _3322 = mem[(32 * s) + 128]
                    if s >= mem[96]:
                        revert with 0, 50
                    require ext_code.size(0x69fa688f1dc47d4b5d8029d5a35fb7a548310654)
                    staticcall 0x69fa688f1dc47d4b5d8029d5a35fb7a548310654.getReserveConfigurationData(address arg1) with:
                            gas gas_remaining wei
                           args address(mem[(32 * s) + 128])
                    mem[mem[64] len 320] = ext_call.return_data[0 len 320]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3362 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 320
                    require mem[_3362 + 160] == bool(mem[_3362 + 160])
                    require mem[_3362 + 192] == bool(mem[_3362 + 192])
                    require mem[_3362 + 224] == bool(mem[_3362 + 224])
                    _3433 = mem[_3362 + 256]
                    require mem[_3362 + 256] == bool(mem[_3362 + 256])
                    require mem[_3362 + 288] == bool(mem[_3362 + 288])
                    if s >= mem[96]:
                        revert with 0, 50
                    require ext_code.size(0x69fa688f1dc47d4b5d8029d5a35fb7a548310654)
                    staticcall 0x69fa688f1dc47d4b5d8029d5a35fb7a548310654.getReserveTokensAddresses(address arg1) with:
                            gas gas_remaining wei
                           args address(mem[(32 * s) + 128])
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3463 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _3467 = mem[_3463]
                    require mem[_3463] == mem[_3463 + 12 len 20]
                    require mem[_3463 + 32] == mem[_3463 + 44 len 20]
                    require mem[_3463 + 64] == mem[_3463 + 76 len 20]
                    if _3433:
                        if s >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                            revert with 0, 50
                        _3530 = mem[(32 * s) + ceil32(32 * ('cd', 4).length) + 129]
                        mem[mem[64] + 4] = mem[_3463 + 12 len 20]
                        require ext_code.size(address(_3322))
                        staticcall address(_3322).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_3467)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3554 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_3554] >= _3530:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            continue 
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 98]:
                revert with 0, 50
            if 0 >= mem[_2495]:
                revert with 0, 50
            mem[_2495 + 32] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 160 len 2]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _2905 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 98]
        if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 98] > test266151307():
            revert with 0, 65
        _2908 = mem[64]
        mem[mem[64]] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 98]
        mem[64] = mem[64] + (32 * _2905) + 32
        if not _2905:
            _3310 = mem[_2495]
            idx = 0
            s = 0
            t = -1
            while idx < _3310:
                if idx >= mem[_2495]:
                    revert with 0, 50
                if 0 == mem[(32 * idx) + _2495 + 62 len 2]:
                    if idx == -1:
                        revert with 0, 17
                    _3310 = mem[_2495]
                    idx = idx + 1
                    s = s
                    t = t
                    continue 
                if idx >= mem[_2495]:
                    revert with 0, 50
                _3336 = mem[(32 * idx) + _2495 + 32]
                mem[mem[64] + 4] = mem[(32 * idx) + _2495 + 62 len 2]
                require ext_code.size(stor1)
                staticcall stor1.0x426bfa4d with:
                        gas gas_remaining wei
                       args (_3336 << 240)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3370 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3390 = mem[_3370]
                if t > mem[_3370]:
                    if idx >= mem[_2495]:
                        revert with 0, 50
                    if 0 >= mem[_2908]:
                        revert with 0, 50
                    mem[_2908 + 32] = mem[(32 * idx) + _2495 + 62 len 2]
                    if idx == -1:
                        revert with 0, 17
                    _3310 = mem[_2495]
                    idx = idx + 1
                    s = 1
                    t = _3390
                    continue 
                if t != mem[_3370]:
                    if idx == -1:
                        revert with 0, 17
                    _3310 = mem[_2495]
                    idx = idx + 1
                    s = s
                    t = t
                    continue 
                if idx >= mem[_2495]:
                    revert with 0, 50
                if uint16(s) >= mem[_2908]:
                    revert with 0, 50
                mem[(32 * uint16(s)) + _2908 + 32] = mem[(32 * idx) + _2495 + 62 len 2]
                if uint16(s) == 65535:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                _3310 = mem[_2495]
                idx = idx + 1
                s = uint16(s) + 1
                t = t
                continue 
            if uint16(s) > test266151307():
                revert with 0, 65
            _3318 = mem[64]
            mem[mem[64]] = uint16(s)
            mem[64] = mem[64] + (32 * uint16(s)) + 32
            if not uint16(s):
                u = 0
                while u < uint16(s):
                    if u >= mem[_2908]:
                        revert with 0, 50
                    if u >= mem[_3318]:
                        revert with 0, 50
                    mem[(32 * u) + _3318 + 32] = mem[(32 * u) + _2908 + 62 len 2]
                    if u == -1:
                        revert with 0, 17
                    u = u + 1
                    continue 
                _3734 = mem[64]
                mem[mem[64]] = 64
                _3748 = mem[_3318]
                mem[mem[64] + 64] = mem[_3318]
                idx = 0
                s = _3318 + 32
                u = mem[64] + 96
                while idx < _3748:
                    mem[u] = mem[s + 30 len 2]
                    idx = idx + 1
                    s = s + 32
                    u = u + 32
                    continue 
                mem[_3734 + 32] = t
                return memory
                  from mem[64]
                   len _3734 + (32 * _3748) + -mem[64] + 96
            mem[_3318 + 32 len 32 * uint16(s)] = call.data[calldata.size len 32 * uint16(s)]
            u = 0
            while u < uint16(s):
                if u >= mem[_2908]:
                    revert with 0, 50
                if u >= mem[_3318]:
                    revert with 0, 50
                mem[(32 * u) + _3318 + 32] = mem[(32 * u) + _2908 + 62 len 2]
                if u == -1:
                    revert with 0, 17
                u = u + 1
                continue 
            _3737 = mem[64]
            mem[mem[64]] = 64
            _3749 = mem[_3318]
            mem[mem[64] + 64] = mem[_3318]
            idx = 0
            s = _3318 + 32
            u = mem[64] + 96
            while idx < _3749:
                mem[u] = mem[s + 30 len 2]
                idx = idx + 1
                s = s + 32
                u = u + 32
                continue 
            mem[_3737 + 32] = t
            return memory
              from mem[64]
               len _3737 + (32 * _3749) + -mem[64] + 96
        mem[_2908 + 32 len 32 * _2905] = call.data[calldata.size len 32 * _2905]
        _3311 = mem[_2495]
        idx = 0
        s = 0
        t = -1
        while idx < _3311:
            if idx >= mem[_2495]:
                revert with 0, 50
            if 0 == mem[(32 * idx) + _2495 + 62 len 2]:
                if idx == -1:
                    revert with 0, 17
                _3311 = mem[_2495]
                idx = idx + 1
                s = s
                t = t
                continue 
            if idx >= mem[_2495]:
                revert with 0, 50
            _3338 = mem[(32 * idx) + _2495 + 32]
            mem[mem[64] + 4] = mem[(32 * idx) + _2495 + 62 len 2]
            require ext_code.size(stor1)
            staticcall stor1.0x426bfa4d with:
                    gas gas_remaining wei
                   args (_3338 << 240)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3374 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _3392 = mem[_3374]
            if t > mem[_3374]:
                if idx >= mem[_2495]:
                    revert with 0, 50
                if 0 >= mem[_2908]:
                    revert with 0, 50
                mem[_2908 + 32] = mem[(32 * idx) + _2495 + 62 len 2]
                if idx == -1:
                    revert with 0, 17
                _3311 = mem[_2495]
                idx = idx + 1
                s = 1
                t = _3392
                continue 
            if t != mem[_3374]:
                if idx == -1:
                    revert with 0, 17
                _3311 = mem[_2495]
                idx = idx + 1
                s = s
                t = t
                continue 
            if idx >= mem[_2495]:
                revert with 0, 50
            if uint16(s) >= mem[_2908]:
                revert with 0, 50
            mem[(32 * uint16(s)) + _2908 + 32] = mem[(32 * idx) + _2495 + 62 len 2]
            if uint16(s) == 65535:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            _3311 = mem[_2495]
            idx = idx + 1
            s = uint16(s) + 1
            t = t
            continue 
        if uint16(s) > test266151307():
            revert with 0, 65
        _3320 = mem[64]
        mem[mem[64]] = uint16(s)
        mem[64] = mem[64] + (32 * uint16(s)) + 32
        if not uint16(s):
            u = 0
            while u < uint16(s):
                if u >= mem[_2908]:
                    revert with 0, 50
                if u >= mem[_3320]:
                    revert with 0, 50
                mem[(32 * u) + _3320 + 32] = mem[(32 * u) + _2908 + 62 len 2]
                if u == -1:
                    revert with 0, 17
                u = u + 1
                continue 
            _3740 = mem[64]
            mem[mem[64]] = 64
            _3750 = mem[_3320]
            mem[mem[64] + 64] = mem[_3320]
            idx = 0
            s = _3320 + 32
            u = mem[64] + 96
            while idx < _3750:
                mem[u] = mem[s + 30 len 2]
                idx = idx + 1
                s = s + 32
                u = u + 32
                continue 
            mem[_3740 + 32] = t
            return memory
              from mem[64]
               len _3740 + (32 * _3750) + -mem[64] + 96
        mem[_3320 + 32 len 32 * uint16(s)] = call.data[calldata.size len 32 * uint16(s)]
        u = 0
        while u < uint16(s):
            if u >= mem[_2908]:
                revert with 0, 50
            if u >= mem[_3320]:
                revert with 0, 50
            mem[(32 * u) + _3320 + 32] = mem[(32 * u) + _2908 + 62 len 2]
            if u == -1:
                revert with 0, 17
            u = u + 1
            continue 
        _3743 = mem[64]
        mem[mem[64]] = 64
        _3751 = mem[_3320]
        mem[mem[64] + 64] = mem[_3320]
        idx = 0
        s = _3320 + 32
        u = mem[64] + 96
        while idx < _3751:
            mem[u] = mem[s + 30 len 2]
            idx = idx + 1
            s = s + 32
            u = u + 32
            continue 
        mem[_3743 + 32] = t
        return memory
          from mem[64]
           len _3743 + (32 * _3751) + -mem[64] + 96
}



}
