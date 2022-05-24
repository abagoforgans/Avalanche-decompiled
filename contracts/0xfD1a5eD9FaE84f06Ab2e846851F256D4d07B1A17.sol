contract main {




// =====================  Runtime code  =====================


#
#  - sub_9a10e958(?)
#  - sub_d40c61a1(?)
#  - sub_e5c0f84c(?)
#
address owner;
address nominatedOwner;
address stor2;
address sub_0a25ef4bAddress;
address fxs_address;
address sub_55319817Address;
address routerAddress;
address sub_1baf1682Address;
address sub_b497d8caAddress;
address sub_8292fd84Address;
uint256 sub_19421ca6;
uint256 PRICE_PRECISION;
uint256 sub_462d3a49;

function sub_0a25ef4b(?) payable {
    return sub_0a25ef4bAddress
}

function sub_19421ca6(?) payable {
    return sub_19421ca6
}

function sub_1baf1682(?) payable {
    return sub_1baf1682Address
}

function sub_462d3a49(?) payable {
    return sub_462d3a49
}

function nominatedOwner() payable {
    return nominatedOwner
}

function sub_55319817(?) payable {
    return sub_55319817Address
}

function sub_8292fd84(?) payable {
    return sub_8292fd84Address
}

function owner() payable {
    return owner
}

function PRICE_PRECISION() payable {
    return PRICE_PRECISION
}

function sub_b497d8ca(?) payable {
    return sub_b497d8caAddress
}

function fxs_address() payable {
    return fxs_address
}

function router() payable {
    return routerAddress
}

function _fallback() payable {
    revert
}

function setTimelock(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if stor2 != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You are not an owner or the governance timelock'
    stor2 = arg1
}

function nominateNewOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the contract owner may perform this action'
    nominatedOwner = arg1
    emit OwnerNominated(arg1);
}

function acceptOwnership() payable {
    if nominatedOwner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'You must be nominated before you can accept ownership'
    emit OwnerChanged(owner, nominatedOwner);
    owner = nominatedOwner
    nominatedOwner = 0
}

function sub_e194c7c5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        if stor2 != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You are not an owner or the governance timelock'
    sub_55319817Address = address(arg1)
}

