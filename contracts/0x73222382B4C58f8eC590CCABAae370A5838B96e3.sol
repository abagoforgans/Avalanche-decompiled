contract main {




// =====================  Runtime code  =====================


#
#  - JustGo(address arg1, address arg2, address arg3, address arg4)
#  - _fallback()
#
address stor0;
address WETHAddress;
mapping of uint8 stor2;

function WETH() {
    return WETHAddress
}

function setAdmin(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor0 != msg.sender:
        revert with 0, 'only self can do.'
    stor2[address(arg1)] = uint8(arg2)
}

function sub_dcd8f5d0(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    mem[96] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x95d89b41 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= test266151307()
    require mem[96] + 127 < return_data.size + 96
    _5 = mem[mem[96] + 96]
    if mem[mem[96] + 96] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[mem[96] + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[96] + 96])) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96] + 96])) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + _5 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_5)] = mem[_4 + 128 len ceil32(_5)]
    if ceil32(_5) <= _5:
        require ext_code.size(address(arg2))
        staticcall address(arg2).0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _79 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _81 = mem[_79]
        require mem[_79] == mem[_79 + 31 len 1]
        mem[mem[64] + 4] = WETHAddress
        mem[mem[64] + 36] = address(arg2)
        require ext_code.size(address(arg1))
        staticcall address(arg1).getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args WETHAddress, address(arg2)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _87 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _89 = mem[_87]
        require mem[_87] == mem[_87 + 12 len 20]
        if not mem[_87 + 12 len 20]:
            _93 = mem[64]
            mem[mem[64]] = 128
            mem[mem[64] + 128] = _5
            mem[mem[64] + 160 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
            if ceil32(_5) <= _5:
                mem[mem[64] + 64] = address(_89)
                mem[mem[64] + 96] = 0
                return 128, _81 << 248, address(_89), 0, _5, mem[mem[64] + 160 len ceil32(_5)]
            mem[mem[64] + _5 + 160] = 0
            mem[mem[64] + 32] = uint8(_81)
            mem[_93 + 64] = address(_89)
            mem[_93 + 96] = 0
            return memory
              from mem[64]
               len ceil32(_5) + _93 + -mem[64] + 160
        require ext_code.size(mem[_87 + 12 len 20])
        staticcall mem[_87 + 12 len 20].token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _96 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _100 = mem[_96]
        require mem[_96] == mem[_96 + 12 len 20]
        require ext_code.size(address(_89))
        staticcall address(_89).getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _110 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _115 = mem[_110]
        require mem[_110] == mem[_110 + 18 len 14]
        _117 = mem[_110 + 32]
        require mem[_110 + 32] == mem[_110 + 50 len 14]
        require mem[_110 + 64] == mem[_110 + 92 len 4]
        if arg3 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
            revert with 0, 17
        if address(arg2) == address(_100):
            if 997 * arg3 and mem[_110 + 50 len 14] > -1 / 997 * arg3:
                revert with 0, 17
            if mem[_110 + 18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if 1000 * mem[_110 + 18 len 14] > !(997 * arg3):
                revert with 0, 17
            if not (1000 * mem[_110 + 18 len 14]) + (997 * arg3):
                revert with 0, 18
            _121 = mem[64]
            mem[mem[64]] = 128
            mem[mem[64] + 128] = _5
            mem[mem[64] + 160 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
            if ceil32(_5) <= _5:
                mem[mem[64] + 64] = address(_89)
                mem[mem[64] + 96] = 997 * arg3 * Mask(112, 0, _117) / (1000 * Mask(112, 0, _115)) + (997 * arg3)
                return Array(len=_5, data=mem[mem[64] + 160 len ceil32(_5)]), 
                       _81 << 248,
                       address(_89),
                       997 * arg3 * Mask(112, 0, _117) / (1000 * Mask(112, 0, _115)) + (997 * arg3)
            mem[mem[64] + _5 + 160] = 0
            mem[mem[64] + 32] = uint8(_81)
            mem[_121 + 64] = address(_89)
            mem[_121 + 96] = 997 * arg3 * Mask(112, 0, _117) / (1000 * Mask(112, 0, _115)) + (997 * arg3)
            return memory
              from mem[64]
               len ceil32(_5) + _121 + -mem[64] + 160
        if 997 * arg3 and mem[_110 + 18 len 14] > -1 / 997 * arg3:
            revert with 0, 17
        if mem[_110 + 50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
            revert with 0, 17
        if 1000 * mem[_110 + 50 len 14] > !(997 * arg3):
            revert with 0, 17
        if not (1000 * mem[_110 + 50 len 14]) + (997 * arg3):
            revert with 0, 18
        _122 = mem[64]
        mem[mem[64]] = 128
        mem[mem[64] + 128] = _5
        mem[mem[64] + 160 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
        if ceil32(_5) <= _5:
            mem[mem[64] + 64] = address(_89)
            mem[mem[64] + 96] = 997 * arg3 * Mask(112, 0, _115) / (1000 * Mask(112, 0, _117)) + (997 * arg3)
            return Array(len=_5, data=mem[mem[64] + 160 len ceil32(_5)]), 
                   _81 << 248,
                   address(_89),
                   997 * arg3 * Mask(112, 0, _115) / (1000 * Mask(112, 0, _117)) + (997 * arg3)
        mem[mem[64] + _5 + 160] = 0
        mem[mem[64] + 32] = uint8(_81)
        mem[_122 + 64] = address(_89)
        mem[_122 + 96] = 997 * arg3 * Mask(112, 0, _115) / (1000 * Mask(112, 0, _117)) + (997 * arg3)
        return memory
          from mem[64]
           len ceil32(_5) + _122 + -mem[64] + 160
    mem[ceil32(return_data.size) + _5 + 128] = 0
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x313ce567 with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _80 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _82 = mem[_80]
    require mem[_80] == mem[_80 + 31 len 1]
    mem[mem[64] + 4] = WETHAddress
    mem[mem[64] + 36] = address(arg2)
    require ext_code.size(address(arg1))
    staticcall address(arg1).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args WETHAddress, address(arg2)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _88 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _90 = mem[_88]
    require mem[_88] == mem[_88 + 12 len 20]
    if not mem[_88 + 12 len 20]:
        _97 = mem[64]
        mem[mem[64]] = 128
        mem[mem[64] + 128] = _5
        mem[mem[64] + 160 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
        if ceil32(_5) <= _5:
            mem[mem[64] + 64] = address(_90)
            mem[mem[64] + 96] = 0
            return 128, _82 << 248, address(_90), 0, _5, mem[mem[64] + 160 len ceil32(_5)]
        mem[mem[64] + _5 + 160] = 0
        mem[mem[64] + 32] = uint8(_82)
        mem[_97 + 64] = address(_90)
        mem[_97 + 96] = 0
        return memory
          from mem[64]
           len ceil32(_5) + _97 + -mem[64] + 160
    require ext_code.size(mem[_88 + 12 len 20])
    staticcall mem[_88 + 12 len 20].token0() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _99 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _102 = mem[_99]
    require mem[_99] == mem[_99 + 12 len 20]
    require ext_code.size(address(_90))
    staticcall address(_90).getReserves() with:
            gas gas_remaining wei
    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _113 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 96
    _116 = mem[_113]
    require mem[_113] == mem[_113 + 18 len 14]
    _118 = mem[_113 + 32]
    require mem[_113 + 32] == mem[_113 + 50 len 14]
    require mem[_113 + 64] == mem[_113 + 92 len 4]
    if arg3 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
        revert with 0, 17
    if address(arg2) == address(_102):
        if 997 * arg3 and mem[_113 + 50 len 14] > -1 / 997 * arg3:
            revert with 0, 17
        if mem[_113 + 18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
            revert with 0, 17
        if 1000 * mem[_113 + 18 len 14] > !(997 * arg3):
            revert with 0, 17
        if not (1000 * mem[_113 + 18 len 14]) + (997 * arg3):
            revert with 0, 18
        _123 = mem[64]
        mem[mem[64]] = 128
        mem[mem[64] + 128] = _5
        mem[mem[64] + 160 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
        if ceil32(_5) <= _5:
            mem[mem[64] + 64] = address(_90)
            mem[mem[64] + 96] = 997 * arg3 * Mask(112, 0, _118) / (1000 * Mask(112, 0, _116)) + (997 * arg3)
            return Array(len=_5, data=mem[mem[64] + 160 len ceil32(_5)]), 
                   _82 << 248,
                   address(_90),
                   997 * arg3 * Mask(112, 0, _118) / (1000 * Mask(112, 0, _116)) + (997 * arg3)
        mem[mem[64] + _5 + 160] = 0
        mem[mem[64] + 32] = uint8(_82)
        mem[_123 + 64] = address(_90)
        mem[_123 + 96] = 997 * arg3 * Mask(112, 0, _118) / (1000 * Mask(112, 0, _116)) + (997 * arg3)
        return memory
          from mem[64]
           len ceil32(_5) + _123 + -mem[64] + 160
    if 997 * arg3 and mem[_113 + 18 len 14] > -1 / 997 * arg3:
        revert with 0, 17
    if mem[_113 + 50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
        revert with 0, 17
    if 1000 * mem[_113 + 50 len 14] > !(997 * arg3):
        revert with 0, 17
    if not (1000 * mem[_113 + 50 len 14]) + (997 * arg3):
        revert with 0, 18
    _124 = mem[64]
    mem[mem[64]] = 128
    mem[mem[64] + 128] = _5
    mem[mem[64] + 160 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
    if ceil32(_5) <= _5:
        mem[mem[64] + 64] = address(_90)
        mem[mem[64] + 96] = 997 * arg3 * Mask(112, 0, _116) / (1000 * Mask(112, 0, _118)) + (997 * arg3)
        return Array(len=_5, data=mem[mem[64] + 160 len ceil32(_5)]), 
               _82 << 248,
               address(_90),
               997 * arg3 * Mask(112, 0, _116) / (1000 * Mask(112, 0, _118)) + (997 * arg3)
    mem[mem[64] + _5 + 160] = 0
    mem[mem[64] + 32] = uint8(_82)
    mem[_124 + 64] = address(_90)
    mem[_124 + 96] = 997 * arg3 * Mask(112, 0, _116) / (1000 * Mask(112, 0, _118)) + (997 * arg3)
    return memory
      from mem[64]
       len ceil32(_5) + _124 + -mem[64] + 160
}

function getProfit(address arg1, address arg2, address arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    mem[96] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg3)
    staticcall arg3.0x95d89b41 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= test266151307()
    require mem[96] + 127 < return_data.size + 96
    _5 = mem[mem[96] + 96]
    if mem[mem[96] + 96] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[mem[96] + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[96] + 96])) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96] + 96])) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + _5 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_5)] = mem[_4 + 128 len ceil32(_5)]
    if ceil32(_5) <= _5:
        require ext_code.size(arg3)
        staticcall arg3.0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _87 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _89 = mem[_87]
        require mem[_87] == mem[_87 + 31 len 1]
        mem[mem[64] + 4] = arg1
        require ext_code.size(arg3)
        staticcall arg3.0x70a08231 with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _95 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _97 = mem[_95]
        if mem[_95] > !arg4:
            revert with 0, 17
        mem[mem[64] + 4] = WETHAddress
        mem[mem[64] + 36] = arg3
        require ext_code.size(arg2)
        staticcall arg2.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args WETHAddress, arg3
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _103 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _105 = mem[_103]
        require mem[_103] == mem[_103 + 12 len 20]
        if not mem[_103 + 12 len 20]:
            _109 = mem[64]
            mem[mem[64]] = 128
            mem[mem[64] + 128] = _5
            mem[mem[64] + 160 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
            if ceil32(_5) <= _5:
                mem[mem[64] + 64] = address(_105)
                mem[mem[64] + 96] = 0
                return 128, _89 << 248, address(_105), 0, _5, mem[mem[64] + 160 len ceil32(_5)]
            mem[mem[64] + _5 + 160] = 0
            mem[mem[64] + 32] = uint8(_89)
            mem[_109 + 64] = address(_105)
            mem[_109 + 96] = 0
            return memory
              from mem[64]
               len ceil32(_5) + _109 + -mem[64] + 160
        require ext_code.size(mem[_103 + 12 len 20])
        staticcall mem[_103 + 12 len 20].token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _112 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _116 = mem[_112]
        require mem[_112] == mem[_112 + 12 len 20]
        require ext_code.size(address(_105))
        staticcall address(_105).getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _126 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _131 = mem[_126]
        require mem[_126] == mem[_126 + 18 len 14]
        _133 = mem[_126 + 32]
        require mem[_126 + 32] == mem[_126 + 50 len 14]
        require mem[_126 + 64] == mem[_126 + 92 len 4]
        if _97 + arg4 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
            revert with 0, 17
        if arg3 == address(_116):
            if (997 * _97) + (997 * arg4) and mem[_126 + 50 len 14] > -1 / (997 * _97) + (997 * arg4):
                revert with 0, 17
            if mem[_126 + 18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if 1000 * mem[_126 + 18 len 14] > !((997 * _97) + (997 * arg4)):
                revert with 0, 17
            if not (1000 * mem[_126 + 18 len 14]) + (997 * _97) + (997 * arg4):
                revert with 0, 18
            _137 = mem[64]
            mem[mem[64]] = 128
            mem[mem[64] + 128] = _5
            mem[mem[64] + 160 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
            if ceil32(_5) <= _5:
                mem[mem[64] + 64] = address(_105)
                mem[mem[64] + 96] = (997 * _97 * Mask(112, 0, _133)) + (997 * arg4 * Mask(112, 0, _133)) / (1000 * Mask(112, 0, _131)) + (997 * _97) + (997 * arg4)
                return Array(len=_5, data=mem[mem[64] + 160 len ceil32(_5)]), 
                       _89 << 248,
                       address(_105),
                       (997 * _97 * Mask(112, 0, _133)) + (997 * arg4 * Mask(112, 0, _133)) / (1000 * Mask(112, 0, _131)) + (997 * _97) + (997 * arg4)
            mem[mem[64] + _5 + 160] = 0
            mem[mem[64] + 32] = uint8(_89)
            mem[_137 + 64] = address(_105)
            mem[_137 + 96] = (997 * _97 * Mask(112, 0, _133)) + (997 * arg4 * Mask(112, 0, _133)) / (1000 * Mask(112, 0, _131)) + (997 * _97) + (997 * arg4)
            return memory
              from mem[64]
               len ceil32(_5) + _137 + -mem[64] + 160
        if (997 * _97) + (997 * arg4) and mem[_126 + 18 len 14] > -1 / (997 * _97) + (997 * arg4):
            revert with 0, 17
        if mem[_126 + 50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
            revert with 0, 17
        if 1000 * mem[_126 + 50 len 14] > !((997 * _97) + (997 * arg4)):
            revert with 0, 17
        if not (1000 * mem[_126 + 50 len 14]) + (997 * _97) + (997 * arg4):
            revert with 0, 18
        _138 = mem[64]
        mem[mem[64]] = 128
        mem[mem[64] + 128] = _5
        mem[mem[64] + 160 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
        if ceil32(_5) <= _5:
            mem[mem[64] + 64] = address(_105)
            mem[mem[64] + 96] = (997 * _97 * Mask(112, 0, _131)) + (997 * arg4 * Mask(112, 0, _131)) / (1000 * Mask(112, 0, _133)) + (997 * _97) + (997 * arg4)
            return Array(len=_5, data=mem[mem[64] + 160 len ceil32(_5)]), 
                   _89 << 248,
                   address(_105),
                   (997 * _97 * Mask(112, 0, _131)) + (997 * arg4 * Mask(112, 0, _131)) / (1000 * Mask(112, 0, _133)) + (997 * _97) + (997 * arg4)
        mem[mem[64] + _5 + 160] = 0
        mem[mem[64] + 32] = uint8(_89)
        mem[_138 + 64] = address(_105)
        mem[_138 + 96] = (997 * _97 * Mask(112, 0, _131)) + (997 * arg4 * Mask(112, 0, _131)) / (1000 * Mask(112, 0, _133)) + (997 * _97) + (997 * arg4)
        return memory
          from mem[64]
           len ceil32(_5) + _138 + -mem[64] + 160
    mem[ceil32(return_data.size) + _5 + 128] = 0
    require ext_code.size(arg3)
    staticcall arg3.0x313ce567 with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _88 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _90 = mem[_88]
    require mem[_88] == mem[_88 + 31 len 1]
    mem[mem[64] + 4] = arg1
    require ext_code.size(arg3)
    staticcall arg3.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _96 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _98 = mem[_96]
    if mem[_96] > !arg4:
        revert with 0, 17
    mem[mem[64] + 4] = WETHAddress
    mem[mem[64] + 36] = arg3
    require ext_code.size(arg2)
    staticcall arg2.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args WETHAddress, arg3
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _104 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _106 = mem[_104]
    require mem[_104] == mem[_104 + 12 len 20]
    if not mem[_104 + 12 len 20]:
        _113 = mem[64]
        mem[mem[64]] = 128
        mem[mem[64] + 128] = _5
        mem[mem[64] + 160 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
        if ceil32(_5) <= _5:
            mem[mem[64] + 64] = address(_106)
            mem[mem[64] + 96] = 0
            return 128, _90 << 248, address(_106), 0, _5, mem[mem[64] + 160 len ceil32(_5)]
        mem[mem[64] + _5 + 160] = 0
        mem[mem[64] + 32] = uint8(_90)
        mem[_113 + 64] = address(_106)
        mem[_113 + 96] = 0
        return memory
          from mem[64]
           len ceil32(_5) + _113 + -mem[64] + 160
    require ext_code.size(mem[_104 + 12 len 20])
    staticcall mem[_104 + 12 len 20].token0() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _115 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _118 = mem[_115]
    require mem[_115] == mem[_115 + 12 len 20]
    require ext_code.size(address(_106))
    staticcall address(_106).getReserves() with:
            gas gas_remaining wei
    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _129 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 96
    _132 = mem[_129]
    require mem[_129] == mem[_129 + 18 len 14]
    _134 = mem[_129 + 32]
    require mem[_129 + 32] == mem[_129 + 50 len 14]
    require mem[_129 + 64] == mem[_129 + 92 len 4]
    if _98 + arg4 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
        revert with 0, 17
    if arg3 == address(_118):
        if (997 * _98) + (997 * arg4) and mem[_129 + 50 len 14] > -1 / (997 * _98) + (997 * arg4):
            revert with 0, 17
        if mem[_129 + 18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
            revert with 0, 17
        if 1000 * mem[_129 + 18 len 14] > !((997 * _98) + (997 * arg4)):
            revert with 0, 17
        if not (1000 * mem[_129 + 18 len 14]) + (997 * _98) + (997 * arg4):
            revert with 0, 18
        _139 = mem[64]
        mem[mem[64]] = 128
        mem[mem[64] + 128] = _5
        mem[mem[64] + 160 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
        if ceil32(_5) <= _5:
            mem[mem[64] + 64] = address(_106)
            mem[mem[64] + 96] = (997 * _98 * Mask(112, 0, _134)) + (997 * arg4 * Mask(112, 0, _134)) / (1000 * Mask(112, 0, _132)) + (997 * _98) + (997 * arg4)
            return Array(len=_5, data=mem[mem[64] + 160 len ceil32(_5)]), 
                   _90 << 248,
                   address(_106),
                   (997 * _98 * Mask(112, 0, _134)) + (997 * arg4 * Mask(112, 0, _134)) / (1000 * Mask(112, 0, _132)) + (997 * _98) + (997 * arg4)
        mem[mem[64] + _5 + 160] = 0
        mem[mem[64] + 32] = uint8(_90)
        mem[_139 + 64] = address(_106)
        mem[_139 + 96] = (997 * _98 * Mask(112, 0, _134)) + (997 * arg4 * Mask(112, 0, _134)) / (1000 * Mask(112, 0, _132)) + (997 * _98) + (997 * arg4)
        return memory
          from mem[64]
           len ceil32(_5) + _139 + -mem[64] + 160
    if (997 * _98) + (997 * arg4) and mem[_129 + 18 len 14] > -1 / (997 * _98) + (997 * arg4):
        revert with 0, 17
    if mem[_129 + 50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
        revert with 0, 17
    if 1000 * mem[_129 + 50 len 14] > !((997 * _98) + (997 * arg4)):
        revert with 0, 17
    if not (1000 * mem[_129 + 50 len 14]) + (997 * _98) + (997 * arg4):
        revert with 0, 18
    _140 = mem[64]
    mem[mem[64]] = 128
    mem[mem[64] + 128] = _5
    mem[mem[64] + 160 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
    if ceil32(_5) <= _5:
        mem[mem[64] + 64] = address(_106)
        mem[mem[64] + 96] = (997 * _98 * Mask(112, 0, _132)) + (997 * arg4 * Mask(112, 0, _132)) / (1000 * Mask(112, 0, _134)) + (997 * _98) + (997 * arg4)
        return Array(len=_5, data=mem[mem[64] + 160 len ceil32(_5)]), 
               _90 << 248,
               address(_106),
               (997 * _98 * Mask(112, 0, _132)) + (997 * arg4 * Mask(112, 0, _132)) / (1000 * Mask(112, 0, _134)) + (997 * _98) + (997 * arg4)
    mem[mem[64] + _5 + 160] = 0
    mem[mem[64] + 32] = uint8(_90)
    mem[_140 + 64] = address(_106)
    mem[_140 + 96] = (997 * _98 * Mask(112, 0, _132)) + (997 * arg4 * Mask(112, 0, _132)) / (1000 * Mask(112, 0, _134)) + (997 * _98) + (997 * arg4)
    return memory
      from mem[64]
       len ceil32(_5) + _140 + -mem[64] + 160
}



}
