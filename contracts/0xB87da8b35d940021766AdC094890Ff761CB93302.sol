contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function getPair(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
    staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.0xe6a43905 with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function sub_26aa38ee(?) {
    require calldata.size - 4 >= 64
    if arg1 == arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe50616e63616b654c6962726172793a204944454e544943414c5f4144445245535345,
                    mem[199 len 29]
    if arg1 < arg2:
        if not arg1:
            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
        return address(arg1), arg2
    if not arg2:
        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
    return address(arg2), arg1
}

function getTokenPrice(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.0xd21220a7 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require Mask(112, 0, ext_call.return_data[32])
    return (Mask(112, 0, ext_call.return_data[0]) * 10^ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]))
}

function sub_55e497da(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
    staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.0xe6a43905 with:
            gas gas_remaining wei
           args address(arg1), 0x53000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe50616e63616b654c6962726172793a204944454e544943414c5f4144445245535345,
                    mem[199 len 29]
    if arg1 >= 0xb31f66aa3c1e785363f0875a1b74e27b85fd66:
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66 == arg1:
            return address(ext_call.return_data[0]), 
                   ext_call.return_data[32] << 144,
                   ext_call.return_data[0] << 144,
                   Mask(112, 0, ext_call.return_data[0]) * 10^ext_call.return_data[0]
    else:
        if not arg1:
            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if arg1 == arg1:
            return address(ext_call.return_data[0]), 
                   ext_call.return_data[32] << 144,
                   ext_call.return_data[0] << 144,
                   Mask(112, 0, ext_call.return_data[0]) * 10^ext_call.return_data[0]
    return address(ext_call.return_data[0]), 
           ext_call.return_data[0] << 144,
           ext_call.return_data[32] << 144,
           Mask(112, 0, ext_call.return_data[32]) * 10^ext_call.return_data[0]
}

function sub_5abc872d(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
    staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.0xe6a43905 with:
            gas gas_remaining wei
           args address(arg1), 0x53000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe50616e63616b654c6962726172793a204944454e544943414c5f4144445245535345,
                    mem[199 len 29]
    if arg1 >= 0xb31f66aa3c1e785363f0875a1b74e27b85fd66:
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66 == arg1:
            if ext_call.return_data[18 len 14]:
                return address(ext_call.return_data[0]), 
                       ext_call.return_data[32] << 144,
                       ext_call.return_data[0] << 144,
                       Mask(112, 0, ext_call.return_data[32]) * 10^ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])
        else:
            if ext_call.return_data[50 len 14]:
                return address(ext_call.return_data[0]), 
                       ext_call.return_data[0] << 144,
                       ext_call.return_data[32] << 144,
                       Mask(112, 0, ext_call.return_data[0]) * 10^ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])
    else:
        if not arg1:
            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if arg1 == arg1:
            if ext_call.return_data[18 len 14]:
                return address(ext_call.return_data[0]), 
                       ext_call.return_data[32] << 144,
                       ext_call.return_data[0] << 144,
                       Mask(112, 0, ext_call.return_data[32]) * 10^ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])
        else:
            if ext_call.return_data[50 len 14]:
                return address(ext_call.return_data[0]), 
                       ext_call.return_data[0] << 144,
                       ext_call.return_data[32] << 144,
                       Mask(112, 0, ext_call.return_data[0]) * 10^ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])
    revert
}

