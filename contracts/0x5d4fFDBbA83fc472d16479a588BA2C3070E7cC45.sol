contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function onePair(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(arg1)
    staticcall arg1.allPairs(uint256 rg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function pairInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 0
    mem[320] = 96
    mem[352] = 96
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    mem[416] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[128] = ext_call.return_data[12 len 20]
    require ext_code.size(arg1)
    staticcall arg1.token1() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 416] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[160] = ext_call.return_data[12 len 20]
    require ext_code.size(mem[140 len 20])
    staticcall mem[140 len 20].decimals() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 416] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    mem[192] = ext_call.return_data[31 len 1]
    require ext_code.size(mem[172 len 20])
    staticcall mem[172 len 20].decimals() with:
            gas gas_remaining wei
    mem[(4 * ceil32(return_data.size)) + 416] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    mem[224] = ext_call.return_data[31 len 1]
    require ext_code.size(arg1)
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    mem[(6 * ceil32(return_data.size)) + 416 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    mem[384] = ext_call.return_data[92 len 4]
    mem[288] = ext_call.return_data[50 len 14]
    mem[256] = ext_call.return_data[18 len 14]
    mem[(7 * ceil32(return_data.size)) + 416] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(mem[140 len 20])
    staticcall mem[140 len 20].0x95d89b41 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(7 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (8 * ceil32(return_data.size)) + 416
    require return_data.size >= 32
    _29 = mem[(7 * ceil32(return_data.size)) + 416]
    require mem[(7 * ceil32(return_data.size)) + 416] <= test266151307()
    require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416] + 447 < (7 * ceil32(return_data.size)) + return_data.size + 416
    _30 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416] + 416]
    if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416] + 416] > test266151307():
        revert with 'NH{q', 65
    if (8 * ceil32(return_data.size)) + ceil32(ceil32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416] + 416])) + 417 > test266151307() or ceil32(ceil32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416] + 416])) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (8 * ceil32(return_data.size)) + ceil32(ceil32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416] + 416])) + 417
    mem[(8 * ceil32(return_data.size)) + 416] = _30
    require _29 + _30 + 32 <= return_data.size
    mem[(8 * ceil32(return_data.size)) + 448 len ceil32(_30)] = mem[(7 * ceil32(return_data.size)) + _29 + 448 len ceil32(_30)]
    if ceil32(_30) <= _30:
        mem[320] = (8 * ceil32(return_data.size)) + 416
        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(ext_call.return_data[12 len 20]))
        staticcall address(ext_call.return_data[12 len 20]).0x95d89b41 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _92 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _94 = mem[_92]
        require mem[_92] <= test266151307()
        require _92 + mem[_92] + 31 < _92 + return_data.size
        _96 = mem[_92 + mem[_92]]
        if mem[_92 + mem[_92]] > test266151307():
            revert with 'NH{q', 65
        if _92 + ceil32(return_data.size) + ceil32(ceil32(mem[_92 + mem[_92]])) + 1 > test266151307() or ceil32(ceil32(mem[_92 + mem[_92]])) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _92 + ceil32(return_data.size) + ceil32(ceil32(mem[_92 + mem[_92]])) + 1
        mem[_92 + ceil32(return_data.size)] = _96
        require _94 + _96 + 32 <= return_data.size
        mem[_92 + ceil32(return_data.size) + 32 len ceil32(_96)] = mem[_92 + _94 + 32 len ceil32(_96)]
        if ceil32(_96) > _96:
            mem[_92 + ceil32(return_data.size) + _96 + 32] = 0
        mem[352] = _92 + ceil32(return_data.size)
        mem[96] = arg1
        mem[mem[64]] = 32
        mem[mem[64] + 32] = arg1
        mem[mem[64] + 64] = mem[140 len 20]
        mem[mem[64] + 96] = mem[172 len 20]
        mem[mem[64] + 128] = mem[223 len 1]
        mem[mem[64] + 160] = mem[255 len 1]
        mem[mem[64] + 192] = mem[274 len 14]
        mem[mem[64] + 224] = mem[306 len 14]
        mem[mem[64] + 256] = 320
        mem[mem[64] + 352] = _30
        mem[mem[64] + 384 len ceil32(_30)] = mem[(8 * ceil32(return_data.size)) + 448 len ceil32(_30)]
        if ceil32(_30) > _30:
            mem[mem[64] + _30 + 384] = 0
        mem[mem[64] + 288] = ceil32(_30) + 352
        mem[mem[64] + ceil32(_30) + 384] = _96
        mem[mem[64] + ceil32(_30) + 416 len ceil32(_96)] = mem[_92 + ceil32(return_data.size) + 32 len ceil32(_96)]
        if ceil32(_96) > _96:
            mem[mem[64] + ceil32(_30) + _96 + 416] = 0
        return 32, address(arg1), 
               mem[mem[64] + 64 len 192],
               320,
               ceil32(_30) + 352,
               mem[412 len 4],
               _30,
               mem[mem[64] + 384 len ceil32(_30) + ceil32(_96) + 32]
    mem[(8 * ceil32(return_data.size)) + _30 + 448] = 0
    mem[320] = (8 * ceil32(return_data.size)) + 416
    mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(ext_call.return_data[12 len 20]))
    staticcall address(ext_call.return_data[12 len 20]).0x95d89b41 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _93 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _95 = mem[_93]
    require mem[_93] <= test266151307()
    require _93 + mem[_93] + 31 < _93 + return_data.size
    _97 = mem[_93 + mem[_93]]
    if mem[_93 + mem[_93]] > test266151307():
        revert with 'NH{q', 65
    if _93 + ceil32(return_data.size) + ceil32(ceil32(mem[_93 + mem[_93]])) + 1 > test266151307() or ceil32(ceil32(mem[_93 + mem[_93]])) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _93 + ceil32(return_data.size) + ceil32(ceil32(mem[_93 + mem[_93]])) + 1
    mem[_93 + ceil32(return_data.size)] = _97
    require _95 + _97 + 32 <= return_data.size
    mem[_93 + ceil32(return_data.size) + 32 len ceil32(_97)] = mem[_93 + _95 + 32 len ceil32(_97)]
    if ceil32(_97) > _97:
        mem[_93 + ceil32(return_data.size) + _97 + 32] = 0
    mem[352] = _93 + ceil32(return_data.size)
    mem[96] = arg1
    mem[mem[64]] = 32
    mem[mem[64] + 32] = arg1
    mem[mem[64] + 64] = mem[140 len 20]
    mem[mem[64] + 96] = mem[172 len 20]
    mem[mem[64] + 128] = mem[223 len 1]
    mem[mem[64] + 160] = mem[255 len 1]
    mem[mem[64] + 192] = mem[274 len 14]
    mem[mem[64] + 224] = mem[306 len 14]
    mem[mem[64] + 256] = 320
    mem[mem[64] + 352] = _30
    mem[mem[64] + 384 len ceil32(_30)] = mem[(8 * ceil32(return_data.size)) + 448 len ceil32(_30)]
    if ceil32(_30) > _30:
        mem[mem[64] + _30 + 384] = 0
    mem[mem[64] + 288] = ceil32(_30) + 352
    mem[mem[64] + ceil32(_30) + 384] = _97
    mem[mem[64] + ceil32(_30) + 416 len ceil32(_97)] = mem[_93 + ceil32(return_data.size) + 32 len ceil32(_97)]
    if ceil32(_97) > _97:
        mem[mem[64] + ceil32(_30) + _97 + 416] = 0
    return 32, address(arg1), 
           mem[mem[64] + 64 len 192],
           320,
           ceil32(_30) + 352,
           mem[412 len 4],
           _30,
           mem[mem[64] + 384 len ceil32(_30) + ceil32(_97) + 32]
}

