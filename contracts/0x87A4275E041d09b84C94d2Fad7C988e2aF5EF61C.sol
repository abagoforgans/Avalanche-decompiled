contract main {




// =====================  Runtime code  =====================


#
#  - sub_669da54c(?)
#
address owner;
mapping of uint8 stor1;
address etherAddress;

function etherAddress() payable {
    return etherAddress
}

function sub_8c845d3f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor1[arg1])
}

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

function sub_17f9c3a5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)] = 1
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

function sub_5b2e4dc5(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x7dc0d1d0 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getUnderlyingPrice(address rg1) with:
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
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        return 0
    require ext_code.size(address(arg2))
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

function sub_bf7f678d(?) payable {
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
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).getAccountLiquidity(address rg1) with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[36] + 36)])
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _59 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            if 0 == mem[_59 + 64]:
                _72 = mem[64]
                mem[64] = mem[64] + 64
                mem[_72] = 0
                if idx >= ('cd', 36).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                mem[_72 + 32] = address(cd[((32 * idx) + cd[36] + 36)])
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _72
            else:
                _74 = mem[64]
                mem[64] = mem[64] + 64
                mem[_74] = 1
                if idx >= ('cd', 36).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                mem[_74 + 32] = address(cd[((32 * idx) + cd[36] + 36)])
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _74
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).liquidationIncentiveMantissa() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _46 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _49 = mem[_46]
        _51 = mem[64]
        mem[mem[64]] = 64
        _52 = mem[96]
        mem[mem[64] + 64] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 96
        while idx < _52:
            _84 = mem[s]
            mem[t] = bool(mem[mem[s]])
            mem[t + 32] = mem[_84 + 44 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        mem[_51 + 32] = _49
        return memory
          from mem[64]
           len _51 + (64 * _52) + -mem[64] + 96
    mem[64] = (32 * ('cd', 36).length) + 192
    mem[(32 * ('cd', 36).length) + 128] = 0
    mem[(32 * ('cd', 36).length) + 160] = 0
    mem[128] = (32 * ('cd', 36).length) + 128
    s = 128
    idx = ('cd', 36).length
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[(32 * ('cd', 36).length) + 128] = 0
        mem[(32 * ('cd', 36).length) + 160] = 0
        mem[s + 32] = (32 * ('cd', 36).length) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < ('cd', 36).length:
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).getAccountLiquidity(address rg1) with:
                gas gas_remaining wei
               args address(cd[((32 * idx) + cd[36] + 36)])
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _99 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        if 0 == mem[_99 + 64]:
            _104 = mem[64]
            mem[64] = mem[64] + 64
            mem[_104] = 0
            if idx >= ('cd', 36).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            mem[_104 + 32] = address(cd[((32 * idx) + cd[36] + 36)])
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = _104
        else:
            _105 = mem[64]
            mem[64] = mem[64] + 64
            mem[_105] = 1
            if idx >= ('cd', 36).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            mem[_105 + 32] = address(cd[((32 * idx) + cd[36] + 36)])
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = _105
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).liquidationIncentiveMantissa() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _90 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _91 = mem[_90]
    _92 = mem[64]
    mem[mem[64]] = 64
    _93 = mem[96]
    mem[mem[64] + 64] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 96
    while idx < _93:
        _108 = mem[s]
        mem[t] = bool(mem[mem[s]])
        mem[t + 32] = mem[_108 + 44 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    mem[_92 + 32] = _91
    return memory
      from mem[64]
       len _92 + (64 * _93) + -mem[64] + 96
}