function sub_2ff7455f(?) payable {
    require calldata.size - 4 >= 32
    staticcall sub_b497d8caAddress.positions(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 384
    require ext_call.return_data[0] == ext_call.return_data[20 len 12]
    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
    require ext_call.return_data[64] == ext_call.return_data[76 len 20]
    require ext_call.return_data[96] == ext_call.return_data[108 len 20]
    require ext_call.return_data[128] == ext_call.return_data[157 len 3]
    require ext_call.return_data[160] == ('signextend', 2, ('ext_call.return_data', 160, 32))
    require ext_call.return_data[192] == ('signextend', 2, ('ext_call.return_data', 192, 32))
    require ext_call.return_data[224] == ext_call.return_data[240 len 16]
    require ext_call.return_data[320] == ext_call.return_data[336 len 16]
    require ext_call.return_data[352] == ext_call.return_data[368 len 16]
    staticcall address(ext_call.return_data[64]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    staticcall address(ext_call.return_data[96]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    return ext_call.return_data[64] << 192, 
           address(ext_call.return_data[96]),
           ext_call.return_data[128] << 232,
           ('signextend', 2, ('signextend', 2, ('ext_call.return_data', 160, 32))),
           ('signextend', 2, ('signextend', 2, ('ext_call.return_data', 192, 32))),
           ext_call.return_data[224] << 128,
           ext_call.return_data[0] << 248,
           ext_call.return_data[0] << 248,
           uint8(ext_call.return_data[0])
}

function sub_557b4a09(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[96] = 0
    mem[128] = 96
    mem[160] = 96
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    mem[320] = 0
    mem[352] = 0
    mem[384] = 0
    staticcall address(arg1).getReserves() with:
            gas gas_remaining wei
    mem[416 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    staticcall address(arg1).token0() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 416] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(arg1).token1() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 416] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(4 * ceil32(return_data.size)) + 416] = address(arg1)
    mem[(4 * ceil32(return_data.size)) + 736] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
    staticcall address(arg1).name() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(4 * ceil32(return_data.size)) + 736 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (6 * ceil32(return_data.size)) + 736
    require return_data.size >= 32
    _20 = mem[(4 * ceil32(return_data.size)) + 736]
    require mem[(4 * ceil32(return_data.size)) + 736] <= test266151307()
    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 736] + 767 < (4 * ceil32(return_data.size)) + return_data.size + 736
    _21 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 736] + 736]
    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 736] + 736] > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 736] + 736])) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 736] + 736])) + 737 > test266151307():
        revert with 'NH{q', 65
    mem[64] = (6 * ceil32(return_data.size)) + ceil32(ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 736] + 736])) + 737
    mem[(6 * ceil32(return_data.size)) + 736] = _21
    require _20 + _21 + 32 <= return_data.size
    mem[(6 * ceil32(return_data.size)) + 768 len ceil32(_21)] = mem[(4 * ceil32(return_data.size)) + _20 + 768 len ceil32(_21)]
    if ceil32(_21) <= _21:
        mem[(4 * ceil32(return_data.size)) + 448] = (6 * ceil32(return_data.size)) + 736
        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        staticcall address(arg1).0x95d89b41 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _261 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _265 = mem[_261]
        require mem[_261] <= test266151307()
        require _261 + mem[_261] + 31 < _261 + return_data.size
        _267 = mem[_261 + mem[_261]]
        if mem[_261 + mem[_261]] > test266151307():
            revert with 'NH{q', 65
        if ceil32(ceil32(mem[_261 + mem[_261]])) + 1 < 0 or _261 + ceil32(return_data.size) + ceil32(ceil32(mem[_261 + mem[_261]])) + 1 > test266151307():
            revert with 'NH{q', 65
        mem[64] = _261 + ceil32(return_data.size) + ceil32(ceil32(mem[_261 + mem[_261]])) + 1
        mem[_261 + ceil32(return_data.size)] = _267
        require _265 + _267 + 32 <= return_data.size
        mem[_261 + ceil32(return_data.size) + 32 len ceil32(_267)] = mem[_261 + _265 + 32 len ceil32(_267)]
        if ceil32(_267) <= _267:
            mem[(4 * ceil32(return_data.size)) + 480] = _261 + ceil32(return_data.size)
            mem[(4 * ceil32(return_data.size)) + 512] = address(ext_call.return_data[0])
            mem[(4 * ceil32(return_data.size)) + 544] = address(ext_call.return_data[0])
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _499 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_499] == mem[_499 + 31 len 1]
            mem[(4 * ceil32(return_data.size)) + 576] = mem[_499 + 31 len 1]
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _515 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_515] == mem[_515 + 31 len 1]
            mem[(4 * ceil32(return_data.size)) + 608] = mem[_515 + 31 len 1]
            mem[(4 * ceil32(return_data.size)) + 640] = Mask(112, 0, ext_call.return_data[0])
            mem[(4 * ceil32(return_data.size)) + 672] = Mask(112, 0, ext_call.return_data[32])
            staticcall address(arg1).0x18160ddd with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _531 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[(4 * ceil32(return_data.size)) + 704] = mem[_531]
        else:
            mem[_261 + ceil32(return_data.size) + _267 + 32] = 0
            mem[(4 * ceil32(return_data.size)) + 480] = _261 + ceil32(return_data.size)
            mem[(4 * ceil32(return_data.size)) + 512] = address(ext_call.return_data[0])
            mem[(4 * ceil32(return_data.size)) + 544] = address(ext_call.return_data[0])
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _505 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_505] == mem[_505 + 31 len 1]
            mem[(4 * ceil32(return_data.size)) + 576] = mem[_505 + 31 len 1]
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _521 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_521] == mem[_521 + 31 len 1]
            mem[(4 * ceil32(return_data.size)) + 608] = mem[_521 + 31 len 1]
            mem[(4 * ceil32(return_data.size)) + 640] = Mask(112, 0, ext_call.return_data[0])
            mem[(4 * ceil32(return_data.size)) + 672] = Mask(112, 0, ext_call.return_data[32])
            staticcall address(arg1).0x18160ddd with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _537 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[(4 * ceil32(return_data.size)) + 704] = mem[_537]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = uint64(arg1) << 96
        mem[mem[64] + 64] = 320
        mem[mem[64] + 352] = _21
        mem[mem[64] + 384 len ceil32(_21)] = mem[(6 * ceil32(return_data.size)) + 768 len ceil32(_21)]
        if ceil32(_21) > _21:
            mem[mem[64] + _21 + 384] = 0
        mem[mem[64] + 96] = ceil32(_21) + 352
        mem[ceil32(_21) + mem[64] + 384] = _267
        mem[ceil32(_21) + mem[64] + 416 len ceil32(_267)] = mem[_261 + ceil32(return_data.size) + 32 len ceil32(_267)]
        if ceil32(_267) > _267:
            mem[ceil32(_21) + mem[64] + _267 + 416] = 0
        mem[mem[64] + 128] = uint64(ext_call.return_data[0]) << 96
        mem[mem[64] + 160] = uint64(ext_call.return_data[0]) << 96
        mem[mem[64] + 192] = mem[(4 * ceil32(return_data.size)) + 576]
        mem[mem[64] + 224] = mem[(4 * ceil32(return_data.size)) + 608]
        mem[mem[64] + 256] = Mask(112, 0, ext_call.return_data[0])
        mem[mem[64] + 288] = Mask(112, 0, ext_call.return_data[32])
        mem[mem[64] + 320] = mem[(4 * ceil32(return_data.size)) + 704]
        return 32, arg1 << 192, 
               320,
               ceil32(_21) + 352,
               ext_call.return_data[0] << 192,
               ext_call.return_data[0] << 192,
               mem[mem[64] + 192 len 64],
               ext_call.return_data[0] << 144,
               ext_call.return_data[32] << 144,
               mem[mem[64] + 320],
               _21,
               mem[mem[64] + 384 len ceil32(_267) + ceil32(_21) + 32]
    mem[(6 * ceil32(return_data.size)) + _21 + 768] = 0
    mem[(4 * ceil32(return_data.size)) + 448] = (6 * ceil32(return_data.size)) + 736
    mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    staticcall address(arg1).0x95d89b41 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _264 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _266 = mem[_264]
    require mem[_264] <= test266151307()
    require _264 + mem[_264] + 31 < _264 + return_data.size
    _269 = mem[_264 + mem[_264]]
    if mem[_264 + mem[_264]] > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(mem[_264 + mem[_264]])) + 1 < 0 or _264 + ceil32(return_data.size) + ceil32(ceil32(mem[_264 + mem[_264]])) + 1 > test266151307():
        revert with 'NH{q', 65
    mem[64] = _264 + ceil32(return_data.size) + ceil32(ceil32(mem[_264 + mem[_264]])) + 1
    mem[_264 + ceil32(return_data.size)] = _269
    require _266 + _269 + 32 <= return_data.size
    mem[_264 + ceil32(return_data.size) + 32 len ceil32(_269)] = mem[_264 + _266 + 32 len ceil32(_269)]
    if ceil32(_269) <= _269:
        mem[(4 * ceil32(return_data.size)) + 480] = _264 + ceil32(return_data.size)
        mem[(4 * ceil32(return_data.size)) + 512] = address(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 544] = address(ext_call.return_data[0])
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _502 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_502] == mem[_502 + 31 len 1]
        mem[(4 * ceil32(return_data.size)) + 576] = mem[_502 + 31 len 1]
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _518 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_518] == mem[_518 + 31 len 1]
        mem[(4 * ceil32(return_data.size)) + 608] = mem[_518 + 31 len 1]
        mem[(4 * ceil32(return_data.size)) + 640] = Mask(112, 0, ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 672] = Mask(112, 0, ext_call.return_data[32])
        staticcall address(arg1).0x18160ddd with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _534 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[(4 * ceil32(return_data.size)) + 704] = mem[_534]
    else:
        mem[_264 + ceil32(return_data.size) + _269 + 32] = 0
        mem[(4 * ceil32(return_data.size)) + 480] = _264 + ceil32(return_data.size)
        mem[(4 * ceil32(return_data.size)) + 512] = address(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 544] = address(ext_call.return_data[0])
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _506 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_506] == mem[_506 + 31 len 1]
        mem[(4 * ceil32(return_data.size)) + 576] = mem[_506 + 31 len 1]
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _522 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_522] == mem[_522 + 31 len 1]
        mem[(4 * ceil32(return_data.size)) + 608] = mem[_522 + 31 len 1]
        mem[(4 * ceil32(return_data.size)) + 640] = Mask(112, 0, ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 672] = Mask(112, 0, ext_call.return_data[32])
        staticcall address(arg1).0x18160ddd with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _538 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[(4 * ceil32(return_data.size)) + 704] = mem[_538]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = uint64(arg1) << 96
    mem[mem[64] + 64] = 320
    mem[mem[64] + 352] = _21
    mem[mem[64] + 384 len ceil32(_21)] = mem[(6 * ceil32(return_data.size)) + 768 len ceil32(_21)]
    if ceil32(_21) > _21:
        mem[mem[64] + _21 + 384] = 0
    mem[mem[64] + 96] = ceil32(_21) + 352
    mem[ceil32(_21) + mem[64] + 384] = _269
    mem[ceil32(_21) + mem[64] + 416 len ceil32(_269)] = mem[_264 + ceil32(return_data.size) + 32 len ceil32(_269)]
    if ceil32(_269) > _269:
        mem[ceil32(_21) + mem[64] + _269 + 416] = 0
    mem[mem[64] + 128] = uint64(ext_call.return_data[0]) << 96
    mem[mem[64] + 160] = uint64(ext_call.return_data[0]) << 96
    mem[mem[64] + 192] = mem[(4 * ceil32(return_data.size)) + 576]
    mem[mem[64] + 224] = mem[(4 * ceil32(return_data.size)) + 608]
    mem[mem[64] + 256] = Mask(112, 0, ext_call.return_data[0])
    mem[mem[64] + 288] = Mask(112, 0, ext_call.return_data[32])
    mem[mem[64] + 320] = mem[(4 * ceil32(return_data.size)) + 704]
    return 32, arg1 << 192, 
           320,
           ceil32(_21) + 352,
           ext_call.return_data[0] << 192,
           ext_call.return_data[0] << 192,
           mem[mem[64] + 192 len 64],
           ext_call.return_data[0] << 144,
           ext_call.return_data[32] << 144,
           mem[mem[64] + 320],
           _21,
           mem[mem[64] + 384 len ceil32(_269) + ceil32(_21) + 32]
}



}