function allPairs(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    mem[320] = 96
    mem[352] = 96
    mem[384] = 0
    mem[420] = arg2
    require ext_code.size(arg1)
    staticcall arg1.allPairs(uint256 rg1) with:
            gas gas_remaining wei
           args arg2
    mem[416] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 416] = 0xdc0a422900000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 420] = address(ext_call.return_data[0])
    require ext_code.size(this.address)
    staticcall this.address.0xdc0a4229 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _9 = mem[ceil32(return_data.size) + 416 len 4], address(ext_call.return_data[0]) << 64
    require mem[ceil32(return_data.size) + 416 len 4], address(ext_call.return_data[0]) << 64 <= test266151307()
    require return_data.size - mem[ceil32(return_data.size) + 416 len 4], address(ext_call.return_data[0]) << 64 >= 320
    if not bool((2 * ceil32(return_data.size)) + 736 <= test266151307()):
        revert with 'NH{q', 65
    mem[64] = (2 * ceil32(return_data.size)) + 736
    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 416 len 4], address(ext_call.return_data[0]) << 64 + 416] == mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 416 len 4], address(ext_call.return_data[0]) << 64 + 428 len 20]
    mem[(2 * ceil32(return_data.size)) + 416] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 416 len 4], address(ext_call.return_data[0]) << 64 + 416]
    require mem[ceil32(return_data.size) + _9 + 448] == mem[ceil32(return_data.size) + _9 + 460 len 20]
    mem[(2 * ceil32(return_data.size)) + 448] = mem[ceil32(return_data.size) + _9 + 448]
    require mem[ceil32(return_data.size) + _9 + 480] == mem[ceil32(return_data.size) + _9 + 492 len 20]
    mem[(2 * ceil32(return_data.size)) + 480] = mem[ceil32(return_data.size) + _9 + 480]
    require mem[ceil32(return_data.size) + _9 + 512] == mem[ceil32(return_data.size) + _9 + 543 len 1]
    mem[(2 * ceil32(return_data.size)) + 512] = mem[ceil32(return_data.size) + _9 + 512]
    require mem[ceil32(return_data.size) + _9 + 544] == mem[ceil32(return_data.size) + _9 + 575 len 1]
    mem[(2 * ceil32(return_data.size)) + 544] = mem[ceil32(return_data.size) + _9 + 544]
    require mem[ceil32(return_data.size) + _9 + 576] == mem[ceil32(return_data.size) + _9 + 594 len 14]
    mem[(2 * ceil32(return_data.size)) + 576] = mem[ceil32(return_data.size) + _9 + 576]
    require mem[ceil32(return_data.size) + _9 + 608] == mem[ceil32(return_data.size) + _9 + 626 len 14]
    mem[(2 * ceil32(return_data.size)) + 608] = mem[ceil32(return_data.size) + _9 + 608]
    _18 = mem[ceil32(return_data.size) + _9 + 640]
    require mem[ceil32(return_data.size) + _9 + 640] <= test266151307()
    require ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 640] + 447 < ceil32(return_data.size) + return_data.size + 416
    _19 = mem[ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 640] + 416]
    if mem[ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 640] + 416] > test266151307():
        revert with 'NH{q', 65
    if (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 640] + 416])) + 737 > test266151307() or ceil32(ceil32(mem[ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 640] + 416])) + 321 < 320:
        revert with 'NH{q', 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 640] + 416])) + 737
    mem[(2 * ceil32(return_data.size)) + 736] = mem[ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 640] + 416]
    require _9 + _18 + _19 + 32 <= return_data.size
    mem[(2 * ceil32(return_data.size)) + 768 len ceil32(_19)] = mem[ceil32(return_data.size) + _9 + _18 + 448 len ceil32(_19)]
    if ceil32(_19) <= _19:
        mem[(2 * ceil32(return_data.size)) + 640] = (2 * ceil32(return_data.size)) + 736
        _47 = mem[ceil32(return_data.size) + _9 + 672]
        require mem[ceil32(return_data.size) + _9 + 672] <= test266151307()
        require ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 672] + 447 < ceil32(return_data.size) + return_data.size + 416
        _49 = mem[ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 672] + 416]
        if mem[ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 672] + 416] > test266151307():
            revert with 'NH{q', 65
        _51 = mem[64]
        if mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 672] + 416])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 672] + 416])) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 672] + 416])) + 1
        mem[_51] = _49
        require _9 + _47 + _49 + 32 <= return_data.size
        mem[_51 + 32 len ceil32(_49)] = mem[ceil32(return_data.size) + _9 + _47 + 448 len ceil32(_49)]
        if ceil32(_49) <= _49:
            mem[(2 * ceil32(return_data.size)) + 672] = _51
            require mem[ceil32(return_data.size) + _9 + 704] == mem[ceil32(return_data.size) + _9 + 732 len 4]
            mem[(2 * ceil32(return_data.size)) + 704] = mem[ceil32(return_data.size) + _9 + 704]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[(2 * ceil32(return_data.size)) + 428 len 20]
            mem[mem[64] + 64] = mem[(2 * ceil32(return_data.size)) + 460 len 20]
            mem[mem[64] + 96] = mem[(2 * ceil32(return_data.size)) + 492 len 20]
            mem[mem[64] + 128] = mem[(2 * ceil32(return_data.size)) + 543 len 1]
            mem[mem[64] + 160] = mem[(2 * ceil32(return_data.size)) + 575 len 1]
            mem[mem[64] + 192] = mem[(2 * ceil32(return_data.size)) + 594 len 14]
            mem[mem[64] + 224] = mem[(2 * ceil32(return_data.size)) + 626 len 14]
            mem[mem[64] + 256] = 320
            _201 = mem[(2 * ceil32(return_data.size)) + 736]
            mem[mem[64] + 352] = mem[(2 * ceil32(return_data.size)) + 736]
            mem[mem[64] + 384 len ceil32(_201)] = mem[(2 * ceil32(return_data.size)) + 768 len ceil32(_201)]
            if ceil32(_201) <= _201:
                mem[mem[64] + 288] = ceil32(_201) + 352
                mem[mem[64] + ceil32(_201) + 384] = _49
                mem[mem[64] + ceil32(_201) + 416 len ceil32(_49)] = mem[_51 + 32 len ceil32(_49)]
                if ceil32(_49) > _49:
                    mem[mem[64] + ceil32(_201) + _49 + 416] = 0
                mem[mem[64] + 320] = mem[(2 * ceil32(return_data.size)) + 732 len 4]
                return 32, mem[mem[64] + 32 len 224], 
                       320,
                       ceil32(_201) + 352,
                       mem[mem[64] + 320 len ceil32(_201) + 64],
                       _49,
                       mem[mem[64] + ceil32(_201) + 416 len ceil32(_49)]
            mem[mem[64] + _201 + 384] = 0
            mem[mem[64] + 288] = ceil32(_201) + 352
            mem[mem[64] + ceil32(_201) + 384] = _49
            mem[mem[64] + ceil32(_201) + 416 len ceil32(_49)] = mem[_51 + 32 len ceil32(_49)]
            if ceil32(_49) > _49:
                mem[mem[64] + ceil32(_201) + _49 + 416] = 0
            mem[mem[64] + 320] = mem[(2 * ceil32(return_data.size)) + 732 len 4]
            return 32, mem[mem[64] + 32 len 224], 
                   320,
                   ceil32(_201) + 352,
                   mem[mem[64] + 320 len _201 + 64],
                   0,
                   mem[mem[64] + _201 + 416 len ceil32(_201) + ceil32(_49) - _201]
        mem[_51 + _49 + 32] = 0
        mem[(2 * ceil32(return_data.size)) + 672] = _51
        require mem[ceil32(return_data.size) + _9 + 704] == mem[ceil32(return_data.size) + _9 + 732 len 4]
        mem[(2 * ceil32(return_data.size)) + 704] = mem[ceil32(return_data.size) + _9 + 704]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[(2 * ceil32(return_data.size)) + 428 len 20]
        mem[mem[64] + 64] = mem[(2 * ceil32(return_data.size)) + 460 len 20]
        mem[mem[64] + 96] = mem[(2 * ceil32(return_data.size)) + 492 len 20]
        mem[mem[64] + 128] = mem[(2 * ceil32(return_data.size)) + 543 len 1]
        mem[mem[64] + 160] = mem[(2 * ceil32(return_data.size)) + 575 len 1]
        mem[mem[64] + 192] = mem[(2 * ceil32(return_data.size)) + 594 len 14]
        mem[mem[64] + 224] = mem[(2 * ceil32(return_data.size)) + 626 len 14]
        mem[mem[64] + 256] = 320
        _203 = mem[(2 * ceil32(return_data.size)) + 736]
        mem[mem[64] + 352] = mem[(2 * ceil32(return_data.size)) + 736]
        mem[mem[64] + 384 len ceil32(_203)] = mem[(2 * ceil32(return_data.size)) + 768 len ceil32(_203)]
        if ceil32(_203) <= _203:
            mem[mem[64] + 288] = ceil32(_203) + 352
            mem[mem[64] + ceil32(_203) + 384] = _49
            mem[mem[64] + ceil32(_203) + 416 len ceil32(_49)] = mem[_51 + 32 len ceil32(_49)]
            if ceil32(_49) > _49:
                mem[mem[64] + ceil32(_203) + _49 + 416] = 0
            mem[mem[64] + 320] = mem[(2 * ceil32(return_data.size)) + 732 len 4]
            return 32, mem[mem[64] + 32 len 224], 
                   320,
                   ceil32(_203) + 352,
                   mem[mem[64] + 320 len ceil32(_203) + 64],
                   _49,
                   mem[mem[64] + ceil32(_203) + 416 len ceil32(_49)]
        mem[mem[64] + _203 + 384] = 0
        mem[mem[64] + 288] = ceil32(_203) + 352
        mem[mem[64] + ceil32(_203) + 384] = _49
        mem[mem[64] + ceil32(_203) + 416 len ceil32(_49)] = mem[_51 + 32 len ceil32(_49)]
        if ceil32(_49) > _49:
            mem[mem[64] + ceil32(_203) + _49 + 416] = 0
        mem[mem[64] + 320] = mem[(2 * ceil32(return_data.size)) + 732 len 4]
        return 32, mem[mem[64] + 32 len 224], 
               320,
               ceil32(_203) + 352,
               mem[mem[64] + 320 len _203 + 64],
               0,
               mem[mem[64] + _203 + 416 len ceil32(_203) + ceil32(_49) - _203]
    mem[(2 * ceil32(return_data.size)) + _19 + 768] = 0
    mem[(2 * ceil32(return_data.size)) + 640] = (2 * ceil32(return_data.size)) + 736
    _48 = mem[ceil32(return_data.size) + _9 + 672]
    require mem[ceil32(return_data.size) + _9 + 672] <= test266151307()
    require ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 672] + 447 < ceil32(return_data.size) + return_data.size + 416
    _50 = mem[ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 672] + 416]
    if mem[ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 672] + 416] > test266151307():
        revert with 'NH{q', 65
    _52 = mem[64]
    if mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 672] + 416])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 672] + 416])) + 1 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 672] + 416])) + 1
    mem[_52] = _50
    require _9 + _48 + _50 + 32 <= return_data.size
    mem[_52 + 32 len ceil32(_50)] = mem[ceil32(return_data.size) + _9 + _48 + 448 len ceil32(_50)]
    if ceil32(_50) <= _50:
        mem[(2 * ceil32(return_data.size)) + 672] = _52
        require mem[ceil32(return_data.size) + _9 + 704] == mem[ceil32(return_data.size) + _9 + 732 len 4]
        mem[(2 * ceil32(return_data.size)) + 704] = mem[ceil32(return_data.size) + _9 + 704]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[(2 * ceil32(return_data.size)) + 428 len 20]
        mem[mem[64] + 64] = mem[(2 * ceil32(return_data.size)) + 460 len 20]
        mem[mem[64] + 96] = mem[(2 * ceil32(return_data.size)) + 492 len 20]
        mem[mem[64] + 128] = mem[(2 * ceil32(return_data.size)) + 543 len 1]
        mem[mem[64] + 160] = mem[(2 * ceil32(return_data.size)) + 575 len 1]
        mem[mem[64] + 192] = mem[(2 * ceil32(return_data.size)) + 594 len 14]
        mem[mem[64] + 224] = mem[(2 * ceil32(return_data.size)) + 626 len 14]
        mem[mem[64] + 256] = 320
        _202 = mem[(2 * ceil32(return_data.size)) + 736]
        mem[mem[64] + 352] = mem[(2 * ceil32(return_data.size)) + 736]
        mem[mem[64] + 384 len ceil32(_202)] = mem[(2 * ceil32(return_data.size)) + 768 len ceil32(_202)]
        if ceil32(_202) <= _202:
            mem[mem[64] + 288] = ceil32(_202) + 352
            mem[mem[64] + ceil32(_202) + 384] = _50
            mem[mem[64] + ceil32(_202) + 416 len ceil32(_50)] = mem[_52 + 32 len ceil32(_50)]
            if ceil32(_50) > _50:
                mem[mem[64] + ceil32(_202) + _50 + 416] = 0
            mem[mem[64] + 320] = mem[(2 * ceil32(return_data.size)) + 732 len 4]
            return 32, mem[mem[64] + 32 len 224], 
                   320,
                   ceil32(_202) + 352,
                   mem[mem[64] + 320 len ceil32(_202) + 64],
                   _50,
                   mem[mem[64] + ceil32(_202) + 416 len ceil32(_50)]
        mem[mem[64] + _202 + 384] = 0
        mem[mem[64] + 288] = ceil32(_202) + 352
        mem[mem[64] + ceil32(_202) + 384] = _50
        mem[mem[64] + ceil32(_202) + 416 len ceil32(_50)] = mem[_52 + 32 len ceil32(_50)]
        if ceil32(_50) > _50:
            mem[mem[64] + ceil32(_202) + _50 + 416] = 0
        mem[mem[64] + 320] = mem[(2 * ceil32(return_data.size)) + 732 len 4]
        return 32, mem[mem[64] + 32 len 224], 
               320,
               ceil32(_202) + 352,
               mem[mem[64] + 320 len _202 + 64],
               0,
               mem[mem[64] + _202 + 416 len ceil32(_202) + ceil32(_50) - _202]
    mem[_52 + _50 + 32] = 0
    mem[(2 * ceil32(return_data.size)) + 672] = _52
    require mem[ceil32(return_data.size) + _9 + 704] == mem[ceil32(return_data.size) + _9 + 732 len 4]
    mem[(2 * ceil32(return_data.size)) + 704] = mem[ceil32(return_data.size) + _9 + 704]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[(2 * ceil32(return_data.size)) + 428 len 20]
    mem[mem[64] + 64] = mem[(2 * ceil32(return_data.size)) + 460 len 20]
    mem[mem[64] + 96] = mem[(2 * ceil32(return_data.size)) + 492 len 20]
    mem[mem[64] + 128] = mem[(2 * ceil32(return_data.size)) + 543 len 1]
    mem[mem[64] + 160] = mem[(2 * ceil32(return_data.size)) + 575 len 1]
    mem[mem[64] + 192] = mem[(2 * ceil32(return_data.size)) + 594 len 14]
    mem[mem[64] + 224] = mem[(2 * ceil32(return_data.size)) + 626 len 14]
    mem[mem[64] + 256] = 320
    _204 = mem[(2 * ceil32(return_data.size)) + 736]
    mem[mem[64] + 352] = mem[(2 * ceil32(return_data.size)) + 736]
    mem[mem[64] + 384 len ceil32(_204)] = mem[(2 * ceil32(return_data.size)) + 768 len ceil32(_204)]
    if ceil32(_204) <= _204:
        mem[mem[64] + 288] = ceil32(_204) + 352
        mem[mem[64] + ceil32(_204) + 384] = _50
        mem[mem[64] + ceil32(_204) + 416 len ceil32(_50)] = mem[_52 + 32 len ceil32(_50)]
        if ceil32(_50) > _50:
            mem[mem[64] + ceil32(_204) + _50 + 416] = 0
        mem[mem[64] + 320] = mem[(2 * ceil32(return_data.size)) + 732 len 4]
        return 32, mem[mem[64] + 32 len 224], 
               320,
               ceil32(_204) + 352,
               mem[mem[64] + 320 len ceil32(_204) + 64],
               _50,
               mem[mem[64] + ceil32(_204) + 416 len ceil32(_50)]
    mem[mem[64] + _204 + 384] = 0
    mem[mem[64] + 288] = ceil32(_204) + 352
    mem[mem[64] + ceil32(_204) + 384] = _50
    mem[mem[64] + ceil32(_204) + 416 len ceil32(_50)] = mem[_52 + 32 len ceil32(_50)]
    if ceil32(_50) > _50:
        mem[mem[64] + ceil32(_204) + _50 + 416] = 0
    mem[mem[64] + 320] = mem[(2 * ceil32(return_data.size)) + 732 len 4]
    return 32, mem[mem[64] + 32 len 224], 
           320,
           ceil32(_204) + 352,
           mem[mem[64] + 320 len _204 + 64],
           0,
           mem[mem[64] + _204 + 416 len ceil32(_204) + ceil32(_50) - _204]
}



}