function sub_4769096a(?) {
    require calldata.size - 4 >= 96
    if arg1 != 0x53000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66:
        mem[288] = arg1
        mem[320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[324] = arg3
        mem[356] = 64
        mem[388] = 3
        mem[420 len 0] = None
        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
        staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=3, data=mem[420 len 96])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 320
        require return_data.size >= 32
        _83 = mem[320 len 4], Mask(224, 32, arg3) >> 32
        require mem[320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 320] = mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]
        _91 = mem[_83 + 320]
        mem[ceil32(return_data.size) + 352 len floor32(mem[_83 + 320])] = mem[_83 + 352 len floor32(mem[_83 + 320])]
        require 2 < mem[ceil32(return_data.size) + 320]
        _121 = mem[ceil32(return_data.size) + 416]
        mem[(32 * _91) + ceil32(return_data.size) + 352] = mem[ceil32(return_data.size) + 416]
        return mem[(32 * _91) + ceil32(return_data.size) + 352], (10^18 * _121) - (_121 * arg2 / 100) / 10^18
    mem[256] = arg1
    mem[288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[292] = arg3
    mem[324] = 64
    mem[356] = 2
    mem[388 len 0] = None
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg3, Array(len=2, data=mem[388 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 288
    require return_data.size >= 32
    _85 = mem[288 len 4], Mask(224, 32, arg3) >> 32
    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
    _92 = mem[_85 + 288]
    mem[ceil32(return_data.size) + 320 len floor32(mem[_85 + 288])] = mem[_85 + 320 len floor32(mem[_85 + 288])]
    require 1 < mem[ceil32(return_data.size) + 288]
    _122 = mem[ceil32(return_data.size) + 352]
    mem[(32 * _92) + ceil32(return_data.size) + 320] = mem[ceil32(return_data.size) + 352]
    return mem[(32 * _92) + ceil32(return_data.size) + 320], (10^18 * _122) - (_122 * arg2 / 100) / 10^18
}

function sub_c38c9d03(?) {
    require calldata.size - 4 >= 96
    if 0x53000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66 == arg1:
        mem[256] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
        mem[288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[292] = arg3
        mem[324] = 64
        mem[356] = 2
        mem[388 len 0] = None
        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
        staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[388 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 288
        require return_data.size >= 32
        _79 = mem[288 len 4], Mask(224, 32, arg3) >> 32
        require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
        _88 = mem[_79 + 288]
        mem[ceil32(return_data.size) + 320 len floor32(mem[_79 + 288])] = mem[_79 + 320 len floor32(mem[_79 + 288])]
        require 1 < mem[ceil32(return_data.size) + 288]
        _118 = mem[ceil32(return_data.size) + 352]
        mem[(32 * _88) + ceil32(return_data.size) + 320] = mem[ceil32(return_data.size) + 352]
        return mem[(32 * _88) + ceil32(return_data.size) + 320], (10^18 * _118) - (_118 * arg2 / 100) / 10^18
    mem[288] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
    mem[320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[324] = arg3
    mem[356] = 64
    mem[388] = 3
    mem[420 len 0] = None
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg3, Array(len=3, data=mem[420 len 96])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[320 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 320
    require return_data.size >= 32
    _81 = mem[320 len 4], Mask(224, 32, arg3) >> 32
    require mem[320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
    require mem[320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
    require mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 320] = mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]
    _89 = mem[_81 + 320]
    mem[ceil32(return_data.size) + 352 len floor32(mem[_81 + 320])] = mem[_81 + 352 len floor32(mem[_81 + 320])]
    require 2 < mem[ceil32(return_data.size) + 320]
    _119 = mem[ceil32(return_data.size) + 416]
    mem[(32 * _89) + ceil32(return_data.size) + 352] = mem[ceil32(return_data.size) + 416]
    return mem[(32 * _89) + ceil32(return_data.size) + 352], (10^18 * _119) - (_119 * arg2 / 100) / 10^18
}

function getAmountOutMin(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if 0x53000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66 == arg1:
        mem[160] = arg2
        mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[196] = arg3
        mem[228] = 64
        mem[260] = 2
        mem[292 len 0] = None
        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
        staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _74 = mem[192 len 4], Mask(224, 32, arg3) >> 32
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        _83 = mem[_74 + 192]
        mem[ceil32(return_data.size) + 224 len floor32(mem[_74 + 192])] = mem[_74 + 224 len floor32(mem[_74 + 192])]
        require 1 < mem[ceil32(return_data.size) + 192]
        mem[(32 * _83) + ceil32(return_data.size) + 224] = mem[ceil32(return_data.size) + 256]
        return memory
          from (32 * _83) + ceil32(return_data.size) + 224
           len 32
    if arg2 != 0x53000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66:
        mem[192] = arg2
        mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[228] = arg3
        mem[260] = 64
        mem[292] = 3
        mem[324 len 0] = None
        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
        staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=3, data=mem[324 len 96])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 224
        require return_data.size >= 32
        _76 = mem[224 len 4], Mask(224, 32, arg3) >> 32
        require mem[224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]
        _84 = mem[_76 + 224]
        mem[ceil32(return_data.size) + 256 len floor32(mem[_76 + 224])] = mem[_76 + 256 len floor32(mem[_76 + 224])]
        require 2 < mem[ceil32(return_data.size) + 224]
        mem[(32 * _84) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 320]
        return memory
          from (32 * _84) + ceil32(return_data.size) + 256
           len 32
    mem[160] = arg2
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = arg3
    mem[228] = 64
    mem[260] = 2
    mem[292 len 0] = None
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg3, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _78 = mem[192 len 4], Mask(224, 32, arg3) >> 32
    require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
    _85 = mem[_78 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_78 + 192])] = mem[_78 + 224 len floor32(mem[_78 + 192])]
    require 1 < mem[ceil32(return_data.size) + 192]
    mem[(32 * _85) + ceil32(return_data.size) + 224] = mem[ceil32(return_data.size) + 256]
    return memory
      from (32 * _85) + ceil32(return_data.size) + 224
       len 32
}

function swap(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5) {
    require calldata.size - 4 >= 160
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    else:
        require return_data.size >= 32
        require ext_code.size(arg1)
        call arg1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        else:
            require return_data.size >= 32
            if 0x53000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66 == arg1:
                mem[160] = arg2
                mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[196] = arg3
                mem[228] = arg4
                mem[292] = arg5
                mem[324] = block.timestamp
                mem[260] = 160
                mem[356] = 2
                mem[388 len 0] = None
                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg3, arg4, Array(len=2, data=mem[388 len 64]), address(arg5), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 192
                    require return_data.size >= 32
                    require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
            else:
                if arg2 != 0x53000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66:
                    mem[160] = arg2
                    mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[196] = arg3
                    mem[228] = arg4
                    mem[292] = arg5
                    mem[324] = block.timestamp
                    mem[260] = 160
                    mem[356] = 2
                    mem[388 len 0] = None
                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, arg4, Array(len=2, data=mem[388 len 64]), address(arg5), block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 192
                        require return_data.size >= 32
                        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                else:
                    mem[160] = arg2
                    mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[196] = arg3
                    mem[228] = arg4
                    mem[292] = arg5
                    mem[324] = block.timestamp
                    mem[260] = 160
                    mem[356] = 2
                    mem[388 len 0] = None
                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, arg4, Array(len=2, data=mem[388 len 64]), address(arg5), block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 192
                        require return_data.size >= 32
                        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
}

function sub_1974e165(?) payable {
    require calldata.size - 4 >= 128
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0x53000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66 == arg1:
        mem[256] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
        mem[288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[292] = arg3
        mem[324] = 64
        mem[356] = 2
        mem[388 len 0] = None
        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
        staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[388 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 288
        require return_data.size >= 32
        _106 = mem[288 len 4], Mask(224, 32, arg3) >> 32
        require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
        _115 = mem[_106 + 288]
        mem[ceil32(return_data.size) + 320 len floor32(mem[_106 + 288])] = mem[_106 + 320 len floor32(mem[_106 + 288])]
        require 1 < mem[ceil32(return_data.size) + 288]
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * _115) + ceil32(return_data.size) + 516 len 0] = None
        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], (10^18 * mem[ceil32(return_data.size) + 352]) - (mem[ceil32(return_data.size) + 352] * arg2 / 100) / 10^18, Array(len=2, data=mem[(32 * _115) + ceil32(return_data.size) + 516 len 64]), msg.sender, arg4
    else:
        mem[288] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
        mem[320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[324] = arg3
        mem[356] = 64
        mem[388] = 3
        mem[420 len 0] = None
        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
        staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=3, data=mem[420 len 96])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 320
        require return_data.size >= 32
        _108 = mem[320 len 4], Mask(224, 32, arg3) >> 32
        require mem[320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 320] = mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]
        _116 = mem[_108 + 320]
        mem[ceil32(return_data.size) + 352 len floor32(mem[_108 + 320])] = mem[_108 + 352 len floor32(mem[_108 + 320])]
        require 2 < mem[ceil32(return_data.size) + 320]
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * _116) + ceil32(return_data.size) + 548 len 0] = None
        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], (10^18 * mem[ceil32(return_data.size) + 416]) - (mem[ceil32(return_data.size) + 416] * arg2 / 100) / 10^18, Array(len=2, data=mem[(32 * _116) + ceil32(return_data.size) + 548 len 64]), msg.sender, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_7165450b(?) payable {
    require calldata.size - 4 >= 128
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 2
    mem[128] = arg1
    mem[160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
    if 0x53000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66 == arg1:
        mem[192] = 2
        mem[224] = arg1
        mem[256] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
        mem[288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[292] = arg3
        mem[324] = 64
        mem[356] = 2
        mem[388 len 0] = None
        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
        staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[388 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 288
        require return_data.size >= 32
        _112 = mem[288 len 4], Mask(224, 32, arg3) >> 32
        require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
        _121 = mem[_112 + 288]
        mem[ceil32(return_data.size) + 320 len floor32(mem[_112 + 288])] = mem[_112 + 320 len floor32(mem[_112 + 288])]
        require 1 < mem[ceil32(return_data.size) + 288]
        _178 = mem[ceil32(return_data.size) + 352]
        mem[(32 * _121) + ceil32(return_data.size) + 320] = 0x676528d100000000000000000000000000000000000000000000000000000000
        mem[(32 * _121) + ceil32(return_data.size) + 324] = arg3
        mem[(32 * _121) + ceil32(return_data.size) + 356] = (10^18 * _178) - (_178 * arg2 / 100) / 10^18
        mem[(32 * _121) + ceil32(return_data.size) + 420] = msg.sender
        mem[(32 * _121) + ceil32(return_data.size) + 452] = arg4
        mem[(32 * _121) + ceil32(return_data.size) + 388] = 160
        mem[(32 * _121) + ceil32(return_data.size) + 484] = 2
        mem[(32 * _121) + ceil32(return_data.size) + 516 len 0] = None
        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForAVAX(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg3, (10^18 * _178) - (_178 * arg2 / 100) / 10^18, Array(len=2, data=mem[(32 * _121) + ceil32(return_data.size) + 516 len 64]), msg.sender, arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _121) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _121) + (2 * ceil32(return_data.size)) + 320
        require return_data.size >= 32
        require mem[(32 * _121) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[(32 * _121) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[(32 * _121) + ceil32(return_data.size) + mem[(32 * _121) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * _121) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _121) + ceil32(return_data.size) + mem[(32 * _121) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
    else:
        mem[192] = 3
        mem[224] = arg1
        mem[256] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
        mem[288] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
        mem[320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[324] = arg3
        mem[356] = 64
        mem[388] = 3
        mem[420 len 0] = None
        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
        staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=3, data=mem[420 len 96])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 320
        require return_data.size >= 32
        _114 = mem[320 len 4], Mask(224, 32, arg3) >> 32
        require mem[320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 320] = mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]
        _122 = mem[_114 + 320]
        mem[ceil32(return_data.size) + 352 len floor32(mem[_114 + 320])] = mem[_114 + 352 len floor32(mem[_114 + 320])]
        require 2 < mem[ceil32(return_data.size) + 320]
        _179 = mem[ceil32(return_data.size) + 416]
        mem[(32 * _122) + ceil32(return_data.size) + 352] = 0x676528d100000000000000000000000000000000000000000000000000000000
        mem[(32 * _122) + ceil32(return_data.size) + 356] = arg3
        mem[(32 * _122) + ceil32(return_data.size) + 388] = (10^18 * _179) - (_179 * arg2 / 100) / 10^18
        mem[(32 * _122) + ceil32(return_data.size) + 452] = msg.sender
        mem[(32 * _122) + ceil32(return_data.size) + 484] = arg4
        mem[(32 * _122) + ceil32(return_data.size) + 420] = 160
        mem[(32 * _122) + ceil32(return_data.size) + 516] = 2
        mem[(32 * _122) + ceil32(return_data.size) + 548 len 0] = None
        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForAVAX(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg3, (10^18 * _179) - (_179 * arg2 / 100) / 10^18, Array(len=2, data=mem[(32 * _122) + ceil32(return_data.size) + 548 len 64]), msg.sender, arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _122) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _122) + (2 * ceil32(return_data.size)) + 352
        require return_data.size >= 32
        require mem[(32 * _122) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[(32 * _122) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[(32 * _122) + ceil32(return_data.size) + mem[(32 * _122) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 352] <= 4294967296 and mem[(32 * _122) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _122) + ceil32(return_data.size) + mem[(32 * _122) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 352]) + 32 <= return_data.size
}

function sub_6158185f(?) payable {
    require calldata.size - 4 >= 128
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 2
    mem[128] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
    mem[160] = arg1
    if 0x53000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66 == arg1:
        mem[192] = 2
        mem[224] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
        mem[256] = arg1
        mem[288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[292] = arg3
        mem[324] = 64
        mem[356] = 2
        mem[388 len 0] = None
        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
        staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[388 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 288
        require return_data.size >= 32
        _115 = mem[288 len 4], Mask(224, 32, arg3) >> 32
        require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
        _122 = mem[_115 + 288]
        mem[ceil32(return_data.size) + 320 len floor32(mem[_115 + 288])] = mem[_115 + 320 len floor32(mem[_115 + 288])]
        require 1 < mem[ceil32(return_data.size) + 288]
        _179 = mem[ceil32(return_data.size) + 352]
        mem[(32 * _122) + ceil32(return_data.size) + 320] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
        mem[(32 * _122) + ceil32(return_data.size) + 324] = (10^18 * _179) - (_179 * arg2 / 100) / 10^18
        mem[(32 * _122) + ceil32(return_data.size) + 388] = msg.sender
        mem[(32 * _122) + ceil32(return_data.size) + 420] = arg4
        mem[(32 * _122) + ceil32(return_data.size) + 356] = 128
        mem[(32 * _122) + ceil32(return_data.size) + 452] = 2
        mem[(32 * _122) + ceil32(return_data.size) + 484 len 0] = None
        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value arg3 wei
             gas gas_remaining wei
            args (10^18 * _179) - (_179 * arg2 / 100) / 10^18, Array(len=2, data=mem[(32 * _122) + ceil32(return_data.size) + 484 len 64]), msg.sender, arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _122) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _122) + (2 * ceil32(return_data.size)) + 320
        require return_data.size >= 32
        require mem[(32 * _122) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, (10^18 * _179) - (_179 * arg2 / 100) / 10^18) >> 32 <= 4294967296
        require mem[(32 * _122) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, (10^18 * _179) - (_179 * arg2 / 100) / 10^18) >> 32 + 32 <= return_data.size
        require mem[(32 * _122) + ceil32(return_data.size) + mem[(32 * _122) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, (10^18 * _179) - (_179 * arg2 / 100) / 10^18) >> 32 + 320] <= 4294967296 and mem[(32 * _122) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, (10^18 * _179) - (_179 * arg2 / 100) / 10^18) >> 32 + (32 * mem[(32 * _122) + ceil32(return_data.size) + mem[(32 * _122) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, (10^18 * _179) - (_179 * arg2 / 100) / 10^18) >> 32 + 320]) + 32 <= return_data.size
    else:
        mem[192] = 3
        mem[224] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
        mem[256] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
        mem[288] = arg1
        mem[320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[324] = arg3
        mem[356] = 64
        mem[388] = 3
        mem[420 len 0] = None
        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
        staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=3, data=mem[420 len 96])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 320
        require return_data.size >= 32
        _113 = mem[320 len 4], Mask(224, 32, arg3) >> 32
        require mem[320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 320] = mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]
        _121 = mem[_113 + 320]
        mem[ceil32(return_data.size) + 352 len floor32(mem[_113 + 320])] = mem[_113 + 352 len floor32(mem[_113 + 320])]
        require 2 < mem[ceil32(return_data.size) + 320]
        _178 = mem[ceil32(return_data.size) + 416]
        mem[(32 * _121) + ceil32(return_data.size) + 352] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
        mem[(32 * _121) + ceil32(return_data.size) + 356] = (10^18 * _178) - (_178 * arg2 / 100) / 10^18
        mem[(32 * _121) + ceil32(return_data.size) + 420] = msg.sender
        mem[(32 * _121) + ceil32(return_data.size) + 452] = arg4
        mem[(32 * _121) + ceil32(return_data.size) + 388] = 128
        mem[(32 * _121) + ceil32(return_data.size) + 484] = 2
        mem[(32 * _121) + ceil32(return_data.size) + 516 len 0] = None
        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value arg3 wei
             gas gas_remaining wei
            args (10^18 * _178) - (_178 * arg2 / 100) / 10^18, Array(len=2, data=mem[(32 * _121) + ceil32(return_data.size) + 516 len 64]), msg.sender, arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _121) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _121) + (2 * ceil32(return_data.size)) + 352
        require return_data.size >= 32
        require mem[(32 * _121) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, (10^18 * _178) - (_178 * arg2 / 100) / 10^18) >> 32 <= 4294967296
        require mem[(32 * _121) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, (10^18 * _178) - (_178 * arg2 / 100) / 10^18) >> 32 + 32 <= return_data.size
        require mem[(32 * _121) + ceil32(return_data.size) + mem[(32 * _121) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, (10^18 * _178) - (_178 * arg2 / 100) / 10^18) >> 32 + 352] <= 4294967296 and mem[(32 * _121) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, (10^18 * _178) - (_178 * arg2 / 100) / 10^18) >> 32 + (32 * mem[(32 * _121) + ceil32(return_data.size) + mem[(32 * _121) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, (10^18 * _178) - (_178 * arg2 / 100) / 10^18) >> 32 + 352]) + 32 <= return_data.size
}



}