function sub_d04203a4(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(address(arg1))
    staticcall address(arg1).closeFactorMantissa() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 96] = 0xb0772d0b00000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(arg1))
    staticcall address(arg1).getAllMarkets() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _8 = mem[ceil32(return_data.size) + 96]
    require mem[ceil32(return_data.size) + 96] <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 127 < ceil32(return_data.size) + return_data.size + 96
    _9 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96] > test266151307():
        revert with 'NH{q', 65
    if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]) + 97 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]) + 97
    mem[(2 * ceil32(return_data.size)) + 96] = _9
    require return_data.size >= _8 + (32 * _9) + 32
    s = ceil32(return_data.size) + _8 + 128
    t = (2 * ceil32(return_data.size)) + 128
    idx = 0
    while idx < _9:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
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
            require ext_code.size(address(_443))
            staticcall address(_443).borrowBalanceStored(address rg1) with:
                    gas gas_remaining wei
                   args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _448 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _457 = mem[_448]
            _462 = mem[64]
            mem[64] = mem[64] + 128
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            mem[_462] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 140 len 20]
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            _468 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
            mem[mem[64] + 4] = address(arg2)
            require ext_code.size(address(_468))
            staticcall address(_468).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _480 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _484 = mem[_480]
            if mem[_480] <= 0:
                mem[_462 + 32] = 0
                mem[_462 + 64] = _457
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
                    mem[_462 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _462
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not _457:
                    mem[_496] = 0
                    mem[_462 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _462
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if ext_call.return_data[0] and _457 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if ext_call.return_data[0] * _457 / ext_call.return_data[0] == _457:
                    mem[_496] = ext_call.return_data[0] * _457
                    mem[_462 + 96] = ext_call.return_data[0] * _457 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _462
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _520 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[idx + _520 + 68] = mem[idx + _501 + 32]
                    idx = idx + 32
                    continue 
                mem[_520 + 91] = 0
                revert with memory
                  from mem[64]
                   len _520 + -mem[64] + 100
            _487 = mem[64]
            mem[64] = mem[64] + 32
            require ext_code.size(address(_468))
            staticcall address(_468).exchangeRateStored() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _491 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[_487] = mem[_491]
            _504 = mem[64]
            mem[64] = mem[64] + 32
            mem[_504] = 0
            _505 = mem[64]
            mem[64] = mem[64] + 32
            _506 = mem[_487]
            _507 = mem[64]
            mem[64] = mem[64] + 64
            mem[_507] = 23
            mem[_507 + 32] = 'multiplication overflow'
            if not _506:
                mem[_505] = 0
                mem[_462 + 32] = 0 / 10^18
                mem[_462 + 64] = _457
                _539 = mem[64]
                mem[64] = mem[64] + 32
                mem[_539] = ext_call.return_data[0]
                _548 = mem[64]
                mem[64] = mem[64] + 32
                mem[_548] = 0
                _549 = mem[64]
                mem[64] = mem[64] + 32
                _554 = mem[64]
                mem[64] = mem[64] + 64
                mem[_554] = 23
                mem[_554 + 32] = 'multiplication overflow'
                if not ext_call.return_data[0]:
                    mem[_549] = 0
                    mem[_462 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _462
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not _457:
                    mem[_549] = 0
                    mem[_462 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _462
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if ext_call.return_data[0] and _457 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if ext_call.return_data[0] * _457 / ext_call.return_data[0] == _457:
                    mem[_549] = ext_call.return_data[0] * _457
                    mem[_462 + 96] = ext_call.return_data[0] * _457 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _462
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
            if not _484:
                mem[_505] = 0
                mem[_462 + 32] = 0 / 10^18
                mem[_462 + 64] = _457
                _545 = mem[64]
                mem[64] = mem[64] + 32
                mem[_545] = ext_call.return_data[0]
                _555 = mem[64]
                mem[64] = mem[64] + 32
                mem[_555] = 0
                _556 = mem[64]
                mem[64] = mem[64] + 32
                _560 = mem[64]
                mem[64] = mem[64] + 64
                mem[_560] = 23
                mem[_560 + 32] = 'multiplication overflow'
                if not ext_call.return_data[0]:
                    mem[_556] = 0
                    mem[_462 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _462
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not _457:
                    mem[_556] = 0
                    mem[_462 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _462
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if ext_call.return_data[0] and _457 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if ext_call.return_data[0] * _457 / ext_call.return_data[0] == _457:
                    mem[_556] = ext_call.return_data[0] * _457
                    mem[_462 + 96] = ext_call.return_data[0] * _457 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _462
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
                    mem[idx + _590 + 68] = mem[idx + _560 + 32]
                    idx = idx + 32
                    continue 
                mem[_590 + 91] = 0
                revert with memory
                  from mem[64]
                   len _590 + -mem[64] + 100
            if _506 and _484 > -1 / _506:
                revert with 'NH{q', 17
            if not _506:
                revert with 'NH{q', 18
            if _506 * _484 / _506 != _484:
                _526 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                s = 0
                while s < 23:
                    mem[s + _526 + 68] = mem[s + _507 + 32]
                    s = s + 32
                    continue 
                mem[_526 + 91] = 0
                revert with memory
                  from mem[64]
                   len _526 + -mem[64] + 100
            mem[_505] = _506 * _484
            mem[_462 + 32] = _506 * _484 / 10^18
            mem[_462 + 64] = _457
            _570 = mem[64]
            mem[64] = mem[64] + 32
            mem[_570] = ext_call.return_data[0]
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
                mem[_462 + 96] = 0 / 10^18
                if idx >= mem[_227]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _227 + 32] = _462
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if not _457:
                mem[_577] = 0
                mem[_462 + 96] = 0 / 10^18
                if idx >= mem[_227]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _227 + 32] = _462
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if ext_call.return_data[0] and _457 > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if ext_call.return_data[0] * _457 / ext_call.return_data[0] == _457:
                mem[_577] = ext_call.return_data[0] * _457
                mem[_462 + 96] = ext_call.return_data[0] * _457 / 10^18
                if idx >= mem[_227]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _227 + 32] = _462
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _615 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 23
            idx = 0
            while idx < 23:
                mem[idx + _615 + 68] = mem[idx + _580 + 32]
                idx = idx + 32
                continue 
            mem[_615 + 91] = 0
            revert with memory
              from mem[64]
               len _615 + -mem[64] + 100
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
    mem[var36002] = var36001
    if not var36003 - 1:
        idx = 0
        while idx < _9:
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            _888 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
            mem[mem[64] + 4] = address(arg2)
            require ext_code.size(address(_888))
            staticcall address(_888).borrowBalanceStored(address rg1) with:
                    gas gas_remaining wei
                   args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _893 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _905 = mem[_893]
            _907 = mem[64]
            mem[64] = mem[64] + 128
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            mem[_907] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 140 len 20]
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            _917 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
            mem[mem[64] + 4] = address(arg2)
            require ext_code.size(address(_917))
            staticcall address(_917).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _926 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _930 = mem[_926]
            if mem[_926] <= 0:
                mem[_907 + 32] = 0
                mem[_907 + 64] = _905
                _937 = mem[64]
                mem[64] = mem[64] + 32
                mem[_937] = ext_call.return_data[0]
                _942 = mem[64]
                mem[64] = mem[64] + 32
                mem[_942] = 0
                _943 = mem[64]
                mem[64] = mem[64] + 32
                _945 = mem[64]
                mem[64] = mem[64] + 64
                mem[_945] = 23
                mem[_945 + 32] = 'multiplication overflow'
                if not ext_call.return_data[0]:
                    mem[_943] = 0
                    mem[_907 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _907
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not _905:
                    mem[_943] = 0
                    mem[_907 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _907
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if ext_call.return_data[0] and _905 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if ext_call.return_data[0] * _905 / ext_call.return_data[0] == _905:
                    mem[_943] = ext_call.return_data[0] * _905
                    mem[_907 + 96] = ext_call.return_data[0] * _905 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _907
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _964 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[idx + _964 + 68] = mem[idx + _945 + 32]
                    idx = idx + 32
                    continue 
                mem[_964 + 91] = 0
                revert with memory
                  from mem[64]
                   len _964 + -mem[64] + 100
            _932 = mem[64]
            mem[64] = mem[64] + 32
            require ext_code.size(address(_917))
            staticcall address(_917).exchangeRateStored() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _936 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[_932] = mem[_936]
            _948 = mem[64]
            mem[64] = mem[64] + 32
            mem[_948] = 0
            _949 = mem[64]
            mem[64] = mem[64] + 32
            _950 = mem[_932]
            _955 = mem[64]
            mem[64] = mem[64] + 64
            mem[_955] = 23
            mem[_955 + 32] = 'multiplication overflow'
            if not _950:
                mem[_949] = 0
                mem[_907 + 32] = 0 / 10^18
                mem[_907 + 64] = _905
                _986 = mem[64]
                mem[64] = mem[64] + 32
                mem[_986] = ext_call.return_data[0]
                _993 = mem[64]
                mem[64] = mem[64] + 32
                mem[_993] = 0
                _994 = mem[64]
                mem[64] = mem[64] + 32
                _1000 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1000] = 23
                mem[_1000 + 32] = 'multiplication overflow'
                if not ext_call.return_data[0]:
                    mem[_994] = 0
                    mem[_907 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _907
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not _905:
                    mem[_994] = 0
                    mem[_907 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _907
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if ext_call.return_data[0] and _905 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if ext_call.return_data[0] * _905 / ext_call.return_data[0] == _905:
                    mem[_994] = ext_call.return_data[0] * _905
                    mem[_907 + 96] = ext_call.return_data[0] * _905 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _907
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
            if not _930:
                mem[_949] = 0
                mem[_907 + 32] = 0 / 10^18
                mem[_907 + 64] = _905
                _991 = mem[64]
                mem[64] = mem[64] + 32
                mem[_991] = ext_call.return_data[0]
                _1001 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1001] = 0
                _1002 = mem[64]
                mem[64] = mem[64] + 32
                _1006 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1006] = 23
                mem[_1006 + 32] = 'multiplication overflow'
                if not ext_call.return_data[0]:
                    mem[_1002] = 0
                    mem[_907 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _907
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not _905:
                    mem[_1002] = 0
                    mem[_907 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _907
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if ext_call.return_data[0] and _905 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if ext_call.return_data[0] * _905 / ext_call.return_data[0] == _905:
                    mem[_1002] = ext_call.return_data[0] * _905
                    mem[_907 + 96] = ext_call.return_data[0] * _905 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _907
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
                    mem[idx + _1036 + 68] = mem[idx + _1006 + 32]
                    idx = idx + 32
                    continue 
                mem[_1036 + 91] = 0
                revert with memory
                  from mem[64]
                   len _1036 + -mem[64] + 100
            if _950 and _930 > -1 / _950:
                revert with 'NH{q', 17
            if not _950:
                revert with 'NH{q', 18
            if _950 * _930 / _950 != _930:
                _970 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                s = 0
                while s < 23:
                    mem[s + _970 + 68] = mem[s + _955 + 32]
                    s = s + 32
                    continue 
                mem[_970 + 91] = 0
                revert with memory
                  from mem[64]
                   len _970 + -mem[64] + 100
            mem[_949] = _950 * _930
            mem[_907 + 32] = _950 * _930 / 10^18
            mem[_907 + 64] = _905
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
                mem[_907 + 96] = 0 / 10^18
                if idx >= mem[_227]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _227 + 32] = _907
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if not _905:
                mem[_1021] = 0
                mem[_907 + 96] = 0 / 10^18
                if idx >= mem[_227]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _227 + 32] = _907
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if ext_call.return_data[0] and _905 > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if ext_call.return_data[0] * _905 / ext_call.return_data[0] == _905:
                mem[_1021] = ext_call.return_data[0] * _905
                mem[_907 + 96] = ext_call.return_data[0] * _905 / 10^18
                if idx >= mem[_227]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _227 + 32] = _907
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _1062 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 23
            idx = 0
            while idx < 23:
                mem[idx + _1062 + 68] = mem[idx + _1024 + 32]
                idx = idx + 32
                continue 
            mem[_1062 + 91] = 0
            revert with memory
              from mem[64]
               len _1062 + -mem[64] + 100
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
    mem[var40002] = var40001
    if not var40003 - 1:
        idx = 0
        while idx < _9:
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            _1332 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
            mem[mem[64] + 4] = address(arg2)
            require ext_code.size(address(_1332))
            staticcall address(_1332).borrowBalanceStored(address rg1) with:
                    gas gas_remaining wei
                   args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1337 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1349 = mem[_1337]
            _1351 = mem[64]
            mem[64] = mem[64] + 128
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            mem[_1351] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 140 len 20]
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            _1361 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
            mem[mem[64] + 4] = address(arg2)
            require ext_code.size(address(_1361))
            staticcall address(_1361).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1370 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1374 = mem[_1370]
            if mem[_1370] <= 0:
                mem[_1351 + 32] = 0
                mem[_1351 + 64] = _1349
                _1381 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1381] = ext_call.return_data[0]
                _1386 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1386] = 0
                _1387 = mem[64]
                mem[64] = mem[64] + 32
                _1389 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1389] = 23
                mem[_1389 + 32] = 'multiplication overflow'
                if not ext_call.return_data[0]:
                    mem[_1387] = 0
                    mem[_1351 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _1351
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not _1349:
                    mem[_1387] = 0
                    mem[_1351 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _1351
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if ext_call.return_data[0] and _1349 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if ext_call.return_data[0] * _1349 / ext_call.return_data[0] == _1349:
                    mem[_1387] = ext_call.return_data[0] * _1349
                    mem[_1351 + 96] = ext_call.return_data[0] * _1349 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _1351
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _1408 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[idx + _1408 + 68] = mem[idx + _1389 + 32]
                    idx = idx + 32
                    continue 
                mem[_1408 + 91] = 0
                revert with memory
                  from mem[64]
                   len _1408 + -mem[64] + 100
            _1376 = mem[64]
            mem[64] = mem[64] + 32
            require ext_code.size(address(_1361))
            staticcall address(_1361).exchangeRateStored() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1380 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[_1376] = mem[_1380]
            _1392 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1392] = 0
            _1393 = mem[64]
            mem[64] = mem[64] + 32
            _1394 = mem[_1376]
            _1399 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1399] = 23
            mem[_1399 + 32] = 'multiplication overflow'
            if not _1394:
                mem[_1393] = 0
                mem[_1351 + 32] = 0 / 10^18
                mem[_1351 + 64] = _1349
                _1430 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1430] = ext_call.return_data[0]
                _1437 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1437] = 0
                _1438 = mem[64]
                mem[64] = mem[64] + 32
                _1444 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1444] = 23
                mem[_1444 + 32] = 'multiplication overflow'
                if not ext_call.return_data[0]:
                    mem[_1438] = 0
                    mem[_1351 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _1351
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not _1349:
                    mem[_1438] = 0
                    mem[_1351 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _1351
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if ext_call.return_data[0] and _1349 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if ext_call.return_data[0] * _1349 / ext_call.return_data[0] == _1349:
                    mem[_1438] = ext_call.return_data[0] * _1349
                    mem[_1351 + 96] = ext_call.return_data[0] * _1349 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _1351
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
            if not _1374:
                mem[_1393] = 0
                mem[_1351 + 32] = 0 / 10^18
                mem[_1351 + 64] = _1349
                _1435 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1435] = ext_call.return_data[0]
                _1445 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1445] = 0
                _1446 = mem[64]
                mem[64] = mem[64] + 32
                _1450 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1450] = 23
                mem[_1450 + 32] = 'multiplication overflow'
                if not ext_call.return_data[0]:
                    mem[_1446] = 0
                    mem[_1351 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _1351
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not _1349:
                    mem[_1446] = 0
                    mem[_1351 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _1351
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if ext_call.return_data[0] and _1349 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if ext_call.return_data[0] * _1349 / ext_call.return_data[0] == _1349:
                    mem[_1446] = ext_call.return_data[0] * _1349
                    mem[_1351 + 96] = ext_call.return_data[0] * _1349 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _1351
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
                    mem[idx + _1480 + 68] = mem[idx + _1450 + 32]
                    idx = idx + 32
                    continue 
                mem[_1480 + 91] = 0
                revert with memory
                  from mem[64]
                   len _1480 + -mem[64] + 100
            if _1394 and _1374 > -1 / _1394:
                revert with 'NH{q', 17
            if not _1394:
                revert with 'NH{q', 18
            if _1394 * _1374 / _1394 != _1374:
                _1414 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                s = 0
                while s < 23:
                    mem[s + _1414 + 68] = mem[s + _1399 + 32]
                    s = s + 32
                    continue 
                mem[_1414 + 91] = 0
                revert with memory
                  from mem[64]
                   len _1414 + -mem[64] + 100
            mem[_1393] = _1394 * _1374
            mem[_1351 + 32] = _1394 * _1374 / 10^18
            mem[_1351 + 64] = _1349
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
                mem[_1351 + 96] = 0 / 10^18
                if idx >= mem[_227]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _227 + 32] = _1351
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if not _1349:
                mem[_1465] = 0
                mem[_1351 + 96] = 0 / 10^18
                if idx >= mem[_227]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _227 + 32] = _1351
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if ext_call.return_data[0] and _1349 > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if ext_call.return_data[0] * _1349 / ext_call.return_data[0] == _1349:
                mem[_1465] = ext_call.return_data[0] * _1349
                mem[_1351 + 96] = ext_call.return_data[0] * _1349 / 10^18
                if idx >= mem[_227]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _227 + 32] = _1351
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _1506 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 23
            idx = 0
            while idx < 23:
                mem[idx + _1506 + 68] = mem[idx + _1468 + 32]
                idx = idx + 32
                continue 
            mem[_1506 + 91] = 0
            revert with memory
              from mem[64]
               len _1506 + -mem[64] + 100
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
    mem[var44002] = var44001
    if not var44003 - 1:
        idx = 0
        while idx < _9:
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            _1776 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
            mem[mem[64] + 4] = address(arg2)
            require ext_code.size(address(_1776))
            staticcall address(_1776).borrowBalanceStored(address rg1) with:
                    gas gas_remaining wei
                   args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1781 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1793 = mem[_1781]
            _1795 = mem[64]
            mem[64] = mem[64] + 128
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            mem[_1795] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 140 len 20]
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            _1805 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
            mem[mem[64] + 4] = address(arg2)
            require ext_code.size(address(_1805))
            staticcall address(_1805).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1814 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1818 = mem[_1814]
            if mem[_1814] <= 0:
                mem[_1795 + 32] = 0
                mem[_1795 + 64] = _1793
                _1825 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1825] = ext_call.return_data[0]
                _1830 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1830] = 0
                _1831 = mem[64]
                mem[64] = mem[64] + 32
                _1833 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1833] = 23
                mem[_1833 + 32] = 'multiplication overflow'
                if not ext_call.return_data[0]:
                    mem[_1831] = 0
                    mem[_1795 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _1795
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not _1793:
                    mem[_1831] = 0
                    mem[_1795 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _1795
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if ext_call.return_data[0] and _1793 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if ext_call.return_data[0] * _1793 / ext_call.return_data[0] == _1793:
                    mem[_1831] = ext_call.return_data[0] * _1793
                    mem[_1795 + 96] = ext_call.return_data[0] * _1793 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _1795
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _1852 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[idx + _1852 + 68] = mem[idx + _1833 + 32]
                    idx = idx + 32
                    continue 
                mem[_1852 + 91] = 0
                revert with memory
                  from mem[64]
                   len _1852 + -mem[64] + 100
            _1820 = mem[64]
            mem[64] = mem[64] + 32
            require ext_code.size(address(_1805))
            staticcall address(_1805).exchangeRateStored() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1824 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[_1820] = mem[_1824]
            _1836 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1836] = 0
            _1837 = mem[64]
            mem[64] = mem[64] + 32
            _1838 = mem[_1820]
            _1843 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1843] = 23
            mem[_1843 + 32] = 'multiplication overflow'
            if not _1838:
                mem[_1837] = 0
                mem[_1795 + 32] = 0 / 10^18
                mem[_1795 + 64] = _1793
                _1874 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1874] = ext_call.return_data[0]
                _1881 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1881] = 0
                _1882 = mem[64]
                mem[64] = mem[64] + 32
                _1888 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1888] = 23
                mem[_1888 + 32] = 'multiplication overflow'
                if not ext_call.return_data[0]:
                    mem[_1882] = 0
                    mem[_1795 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _1795
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not _1793:
                    mem[_1882] = 0
                    mem[_1795 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _1795
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if ext_call.return_data[0] and _1793 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if ext_call.return_data[0] * _1793 / ext_call.return_data[0] == _1793:
                    mem[_1882] = ext_call.return_data[0] * _1793
                    mem[_1795 + 96] = ext_call.return_data[0] * _1793 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _1795
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
            if not _1818:
                mem[_1837] = 0
                mem[_1795 + 32] = 0 / 10^18
                mem[_1795 + 64] = _1793
                _1879 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1879] = ext_call.return_data[0]
                _1889 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1889] = 0
                _1890 = mem[64]
                mem[64] = mem[64] + 32
                _1894 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1894] = 23
                mem[_1894 + 32] = 'multiplication overflow'
                if not ext_call.return_data[0]:
                    mem[_1890] = 0
                    mem[_1795 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _1795
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not _1793:
                    mem[_1890] = 0
                    mem[_1795 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _1795
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if ext_call.return_data[0] and _1793 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if ext_call.return_data[0] * _1793 / ext_call.return_data[0] == _1793:
                    mem[_1890] = ext_call.return_data[0] * _1793
                    mem[_1795 + 96] = ext_call.return_data[0] * _1793 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _1795
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
                    mem[idx + _1924 + 68] = mem[idx + _1894 + 32]
                    idx = idx + 32
                    continue 
                mem[_1924 + 91] = 0
                revert with memory
                  from mem[64]
                   len _1924 + -mem[64] + 100
            if _1838 and _1818 > -1 / _1838:
                revert with 'NH{q', 17
            if not _1838:
                revert with 'NH{q', 18
            if _1838 * _1818 / _1838 != _1818:
                _1858 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                s = 0
                while s < 23:
                    mem[s + _1858 + 68] = mem[s + _1843 + 32]
                    s = s + 32
                    continue 
                mem[_1858 + 91] = 0
                revert with memory
                  from mem[64]
                   len _1858 + -mem[64] + 100
            mem[_1837] = _1838 * _1818
            mem[_1795 + 32] = _1838 * _1818 / 10^18
            mem[_1795 + 64] = _1793
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
                mem[_1795 + 96] = 0 / 10^18
                if idx >= mem[_227]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _227 + 32] = _1795
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if not _1793:
                mem[_1909] = 0
                mem[_1795 + 96] = 0 / 10^18
                if idx >= mem[_227]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _227 + 32] = _1795
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if ext_call.return_data[0] and _1793 > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if ext_call.return_data[0] * _1793 / ext_call.return_data[0] == _1793:
                mem[_1909] = ext_call.return_data[0] * _1793
                mem[_1795 + 96] = ext_call.return_data[0] * _1793 / 10^18
                if idx >= mem[_227]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _227 + 32] = _1795
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _1950 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 23
            idx = 0
            while idx < 23:
                mem[idx + _1950 + 68] = mem[idx + _1912 + 32]
                idx = idx + 32
                continue 
            mem[_1950 + 91] = 0
            revert with memory
              from mem[64]
               len _1950 + -mem[64] + 100
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
    mem[var48002] = var48001
    if not var48003 - 1:
        idx = 0
        while idx < _9:
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            _2220 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
            mem[mem[64] + 4] = address(arg2)
            require ext_code.size(address(_2220))
            staticcall address(_2220).borrowBalanceStored(address rg1) with:
                    gas gas_remaining wei
                   args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2225 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2237 = mem[_2225]
            _2239 = mem[64]
            mem[64] = mem[64] + 128
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            mem[_2239] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 140 len 20]
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            _2249 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
            mem[mem[64] + 4] = address(arg2)
            require ext_code.size(address(_2249))
            staticcall address(_2249).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2258 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2262 = mem[_2258]
            if mem[_2258] <= 0:
                mem[_2239 + 32] = 0
                mem[_2239 + 64] = _2237
                _2269 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2269] = ext_call.return_data[0]
                _2274 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2274] = 0
                _2275 = mem[64]
                mem[64] = mem[64] + 32
                _2277 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2277] = 23
                mem[_2277 + 32] = 'multiplication overflow'
                if not ext_call.return_data[0]:
                    mem[_2275] = 0
                    mem[_2239 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _2239
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not _2237:
                    mem[_2275] = 0
                    mem[_2239 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _2239
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if ext_call.return_data[0] and _2237 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if ext_call.return_data[0] * _2237 / ext_call.return_data[0] == _2237:
                    mem[_2275] = ext_call.return_data[0] * _2237
                    mem[_2239 + 96] = ext_call.return_data[0] * _2237 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _2239
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _2296 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[idx + _2296 + 68] = mem[idx + _2277 + 32]
                    idx = idx + 32
                    continue 
                mem[_2296 + 91] = 0
                revert with memory
                  from mem[64]
                   len _2296 + -mem[64] + 100
            _2264 = mem[64]
            mem[64] = mem[64] + 32
            require ext_code.size(address(_2249))
            staticcall address(_2249).exchangeRateStored() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2268 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[_2264] = mem[_2268]
            _2280 = mem[64]
            mem[64] = mem[64] + 32
            mem[_2280] = 0
            _2281 = mem[64]
            mem[64] = mem[64] + 32
            _2282 = mem[_2264]
            _2287 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2287] = 23
            mem[_2287 + 32] = 'multiplication overflow'
            if not _2282:
                mem[_2281] = 0
                mem[_2239 + 32] = 0 / 10^18
                mem[_2239 + 64] = _2237
                _2318 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2318] = ext_call.return_data[0]
                _2325 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2325] = 0
                _2326 = mem[64]
                mem[64] = mem[64] + 32
                _2332 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2332] = 23
                mem[_2332 + 32] = 'multiplication overflow'
                if not ext_call.return_data[0]:
                    mem[_2326] = 0
                    mem[_2239 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _2239
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not _2237:
                    mem[_2326] = 0
                    mem[_2239 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _2239
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if ext_call.return_data[0] and _2237 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if ext_call.return_data[0] * _2237 / ext_call.return_data[0] == _2237:
                    mem[_2326] = ext_call.return_data[0] * _2237
                    mem[_2239 + 96] = ext_call.return_data[0] * _2237 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _2239
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
            if not _2262:
                mem[_2281] = 0
                mem[_2239 + 32] = 0 / 10^18
                mem[_2239 + 64] = _2237
                _2323 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2323] = ext_call.return_data[0]
                _2333 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2333] = 0
                _2334 = mem[64]
                mem[64] = mem[64] + 32
                _2338 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2338] = 23
                mem[_2338 + 32] = 'multiplication overflow'
                if not ext_call.return_data[0]:
                    mem[_2334] = 0
                    mem[_2239 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _2239
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not _2237:
                    mem[_2334] = 0
                    mem[_2239 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _2239
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if ext_call.return_data[0] and _2237 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if ext_call.return_data[0] * _2237 / ext_call.return_data[0] == _2237:
                    mem[_2334] = ext_call.return_data[0] * _2237
                    mem[_2239 + 96] = ext_call.return_data[0] * _2237 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _2239
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
                    mem[idx + _2368 + 68] = mem[idx + _2338 + 32]
                    idx = idx + 32
                    continue 
                mem[_2368 + 91] = 0
                revert with memory
                  from mem[64]
                   len _2368 + -mem[64] + 100
            if _2282 and _2262 > -1 / _2282:
                revert with 'NH{q', 17
            if not _2282:
                revert with 'NH{q', 18
            if _2282 * _2262 / _2282 != _2262:
                _2302 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                s = 0
                while s < 23:
                    mem[s + _2302 + 68] = mem[s + _2287 + 32]
                    s = s + 32
                    continue 
                mem[_2302 + 91] = 0
                revert with memory
                  from mem[64]
                   len _2302 + -mem[64] + 100
            mem[_2281] = _2282 * _2262
            mem[_2239 + 32] = _2282 * _2262 / 10^18
            mem[_2239 + 64] = _2237
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
                mem[_2239 + 96] = 0 / 10^18
                if idx >= mem[_227]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _227 + 32] = _2239
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if not _2237:
                mem[_2353] = 0
                mem[_2239 + 96] = 0 / 10^18
                if idx >= mem[_227]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _227 + 32] = _2239
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if ext_call.return_data[0] and _2237 > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if ext_call.return_data[0] * _2237 / ext_call.return_data[0] == _2237:
                mem[_2353] = ext_call.return_data[0] * _2237
                mem[_2239 + 96] = ext_call.return_data[0] * _2237 / 10^18
                if idx >= mem[_227]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _227 + 32] = _2239
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _2394 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 23
            idx = 0
            while idx < 23:
                mem[idx + _2394 + 68] = mem[idx + _2356 + 32]
                idx = idx + 32
                continue 
            mem[_2394 + 91] = 0
            revert with memory
              from mem[64]
               len _2394 + -mem[64] + 100
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
    mem[var52002] = var52001
    if not var52003 - 1:
        idx = 0
        while idx < _9:
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            _2664 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
            mem[mem[64] + 4] = address(arg2)
            require ext_code.size(address(_2664))
            staticcall address(_2664).borrowBalanceStored(address rg1) with:
                    gas gas_remaining wei
                   args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2669 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2681 = mem[_2669]
            _2683 = mem[64]
            mem[64] = mem[64] + 128
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            mem[_2683] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 140 len 20]
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            _2693 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
            mem[mem[64] + 4] = address(arg2)
            require ext_code.size(address(_2693))
            staticcall address(_2693).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2702 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2706 = mem[_2702]
            if mem[_2702] <= 0:
                mem[_2683 + 32] = 0
                mem[_2683 + 64] = _2681
                _2713 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2713] = ext_call.return_data[0]
                _2718 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2718] = 0
                _2719 = mem[64]
                mem[64] = mem[64] + 32
                _2721 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2721] = 23
                mem[_2721 + 32] = 'multiplication overflow'
                if not ext_call.return_data[0]:
                    mem[_2719] = 0
                    mem[_2683 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _2683
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not _2681:
                    mem[_2719] = 0
                    mem[_2683 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _2683
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if ext_call.return_data[0] and _2681 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if ext_call.return_data[0] * _2681 / ext_call.return_data[0] == _2681:
                    mem[_2719] = ext_call.return_data[0] * _2681
                    mem[_2683 + 96] = ext_call.return_data[0] * _2681 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _2683
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _2740 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[idx + _2740 + 68] = mem[idx + _2721 + 32]
                    idx = idx + 32
                    continue 
                mem[_2740 + 91] = 0
                revert with memory
                  from mem[64]
                   len _2740 + -mem[64] + 100
            _2708 = mem[64]
            mem[64] = mem[64] + 32
            require ext_code.size(address(_2693))
            staticcall address(_2693).exchangeRateStored() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2712 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[_2708] = mem[_2712]
            _2724 = mem[64]
            mem[64] = mem[64] + 32
            mem[_2724] = 0
            _2725 = mem[64]
            mem[64] = mem[64] + 32
            _2726 = mem[_2708]
            _2731 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2731] = 23
            mem[_2731 + 32] = 'multiplication overflow'
            if not _2726:
                mem[_2725] = 0
                mem[_2683 + 32] = 0 / 10^18
                mem[_2683 + 64] = _2681
                _2762 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2762] = ext_call.return_data[0]
                _2769 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2769] = 0
                _2770 = mem[64]
                mem[64] = mem[64] + 32
                _2776 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2776] = 23
                mem[_2776 + 32] = 'multiplication overflow'
                if not ext_call.return_data[0]:
                    mem[_2770] = 0
                    mem[_2683 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _2683
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not _2681:
                    mem[_2770] = 0
                    mem[_2683 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _2683
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if ext_call.return_data[0] and _2681 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if ext_call.return_data[0] * _2681 / ext_call.return_data[0] == _2681:
                    mem[_2770] = ext_call.return_data[0] * _2681
                    mem[_2683 + 96] = ext_call.return_data[0] * _2681 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _2683
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
            if not _2706:
                mem[_2725] = 0
                mem[_2683 + 32] = 0 / 10^18
                mem[_2683 + 64] = _2681
                _2767 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2767] = ext_call.return_data[0]
                _2777 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2777] = 0
                _2778 = mem[64]
                mem[64] = mem[64] + 32
                _2782 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2782] = 23
                mem[_2782 + 32] = 'multiplication overflow'
                if not ext_call.return_data[0]:
                    mem[_2778] = 0
                    mem[_2683 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _2683
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not _2681:
                    mem[_2778] = 0
                    mem[_2683 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _2683
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if ext_call.return_data[0] and _2681 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if ext_call.return_data[0] * _2681 / ext_call.return_data[0] == _2681:
                    mem[_2778] = ext_call.return_data[0] * _2681
                    mem[_2683 + 96] = ext_call.return_data[0] * _2681 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _2683
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
                    mem[idx + _2812 + 68] = mem[idx + _2782 + 32]
                    idx = idx + 32
                    continue 
                mem[_2812 + 91] = 0
                revert with memory
                  from mem[64]
                   len _2812 + -mem[64] + 100
            if _2726 and _2706 > -1 / _2726:
                revert with 'NH{q', 17
            if not _2726:
                revert with 'NH{q', 18
            if _2726 * _2706 / _2726 != _2706:
                _2746 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                s = 0
                while s < 23:
                    mem[s + _2746 + 68] = mem[s + _2731 + 32]
                    s = s + 32
                    continue 
                mem[_2746 + 91] = 0
                revert with memory
                  from mem[64]
                   len _2746 + -mem[64] + 100
            mem[_2725] = _2726 * _2706
            mem[_2683 + 32] = _2726 * _2706 / 10^18
            mem[_2683 + 64] = _2681
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
                mem[_2683 + 96] = 0 / 10^18
                if idx >= mem[_227]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _227 + 32] = _2683
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if not _2681:
                mem[_2797] = 0
                mem[_2683 + 96] = 0 / 10^18
                if idx >= mem[_227]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _227 + 32] = _2683
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if ext_call.return_data[0] and _2681 > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if ext_call.return_data[0] * _2681 / ext_call.return_data[0] == _2681:
                mem[_2797] = ext_call.return_data[0] * _2681
                mem[_2683 + 96] = ext_call.return_data[0] * _2681 / 10^18
                if idx >= mem[_227]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _227 + 32] = _2683
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _2838 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 23
            idx = 0
            while idx < 23:
                mem[idx + _2838 + 68] = mem[idx + _2800 + 32]
                idx = idx + 32
                continue 
            mem[_2838 + 91] = 0
            revert with memory
              from mem[64]
               len _2838 + -mem[64] + 100
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
    mem[var56002] = var56001
    if not var56003 - 1:
        idx = 0
        while idx < _9:
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            _3108 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
            mem[mem[64] + 4] = address(arg2)
            require ext_code.size(address(_3108))
            staticcall address(_3108).borrowBalanceStored(address rg1) with:
                    gas gas_remaining wei
                   args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3113 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _3125 = mem[_3113]
            _3127 = mem[64]
            mem[64] = mem[64] + 128
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            mem[_3127] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 140 len 20]
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            _3137 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
            mem[mem[64] + 4] = address(arg2)
            require ext_code.size(address(_3137))
            staticcall address(_3137).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3146 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _3150 = mem[_3146]
            if mem[_3146] <= 0:
                mem[_3127 + 32] = 0
                mem[_3127 + 64] = _3125
                _3157 = mem[64]
                mem[64] = mem[64] + 32
                mem[_3157] = ext_call.return_data[0]
                _3162 = mem[64]
                mem[64] = mem[64] + 32
                mem[_3162] = 0
                _3163 = mem[64]
                mem[64] = mem[64] + 32
                _3165 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3165] = 23
                mem[_3165 + 32] = 'multiplication overflow'
                if not ext_call.return_data[0]:
                    mem[_3163] = 0
                    mem[_3127 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _3127
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not _3125:
                    mem[_3163] = 0
                    mem[_3127 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _3127
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if ext_call.return_data[0] and _3125 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if ext_call.return_data[0] * _3125 / ext_call.return_data[0] == _3125:
                    mem[_3163] = ext_call.return_data[0] * _3125
                    mem[_3127 + 96] = ext_call.return_data[0] * _3125 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _3127
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _3184 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[idx + _3184 + 68] = mem[idx + _3165 + 32]
                    idx = idx + 32
                    continue 
                mem[_3184 + 91] = 0
                revert with memory
                  from mem[64]
                   len _3184 + -mem[64] + 100
            _3152 = mem[64]
            mem[64] = mem[64] + 32
            require ext_code.size(address(_3137))
            staticcall address(_3137).exchangeRateStored() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3156 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[_3152] = mem[_3156]
            _3168 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3168] = 0
            _3169 = mem[64]
            mem[64] = mem[64] + 32
            _3170 = mem[_3152]
            _3175 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3175] = 23
            mem[_3175 + 32] = 'multiplication overflow'
            if not _3170:
                mem[_3169] = 0
                mem[_3127 + 32] = 0 / 10^18
                mem[_3127 + 64] = _3125
                _3206 = mem[64]
                mem[64] = mem[64] + 32
                mem[_3206] = ext_call.return_data[0]
                _3213 = mem[64]
                mem[64] = mem[64] + 32
                mem[_3213] = 0
                _3214 = mem[64]
                mem[64] = mem[64] + 32
                _3220 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3220] = 23
                mem[_3220 + 32] = 'multiplication overflow'
                if not ext_call.return_data[0]:
                    mem[_3214] = 0
                    mem[_3127 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _3127
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not _3125:
                    mem[_3214] = 0
                    mem[_3127 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _3127
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if ext_call.return_data[0] and _3125 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if ext_call.return_data[0] * _3125 / ext_call.return_data[0] == _3125:
                    mem[_3214] = ext_call.return_data[0] * _3125
                    mem[_3127 + 96] = ext_call.return_data[0] * _3125 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _3127
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
            if not _3150:
                mem[_3169] = 0
                mem[_3127 + 32] = 0 / 10^18
                mem[_3127 + 64] = _3125
                _3211 = mem[64]
                mem[64] = mem[64] + 32
                mem[_3211] = ext_call.return_data[0]
                _3221 = mem[64]
                mem[64] = mem[64] + 32
                mem[_3221] = 0
                _3222 = mem[64]
                mem[64] = mem[64] + 32
                _3226 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3226] = 23
                mem[_3226 + 32] = 'multiplication overflow'
                if not ext_call.return_data[0]:
                    mem[_3222] = 0
                    mem[_3127 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _3127
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not _3125:
                    mem[_3222] = 0
                    mem[_3127 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _3127
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if ext_call.return_data[0] and _3125 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if ext_call.return_data[0] * _3125 / ext_call.return_data[0] == _3125:
                    mem[_3222] = ext_call.return_data[0] * _3125
                    mem[_3127 + 96] = ext_call.return_data[0] * _3125 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _3127
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
                    mem[idx + _3256 + 68] = mem[idx + _3226 + 32]
                    idx = idx + 32
                    continue 
                mem[_3256 + 91] = 0
                revert with memory
                  from mem[64]
                   len _3256 + -mem[64] + 100
            if _3170 and _3150 > -1 / _3170:
                revert with 'NH{q', 17
            if not _3170:
                revert with 'NH{q', 18
            if _3170 * _3150 / _3170 != _3150:
                _3190 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                s = 0
                while s < 23:
                    mem[s + _3190 + 68] = mem[s + _3175 + 32]
                    s = s + 32
                    continue 
                mem[_3190 + 91] = 0
                revert with memory
                  from mem[64]
                   len _3190 + -mem[64] + 100
            mem[_3169] = _3170 * _3150
            mem[_3127 + 32] = _3170 * _3150 / 10^18
            mem[_3127 + 64] = _3125
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
                mem[_3127 + 96] = 0 / 10^18
                if idx >= mem[_227]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _227 + 32] = _3127
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if not _3125:
                mem[_3241] = 0
                mem[_3127 + 96] = 0 / 10^18
                if idx >= mem[_227]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _227 + 32] = _3127
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if ext_call.return_data[0] and _3125 > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if ext_call.return_data[0] * _3125 / ext_call.return_data[0] == _3125:
                mem[_3241] = ext_call.return_data[0] * _3125
                mem[_3127 + 96] = ext_call.return_data[0] * _3125 / 10^18
                if idx >= mem[_227]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _227 + 32] = _3127
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _3282 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 23
            idx = 0
            while idx < 23:
                mem[idx + _3282 + 68] = mem[idx + _3244 + 32]
                idx = idx + 32
                continue 
            mem[_3282 + 91] = 0
            revert with memory
              from mem[64]
               len _3282 + -mem[64] + 100
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
    mem[var60002] = var60001
    if not var60003 - 1:
        idx = 0
        while idx < _9:
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            _3552 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
            mem[mem[64] + 4] = address(arg2)
            require ext_code.size(address(_3552))
            staticcall address(_3552).borrowBalanceStored(address rg1) with:
                    gas gas_remaining wei
                   args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3557 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _3569 = mem[_3557]
            _3571 = mem[64]
            mem[64] = mem[64] + 128
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            mem[_3571] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 140 len 20]
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            _3581 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
            mem[mem[64] + 4] = address(arg2)
            require ext_code.size(address(_3581))
            staticcall address(_3581).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3590 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _3594 = mem[_3590]
            if mem[_3590] <= 0:
                mem[_3571 + 32] = 0
                mem[_3571 + 64] = _3569
                _3601 = mem[64]
                mem[64] = mem[64] + 32
                mem[_3601] = ext_call.return_data[0]
                _3606 = mem[64]
                mem[64] = mem[64] + 32
                mem[_3606] = 0
                _3607 = mem[64]
                mem[64] = mem[64] + 32
                _3609 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3609] = 23
                mem[_3609 + 32] = 'multiplication overflow'
                if not ext_call.return_data[0]:
                    mem[_3607] = 0
                    mem[_3571 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _3571
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not _3569:
                    mem[_3607] = 0
                    mem[_3571 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _3571
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if ext_call.return_data[0] and _3569 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if ext_call.return_data[0] * _3569 / ext_call.return_data[0] == _3569:
                    mem[_3607] = ext_call.return_data[0] * _3569
                    mem[_3571 + 96] = ext_call.return_data[0] * _3569 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _3571
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _3628 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[idx + _3628 + 68] = mem[idx + _3609 + 32]
                    idx = idx + 32
                    continue 
                mem[_3628 + 91] = 0
                revert with memory
                  from mem[64]
                   len _3628 + -mem[64] + 100
            _3596 = mem[64]
            mem[64] = mem[64] + 32
            require ext_code.size(address(_3581))
            staticcall address(_3581).exchangeRateStored() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3600 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[_3596] = mem[_3600]
            _3612 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3612] = 0
            _3613 = mem[64]
            mem[64] = mem[64] + 32
            _3614 = mem[_3596]
            _3619 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3619] = 23
            mem[_3619 + 32] = 'multiplication overflow'
            if not _3614:
                mem[_3613] = 0
                mem[_3571 + 32] = 0 / 10^18
                mem[_3571 + 64] = _3569
                _3650 = mem[64]
                mem[64] = mem[64] + 32
                mem[_3650] = ext_call.return_data[0]
                _3657 = mem[64]
                mem[64] = mem[64] + 32
                mem[_3657] = 0
                _3658 = mem[64]
                mem[64] = mem[64] + 32
                _3664 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3664] = 23
                mem[_3664 + 32] = 'multiplication overflow'
                if not ext_call.return_data[0]:
                    mem[_3658] = 0
                    mem[_3571 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _3571
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not _3569:
                    mem[_3658] = 0
                    mem[_3571 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _3571
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if ext_call.return_data[0] and _3569 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if ext_call.return_data[0] * _3569 / ext_call.return_data[0] == _3569:
                    mem[_3658] = ext_call.return_data[0] * _3569
                    mem[_3571 + 96] = ext_call.return_data[0] * _3569 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _3571
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
            if not _3594:
                mem[_3613] = 0
                mem[_3571 + 32] = 0 / 10^18
                mem[_3571 + 64] = _3569
                _3655 = mem[64]
                mem[64] = mem[64] + 32
                mem[_3655] = ext_call.return_data[0]
                _3665 = mem[64]
                mem[64] = mem[64] + 32
                mem[_3665] = 0
                _3666 = mem[64]
                mem[64] = mem[64] + 32
                _3670 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3670] = 23
                mem[_3670 + 32] = 'multiplication overflow'
                if not ext_call.return_data[0]:
                    mem[_3666] = 0
                    mem[_3571 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _3571
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not _3569:
                    mem[_3666] = 0
                    mem[_3571 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _3571
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if ext_call.return_data[0] and _3569 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if ext_call.return_data[0] * _3569 / ext_call.return_data[0] == _3569:
                    mem[_3666] = ext_call.return_data[0] * _3569
                    mem[_3571 + 96] = ext_call.return_data[0] * _3569 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _3571
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
                    mem[idx + _3700 + 68] = mem[idx + _3670 + 32]
                    idx = idx + 32
                    continue 
                mem[_3700 + 91] = 0
                revert with memory
                  from mem[64]
                   len _3700 + -mem[64] + 100
            if _3614 and _3594 > -1 / _3614:
                revert with 'NH{q', 17
            if not _3614:
                revert with 'NH{q', 18
            if _3614 * _3594 / _3614 != _3594:
                _3634 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                s = 0
                while s < 23:
                    mem[s + _3634 + 68] = mem[s + _3619 + 32]
                    s = s + 32
                    continue 
                mem[_3634 + 91] = 0
                revert with memory
                  from mem[64]
                   len _3634 + -mem[64] + 100
            mem[_3613] = _3614 * _3594
            mem[_3571 + 32] = _3614 * _3594 / 10^18
            mem[_3571 + 64] = _3569
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
                mem[_3571 + 96] = 0 / 10^18
                if idx >= mem[_227]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _227 + 32] = _3571
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if not _3569:
                mem[_3685] = 0
                mem[_3571 + 96] = 0 / 10^18
                if idx >= mem[_227]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _227 + 32] = _3571
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if ext_call.return_data[0] and _3569 > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if ext_call.return_data[0] * _3569 / ext_call.return_data[0] == _3569:
                mem[_3685] = ext_call.return_data[0] * _3569
                mem[_3571 + 96] = ext_call.return_data[0] * _3569 / 10^18
                if idx >= mem[_227]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _227 + 32] = _3571
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _3726 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 23
            idx = 0
            while idx < 23:
                mem[idx + _3726 + 68] = mem[idx + _3688 + 32]
                idx = idx + 32
                continue 
            mem[_3726 + 91] = 0
            revert with memory
              from mem[64]
               len _3726 + -mem[64] + 100
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
    mem[var64002] = var64001
    if var64003 - 1:
        # nil
    else:
        idx = 0
        while idx < _9:
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            _3996 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
            mem[mem[64] + 4] = address(arg2)
            require ext_code.size(address(_3996))
            staticcall address(_3996).borrowBalanceStored(address rg1) with:
                    gas gas_remaining wei
                   args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4001 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _4013 = mem[_4001]
            _4015 = mem[64]
            mem[64] = mem[64] + 128
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            mem[_4015] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 140 len 20]
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            _4025 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
            mem[mem[64] + 4] = address(arg2)
            require ext_code.size(address(_4025))
            staticcall address(_4025).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4034 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _4038 = mem[_4034]
            if mem[_4034] <= 0:
                mem[_4015 + 32] = 0
                mem[_4015 + 64] = _4013
                _4045 = mem[64]
                mem[64] = mem[64] + 32
                mem[_4045] = ext_call.return_data[0]
                _4050 = mem[64]
                mem[64] = mem[64] + 32
                mem[_4050] = 0
                _4051 = mem[64]
                mem[64] = mem[64] + 32
                _4053 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4053] = 23
                mem[_4053 + 32] = 'multiplication overflow'
                if not ext_call.return_data[0]:
                    mem[_4051] = 0
                    mem[_4015 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _4015
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not _4013:
                    mem[_4051] = 0
                    mem[_4015 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _4015
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if ext_call.return_data[0] and _4013 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if ext_call.return_data[0] * _4013 / ext_call.return_data[0] == _4013:
                    mem[_4051] = ext_call.return_data[0] * _4013
                    mem[_4015 + 96] = ext_call.return_data[0] * _4013 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _4015
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _4072 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[idx + _4072 + 68] = mem[idx + _4053 + 32]
                    idx = idx + 32
                    continue 
                mem[_4072 + 91] = 0
                revert with memory
                  from mem[64]
                   len _4072 + -mem[64] + 100
            _4040 = mem[64]
            mem[64] = mem[64] + 32
            require ext_code.size(address(_4025))
            staticcall address(_4025).exchangeRateStored() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4044 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[_4040] = mem[_4044]
            _4056 = mem[64]
            mem[64] = mem[64] + 32
            mem[_4056] = 0
            _4057 = mem[64]
            mem[64] = mem[64] + 32
            _4058 = mem[_4040]
            _4063 = mem[64]
            mem[64] = mem[64] + 64
            mem[_4063] = 23
            mem[_4063 + 32] = 'multiplication overflow'
            if not _4058:
                mem[_4057] = 0
                mem[_4015 + 32] = 0 / 10^18
                mem[_4015 + 64] = _4013
                _4094 = mem[64]
                mem[64] = mem[64] + 32
                mem[_4094] = ext_call.return_data[0]
                _4101 = mem[64]
                mem[64] = mem[64] + 32
                mem[_4101] = 0
                _4102 = mem[64]
                mem[64] = mem[64] + 32
                _4108 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4108] = 23
                mem[_4108 + 32] = 'multiplication overflow'
                if not ext_call.return_data[0]:
                    mem[_4102] = 0
                    mem[_4015 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _4015
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not _4013:
                    mem[_4102] = 0
                    mem[_4015 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _4015
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if ext_call.return_data[0] and _4013 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if ext_call.return_data[0] * _4013 / ext_call.return_data[0] == _4013:
                    mem[_4102] = ext_call.return_data[0] * _4013
                    mem[_4015 + 96] = ext_call.return_data[0] * _4013 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _4015
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
            if not _4038:
                mem[_4057] = 0
                mem[_4015 + 32] = 0 / 10^18
                mem[_4015 + 64] = _4013
                _4099 = mem[64]
                mem[64] = mem[64] + 32
                mem[_4099] = ext_call.return_data[0]
                _4109 = mem[64]
                mem[64] = mem[64] + 32
                mem[_4109] = 0
                _4110 = mem[64]
                mem[64] = mem[64] + 32
                _4114 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4114] = 23
                mem[_4114 + 32] = 'multiplication overflow'
                if not ext_call.return_data[0]:
                    mem[_4110] = 0
                    mem[_4015 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _4015
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not _4013:
                    mem[_4110] = 0
                    mem[_4015 + 96] = 0 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _4015
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if ext_call.return_data[0] and _4013 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if ext_call.return_data[0] * _4013 / ext_call.return_data[0] == _4013:
                    mem[_4110] = ext_call.return_data[0] * _4013
                    mem[_4015 + 96] = ext_call.return_data[0] * _4013 / 10^18
                    if idx >= mem[_227]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _227 + 32] = _4015
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
                    mem[idx + _4144 + 68] = mem[idx + _4114 + 32]
                    idx = idx + 32
                    continue 
                mem[_4144 + 91] = 0
                revert with memory
                  from mem[64]
                   len _4144 + -mem[64] + 100
            if _4058 and _4038 > -1 / _4058:
                revert with 'NH{q', 17
            if not _4058:
                revert with 'NH{q', 18
            if _4058 * _4038 / _4058 != _4038:
                _4078 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                s = 0
                while s < 23:
                    mem[s + _4078 + 68] = mem[s + _4063 + 32]
                    s = s + 32
                    continue 
                mem[_4078 + 91] = 0
                revert with memory
                  from mem[64]
                   len _4078 + -mem[64] + 100
            mem[_4057] = _4058 * _4038
            mem[_4015 + 32] = _4058 * _4038 / 10^18
            mem[_4015 + 64] = _4013
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
                mem[_4015 + 96] = 0 / 10^18
                if idx >= mem[_227]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _227 + 32] = _4015
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if not _4013:
                mem[_4129] = 0
                mem[_4015 + 96] = 0 / 10^18
                if idx >= mem[_227]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _227 + 32] = _4015
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if ext_call.return_data[0] and _4013 > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if ext_call.return_data[0] * _4013 / ext_call.return_data[0] == _4013:
                mem[_4129] = ext_call.return_data[0] * _4013
                mem[_4015 + 96] = ext_call.return_data[0] * _4013 / 10^18
                if idx >= mem[_227]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _227 + 32] = _4015
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _4170 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 23
            idx = 0
            while idx < 23:
                mem[idx + _4170 + 68] = mem[idx + _4132 + 32]
                idx = idx + 32
                continue 
            mem[_4170 + 91] = 0
            revert with memory
              from mem[64]
               len _4170 + -mem[64] + 100
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
