contract main {




// =====================  Runtime code  =====================


#
#  - sub_85362fb1(?)
#
address owner;
address stor1;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getAssetPrice(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require ext_code.size(stor1)
    staticcall stor1.getLendingPool() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(stor1)
    staticcall stor1.getPriceOracle() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserveData(address rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 384
    if not bool((4 * ceil32(return_data.size)) + 480 <= test266151307()):
        revert with 'NH{q', 65
    require return_data.size >= 32
    if not bool((4 * ceil32(return_data.size)) + 512 <= test266151307()):
        revert with 'NH{q', 65
    require ext_call.return_data[32] == ext_call.return_data[48 len 16]
    require ext_call.return_data[64] == ext_call.return_data[80 len 16]
    require ext_call.return_data[96] == ext_call.return_data[112 len 16]
    require ext_call.return_data[128] == ext_call.return_data[144 len 16]
    require ext_call.return_data[160] == ext_call.return_data[176 len 16]
    require ext_call.return_data[192] == ext_call.return_data[219 len 5]
    require ext_call.return_data[224] == ext_call.return_data[236 len 20]
    require ext_call.return_data[256] == ext_call.return_data[268 len 20]
    require ext_call.return_data[288] == ext_call.return_data[300 len 20]
    require ext_call.return_data[320] == ext_call.return_data[332 len 20]
    require ext_call.return_data[352] == ext_call.return_data[383 len 1]
    if arg2 and 1 > -1 / arg2:
        revert with 'NH{q', 17
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getAssetPrice(address rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and arg2 > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if not Mask(8, 48, ext_call.return_data[0]) >> 48:
        revert with 'NH{q', 18
    return (ext_call.return_data[0] * arg2 / Mask(8, 48, ext_call.return_data[0]) >> 48)
}

function sub_71b1c74c(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require ext_code.size(stor1)
    staticcall stor1.getLendingPool() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(return_data.size) + 96] = ('cd', 4).length
    mem[64] = ceil32(return_data.size) + (32 * ('cd', 4).length) + 128
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getUserAccountData(address rg1) with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64] len 192] = ext_call.return_data[0 len 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _56 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 192
            _64 = mem[_56 + 160]
            _65 = mem[64]
            mem[64] = mem[64] + 64
            mem[_65] = _64 < 10^18
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            mem[_65 + 32] = address(cd[((32 * idx) + cd[4] + 36)])
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(return_data.size) + 128] = _65
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _42 = mem[64]
        mem[mem[64]] = 32
        _43 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 64
        while idx < _43:
            _76 = mem[s]
            mem[t] = bool(mem[mem[s]])
            mem[t + 32] = mem[_76 + 44 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _42 + (64 * _43) + -mem[64] + 64
    mem[64] = ceil32(return_data.size) + (32 * ('cd', 4).length) + 192
    mem[ceil32(return_data.size) + (32 * ('cd', 4).length) + 128] = 0
    mem[ceil32(return_data.size) + (32 * ('cd', 4).length) + 160] = 0
    mem[ceil32(return_data.size) + 128] = ceil32(return_data.size) + (32 * ('cd', 4).length) + 128
    s = ceil32(return_data.size) + 128
    idx = ('cd', 4).length
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[ceil32(return_data.size) + (32 * ('cd', 4).length) + 128] = 0
        mem[ceil32(return_data.size) + (32 * ('cd', 4).length) + 160] = 0
        mem[s + 32] = ceil32(return_data.size) + (32 * ('cd', 4).length) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getUserAccountData(address rg1) with:
                gas gas_remaining wei
               args address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64] len 192] = ext_call.return_data[0 len 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _88 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 192
        _94 = mem[_88 + 160]
        _95 = mem[64]
        mem[64] = mem[64] + 64
        mem[_95] = _94 < 10^18
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[_95 + 32] = address(cd[((32 * idx) + cd[4] + 36)])
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 'NH{q', 50
        mem[(32 * idx) + ceil32(return_data.size) + 128] = _95
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _80 = mem[64]
    mem[mem[64]] = 32
    _81 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = ceil32(return_data.size) + 128
    t = mem[64] + 64
    while idx < _81:
        _97 = mem[s]
        mem[t] = bool(mem[mem[s]])
        mem[t + 32] = mem[_97 + 44 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _80 + (64 * _81) + -mem[64] + 64
}

function sub_81b885ef(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(stor1)
    staticcall stor1.getLendingPool() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 96] = 0xd1946dbc00000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReservesList() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _8 = mem[ceil32(return_data.size) + 96]
    require mem[ceil32(return_data.size) + 96] <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 127 < ceil32(return_data.size) + return_data.size + 96
    _9 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]) + 97 > test266151307():
        revert with 'NH{q', 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]) + 97
    mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]
    require return_data.size >= _8 + (32 * _9) + 32
    s = ceil32(return_data.size) + _8 + 128
    t = (2 * ceil32(return_data.size)) + 128
    u = 32 * _9
    idx = 0
    while idx < _9:
        _262 = mem[s]
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        s = s + 32
        t = t + 32
        u = _262
        idx = idx + 1
        continue 
    if _9 > test266151307():
        revert with 'NH{q', 65
    _264 = mem[64]
    mem[mem[64]] = _9
    if not _9:
        if _9 > test266151307():
            revert with 'NH{q', 65
        _266 = mem[64] + (32 * _9) + 32
        mem[mem[64] + (32 * _9) + 32] = _9
        mem[64] = _266 + (32 * _9) + 32
        if not _9:
            idx = 0
            while idx < _9:
                if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                    revert with 'NH{q', 50
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserveData(address rg1) with:
                        gas gas_remaining wei
                       args address(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128])
                mem[mem[64] len 384] = ext_call.return_data[0 len 384]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _531 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 384
                _554 = mem[64]
                if mem[64] + 384 < mem[64] or mem[64] + 384 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = mem[64] + 384
                require return_data.size >= 32
                _588 = mem[64]
                if mem[64] + 32 > test266151307() or mem[64] + 32 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + 32
                mem[_588] = mem[_531]
                mem[_554] = _588
                require mem[_531 + 32] == mem[_531 + 48 len 16]
                mem[_554 + 32] = mem[_531 + 32]
                require mem[_531 + 64] == mem[_531 + 80 len 16]
                mem[_554 + 64] = mem[_531 + 64]
                require mem[_531 + 96] == mem[_531 + 112 len 16]
                mem[_554 + 96] = mem[_531 + 96]
                require mem[_531 + 128] == mem[_531 + 144 len 16]
                mem[_554 + 128] = mem[_531 + 128]
                require mem[_531 + 160] == mem[_531 + 176 len 16]
                mem[_554 + 160] = mem[_531 + 160]
                require mem[_531 + 192] == mem[_531 + 219 len 5]
                mem[_554 + 192] = mem[_531 + 192]
                require mem[_531 + 224] == mem[_531 + 236 len 20]
                mem[_554 + 224] = mem[_531 + 224]
                require mem[_531 + 256] == mem[_531 + 268 len 20]
                mem[_554 + 256] = mem[_531 + 256]
                require mem[_531 + 288] == mem[_531 + 300 len 20]
                mem[_554 + 288] = mem[_531 + 288]
                require mem[_531 + 320] == mem[_531 + 332 len 20]
                mem[_554 + 320] = mem[_531 + 320]
                require mem[_531 + 352] == mem[_531 + 383 len 1]
                mem[_554 + 352] = mem[_531 + 352]
                if idx >= mem[_266]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _266 + 32] = _554
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _759 = mem[(2 * ceil32(return_data.size)) + 96]
            idx = 0
            while idx < _759:
                if idx >= mem[_266]:
                    revert with 'NH{q', 50
                _767 = mem[mem[(32 * idx) + _266 + 32] + 288]
                mem[mem[64] + 4] = address(arg1)
                require ext_code.size(address(_767))
                staticcall address(_767).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _776 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _796 = mem[_776]
                _798 = mem[64]
                mem[64] = mem[64] + 160
                if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                    revert with 'NH{q', 50
                mem[_798] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 140 len 20]
                if idx >= mem[_266]:
                    revert with 'NH{q', 50
                mem[_798 + 32] = mem[mem[(32 * idx) + _266 + 32]]
                if idx >= mem[_266]:
                    revert with 'NH{q', 50
                _824 = mem[mem[(32 * idx) + _266 + 32] + 224]
                mem[mem[64] + 4] = address(arg1)
                require ext_code.size(address(_824))
                staticcall address(_824).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _841 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[_798 + 64] = mem[_841]
                mem[_798 + 96] = _796
                if not _796:
                    mem[_798 + 128] = 0
                else:
                    _927 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_927] = 2
                    mem[_927 + 32] = '48'
                    if _796 > 0xd1b71758e219652bd3c36113404ea4a8c154c985f06f694467381d7dbf486:
                        _930 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 2
                        idx = 0
                        while idx < 2:
                            mem[idx + _930 + 68] = mem[idx + _927 + 32]
                            _759 = mem[(2 * ceil32(return_data.size)) + 96]
                            idx = idx + 32
                            continue 
                        mem[_930 + 70] = 0
                        revert with memory
                          from mem[64]
                           len _930 + -mem[64] + 100
                    if _796 and 5000 > -1 / _796:
                        revert with 'NH{q', 17
                    if 5000 * _796 > -5001:
                        revert with 'NH{q', 17
                    mem[_798 + 128] = (5000 * _796) + 5000 / 10000
                if idx >= mem[_264]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _264 + 32] = _798
                if idx == -1:
                    revert with 'NH{q', 17
                _759 = mem[(2 * ceil32(return_data.size)) + 96]
                idx = idx + 1
                continue 
            _765 = mem[64]
            mem[mem[64]] = 32
            _773 = mem[_264]
            mem[mem[64] + 32] = mem[_264]
            idx = 0
            s = _264 + 32
            t = mem[64] + 64
            while idx < _773:
                _986 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[mem[_986 + 32]]
                mem[t + 64] = mem[_986 + 64]
                mem[t + 96] = mem[_986 + 96]
                mem[t + 128] = mem[_986 + 128]
                idx = idx + 1
                s = s + 32
                t = t + 160
                continue 
            return memory
              from mem[64]
               len _765 + (160 * _773) + -mem[64] + 64
        mem[64] = _266 + (32 * _9) + 448
        mem[_266 + (32 * _9) + 416] = 0
        mem[_266 + (32 * _9) + 32] = _266 + (32 * _9) + 416
        mem[_266 + (32 * _9) + 64] = 0
        mem[_266 + (32 * _9) + 96] = 0
        mem[_266 + (32 * _9) + 128] = 0
        mem[_266 + (32 * _9) + 160] = 0
        mem[_266 + (32 * _9) + 192] = 0
        mem[_266 + (32 * _9) + 224] = 0
        mem[_266 + (32 * _9) + 256] = 0
        mem[_266 + (32 * _9) + 288] = 0
        mem[_266 + (32 * _9) + 320] = 0
        mem[_266 + (32 * _9) + 352] = 0
        mem[_266 + (32 * _9) + 384] = 0
        mem[_266 + 32] = _266 + (32 * _9) + 32
        s = _266 + 32
        idx = _9
        while idx - 1:
            mem[64] = mem[64] + 416
            mem[_266 + (32 * _9) + 416] = 0
            mem[_266 + (32 * _9) + 32] = _266 + (32 * _9) + 416
            mem[_266 + (32 * _9) + 64] = 0
            mem[_266 + (32 * _9) + 96] = 0
            mem[_266 + (32 * _9) + 128] = 0
            mem[_266 + (32 * _9) + 160] = 0
            mem[_266 + (32 * _9) + 192] = 0
            mem[_266 + (32 * _9) + 224] = 0
            mem[_266 + (32 * _9) + 256] = 0
            mem[_266 + (32 * _9) + 288] = 0
            mem[_266 + (32 * _9) + 320] = 0
            mem[_266 + (32 * _9) + 352] = 0
            mem[_266 + (32 * _9) + 384] = 0
            mem[s + 32] = _266 + (32 * _9) + 32
            s = s + 32
            idx = idx - 1
            continue 
        _760 = mem[(2 * ceil32(return_data.size)) + 96]
        idx = 0
        while idx < _760:
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getReserveData(address rg1) with:
                    gas gas_remaining wei
                   args address(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128])
            mem[mem[64] len 384] = ext_call.return_data[0 len 384]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _793 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 384
            _813 = mem[64]
            if mem[64] + 384 < mem[64] or mem[64] + 384 > test266151307():
                revert with 'NH{q', 65
            mem[64] = mem[64] + 384
            require return_data.size >= 32
            _846 = mem[64]
            if mem[64] + 32 > test266151307() or mem[64] + 32 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 32
            mem[_846] = mem[_793]
            mem[_813] = _846
            require mem[_793 + 32] == mem[_793 + 48 len 16]
            mem[_813 + 32] = mem[_793 + 32]
            require mem[_793 + 64] == mem[_793 + 80 len 16]
            mem[_813 + 64] = mem[_793 + 64]
            require mem[_793 + 96] == mem[_793 + 112 len 16]
            mem[_813 + 96] = mem[_793 + 96]
            require mem[_793 + 128] == mem[_793 + 144 len 16]
            mem[_813 + 128] = mem[_793 + 128]
            require mem[_793 + 160] == mem[_793 + 176 len 16]
            mem[_813 + 160] = mem[_793 + 160]
            require mem[_793 + 192] == mem[_793 + 219 len 5]
            mem[_813 + 192] = mem[_793 + 192]
            require mem[_793 + 224] == mem[_793 + 236 len 20]
            mem[_813 + 224] = mem[_793 + 224]
            require mem[_793 + 256] == mem[_793 + 268 len 20]
            mem[_813 + 256] = mem[_793 + 256]
            require mem[_793 + 288] == mem[_793 + 300 len 20]
            mem[_813 + 288] = mem[_793 + 288]
            require mem[_793 + 320] == mem[_793 + 332 len 20]
            mem[_813 + 320] = mem[_793 + 320]
            require mem[_793 + 352] == mem[_793 + 383 len 1]
            mem[_813 + 352] = mem[_793 + 352]
            if idx >= mem[_266]:
                revert with 'NH{q', 50
            mem[(32 * idx) + _266 + 32] = _813
            if idx == -1:
                revert with 'NH{q', 17
            _760 = mem[(2 * ceil32(return_data.size)) + 96]
            idx = idx + 1
            continue 
        _985 = mem[(2 * ceil32(return_data.size)) + 96]
        idx = 0
        while idx < _985:
            if idx >= mem[_266]:
                revert with 'NH{q', 50
            _998 = mem[mem[(32 * idx) + _266 + 32] + 288]
            mem[mem[64] + 4] = address(arg1)
            require ext_code.size(address(_998))
            staticcall address(_998).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1007 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1017 = mem[_1007]
            _1020 = mem[64]
            mem[64] = mem[64] + 160
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            mem[_1020] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 140 len 20]
            if idx >= mem[_266]:
                revert with 'NH{q', 50
            mem[_1020 + 32] = mem[mem[(32 * idx) + _266 + 32]]
            if idx >= mem[_266]:
                revert with 'NH{q', 50
            _1035 = mem[mem[(32 * idx) + _266 + 32] + 224]
            mem[mem[64] + 4] = address(arg1)
            require ext_code.size(address(_1035))
            staticcall address(_1035).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1049 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[_1020 + 64] = mem[_1049]
            mem[_1020 + 96] = _1017
            if not _1017:
                mem[_1020 + 128] = 0
            else:
                _1118 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1118] = 2
                mem[_1118 + 32] = '48'
                if _1017 > 0xd1b71758e219652bd3c36113404ea4a8c154c985f06f694467381d7dbf486:
                    _1120 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 2
                    idx = 0
                    while idx < 2:
                        mem[idx + _1120 + 68] = mem[idx + _1118 + 32]
                        _985 = mem[(2 * ceil32(return_data.size)) + 96]
                        idx = idx + 32
                        continue 
                    mem[_1120 + 70] = 0
                    revert with memory
                      from mem[64]
                       len _1120 + -mem[64] + 100
                if _1017 and 5000 > -1 / _1017:
                    revert with 'NH{q', 17
                if 5000 * _1017 > -5001:
                    revert with 'NH{q', 17
                mem[_1020 + 128] = (5000 * _1017) + 5000 / 10000
            if idx >= mem[_264]:
                revert with 'NH{q', 50
            mem[(32 * idx) + _264 + 32] = _1020
            if idx == -1:
                revert with 'NH{q', 17
            _985 = mem[(2 * ceil32(return_data.size)) + 96]
            idx = idx + 1
            continue 
        _996 = mem[64]
        mem[mem[64]] = 32
        _1002 = mem[_264]
        mem[mem[64] + 32] = mem[_264]
        idx = 0
        s = _264 + 32
        t = mem[64] + 64
        while idx < _1002:
            _1160 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[mem[_1160 + 32]]
            mem[t + 64] = mem[_1160 + 64]
            mem[t + 96] = mem[_1160 + 96]
            mem[t + 128] = mem[_1160 + 128]
            idx = idx + 1
            s = s + 32
            t = t + 160
            continue 
        return memory
          from mem[64]
           len _996 + (160 * _1002) + -mem[64] + 64
    mem[mem[64] + (32 * _9) + 32] = 0
    mem[64] = _264 + (32 * _9) + 224
    mem[_264 + (32 * _9) + 192] = 0
    mem[var42002] = var42001
    mem[var42002 + 32] = 0
    mem[var42002 + 64] = 0
    mem[var42002 + 96] = 0
    mem[var44002] = var44001
    if not var44003 - 1:
        if _9 > test266151307():
            revert with 'NH{q', 65
        mem[_264 + (32 * _9) + 224] = _9
        mem[64] = _264 + (64 * _9) + 256
        if not _9:
            idx = 0
            while idx < _9:
                if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                    revert with 'NH{q', 50
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserveData(address rg1) with:
                        gas gas_remaining wei
                       args address(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128])
                mem[mem[64] len 384] = ext_call.return_data[0 len 384]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1438 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 384
                _1462 = mem[64]
                if mem[64] + 384 < mem[64] or mem[64] + 384 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = mem[64] + 384
                require return_data.size >= 32
                _1500 = mem[64]
                if mem[64] + 32 > test266151307() or mem[64] + 32 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + 32
                mem[_1500] = mem[_1438]
                mem[_1462] = _1500
                require mem[_1438 + 32] == mem[_1438 + 48 len 16]
                mem[_1462 + 32] = mem[_1438 + 32]
                require mem[_1438 + 64] == mem[_1438 + 80 len 16]
                mem[_1462 + 64] = mem[_1438 + 64]
                require mem[_1438 + 96] == mem[_1438 + 112 len 16]
                mem[_1462 + 96] = mem[_1438 + 96]
                require mem[_1438 + 128] == mem[_1438 + 144 len 16]
                mem[_1462 + 128] = mem[_1438 + 128]
                require mem[_1438 + 160] == mem[_1438 + 176 len 16]
                mem[_1462 + 160] = mem[_1438 + 160]
                require mem[_1438 + 192] == mem[_1438 + 219 len 5]
                mem[_1462 + 192] = mem[_1438 + 192]
                require mem[_1438 + 224] == mem[_1438 + 236 len 20]
                mem[_1462 + 224] = mem[_1438 + 224]
                require mem[_1438 + 256] == mem[_1438 + 268 len 20]
                mem[_1462 + 256] = mem[_1438 + 256]
                require mem[_1438 + 288] == mem[_1438 + 300 len 20]
                mem[_1462 + 288] = mem[_1438 + 288]
                require mem[_1438 + 320] == mem[_1438 + 332 len 20]
                mem[_1462 + 320] = mem[_1438 + 320]
                require mem[_1438 + 352] == mem[_1438 + 383 len 1]
                mem[_1462 + 352] = mem[_1438 + 352]
                if idx >= mem[_264 + (32 * _9) + 224]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _264 + (32 * _9) + 256] = _1462
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _1667 = mem[(2 * ceil32(return_data.size)) + 96]
            idx = 0
            while idx < _1667:
                if idx >= mem[_264 + (32 * _9) + 224]:
                    revert with 'NH{q', 50
                _1673 = mem[mem[(32 * idx) + _264 + (32 * _9) + 256] + 288]
                mem[mem[64] + 4] = address(arg1)
                require ext_code.size(address(_1673))
                staticcall address(_1673).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1685 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1702 = mem[_1685]
                _1706 = mem[64]
                mem[64] = mem[64] + 160
                if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                    revert with 'NH{q', 50
                mem[_1706] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 140 len 20]
                if idx >= mem[_264 + (32 * _9) + 224]:
                    revert with 'NH{q', 50
                mem[_1706 + 32] = mem[mem[(32 * idx) + _264 + (32 * _9) + 256]]
                if idx >= mem[_264 + (32 * _9) + 224]:
                    revert with 'NH{q', 50
                _1733 = mem[mem[(32 * idx) + _264 + (32 * _9) + 256] + 224]
                mem[mem[64] + 4] = address(arg1)
                require ext_code.size(address(_1733))
                staticcall address(_1733).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1752 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[_1706 + 64] = mem[_1752]
                mem[_1706 + 96] = _1702
                if not _1702:
                    mem[_1706 + 128] = 0
                else:
                    _1835 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1835] = 2
                    mem[_1835 + 32] = '48'
                    if _1702 > 0xd1b71758e219652bd3c36113404ea4a8c154c985f06f694467381d7dbf486:
                        _1837 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 2
                        idx = 0
                        while idx < 2:
                            mem[idx + _1837 + 68] = mem[idx + _1835 + 32]
                            _1667 = mem[(2 * ceil32(return_data.size)) + 96]
                            idx = idx + 32
                            continue 
                        mem[_1837 + 70] = 0
                        revert with memory
                          from mem[64]
                           len _1837 + -mem[64] + 100
                    if _1702 and 5000 > -1 / _1702:
                        revert with 'NH{q', 17
                    if 5000 * _1702 > -5001:
                        revert with 'NH{q', 17
                    mem[_1706 + 128] = (5000 * _1702) + 5000 / 10000
                if idx >= mem[_264]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _264 + 32] = _1706
                if idx == -1:
                    revert with 'NH{q', 17
                _1667 = mem[(2 * ceil32(return_data.size)) + 96]
                idx = idx + 1
                continue 
            _1671 = mem[64]
            mem[mem[64]] = 32
            _1679 = mem[_264]
            mem[mem[64] + 32] = mem[_264]
            idx = 0
            s = _264 + 32
            t = mem[64] + 64
            while idx < _1679:
                _1892 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[mem[_1892 + 32]]
                mem[t + 64] = mem[_1892 + 64]
                mem[t + 96] = mem[_1892 + 96]
                mem[t + 128] = mem[_1892 + 128]
                idx = idx + 1
                s = s + 32
                t = t + 160
                continue 
            return memory
              from mem[64]
               len _1671 + (160 * _1679) + -mem[64] + 64
        mem[64] = _264 + (64 * _9) + 672
        mem[_264 + (64 * _9) + 640] = 0
        mem[_264 + (64 * _9) + 256] = _264 + (64 * _9) + 640
        mem[_264 + (64 * _9) + 288] = 0
        mem[_264 + (64 * _9) + 320] = 0
        mem[_264 + (64 * _9) + 352] = 0
        mem[_264 + (64 * _9) + 384] = 0
        mem[_264 + (64 * _9) + 416] = 0
        mem[_264 + (64 * _9) + 448] = 0
        mem[_264 + (64 * _9) + 480] = 0
        mem[_264 + (64 * _9) + 512] = 0
        mem[_264 + (64 * _9) + 544] = 0
        mem[_264 + (64 * _9) + 576] = 0
        mem[_264 + (64 * _9) + 608] = 0
        mem[_264 + (32 * _9) + 256] = _264 + (64 * _9) + 256
        s = _264 + (32 * _9) + 256
        idx = _9
        while idx - 1:
            mem[64] = mem[64] + 416
            mem[_264 + (64 * _9) + 640] = 0
            mem[_264 + (64 * _9) + 256] = _264 + (64 * _9) + 640
            mem[_264 + (64 * _9) + 288] = 0
            mem[_264 + (64 * _9) + 320] = 0
            mem[_264 + (64 * _9) + 352] = 0
            mem[_264 + (64 * _9) + 384] = 0
            mem[_264 + (64 * _9) + 416] = 0
            mem[_264 + (64 * _9) + 448] = 0
            mem[_264 + (64 * _9) + 480] = 0
            mem[_264 + (64 * _9) + 512] = 0
            mem[_264 + (64 * _9) + 544] = 0
            mem[_264 + (64 * _9) + 576] = 0
            mem[_264 + (64 * _9) + 608] = 0
            mem[s + 32] = _264 + (64 * _9) + 256
            s = s + 32
            idx = idx - 1
            continue 
        _1668 = mem[(2 * ceil32(return_data.size)) + 96]
        idx = 0
        while idx < _1668:
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getReserveData(address rg1) with:
                    gas gas_remaining wei
                   args address(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128])
            mem[mem[64] len 384] = ext_call.return_data[0 len 384]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1700 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 384
            _1720 = mem[64]
            if mem[64] + 384 < mem[64] or mem[64] + 384 > test266151307():
                revert with 'NH{q', 65
            mem[64] = mem[64] + 384
            require return_data.size >= 32
            _1757 = mem[64]
            if mem[64] + 32 > test266151307() or mem[64] + 32 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 32
            mem[_1757] = mem[_1700]
            mem[_1720] = _1757
            require mem[_1700 + 32] == mem[_1700 + 48 len 16]
            mem[_1720 + 32] = mem[_1700 + 32]
            require mem[_1700 + 64] == mem[_1700 + 80 len 16]
            mem[_1720 + 64] = mem[_1700 + 64]
            require mem[_1700 + 96] == mem[_1700 + 112 len 16]
            mem[_1720 + 96] = mem[_1700 + 96]
            require mem[_1700 + 128] == mem[_1700 + 144 len 16]
            mem[_1720 + 128] = mem[_1700 + 128]
            require mem[_1700 + 160] == mem[_1700 + 176 len 16]
            mem[_1720 + 160] = mem[_1700 + 160]
            require mem[_1700 + 192] == mem[_1700 + 219 len 5]
            mem[_1720 + 192] = mem[_1700 + 192]
            require mem[_1700 + 224] == mem[_1700 + 236 len 20]
            mem[_1720 + 224] = mem[_1700 + 224]
            require mem[_1700 + 256] == mem[_1700 + 268 len 20]
            mem[_1720 + 256] = mem[_1700 + 256]
            require mem[_1700 + 288] == mem[_1700 + 300 len 20]
            mem[_1720 + 288] = mem[_1700 + 288]
            require mem[_1700 + 320] == mem[_1700 + 332 len 20]
            mem[_1720 + 320] = mem[_1700 + 320]
            require mem[_1700 + 352] == mem[_1700 + 383 len 1]
            mem[_1720 + 352] = mem[_1700 + 352]
            if idx >= mem[_264 + (32 * _9) + 224]:
                revert with 'NH{q', 50
            mem[(32 * idx) + _264 + (32 * _9) + 256] = _1720
            if idx == -1:
                revert with 'NH{q', 17
            _1668 = mem[(2 * ceil32(return_data.size)) + 96]
            idx = idx + 1
            continue 
        _1891 = mem[(2 * ceil32(return_data.size)) + 96]
        idx = 0
        while idx < _1891:
            if idx >= mem[_264 + (32 * _9) + 224]:
                revert with 'NH{q', 50
            _1904 = mem[mem[(32 * idx) + _264 + (32 * _9) + 256] + 288]
            mem[mem[64] + 4] = address(arg1)
            require ext_code.size(address(_1904))
            staticcall address(_1904).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1914 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1925 = mem[_1914]
            _1927 = mem[64]
            mem[64] = mem[64] + 160
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            mem[_1927] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 140 len 20]
            if idx >= mem[_264 + (32 * _9) + 224]:
                revert with 'NH{q', 50
            mem[_1927 + 32] = mem[mem[(32 * idx) + _264 + (32 * _9) + 256]]
            if idx >= mem[_264 + (32 * _9) + 224]:
                revert with 'NH{q', 50
            _1947 = mem[mem[(32 * idx) + _264 + (32 * _9) + 256] + 224]
            mem[mem[64] + 4] = address(arg1)
            require ext_code.size(address(_1947))
            staticcall address(_1947).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1958 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[_1927 + 64] = mem[_1958]
            mem[_1927 + 96] = _1925
            if not _1925:
                mem[_1927 + 128] = 0
            else:
                _2025 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2025] = 2
                mem[_2025 + 32] = '48'
                if _1925 > 0xd1b71758e219652bd3c36113404ea4a8c154c985f06f694467381d7dbf486:
                    _2026 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 2
                    idx = 0
                    while idx < 2:
                        mem[idx + _2026 + 68] = mem[idx + _2025 + 32]
                        _1891 = mem[(2 * ceil32(return_data.size)) + 96]
                        idx = idx + 32
                        continue 
                    mem[_2026 + 70] = 0
                    revert with memory
                      from mem[64]
                       len _2026 + -mem[64] + 100
                if _1925 and 5000 > -1 / _1925:
                    revert with 'NH{q', 17
                if 5000 * _1925 > -5001:
                    revert with 'NH{q', 17
                mem[_1927 + 128] = (5000 * _1925) + 5000 / 10000
            if idx >= mem[_264]:
                revert with 'NH{q', 50
            mem[(32 * idx) + _264 + 32] = _1927
            if idx == -1:
                revert with 'NH{q', 17
            _1891 = mem[(2 * ceil32(return_data.size)) + 96]
            idx = idx + 1
            continue 
        _1902 = mem[64]
        mem[mem[64]] = 32
        _1911 = mem[_264]
        mem[mem[64] + 32] = mem[_264]
        idx = 0
        s = _264 + 32
        t = mem[64] + 64
        while idx < _1911:
            _2066 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[mem[_2066 + 32]]
            mem[t + 64] = mem[_2066 + 64]
            mem[t + 96] = mem[_2066 + 96]
            mem[t + 128] = mem[_2066 + 128]
            idx = idx + 1
            s = s + 32
            t = t + 160
            continue 
        return memory
          from mem[64]
           len _1902 + (160 * _1911) + -mem[64] + 64
    mem[_264 + (32 * _9) + 224] = 0
    mem[64] = _264 + (32 * _9) + 416
    mem[_264 + (32 * _9) + 384] = 0
    mem[var50002] = var50001
    mem[var50002 + 32] = 0
    mem[var50002 + 64] = 0
    mem[var50002 + 96] = 0
    mem[var52002] = var52001
    if not var52003 - 1:
        if _9 > test266151307():
            revert with 'NH{q', 65
        mem[_264 + (32 * _9) + 416] = _9
        mem[64] = _264 + (64 * _9) + 448
        if not _9:
            idx = 0
            while idx < _9:
                if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                    revert with 'NH{q', 50
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserveData(address rg1) with:
                        gas gas_remaining wei
                       args address(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128])
                mem[mem[64] len 384] = ext_call.return_data[0 len 384]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2344 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 384
                _2368 = mem[64]
                if mem[64] + 384 < mem[64] or mem[64] + 384 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = mem[64] + 384
                require return_data.size >= 32
                _2406 = mem[64]
                if mem[64] + 32 > test266151307() or mem[64] + 32 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + 32
                mem[_2406] = mem[_2344]
                mem[_2368] = _2406
                require mem[_2344 + 32] == mem[_2344 + 48 len 16]
                mem[_2368 + 32] = mem[_2344 + 32]
                require mem[_2344 + 64] == mem[_2344 + 80 len 16]
                mem[_2368 + 64] = mem[_2344 + 64]
                require mem[_2344 + 96] == mem[_2344 + 112 len 16]
                mem[_2368 + 96] = mem[_2344 + 96]
                require mem[_2344 + 128] == mem[_2344 + 144 len 16]
                mem[_2368 + 128] = mem[_2344 + 128]
                require mem[_2344 + 160] == mem[_2344 + 176 len 16]
                mem[_2368 + 160] = mem[_2344 + 160]
                require mem[_2344 + 192] == mem[_2344 + 219 len 5]
                mem[_2368 + 192] = mem[_2344 + 192]
                require mem[_2344 + 224] == mem[_2344 + 236 len 20]
                mem[_2368 + 224] = mem[_2344 + 224]
                require mem[_2344 + 256] == mem[_2344 + 268 len 20]
                mem[_2368 + 256] = mem[_2344 + 256]
                require mem[_2344 + 288] == mem[_2344 + 300 len 20]
                mem[_2368 + 288] = mem[_2344 + 288]
                require mem[_2344 + 320] == mem[_2344 + 332 len 20]
                mem[_2368 + 320] = mem[_2344 + 320]
                require mem[_2344 + 352] == mem[_2344 + 383 len 1]
                mem[_2368 + 352] = mem[_2344 + 352]
                if idx >= mem[_264 + (32 * _9) + 416]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _264 + (32 * _9) + 448] = _2368
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _2573 = mem[(2 * ceil32(return_data.size)) + 96]
            idx = 0
            while idx < _2573:
                if idx >= mem[_264 + (32 * _9) + 416]:
                    revert with 'NH{q', 50
                _2579 = mem[mem[(32 * idx) + _264 + (32 * _9) + 448] + 288]
                mem[mem[64] + 4] = address(arg1)
                require ext_code.size(address(_2579))
                staticcall address(_2579).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2591 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2608 = mem[_2591]
                _2612 = mem[64]
                mem[64] = mem[64] + 160
                if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                    revert with 'NH{q', 50
                mem[_2612] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 140 len 20]
                if idx >= mem[_264 + (32 * _9) + 416]:
                    revert with 'NH{q', 50
                mem[_2612 + 32] = mem[mem[(32 * idx) + _264 + (32 * _9) + 448]]
                if idx >= mem[_264 + (32 * _9) + 416]:
                    revert with 'NH{q', 50
                _2639 = mem[mem[(32 * idx) + _264 + (32 * _9) + 448] + 224]
                mem[mem[64] + 4] = address(arg1)
                require ext_code.size(address(_2639))
                staticcall address(_2639).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2658 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[_2612 + 64] = mem[_2658]
                mem[_2612 + 96] = _2608
                if not _2608:
                    mem[_2612 + 128] = 0
                else:
                    _2741 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2741] = 2
                    mem[_2741 + 32] = '48'
                    if _2608 > 0xd1b71758e219652bd3c36113404ea4a8c154c985f06f694467381d7dbf486:
                        _2743 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 2
                        idx = 0
                        while idx < 2:
                            mem[idx + _2743 + 68] = mem[idx + _2741 + 32]
                            _2573 = mem[(2 * ceil32(return_data.size)) + 96]
                            idx = idx + 32
                            continue 
                        mem[_2743 + 70] = 0
                        revert with memory
                          from mem[64]
                           len _2743 + -mem[64] + 100
                    if _2608 and 5000 > -1 / _2608:
                        revert with 'NH{q', 17
                    if 5000 * _2608 > -5001:
                        revert with 'NH{q', 17
                    mem[_2612 + 128] = (5000 * _2608) + 5000 / 10000
                if idx >= mem[_264]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _264 + 32] = _2612
                if idx == -1:
                    revert with 'NH{q', 17
                _2573 = mem[(2 * ceil32(return_data.size)) + 96]
                idx = idx + 1
                continue 
            _2577 = mem[64]
            mem[mem[64]] = 32
            _2585 = mem[_264]
            mem[mem[64] + 32] = mem[_264]
            idx = 0
            s = _264 + 32
            t = mem[64] + 64
            while idx < _2585:
                _2798 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[mem[_2798 + 32]]
                mem[t + 64] = mem[_2798 + 64]
                mem[t + 96] = mem[_2798 + 96]
                mem[t + 128] = mem[_2798 + 128]
                idx = idx + 1
                s = s + 32
                t = t + 160
                continue 
            return memory
              from mem[64]
               len _2577 + (160 * _2585) + -mem[64] + 64
        mem[64] = _264 + (64 * _9) + 864
        mem[_264 + (64 * _9) + 832] = 0
        mem[_264 + (64 * _9) + 448] = _264 + (64 * _9) + 832
        mem[_264 + (64 * _9) + 480] = 0
        mem[_264 + (64 * _9) + 512] = 0
        mem[_264 + (64 * _9) + 544] = 0
        mem[_264 + (64 * _9) + 576] = 0
        mem[_264 + (64 * _9) + 608] = 0
        mem[_264 + (64 * _9) + 640] = 0
        mem[_264 + (64 * _9) + 672] = 0
        mem[_264 + (64 * _9) + 704] = 0
        mem[_264 + (64 * _9) + 736] = 0
        mem[_264 + (64 * _9) + 768] = 0
        mem[_264 + (64 * _9) + 800] = 0
        mem[_264 + (32 * _9) + 448] = _264 + (64 * _9) + 448
        s = _264 + (32 * _9) + 448
        idx = _9
        while idx - 1:
            mem[64] = mem[64] + 416
            mem[_264 + (64 * _9) + 832] = 0
            mem[_264 + (64 * _9) + 448] = _264 + (64 * _9) + 832
            mem[_264 + (64 * _9) + 480] = 0
            mem[_264 + (64 * _9) + 512] = 0
            mem[_264 + (64 * _9) + 544] = 0
            mem[_264 + (64 * _9) + 576] = 0
            mem[_264 + (64 * _9) + 608] = 0
            mem[_264 + (64 * _9) + 640] = 0
            mem[_264 + (64 * _9) + 672] = 0
            mem[_264 + (64 * _9) + 704] = 0
            mem[_264 + (64 * _9) + 736] = 0
            mem[_264 + (64 * _9) + 768] = 0
            mem[_264 + (64 * _9) + 800] = 0
            mem[s + 32] = _264 + (64 * _9) + 448
            s = s + 32
            idx = idx - 1
            continue 
        _2574 = mem[(2 * ceil32(return_data.size)) + 96]
        idx = 0
        while idx < _2574:
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getReserveData(address rg1) with:
                    gas gas_remaining wei
                   args address(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128])
            mem[mem[64] len 384] = ext_call.return_data[0 len 384]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2606 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 384
            _2626 = mem[64]
            if mem[64] + 384 < mem[64] or mem[64] + 384 > test266151307():
                revert with 'NH{q', 65
            mem[64] = mem[64] + 384
            require return_data.size >= 32
            _2663 = mem[64]
            if mem[64] + 32 > test266151307() or mem[64] + 32 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 32
            mem[_2663] = mem[_2606]
            mem[_2626] = _2663
            require mem[_2606 + 32] == mem[_2606 + 48 len 16]
            mem[_2626 + 32] = mem[_2606 + 32]
            require mem[_2606 + 64] == mem[_2606 + 80 len 16]
            mem[_2626 + 64] = mem[_2606 + 64]
            require mem[_2606 + 96] == mem[_2606 + 112 len 16]
            mem[_2626 + 96] = mem[_2606 + 96]
            require mem[_2606 + 128] == mem[_2606 + 144 len 16]
            mem[_2626 + 128] = mem[_2606 + 128]
            require mem[_2606 + 160] == mem[_2606 + 176 len 16]
            mem[_2626 + 160] = mem[_2606 + 160]
            require mem[_2606 + 192] == mem[_2606 + 219 len 5]
            mem[_2626 + 192] = mem[_2606 + 192]
            require mem[_2606 + 224] == mem[_2606 + 236 len 20]
            mem[_2626 + 224] = mem[_2606 + 224]
            require mem[_2606 + 256] == mem[_2606 + 268 len 20]
            mem[_2626 + 256] = mem[_2606 + 256]
            require mem[_2606 + 288] == mem[_2606 + 300 len 20]
            mem[_2626 + 288] = mem[_2606 + 288]
            require mem[_2606 + 320] == mem[_2606 + 332 len 20]
            mem[_2626 + 320] = mem[_2606 + 320]
            require mem[_2606 + 352] == mem[_2606 + 383 len 1]
            mem[_2626 + 352] = mem[_2606 + 352]
            if idx >= mem[_264 + (32 * _9) + 416]:
                revert with 'NH{q', 50
            mem[(32 * idx) + _264 + (32 * _9) + 448] = _2626
            if idx == -1:
                revert with 'NH{q', 17
            _2574 = mem[(2 * ceil32(return_data.size)) + 96]
            idx = idx + 1
            continue 
        _2797 = mem[(2 * ceil32(return_data.size)) + 96]
        idx = 0
        while idx < _2797:
            if idx >= mem[_264 + (32 * _9) + 416]:
                revert with 'NH{q', 50
            _2810 = mem[mem[(32 * idx) + _264 + (32 * _9) + 448] + 288]
            mem[mem[64] + 4] = address(arg1)
            require ext_code.size(address(_2810))
            staticcall address(_2810).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2820 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2831 = mem[_2820]
            _2833 = mem[64]
            mem[64] = mem[64] + 160
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            mem[_2833] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 140 len 20]
            if idx >= mem[_264 + (32 * _9) + 416]:
                revert with 'NH{q', 50
            mem[_2833 + 32] = mem[mem[(32 * idx) + _264 + (32 * _9) + 448]]
            if idx >= mem[_264 + (32 * _9) + 416]:
                revert with 'NH{q', 50
            _2853 = mem[mem[(32 * idx) + _264 + (32 * _9) + 448] + 224]
            mem[mem[64] + 4] = address(arg1)
            require ext_code.size(address(_2853))
            staticcall address(_2853).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2864 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[_2833 + 64] = mem[_2864]
            mem[_2833 + 96] = _2831
            if not _2831:
                mem[_2833 + 128] = 0
            else:
                _2931 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2931] = 2
                mem[_2931 + 32] = '48'
                if _2831 > 0xd1b71758e219652bd3c36113404ea4a8c154c985f06f694467381d7dbf486:
                    _2932 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 2
                    idx = 0
                    while idx < 2:
                        mem[idx + _2932 + 68] = mem[idx + _2931 + 32]
                        _2797 = mem[(2 * ceil32(return_data.size)) + 96]
                        idx = idx + 32
                        continue 
                    mem[_2932 + 70] = 0
                    revert with memory
                      from mem[64]
                       len _2932 + -mem[64] + 100
                if _2831 and 5000 > -1 / _2831:
                    revert with 'NH{q', 17
                if 5000 * _2831 > -5001:
                    revert with 'NH{q', 17
                mem[_2833 + 128] = (5000 * _2831) + 5000 / 10000
            if idx >= mem[_264]:
                revert with 'NH{q', 50
            mem[(32 * idx) + _264 + 32] = _2833
            if idx == -1:
                revert with 'NH{q', 17
            _2797 = mem[(2 * ceil32(return_data.size)) + 96]
            idx = idx + 1
            continue 
        _2808 = mem[64]
        mem[mem[64]] = 32
        _2817 = mem[_264]
        mem[mem[64] + 32] = mem[_264]
        idx = 0
        s = _264 + 32
        t = mem[64] + 64
        while idx < _2817:
            _2972 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[mem[_2972 + 32]]
            mem[t + 64] = mem[_2972 + 64]
            mem[t + 96] = mem[_2972 + 96]
            mem[t + 128] = mem[_2972 + 128]
            idx = idx + 1
            s = s + 32
            t = t + 160
            continue 
        return memory
          from mem[64]
           len _2808 + (160 * _2817) + -mem[64] + 64
    mem[_264 + (32 * _9) + 416] = 0
    mem[64] = _264 + (32 * _9) + 608
    mem[_264 + (32 * _9) + 576] = 0
    mem[var58002] = var58001
    mem[var58002 + 32] = 0
    mem[var58002 + 64] = 0
    mem[var58002 + 96] = 0
    mem[var60002] = var60001
    if not var60003 - 1:
        if _9 > test266151307():
            revert with 'NH{q', 65
        mem[_264 + (32 * _9) + 608] = _9
        mem[64] = _264 + (64 * _9) + 640
        if not _9:
            idx = 0
            while idx < _9:
                if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                    revert with 'NH{q', 50
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserveData(address rg1) with:
                        gas gas_remaining wei
                       args address(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128])
                mem[mem[64] len 384] = ext_call.return_data[0 len 384]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3250 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 384
                _3274 = mem[64]
                if mem[64] + 384 < mem[64] or mem[64] + 384 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = mem[64] + 384
                require return_data.size >= 32
                _3312 = mem[64]
                if mem[64] + 32 > test266151307() or mem[64] + 32 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + 32
                mem[_3312] = mem[_3250]
                mem[_3274] = _3312
                require mem[_3250 + 32] == mem[_3250 + 48 len 16]
                mem[_3274 + 32] = mem[_3250 + 32]
                require mem[_3250 + 64] == mem[_3250 + 80 len 16]
                mem[_3274 + 64] = mem[_3250 + 64]
                require mem[_3250 + 96] == mem[_3250 + 112 len 16]
                mem[_3274 + 96] = mem[_3250 + 96]
                require mem[_3250 + 128] == mem[_3250 + 144 len 16]
                mem[_3274 + 128] = mem[_3250 + 128]
                require mem[_3250 + 160] == mem[_3250 + 176 len 16]
                mem[_3274 + 160] = mem[_3250 + 160]
                require mem[_3250 + 192] == mem[_3250 + 219 len 5]
                mem[_3274 + 192] = mem[_3250 + 192]
                require mem[_3250 + 224] == mem[_3250 + 236 len 20]
                mem[_3274 + 224] = mem[_3250 + 224]
                require mem[_3250 + 256] == mem[_3250 + 268 len 20]
                mem[_3274 + 256] = mem[_3250 + 256]
                require mem[_3250 + 288] == mem[_3250 + 300 len 20]
                mem[_3274 + 288] = mem[_3250 + 288]
                require mem[_3250 + 320] == mem[_3250 + 332 len 20]
                mem[_3274 + 320] = mem[_3250 + 320]
                require mem[_3250 + 352] == mem[_3250 + 383 len 1]
                mem[_3274 + 352] = mem[_3250 + 352]
                if idx >= mem[_264 + (32 * _9) + 608]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _264 + (32 * _9) + 640] = _3274
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _3479 = mem[(2 * ceil32(return_data.size)) + 96]
            idx = 0
            while idx < _3479:
                if idx >= mem[_264 + (32 * _9) + 608]:
                    revert with 'NH{q', 50
                _3485 = mem[mem[(32 * idx) + _264 + (32 * _9) + 640] + 288]
                mem[mem[64] + 4] = address(arg1)
                require ext_code.size(address(_3485))
                staticcall address(_3485).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3497 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3514 = mem[_3497]
                _3518 = mem[64]
                mem[64] = mem[64] + 160
                if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                    revert with 'NH{q', 50
                mem[_3518] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 140 len 20]
                if idx >= mem[_264 + (32 * _9) + 608]:
                    revert with 'NH{q', 50
                mem[_3518 + 32] = mem[mem[(32 * idx) + _264 + (32 * _9) + 640]]
                if idx >= mem[_264 + (32 * _9) + 608]:
                    revert with 'NH{q', 50
                _3545 = mem[mem[(32 * idx) + _264 + (32 * _9) + 640] + 224]
                mem[mem[64] + 4] = address(arg1)
                require ext_code.size(address(_3545))
                staticcall address(_3545).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3564 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[_3518 + 64] = mem[_3564]
                mem[_3518 + 96] = _3514
                if not _3514:
                    mem[_3518 + 128] = 0
                else:
                    _3647 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3647] = 2
                    mem[_3647 + 32] = '48'
                    if _3514 > 0xd1b71758e219652bd3c36113404ea4a8c154c985f06f694467381d7dbf486:
                        _3649 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 2
                        idx = 0
                        while idx < 2:
                            mem[idx + _3649 + 68] = mem[idx + _3647 + 32]
                            _3479 = mem[(2 * ceil32(return_data.size)) + 96]
                            idx = idx + 32
                            continue 
                        mem[_3649 + 70] = 0
                        revert with memory
                          from mem[64]
                           len _3649 + -mem[64] + 100
                    if _3514 and 5000 > -1 / _3514:
                        revert with 'NH{q', 17
                    if 5000 * _3514 > -5001:
                        revert with 'NH{q', 17
                    mem[_3518 + 128] = (5000 * _3514) + 5000 / 10000
                if idx >= mem[_264]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _264 + 32] = _3518
                if idx == -1:
                    revert with 'NH{q', 17
                _3479 = mem[(2 * ceil32(return_data.size)) + 96]
                idx = idx + 1
                continue 
            _3483 = mem[64]
            mem[mem[64]] = 32
            _3491 = mem[_264]
            mem[mem[64] + 32] = mem[_264]
            idx = 0
            s = _264 + 32
            t = mem[64] + 64
            while idx < _3491:
                _3704 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[mem[_3704 + 32]]
                mem[t + 64] = mem[_3704 + 64]
                mem[t + 96] = mem[_3704 + 96]
                mem[t + 128] = mem[_3704 + 128]
                idx = idx + 1
                s = s + 32
                t = t + 160
                continue 
            return memory
              from mem[64]
               len _3483 + (160 * _3491) + -mem[64] + 64
        mem[64] = _264 + (64 * _9) + 1056
        mem[_264 + (64 * _9) + 1024] = 0
        mem[_264 + (64 * _9) + 640] = _264 + (64 * _9) + 1024
        mem[_264 + (64 * _9) + 672] = 0
        mem[_264 + (64 * _9) + 704] = 0
        mem[_264 + (64 * _9) + 736] = 0
        mem[_264 + (64 * _9) + 768] = 0
        mem[_264 + (64 * _9) + 800] = 0
        mem[_264 + (64 * _9) + 832] = 0
        mem[_264 + (64 * _9) + 864] = 0
        mem[_264 + (64 * _9) + 896] = 0
        mem[_264 + (64 * _9) + 928] = 0
        mem[_264 + (64 * _9) + 960] = 0
        mem[_264 + (64 * _9) + 992] = 0
        mem[_264 + (32 * _9) + 640] = _264 + (64 * _9) + 640
        s = _264 + (32 * _9) + 640
        idx = _9
        while idx - 1:
            mem[64] = mem[64] + 416
            mem[_264 + (64 * _9) + 1024] = 0
            mem[_264 + (64 * _9) + 640] = _264 + (64 * _9) + 1024
            mem[_264 + (64 * _9) + 672] = 0
            mem[_264 + (64 * _9) + 704] = 0
            mem[_264 + (64 * _9) + 736] = 0
            mem[_264 + (64 * _9) + 768] = 0
            mem[_264 + (64 * _9) + 800] = 0
            mem[_264 + (64 * _9) + 832] = 0
            mem[_264 + (64 * _9) + 864] = 0
            mem[_264 + (64 * _9) + 896] = 0
            mem[_264 + (64 * _9) + 928] = 0
            mem[_264 + (64 * _9) + 960] = 0
            mem[_264 + (64 * _9) + 992] = 0
            mem[s + 32] = _264 + (64 * _9) + 640
            s = s + 32
            idx = idx - 1
            continue 
        _3480 = mem[(2 * ceil32(return_data.size)) + 96]
        idx = 0
        while idx < _3480:
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getReserveData(address rg1) with:
                    gas gas_remaining wei
                   args address(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128])
            mem[mem[64] len 384] = ext_call.return_data[0 len 384]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3512 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 384
            _3532 = mem[64]
            if mem[64] + 384 < mem[64] or mem[64] + 384 > test266151307():
                revert with 'NH{q', 65
            mem[64] = mem[64] + 384
            require return_data.size >= 32
            _3569 = mem[64]
            if mem[64] + 32 > test266151307() or mem[64] + 32 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 32
            mem[_3569] = mem[_3512]
            mem[_3532] = _3569
            require mem[_3512 + 32] == mem[_3512 + 48 len 16]
            mem[_3532 + 32] = mem[_3512 + 32]
            require mem[_3512 + 64] == mem[_3512 + 80 len 16]
            mem[_3532 + 64] = mem[_3512 + 64]
            require mem[_3512 + 96] == mem[_3512 + 112 len 16]
            mem[_3532 + 96] = mem[_3512 + 96]
            require mem[_3512 + 128] == mem[_3512 + 144 len 16]
            mem[_3532 + 128] = mem[_3512 + 128]
            require mem[_3512 + 160] == mem[_3512 + 176 len 16]
            mem[_3532 + 160] = mem[_3512 + 160]
            require mem[_3512 + 192] == mem[_3512 + 219 len 5]
            mem[_3532 + 192] = mem[_3512 + 192]
            require mem[_3512 + 224] == mem[_3512 + 236 len 20]
            mem[_3532 + 224] = mem[_3512 + 224]
            require mem[_3512 + 256] == mem[_3512 + 268 len 20]
            mem[_3532 + 256] = mem[_3512 + 256]
            require mem[_3512 + 288] == mem[_3512 + 300 len 20]
            mem[_3532 + 288] = mem[_3512 + 288]
            require mem[_3512 + 320] == mem[_3512 + 332 len 20]
            mem[_3532 + 320] = mem[_3512 + 320]
            require mem[_3512 + 352] == mem[_3512 + 383 len 1]
            mem[_3532 + 352] = mem[_3512 + 352]
            if idx >= mem[_264 + (32 * _9) + 608]:
                revert with 'NH{q', 50
            mem[(32 * idx) + _264 + (32 * _9) + 640] = _3532
            if idx == -1:
                revert with 'NH{q', 17
            _3480 = mem[(2 * ceil32(return_data.size)) + 96]
            idx = idx + 1
            continue 
        _3703 = mem[(2 * ceil32(return_data.size)) + 96]
        idx = 0
        while idx < _3703:
            if idx >= mem[_264 + (32 * _9) + 608]:
                revert with 'NH{q', 50
            _3716 = mem[mem[(32 * idx) + _264 + (32 * _9) + 640] + 288]
            mem[mem[64] + 4] = address(arg1)
            require ext_code.size(address(_3716))
            staticcall address(_3716).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3726 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _3737 = mem[_3726]
            _3739 = mem[64]
            mem[64] = mem[64] + 160
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            mem[_3739] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 140 len 20]
            if idx >= mem[_264 + (32 * _9) + 608]:
                revert with 'NH{q', 50
            mem[_3739 + 32] = mem[mem[(32 * idx) + _264 + (32 * _9) + 640]]
            if idx >= mem[_264 + (32 * _9) + 608]:
                revert with 'NH{q', 50
            _3759 = mem[mem[(32 * idx) + _264 + (32 * _9) + 640] + 224]
            mem[mem[64] + 4] = address(arg1)
            require ext_code.size(address(_3759))
            staticcall address(_3759).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3770 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[_3739 + 64] = mem[_3770]
            mem[_3739 + 96] = _3737
            if not _3737:
                mem[_3739 + 128] = 0
            else:
                _3837 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3837] = 2
                mem[_3837 + 32] = '48'
                if _3737 > 0xd1b71758e219652bd3c36113404ea4a8c154c985f06f694467381d7dbf486:
                    _3838 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 2
                    idx = 0
                    while idx < 2:
                        mem[idx + _3838 + 68] = mem[idx + _3837 + 32]
                        _3703 = mem[(2 * ceil32(return_data.size)) + 96]
                        idx = idx + 32
                        continue 
                    mem[_3838 + 70] = 0
                    revert with memory
                      from mem[64]
                       len _3838 + -mem[64] + 100
                if _3737 and 5000 > -1 / _3737:
                    revert with 'NH{q', 17
                if 5000 * _3737 > -5001:
                    revert with 'NH{q', 17
                mem[_3739 + 128] = (5000 * _3737) + 5000 / 10000
            if idx >= mem[_264]:
                revert with 'NH{q', 50
            mem[(32 * idx) + _264 + 32] = _3739
            if idx == -1:
                revert with 'NH{q', 17
            _3703 = mem[(2 * ceil32(return_data.size)) + 96]
            idx = idx + 1
            continue 
        _3714 = mem[64]
        mem[mem[64]] = 32
        _3723 = mem[_264]
        mem[mem[64] + 32] = mem[_264]
        idx = 0
        s = _264 + 32
        t = mem[64] + 64
        while idx < _3723:
            _3878 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[mem[_3878 + 32]]
            mem[t + 64] = mem[_3878 + 64]
            mem[t + 96] = mem[_3878 + 96]
            mem[t + 128] = mem[_3878 + 128]
            idx = idx + 1
            s = s + 32
            t = t + 160
            continue 
        return memory
          from mem[64]
           len _3714 + (160 * _3723) + -mem[64] + 64
    mem[_264 + (32 * _9) + 608] = 0
    mem[64] = _264 + (32 * _9) + 800
    mem[_264 + (32 * _9) + 768] = 0
    mem[var66002] = var66001
    mem[var66002 + 32] = 0
    mem[var66002 + 64] = 0
    mem[var66002 + 96] = 0
    mem[var68002] = var68001
    if var68003 - 1:
        # nil
    else:
        if _9 > test266151307():
            revert with 'NH{q', 65
        mem[_264 + (32 * _9) + 800] = _9
        mem[64] = _264 + (64 * _9) + 832
        if not _9:
            idx = 0
            while idx < _9:
                if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                    revert with 'NH{q', 50
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserveData(address rg1) with:
                        gas gas_remaining wei
                       args address(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128])
                mem[mem[64] len 384] = ext_call.return_data[0 len 384]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4156 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 384
                _4180 = mem[64]
                if mem[64] + 384 < mem[64] or mem[64] + 384 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = mem[64] + 384
                require return_data.size >= 32
                _4218 = mem[64]
                if mem[64] + 32 > test266151307() or mem[64] + 32 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + 32
                mem[_4218] = mem[_4156]
                mem[_4180] = _4218
                require mem[_4156 + 32] == mem[_4156 + 48 len 16]
                mem[_4180 + 32] = mem[_4156 + 32]
                require mem[_4156 + 64] == mem[_4156 + 80 len 16]
                mem[_4180 + 64] = mem[_4156 + 64]
                require mem[_4156 + 96] == mem[_4156 + 112 len 16]
                mem[_4180 + 96] = mem[_4156 + 96]
                require mem[_4156 + 128] == mem[_4156 + 144 len 16]
                mem[_4180 + 128] = mem[_4156 + 128]
                require mem[_4156 + 160] == mem[_4156 + 176 len 16]
                mem[_4180 + 160] = mem[_4156 + 160]
                require mem[_4156 + 192] == mem[_4156 + 219 len 5]
                mem[_4180 + 192] = mem[_4156 + 192]
                require mem[_4156 + 224] == mem[_4156 + 236 len 20]
                mem[_4180 + 224] = mem[_4156 + 224]
                require mem[_4156 + 256] == mem[_4156 + 268 len 20]
                mem[_4180 + 256] = mem[_4156 + 256]
                require mem[_4156 + 288] == mem[_4156 + 300 len 20]
                mem[_4180 + 288] = mem[_4156 + 288]
                require mem[_4156 + 320] == mem[_4156 + 332 len 20]
                mem[_4180 + 320] = mem[_4156 + 320]
                require mem[_4156 + 352] == mem[_4156 + 383 len 1]
                mem[_4180 + 352] = mem[_4156 + 352]
                if idx >= mem[_264 + (32 * _9) + 800]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _264 + (32 * _9) + 832] = _4180
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _4385 = mem[(2 * ceil32(return_data.size)) + 96]
            idx = 0
            while idx < _4385:
                if idx >= mem[_264 + (32 * _9) + 800]:
                    revert with 'NH{q', 50
                _4391 = mem[mem[(32 * idx) + _264 + (32 * _9) + 832] + 288]
                mem[mem[64] + 4] = address(arg1)
                require ext_code.size(address(_4391))
                staticcall address(_4391).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4403 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4420 = mem[_4403]
                _4424 = mem[64]
                mem[64] = mem[64] + 160
                if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                    revert with 'NH{q', 50
                mem[_4424] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 140 len 20]
                if idx >= mem[_264 + (32 * _9) + 800]:
                    revert with 'NH{q', 50
                mem[_4424 + 32] = mem[mem[(32 * idx) + _264 + (32 * _9) + 832]]
                if idx >= mem[_264 + (32 * _9) + 800]:
                    revert with 'NH{q', 50
                _4451 = mem[mem[(32 * idx) + _264 + (32 * _9) + 832] + 224]
                mem[mem[64] + 4] = address(arg1)
                require ext_code.size(address(_4451))
                staticcall address(_4451).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4470 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[_4424 + 64] = mem[_4470]
                mem[_4424 + 96] = _4420
                if not _4420:
                    mem[_4424 + 128] = 0
                    if idx >= mem[_264]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _264 + 32] = _4424
                    if idx == -1:
                        revert with 'NH{q', 17
                    _4385 = mem[(2 * ceil32(return_data.size)) + 96]
                    idx = idx + 1
                    continue 
                _4553 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4553] = 2
                mem[_4553 + 32] = '48'
                if _4420 > 0xd1b71758e219652bd3c36113404ea4a8c154c985f06f694467381d7dbf486:
                    # nil
                else:
                    if _4420 and 5000 > -1 / _4420:
                        revert with 'NH{q', 17
                    if 5000 * _4420 > -5001:
                        revert with 'NH{q', 17
                    mem[_4424 + 128] = (5000 * _4420) + 5000 / 10000
                    if idx >= mem[_264]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _264 + 32] = _4424
                    if idx == -1:
                        revert with 'NH{q', 17
                    _4385 = mem[(2 * ceil32(return_data.size)) + 96]
                    idx = idx + 1
                    continue 
        else:
            mem[64] = _264 + (64 * _9) + 1248
            mem[_264 + (64 * _9) + 1216] = 0
            mem[_264 + (64 * _9) + 832] = _264 + (64 * _9) + 1216
            mem[_264 + (64 * _9) + 864] = 0
            mem[_264 + (64 * _9) + 896] = 0
            mem[_264 + (64 * _9) + 928] = 0
            mem[_264 + (64 * _9) + 960] = 0
            mem[_264 + (64 * _9) + 992] = 0
            mem[_264 + (64 * _9) + 1024] = 0
            mem[_264 + (64 * _9) + 1056] = 0
            mem[_264 + (64 * _9) + 1088] = 0
            mem[_264 + (64 * _9) + 1120] = 0
            mem[_264 + (64 * _9) + 1152] = 0
            mem[_264 + (64 * _9) + 1184] = 0
            mem[_264 + (32 * _9) + 832] = _264 + (64 * _9) + 832
            s = _264 + (32 * _9) + 832
            idx = _9
            while idx - 1:
                mem[64] = mem[64] + 416
                mem[_264 + (64 * _9) + 1216] = 0
                mem[_264 + (64 * _9) + 832] = _264 + (64 * _9) + 1216
                mem[_264 + (64 * _9) + 864] = 0
                mem[_264 + (64 * _9) + 896] = 0
                mem[_264 + (64 * _9) + 928] = 0
                mem[_264 + (64 * _9) + 960] = 0
                mem[_264 + (64 * _9) + 992] = 0
                mem[_264 + (64 * _9) + 1024] = 0
                mem[_264 + (64 * _9) + 1056] = 0
                mem[_264 + (64 * _9) + 1088] = 0
                mem[_264 + (64 * _9) + 1120] = 0
                mem[_264 + (64 * _9) + 1152] = 0
                mem[_264 + (64 * _9) + 1184] = 0
                mem[s + 32] = _264 + (64 * _9) + 832
                s = s + 32
                idx = idx - 1
                continue 
            _4386 = mem[(2 * ceil32(return_data.size)) + 96]
            idx = 0
            while idx < _4386:
                if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                    revert with 'NH{q', 50
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserveData(address rg1) with:
                        gas gas_remaining wei
                       args address(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128])
                mem[mem[64] len 384] = ext_call.return_data[0 len 384]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4418 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 384
                _4438 = mem[64]
                if mem[64] + 384 < mem[64] or mem[64] + 384 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = mem[64] + 384
                require return_data.size >= 32
                _4475 = mem[64]
                if mem[64] + 32 > test266151307() or mem[64] + 32 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + 32
                mem[_4475] = mem[_4418]
                mem[_4438] = _4475
                require mem[_4418 + 32] == mem[_4418 + 48 len 16]
                mem[_4438 + 32] = mem[_4418 + 32]
                require mem[_4418 + 64] == mem[_4418 + 80 len 16]
                mem[_4438 + 64] = mem[_4418 + 64]
                require mem[_4418 + 96] == mem[_4418 + 112 len 16]
                mem[_4438 + 96] = mem[_4418 + 96]
                require mem[_4418 + 128] == mem[_4418 + 144 len 16]
                mem[_4438 + 128] = mem[_4418 + 128]
                require mem[_4418 + 160] == mem[_4418 + 176 len 16]
                mem[_4438 + 160] = mem[_4418 + 160]
                require mem[_4418 + 192] == mem[_4418 + 219 len 5]
                mem[_4438 + 192] = mem[_4418 + 192]
                require mem[_4418 + 224] == mem[_4418 + 236 len 20]
                mem[_4438 + 224] = mem[_4418 + 224]
                require mem[_4418 + 256] == mem[_4418 + 268 len 20]
                mem[_4438 + 256] = mem[_4418 + 256]
                require mem[_4418 + 288] == mem[_4418 + 300 len 20]
                mem[_4438 + 288] = mem[_4418 + 288]
                require mem[_4418 + 320] == mem[_4418 + 332 len 20]
                mem[_4438 + 320] = mem[_4418 + 320]
                require mem[_4418 + 352] == mem[_4418 + 383 len 1]
                mem[_4438 + 352] = mem[_4418 + 352]
                if idx >= mem[_264 + (32 * _9) + 800]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _264 + (32 * _9) + 832] = _4438
                if idx == -1:
                    revert with 'NH{q', 17
                _4386 = mem[(2 * ceil32(return_data.size)) + 96]
                idx = idx + 1
                continue 
        # nil
}



}
