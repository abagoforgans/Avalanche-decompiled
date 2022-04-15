contract main {




// =====================  Runtime code  =====================


#
#  - getRelativePricesWithBalance(address arg1, address arg2, address arg3, address arg4)
#
function _fallback() payable {
    revert
}

function getRelativePrices(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    mem[96 len 64] = call.data[calldata.size len 64]
    require ext_code.size(arg2)
    staticcall arg2.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[160] = 2
    mem[192] = arg2
    mem[224] = arg3
    mem[256] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[260] = 10^uint8(ext_call.return_data[0])
    mem[292] = 64
    mem[324] = 2
    mem[356 len 0] = None
    require ext_code.size(arg1)
    staticcall arg1.getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[356 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[256 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 256
    require return_data.size >= 32
    _48 = mem[256 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
    require mem[256 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= 4294967296
    require mem[256 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 32 <= return_data.size
    require mem[mem[256 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 256] <= 4294967296 and mem[256 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * mem[mem[256 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 256]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 256] = mem[mem[256 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 256]
    _51 = mem[_48 + 256]
    mem[ceil32(return_data.size) + 288 len floor32(mem[_48 + 256])] = mem[_48 + 288 len floor32(mem[_48 + 256])]
    require 1 < mem[ceil32(return_data.size) + 256]
    _80 = mem[ceil32(return_data.size) + 320]
    require ext_code.size(arg3)
    staticcall arg3.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * _51) + ceil32(return_data.size) + 288] = 2
    mem[(32 * _51) + ceil32(return_data.size) + 320] = arg3
    mem[(32 * _51) + ceil32(return_data.size) + 352] = arg2
    mem[(32 * _51) + ceil32(return_data.size) + 384] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * _51) + ceil32(return_data.size) + 388] = 10^uint8(ext_call.return_data[0])
    mem[(32 * _51) + ceil32(return_data.size) + 420] = 64
    mem[(32 * _51) + ceil32(return_data.size) + 452] = 2
    mem[(32 * _51) + ceil32(return_data.size) + 484 len 0] = None
    require ext_code.size(arg1)
    staticcall arg1.getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[(32 * _51) + ceil32(return_data.size) + 484 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _51) + ceil32(return_data.size) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _51) + (2 * ceil32(return_data.size)) + 384
    require return_data.size >= 32
    _107 = mem[(32 * _51) + ceil32(return_data.size) + 384 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
    require mem[(32 * _51) + ceil32(return_data.size) + 384 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= 4294967296
    require mem[(32 * _51) + ceil32(return_data.size) + 384 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * _51) + ceil32(return_data.size) + 384 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * _51) + ceil32(return_data.size) + 384] <= 4294967296 and mem[(32 * _51) + ceil32(return_data.size) + 384 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * mem[mem[(32 * _51) + ceil32(return_data.size) + 384 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * _51) + ceil32(return_data.size) + 384]) + 32 <= return_data.size
    mem[(32 * _51) + (2 * ceil32(return_data.size)) + 384] = mem[mem[(32 * _51) + ceil32(return_data.size) + 384 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * _51) + ceil32(return_data.size) + 384]
    mem[(32 * _51) + (2 * ceil32(return_data.size)) + 416 len floor32(mem[_107 + (32 * _51) + ceil32(return_data.size) + 384])] = mem[_107 + (32 * _51) + ceil32(return_data.size) + 416 len floor32(mem[_107 + (32 * _51) + ceil32(return_data.size) + 384])]
    require 1 < mem[(32 * _51) + (2 * ceil32(return_data.size)) + 384]
    return _80, mem[(32 * _51) + (2 * ceil32(return_data.size)) + 448]
}

function getRelativePricesWithTimestamp(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    mem[96 len 128] = call.data[calldata.size len 128]
    mem[224 len 64] = call.data[calldata.size len 64]
    mem[288 len 64] = call.data[calldata.size len 64]
    require ext_code.size(arg2)
    staticcall arg2.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[352] = 2
    mem[384] = arg2
    mem[416] = arg3
    mem[448] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[452] = 10^uint8(ext_call.return_data[0])
    mem[484] = 64
    mem[516] = 2
    mem[548 len 0] = None
    require ext_code.size(arg1)
    staticcall arg1.getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[548 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[448 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 448
    require return_data.size >= 32
    _53 = mem[448 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
    require mem[448 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= 4294967296
    require mem[448 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 32 <= return_data.size
    require mem[mem[448 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 448] <= 4294967296 and mem[448 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * mem[mem[448 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 448]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 448] = mem[mem[448 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 448]
    _56 = mem[_53 + 448]
    mem[ceil32(return_data.size) + 480 len floor32(mem[_53 + 448])] = mem[_53 + 480 len floor32(mem[_53 + 448])]
    require 1 < mem[ceil32(return_data.size) + 448]
    _88 = mem[ceil32(return_data.size) + 512]
    require ext_code.size(arg3)
    staticcall arg3.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * _56) + ceil32(return_data.size) + 480] = 2
    mem[(32 * _56) + ceil32(return_data.size) + 512] = arg3
    mem[(32 * _56) + ceil32(return_data.size) + 544] = arg2
    mem[(32 * _56) + ceil32(return_data.size) + 576] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * _56) + ceil32(return_data.size) + 580] = 10^uint8(ext_call.return_data[0])
    mem[(32 * _56) + ceil32(return_data.size) + 612] = 64
    mem[(32 * _56) + ceil32(return_data.size) + 644] = 2
    mem[(32 * _56) + ceil32(return_data.size) + 676 len 0] = None
    require ext_code.size(arg1)
    staticcall arg1.getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[(32 * _56) + ceil32(return_data.size) + 676 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _56) + ceil32(return_data.size) + 576 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _56) + (2 * ceil32(return_data.size)) + 576
    require return_data.size >= 32
    _118 = mem[(32 * _56) + ceil32(return_data.size) + 576 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
    require mem[(32 * _56) + ceil32(return_data.size) + 576 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= 4294967296
    require mem[(32 * _56) + ceil32(return_data.size) + 576 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * _56) + ceil32(return_data.size) + 576 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * _56) + ceil32(return_data.size) + 576] <= 4294967296 and mem[(32 * _56) + ceil32(return_data.size) + 576 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * mem[mem[(32 * _56) + ceil32(return_data.size) + 576 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * _56) + ceil32(return_data.size) + 576]) + 32 <= return_data.size
    mem[(32 * _56) + (2 * ceil32(return_data.size)) + 576] = mem[mem[(32 * _56) + ceil32(return_data.size) + 576 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * _56) + ceil32(return_data.size) + 576]
    mem[(32 * _56) + (2 * ceil32(return_data.size)) + 608 len floor32(mem[_118 + (32 * _56) + ceil32(return_data.size) + 576])] = mem[_118 + (32 * _56) + ceil32(return_data.size) + 608 len floor32(mem[_118 + (32 * _56) + ceil32(return_data.size) + 576])]
    require 1 < mem[(32 * _56) + (2 * ceil32(return_data.size)) + 576]
    return _88, mem[(32 * _56) + (2 * ceil32(return_data.size)) + 640], block.number, block.timestamp
}

function getRelativePricesWithBalanceWithTimestamp(address arg1, address arg2, address arg3, address arg4) payable {
    require calldata.size - 4 >= 128
    mem[96 len 256] = call.data[calldata.size len 256]
    mem[352 len 192] = call.data[calldata.size len 192]
    mem[544 len 192] = call.data[calldata.size len 192]
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg3)
    staticcall arg3.0x70a08231 with:
            gas gas_remaining wei
           args arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    staticcall arg2.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[736] = 2
    mem[768] = arg2
    mem[800] = arg3
    mem[832] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    if ext_call.return_data[0] == 1:
        mem[836] = ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])
        mem[868] = 64
        mem[900] = 2
        mem[932 len 0] = None
        require ext_code.size(arg1)
        staticcall arg1.getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args ext_call.return_data[0] * 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[932 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[832 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 832
        require return_data.size >= 32
        _728 = mem[832 len 4], Mask(224, 32, ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) >> 32
        require mem[832 len 4], Mask(224, 32, ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) >> 32 <= 4294967296
        require mem[832 len 4], Mask(224, 32, ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) >> 32 + 32 <= return_data.size
        require mem[mem[832 len 4], Mask(224, 32, ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) >> 32 + 832] <= 4294967296 and mem[832 len 4], Mask(224, 32, ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) >> 32 + (32 * mem[mem[832 len 4], Mask(224, 32, ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) >> 32 + 832]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 832] = mem[mem[832 len 4], Mask(224, 32, ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) >> 32 + 832]
        _735 = mem[_728 + 832]
        mem[ceil32(return_data.size) + 864 len floor32(mem[_728 + 832])] = mem[_728 + 864 len floor32(mem[_728 + 832])]
        if 1 < mem[ceil32(return_data.size) + 832]:
            _1404 = mem[ceil32(return_data.size) + 896]
            require ext_code.size(arg3)
            staticcall arg3.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * _735) + ceil32(return_data.size) + 864] = 2
            mem[(32 * _735) + ceil32(return_data.size) + 896] = arg3
            mem[(32 * _735) + ceil32(return_data.size) + 928] = arg2
            mem[(32 * _735) + ceil32(return_data.size) + 960] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            if ext_call.return_data[0] == 1:
                mem[(32 * _735) + ceil32(return_data.size) + 964] = ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])
                mem[(32 * _735) + ceil32(return_data.size) + 996] = 64
                mem[(32 * _735) + ceil32(return_data.size) + 1028] = 2
                mem[(32 * _735) + ceil32(return_data.size) + 1060 len 0] = None
                require ext_code.size(arg1)
                staticcall arg1.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args ext_call.return_data[0] * 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[(32 * _735) + ceil32(return_data.size) + 1060 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _735) + ceil32(return_data.size) + 960 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _735) + (2 * ceil32(return_data.size)) + 960
                require return_data.size >= 32
                _2099 = mem[(32 * _735) + ceil32(return_data.size) + 960 len 4], Mask(224, 32, ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) >> 32
                require mem[(32 * _735) + ceil32(return_data.size) + 960 len 4], Mask(224, 32, ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) >> 32 <= 4294967296
                require mem[(32 * _735) + ceil32(return_data.size) + 960 len 4], Mask(224, 32, ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) >> 32 + 32 <= return_data.size
                require mem[mem[(32 * _735) + ceil32(return_data.size) + 960 len 4], Mask(224, 32, ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) >> 32 + (32 * _735) + ceil32(return_data.size) + 960] <= 4294967296 and mem[(32 * _735) + ceil32(return_data.size) + 960 len 4], Mask(224, 32, ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) >> 32 + (32 * mem[mem[(32 * _735) + ceil32(return_data.size) + 960 len 4], Mask(224, 32, ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) >> 32 + (32 * _735) + ceil32(return_data.size) + 960]) + 32 <= return_data.size
                mem[(32 * _735) + (2 * ceil32(return_data.size)) + 960] = mem[mem[(32 * _735) + ceil32(return_data.size) + 960 len 4], Mask(224, 32, ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) >> 32 + (32 * _735) + ceil32(return_data.size) + 960]
                _2118 = mem[_2099 + (32 * _735) + ceil32(return_data.size) + 960]
                mem[(32 * _735) + (2 * ceil32(return_data.size)) + 992 len floor32(mem[_2099 + (32 * _735) + ceil32(return_data.size) + 960])] = mem[_2099 + (32 * _735) + ceil32(return_data.size) + 992 len floor32(mem[_2099 + (32 * _735) + ceil32(return_data.size) + 960])]
                if 1 < mem[(32 * _735) + (2 * ceil32(return_data.size)) + 960]:
                    _2667 = mem[(32 * _735) + (2 * ceil32(return_data.size)) + 1024]
                    mem[(32 * _2118) + (32 * _735) + (2 * ceil32(return_data.size)) + 992 len 64] = call.data[calldata.size len 64]
                    mem[(32 * _2118) + (32 * _735) + (2 * ceil32(return_data.size)) + 1056 len 64] = call.data[calldata.size len 64]
                    require ext_code.size(arg2)
                    staticcall arg2.0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _2118) + (32 * _735) + (2 * ceil32(return_data.size)) + 1120] = 2
                    mem[(32 * _2118) + (32 * _735) + (2 * ceil32(return_data.size)) + 1152] = arg2
                    mem[(32 * _2118) + (32 * _735) + (2 * ceil32(return_data.size)) + 1184] = arg3
                    mem[(32 * _2118) + (32 * _735) + (2 * ceil32(return_data.size)) + 1216] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _2118) + (32 * _735) + (2 * ceil32(return_data.size)) + 1220] = 10^uint8(ext_call.return_data[0])
                    mem[(32 * _2118) + (32 * _735) + (2 * ceil32(return_data.size)) + 1252] = 64
                    mem[(32 * _2118) + (32 * _735) + (2 * ceil32(return_data.size)) + 1284] = 2
                    mem[(32 * _2118) + (32 * _735) + (2 * ceil32(return_data.size)) + 1316 len 0] = None
                    require ext_code.size(arg1)
                    staticcall arg1.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[(32 * _2118) + (32 * _735) + (2 * ceil32(return_data.size)) + 1316 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _2118) + (32 * _735) + (2 * ceil32(return_data.size)) + 1216 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _2118) + (32 * _735) + (4 * ceil32(return_data.size)) + 1216
                    require return_data.size >= 32
                    _3206 = mem[(32 * _2118) + (32 * _735) + (2 * ceil32(return_data.size)) + 1216 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                    require mem[(32 * _2118) + (32 * _735) + (2 * ceil32(return_data.size)) + 1216 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= 4294967296
                    require mem[(32 * _2118) + (32 * _735) + (2 * ceil32(return_data.size)) + 1216 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _2118) + (32 * _735) + (2 * ceil32(return_data.size)) + 1216 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * _2118) + (32 * _735) + (2 * ceil32(return_data.size)) + 1216] <= 4294967296 and mem[(32 * _2118) + (32 * _735) + (2 * ceil32(return_data.size)) + 1216 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * mem[mem[(32 * _2118) + (32 * _735) + (2 * ceil32(return_data.size)) + 1216 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * _2118) + (32 * _735) + (2 * ceil32(return_data.size)) + 1216]) + 32 <= return_data.size
                    mem[(32 * _2118) + (32 * _735) + (4 * ceil32(return_data.size)) + 1216] = mem[mem[(32 * _2118) + (32 * _735) + (2 * ceil32(return_data.size)) + 1216 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * _2118) + (32 * _735) + (2 * ceil32(return_data.size)) + 1216]
                    _3225 = mem[_3206 + (32 * _2118) + (32 * _735) + (2 * ceil32(return_data.size)) + 1216]
                    mem[(32 * _2118) + (32 * _735) + (4 * ceil32(return_data.size)) + 1248 len floor32(mem[_3206 + (32 * _2118) + (32 * _735) + (2 * ceil32(return_data.size)) + 1216])] = mem[_3206 + (32 * _2118) + (32 * _735) + (2 * ceil32(return_data.size)) + 1248 len floor32(mem[_3206 + (32 * _2118) + (32 * _735) + (2 * ceil32(return_data.size)) + 1216])]
                    if 1 < mem[(32 * _2118) + (32 * _735) + (4 * ceil32(return_data.size)) + 1216]:
                        _3576 = mem[(32 * _2118) + (32 * _735) + (4 * ceil32(return_data.size)) + 1280]
                        require ext_code.size(arg3)
                        staticcall arg3.0x313ce567 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _3225) + (32 * _2118) + (32 * _735) + (4 * ceil32(return_data.size)) + 1248] = 2
                        mem[(32 * _3225) + (32 * _2118) + (32 * _735) + (4 * ceil32(return_data.size)) + 1280] = arg3
                        mem[(32 * _3225) + (32 * _2118) + (32 * _735) + (4 * ceil32(return_data.size)) + 1312] = arg2
                        mem[(32 * _3225) + (32 * _2118) + (32 * _735) + (4 * ceil32(return_data.size)) + 1344] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3225) + (32 * _2118) + (32 * _735) + (4 * ceil32(return_data.size)) + 1348] = 10^uint8(ext_call.return_data[0])
                        mem[(32 * _3225) + (32 * _2118) + (32 * _735) + (4 * ceil32(return_data.size)) + 1380] = 64
                        mem[(32 * _3225) + (32 * _2118) + (32 * _735) + (4 * ceil32(return_data.size)) + 1412] = 2
                        mem[(32 * _3225) + (32 * _2118) + (32 * _735) + (4 * ceil32(return_data.size)) + 1444 len 0] = None
                        require ext_code.size(arg1)
                        staticcall arg1.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[(32 * _3225) + (32 * _2118) + (32 * _735) + (4 * ceil32(return_data.size)) + 1444 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _3225) + (32 * _2118) + (32 * _735) + (4 * ceil32(return_data.size)) + 1344 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _3225) + (32 * _2118) + (32 * _735) + (6 * ceil32(return_data.size)) + 1344
                        require return_data.size >= 32
                        _3917 = mem[(32 * _3225) + (32 * _2118) + (32 * _735) + (4 * ceil32(return_data.size)) + 1344 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                        require mem[(32 * _3225) + (32 * _2118) + (32 * _735) + (4 * ceil32(return_data.size)) + 1344 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= 4294967296
                        require mem[(32 * _3225) + (32 * _2118) + (32 * _735) + (4 * ceil32(return_data.size)) + 1344 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _3225) + (32 * _2118) + (32 * _735) + (4 * ceil32(return_data.size)) + 1344 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * _3225) + (32 * _2118) + (32 * _735) + (4 * ceil32(return_data.size)) + 1344] <= 4294967296 and mem[(32 * _3225) + (32 * _2118) + (32 * _735) + (4 * ceil32(return_data.size)) + 1344 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * mem[mem[(32 * _3225) + (32 * _2118) + (32 * _735) + (4 * ceil32(return_data.size)) + 1344 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * _3225) + (32 * _2118) + (32 * _735) + (4 * ceil32(return_data.size)) + 1344]) + 32 <= return_data.size
                        mem[(32 * _3225) + (32 * _2118) + (32 * _735) + (6 * ceil32(return_data.size)) + 1344] = mem[mem[(32 * _3225) + (32 * _2118) + (32 * _735) + (4 * ceil32(return_data.size)) + 1344 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * _3225) + (32 * _2118) + (32 * _735) + (4 * ceil32(return_data.size)) + 1344]
                        mem[(32 * _3225) + (32 * _2118) + (32 * _735) + (6 * ceil32(return_data.size)) + 1376 len floor32(mem[_3917 + (32 * _3225) + (32 * _2118) + (32 * _735) + (4 * ceil32(return_data.size)) + 1344])] = mem[_3917 + (32 * _3225) + (32 * _2118) + (32 * _735) + (4 * ceil32(return_data.size)) + 1376 len floor32(mem[_3917 + (32 * _3225) + (32 * _2118) + (32 * _735) + (4 * ceil32(return_data.size)) + 1344])]
                        if 1 < mem[(32 * _3225) + (32 * _2118) + (32 * _735) + (6 * ceil32(return_data.size)) + 1344]:
                            return _3576, 
                                   mem[(32 * _3225) + (32 * _2118) + (32 * _735) + (6 * ceil32(return_data.size)) + 1408],
                                   _1404,
                                   _2667,
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   block.number,
                                   block.timestamp
            else:
                if ext_call.return_data[0]:
                    mem[(32 * _735) + ceil32(return_data.size) + 964] = ext_call.return_data[0]
                    mem[(32 * _735) + ceil32(return_data.size) + 996] = 64
                    mem[(32 * _735) + ceil32(return_data.size) + 1028] = 2
                    mem[(32 * _735) + ceil32(return_data.size) + 1060 len 0] = None
                    require ext_code.size(arg1)
                    staticcall arg1.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args ext_call.return_data[0], Array(len=2, data=mem[(32 * _735) + ceil32(return_data.size) + 1060 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _735) + ceil32(return_data.size) + 960 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _735) + (2 * ceil32(return_data.size)) + 960
                    require return_data.size >= 32
                    _2095 = mem[(32 * _735) + ceil32(return_data.size) + 960 len 4], ext_call.return_data[0 len 28]
                    require mem[(32 * _735) + ceil32(return_data.size) + 960 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[(32 * _735) + ceil32(return_data.size) + 960 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[mem[(32 * _735) + ceil32(return_data.size) + 960 len 4], ext_call.return_data[0 len 28] + (32 * _735) + ceil32(return_data.size) + 960] <= 4294967296 and mem[(32 * _735) + ceil32(return_data.size) + 960 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * _735) + ceil32(return_data.size) + 960 len 4], ext_call.return_data[0 len 28] + (32 * _735) + ceil32(return_data.size) + 960]) + 32 <= return_data.size
                    mem[(32 * _735) + (2 * ceil32(return_data.size)) + 960] = mem[mem[(32 * _735) + ceil32(return_data.size) + 960 len 4], ext_call.return_data[0 len 28] + (32 * _735) + ceil32(return_data.size) + 960]
                    _2116 = mem[_2095 + (32 * _735) + ceil32(return_data.size) + 960]
                    mem[(32 * _735) + (2 * ceil32(return_data.size)) + 992 len floor32(mem[_2095 + (32 * _735) + ceil32(return_data.size) + 960])] = mem[_2095 + (32 * _735) + ceil32(return_data.size) + 992 len floor32(mem[_2095 + (32 * _735) + ceil32(return_data.size) + 960])]
                    if 1 < mem[(32 * _735) + (2 * ceil32(return_data.size)) + 960]:
                        _2665 = mem[(32 * _735) + (2 * ceil32(return_data.size)) + 1024]
                        mem[(32 * _2116) + (32 * _735) + (2 * ceil32(return_data.size)) + 992 len 64] = call.data[calldata.size len 64]
                        mem[(32 * _2116) + (32 * _735) + (2 * ceil32(return_data.size)) + 1056 len 64] = call.data[calldata.size len 64]
                        require ext_code.size(arg2)
                        staticcall arg2.0x313ce567 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _2116) + (32 * _735) + (2 * ceil32(return_data.size)) + 1120] = 2
                        mem[(32 * _2116) + (32 * _735) + (2 * ceil32(return_data.size)) + 1152] = arg2
                        mem[(32 * _2116) + (32 * _735) + (2 * ceil32(return_data.size)) + 1184] = arg3
                        mem[(32 * _2116) + (32 * _735) + (2 * ceil32(return_data.size)) + 1216] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _2116) + (32 * _735) + (2 * ceil32(return_data.size)) + 1220] = 10^uint8(ext_call.return_data[0])
                        mem[(32 * _2116) + (32 * _735) + (2 * ceil32(return_data.size)) + 1252] = 64
                        mem[(32 * _2116) + (32 * _735) + (2 * ceil32(return_data.size)) + 1284] = 2
                        mem[(32 * _2116) + (32 * _735) + (2 * ceil32(return_data.size)) + 1316 len 0] = None
                        require ext_code.size(arg1)
                        staticcall arg1.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[(32 * _2116) + (32 * _735) + (2 * ceil32(return_data.size)) + 1316 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _2116) + (32 * _735) + (2 * ceil32(return_data.size)) + 1216 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _2116) + (32 * _735) + (4 * ceil32(return_data.size)) + 1216
                        require return_data.size >= 32
                        _3202 = mem[(32 * _2116) + (32 * _735) + (2 * ceil32(return_data.size)) + 1216 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                        require mem[(32 * _2116) + (32 * _735) + (2 * ceil32(return_data.size)) + 1216 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= 4294967296
                        require mem[(32 * _2116) + (32 * _735) + (2 * ceil32(return_data.size)) + 1216 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _2116) + (32 * _735) + (2 * ceil32(return_data.size)) + 1216 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * _2116) + (32 * _735) + (2 * ceil32(return_data.size)) + 1216] <= 4294967296 and mem[(32 * _2116) + (32 * _735) + (2 * ceil32(return_data.size)) + 1216 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * mem[mem[(32 * _2116) + (32 * _735) + (2 * ceil32(return_data.size)) + 1216 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * _2116) + (32 * _735) + (2 * ceil32(return_data.size)) + 1216]) + 32 <= return_data.size
                        mem[(32 * _2116) + (32 * _735) + (4 * ceil32(return_data.size)) + 1216] = mem[mem[(32 * _2116) + (32 * _735) + (2 * ceil32(return_data.size)) + 1216 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * _2116) + (32 * _735) + (2 * ceil32(return_data.size)) + 1216]
                        _3223 = mem[_3202 + (32 * _2116) + (32 * _735) + (2 * ceil32(return_data.size)) + 1216]
                        mem[(32 * _2116) + (32 * _735) + (4 * ceil32(return_data.size)) + 1248 len floor32(mem[_3202 + (32 * _2116) + (32 * _735) + (2 * ceil32(return_data.size)) + 1216])] = mem[_3202 + (32 * _2116) + (32 * _735) + (2 * ceil32(return_data.size)) + 1248 len floor32(mem[_3202 + (32 * _2116) + (32 * _735) + (2 * ceil32(return_data.size)) + 1216])]
                        if 1 < mem[(32 * _2116) + (32 * _735) + (4 * ceil32(return_data.size)) + 1216]:
                            _3574 = mem[(32 * _2116) + (32 * _735) + (4 * ceil32(return_data.size)) + 1280]
                            require ext_code.size(arg3)
                            staticcall arg3.0x313ce567 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _3223) + (32 * _2116) + (32 * _735) + (4 * ceil32(return_data.size)) + 1248] = 2
                            mem[(32 * _3223) + (32 * _2116) + (32 * _735) + (4 * ceil32(return_data.size)) + 1280] = arg3
                            mem[(32 * _3223) + (32 * _2116) + (32 * _735) + (4 * ceil32(return_data.size)) + 1312] = arg2
                            mem[(32 * _3223) + (32 * _2116) + (32 * _735) + (4 * ceil32(return_data.size)) + 1344] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _3223) + (32 * _2116) + (32 * _735) + (4 * ceil32(return_data.size)) + 1348] = 10^uint8(ext_call.return_data[0])
                            mem[(32 * _3223) + (32 * _2116) + (32 * _735) + (4 * ceil32(return_data.size)) + 1380] = 64
                            mem[(32 * _3223) + (32 * _2116) + (32 * _735) + (4 * ceil32(return_data.size)) + 1412] = 2
                            mem[(32 * _3223) + (32 * _2116) + (32 * _735) + (4 * ceil32(return_data.size)) + 1444 len 0] = None
                            require ext_code.size(arg1)
                            staticcall arg1.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[(32 * _3223) + (32 * _2116) + (32 * _735) + (4 * ceil32(return_data.size)) + 1444 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _3223) + (32 * _2116) + (32 * _735) + (4 * ceil32(return_data.size)) + 1344 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _3223) + (32 * _2116) + (32 * _735) + (6 * ceil32(return_data.size)) + 1344
                            require return_data.size >= 32
                            _3913 = mem[(32 * _3223) + (32 * _2116) + (32 * _735) + (4 * ceil32(return_data.size)) + 1344 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                            require mem[(32 * _3223) + (32 * _2116) + (32 * _735) + (4 * ceil32(return_data.size)) + 1344 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= 4294967296
                            require mem[(32 * _3223) + (32 * _2116) + (32 * _735) + (4 * ceil32(return_data.size)) + 1344 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 32 <= return_data.size
                            require mem[mem[(32 * _3223) + (32 * _2116) + (32 * _735) + (4 * ceil32(return_data.size)) + 1344 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * _3223) + (32 * _2116) + (32 * _735) + (4 * ceil32(return_data.size)) + 1344] <= 4294967296 and mem[(32 * _3223) + (32 * _2116) + (32 * _735) + (4 * ceil32(return_data.size)) + 1344 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * mem[mem[(32 * _3223) + (32 * _2116) + (32 * _735) + (4 * ceil32(return_data.size)) + 1344 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * _3223) + (32 * _2116) + (32 * _735) + (4 * ceil32(return_data.size)) + 1344]) + 32 <= return_data.size
                            mem[(32 * _3223) + (32 * _2116) + (32 * _735) + (6 * ceil32(return_data.size)) + 1344] = mem[mem[(32 * _3223) + (32 * _2116) + (32 * _735) + (4 * ceil32(return_data.size)) + 1344 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * _3223) + (32 * _2116) + (32 * _735) + (4 * ceil32(return_data.size)) + 1344]
                            mem[(32 * _3223) + (32 * _2116) + (32 * _735) + (6 * ceil32(return_data.size)) + 1376 len floor32(mem[_3913 + (32 * _3223) + (32 * _2116) + (32 * _735) + (4 * ceil32(return_data.size)) + 1344])] = mem[_3913 + (32 * _3223) + (32 * _2116) + (32 * _735) + (4 * ceil32(return_data.size)) + 1376 len floor32(mem[_3913 + (32 * _3223) + (32 * _2116) + (32 * _735) + (4 * ceil32(return_data.size)) + 1344])]
                            if 1 < mem[(32 * _3223) + (32 * _2116) + (32 * _735) + (6 * ceil32(return_data.size)) + 1344]:
                                return _3574, 
                                       mem[(32 * _3223) + (32 * _2116) + (32 * _735) + (6 * ceil32(return_data.size)) + 1408],
                                       _1404,
                                       _2665,
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       block.number,
                                       block.timestamp
                else:
                    mem[(32 * _735) + ceil32(return_data.size) + 964] = 10^uint8(ext_call.return_data[0])
                    mem[(32 * _735) + ceil32(return_data.size) + 996] = 64
                    mem[(32 * _735) + ceil32(return_data.size) + 1028] = 2
                    mem[(32 * _735) + ceil32(return_data.size) + 1060 len 0] = None
                    require ext_code.size(arg1)
                    staticcall arg1.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[(32 * _735) + ceil32(return_data.size) + 1060 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _735) + ceil32(return_data.size) + 960 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _735) + (2 * ceil32(return_data.size)) + 960
                    require return_data.size >= 32
                    _2097 = mem[(32 * _735) + ceil32(return_data.size) + 960 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                    require mem[(32 * _735) + ceil32(return_data.size) + 960 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= 4294967296
                    require mem[(32 * _735) + ceil32(return_data.size) + 960 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _735) + ceil32(return_data.size) + 960 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * _735) + ceil32(return_data.size) + 960] <= 4294967296 and mem[(32 * _735) + ceil32(return_data.size) + 960 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * mem[mem[(32 * _735) + ceil32(return_data.size) + 960 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * _735) + ceil32(return_data.size) + 960]) + 32 <= return_data.size
                    mem[(32 * _735) + (2 * ceil32(return_data.size)) + 960] = mem[mem[(32 * _735) + ceil32(return_data.size) + 960 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * _735) + ceil32(return_data.size) + 960]
                    _2117 = mem[_2097 + (32 * _735) + ceil32(return_data.size) + 960]
                    mem[(32 * _735) + (2 * ceil32(return_data.size)) + 992 len floor32(mem[_2097 + (32 * _735) + ceil32(return_data.size) + 960])] = mem[_2097 + (32 * _735) + ceil32(return_data.size) + 992 len floor32(mem[_2097 + (32 * _735) + ceil32(return_data.size) + 960])]
                    if 1 < mem[(32 * _735) + (2 * ceil32(return_data.size)) + 960]:
                        _2666 = mem[(32 * _735) + (2 * ceil32(return_data.size)) + 1024]
                        mem[(32 * _2117) + (32 * _735) + (2 * ceil32(return_data.size)) + 992 len 64] = call.data[calldata.size len 64]
                        mem[(32 * _2117) + (32 * _735) + (2 * ceil32(return_data.size)) + 1056 len 64] = call.data[calldata.size len 64]
                        require ext_code.size(arg2)
                        staticcall arg2.0x313ce567 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _2117) + (32 * _735) + (2 * ceil32(return_data.size)) + 1120] = 2
                        mem[(32 * _2117) + (32 * _735) + (2 * ceil32(return_data.size)) + 1152] = arg2
                        mem[(32 * _2117) + (32 * _735) + (2 * ceil32(return_data.size)) + 1184] = arg3
                        mem[(32 * _2117) + (32 * _735) + (2 * ceil32(return_data.size)) + 1216] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _2117) + (32 * _735) + (2 * ceil32(return_data.size)) + 1220] = 10^uint8(ext_call.return_data[0])
                        mem[(32 * _2117) + (32 * _735) + (2 * ceil32(return_data.size)) + 1252] = 64
                        mem[(32 * _2117) + (32 * _735) + (2 * ceil32(return_data.size)) + 1284] = 2
                        mem[(32 * _2117) + (32 * _735) + (2 * ceil32(return_data.size)) + 1316 len 0] = None
                        require ext_code.size(arg1)
                        staticcall arg1.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[(32 * _2117) + (32 * _735) + (2 * ceil32(return_data.size)) + 1316 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _2117) + (32 * _735) + (2 * ceil32(return_data.size)) + 1216 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _2117) + (32 * _735) + (4 * ceil32(return_data.size)) + 1216
                        require return_data.size >= 32
                        _3204 = mem[(32 * _2117) + (32 * _735) + (2 * ceil32(return_data.size)) + 1216 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                        require mem[(32 * _2117) + (32 * _735) + (2 * ceil32(return_data.size)) + 1216 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= 4294967296
                        require mem[(32 * _2117) + (32 * _735) + (2 * ceil32(return_data.size)) + 1216 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _2117) + (32 * _735) + (2 * ceil32(return_data.size)) + 1216 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * _2117) + (32 * _735) + (2 * ceil32(return_data.size)) + 1216] <= 4294967296 and mem[(32 * _2117) + (32 * _735) + (2 * ceil32(return_data.size)) + 1216 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * mem[mem[(32 * _2117) + (32 * _735) + (2 * ceil32(return_data.size)) + 1216 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * _2117) + (32 * _735) + (2 * ceil32(return_data.size)) + 1216]) + 32 <= return_data.size
                        mem[(32 * _2117) + (32 * _735) + (4 * ceil32(return_data.size)) + 1216] = mem[mem[(32 * _2117) + (32 * _735) + (2 * ceil32(return_data.size)) + 1216 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * _2117) + (32 * _735) + (2 * ceil32(return_data.size)) + 1216]
                        _3224 = mem[_3204 + (32 * _2117) + (32 * _735) + (2 * ceil32(return_data.size)) + 1216]
                        mem[(32 * _2117) + (32 * _735) + (4 * ceil32(return_data.size)) + 1248 len floor32(mem[_3204 + (32 * _2117) + (32 * _735) + (2 * ceil32(return_data.size)) + 1216])] = mem[_3204 + (32 * _2117) + (32 * _735) + (2 * ceil32(return_data.size)) + 1248 len floor32(mem[_3204 + (32 * _2117) + (32 * _735) + (2 * ceil32(return_data.size)) + 1216])]
                        if 1 < mem[(32 * _2117) + (32 * _735) + (4 * ceil32(return_data.size)) + 1216]:
                            _3575 = mem[(32 * _2117) + (32 * _735) + (4 * ceil32(return_data.size)) + 1280]
                            require ext_code.size(arg3)
                            staticcall arg3.0x313ce567 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _3224) + (32 * _2117) + (32 * _735) + (4 * ceil32(return_data.size)) + 1248] = 2
                            mem[(32 * _3224) + (32 * _2117) + (32 * _735) + (4 * ceil32(return_data.size)) + 1280] = arg3
                            mem[(32 * _3224) + (32 * _2117) + (32 * _735) + (4 * ceil32(return_data.size)) + 1312] = arg2
                            mem[(32 * _3224) + (32 * _2117) + (32 * _735) + (4 * ceil32(return_data.size)) + 1344] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _3224) + (32 * _2117) + (32 * _735) + (4 * ceil32(return_data.size)) + 1348] = 10^uint8(ext_call.return_data[0])
                            mem[(32 * _3224) + (32 * _2117) + (32 * _735) + (4 * ceil32(return_data.size)) + 1380] = 64
                            mem[(32 * _3224) + (32 * _2117) + (32 * _735) + (4 * ceil32(return_data.size)) + 1412] = 2
                            mem[(32 * _3224) + (32 * _2117) + (32 * _735) + (4 * ceil32(return_data.size)) + 1444 len 0] = None
                            require ext_code.size(arg1)
                            staticcall arg1.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[(32 * _3224) + (32 * _2117) + (32 * _735) + (4 * ceil32(return_data.size)) + 1444 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _3224) + (32 * _2117) + (32 * _735) + (4 * ceil32(return_data.size)) + 1344 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _3224) + (32 * _2117) + (32 * _735) + (6 * ceil32(return_data.size)) + 1344
                            require return_data.size >= 32
                            _3915 = mem[(32 * _3224) + (32 * _2117) + (32 * _735) + (4 * ceil32(return_data.size)) + 1344 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                            require mem[(32 * _3224) + (32 * _2117) + (32 * _735) + (4 * ceil32(return_data.size)) + 1344 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= 4294967296
                            require mem[(32 * _3224) + (32 * _2117) + (32 * _735) + (4 * ceil32(return_data.size)) + 1344 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 32 <= return_data.size
                            require mem[mem[(32 * _3224) + (32 * _2117) + (32 * _735) + (4 * ceil32(return_data.size)) + 1344 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * _3224) + (32 * _2117) + (32 * _735) + (4 * ceil32(return_data.size)) + 1344] <= 4294967296 and mem[(32 * _3224) + (32 * _2117) + (32 * _735) + (4 * ceil32(return_data.size)) + 1344 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * mem[mem[(32 * _3224) + (32 * _2117) + (32 * _735) + (4 * ceil32(return_data.size)) + 1344 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * _3224) + (32 * _2117) + (32 * _735) + (4 * ceil32(return_data.size)) + 1344]) + 32 <= return_data.size
                            mem[(32 * _3224) + (32 * _2117) + (32 * _735) + (6 * ceil32(return_data.size)) + 1344] = mem[mem[(32 * _3224) + (32 * _2117) + (32 * _735) + (4 * ceil32(return_data.size)) + 1344 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * _3224) + (32 * _2117) + (32 * _735) + (4 * ceil32(return_data.size)) + 1344]
                            mem[(32 * _3224) + (32 * _2117) + (32 * _735) + (6 * ceil32(return_data.size)) + 1376 len floor32(mem[_3915 + (32 * _3224) + (32 * _2117) + (32 * _735) + (4 * ceil32(return_data.size)) + 1344])] = mem[_3915 + (32 * _3224) + (32 * _2117) + (32 * _735) + (4 * ceil32(return_data.size)) + 1376 len floor32(mem[_3915 + (32 * _3224) + (32 * _2117) + (32 * _735) + (4 * ceil32(return_data.size)) + 1344])]
                            if 1 < mem[(32 * _3224) + (32 * _2117) + (32 * _735) + (6 * ceil32(return_data.size)) + 1344]:
                                return _3575, 
                                       mem[(32 * _3224) + (32 * _2117) + (32 * _735) + (6 * ceil32(return_data.size)) + 1408],
                                       _1404,
                                       _2666,
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       block.number,
                                       block.timestamp
    else:
        if ext_call.return_data[0]:
            mem[836] = ext_call.return_data[0]
            mem[868] = 64
            mem[900] = 2
            mem[932 len 0] = None
            require ext_code.size(arg1)
            staticcall arg1.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args ext_call.return_data[0], Array(len=2, data=mem[932 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[832 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 832
            require return_data.size >= 32
            _724 = mem[832 len 4], ext_call.return_data[0 len 28]
            require mem[832 len 4], ext_call.return_data[0 len 28] <= 4294967296
            require mem[832 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
            require mem[mem[832 len 4], ext_call.return_data[0 len 28] + 832] <= 4294967296 and mem[832 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[832 len 4], ext_call.return_data[0 len 28] + 832]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 832] = mem[mem[832 len 4], ext_call.return_data[0 len 28] + 832]
            _733 = mem[_724 + 832]
            mem[ceil32(return_data.size) + 864 len floor32(mem[_724 + 832])] = mem[_724 + 864 len floor32(mem[_724 + 832])]
            if 1 < mem[ceil32(return_data.size) + 832]:
                _1402 = mem[ceil32(return_data.size) + 896]
                require ext_code.size(arg3)
                staticcall arg3.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(32 * _733) + ceil32(return_data.size) + 864] = 2
                mem[(32 * _733) + ceil32(return_data.size) + 896] = arg3
                mem[(32 * _733) + ceil32(return_data.size) + 928] = arg2
                mem[(32 * _733) + ceil32(return_data.size) + 960] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                if ext_call.return_data[0] == 1:
                    mem[(32 * _733) + ceil32(return_data.size) + 964] = ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])
                    mem[(32 * _733) + ceil32(return_data.size) + 996] = 64
                    mem[(32 * _733) + ceil32(return_data.size) + 1028] = 2
                    mem[(32 * _733) + ceil32(return_data.size) + 1060 len 0] = None
                    require ext_code.size(arg1)
                    staticcall arg1.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args ext_call.return_data[0] * 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[(32 * _733) + ceil32(return_data.size) + 1060 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _733) + ceil32(return_data.size) + 960 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _733) + (2 * ceil32(return_data.size)) + 960
                    require return_data.size >= 32
                    _2087 = mem[(32 * _733) + ceil32(return_data.size) + 960 len 4], Mask(224, 32, ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) >> 32
                    require mem[(32 * _733) + ceil32(return_data.size) + 960 len 4], Mask(224, 32, ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) >> 32 <= 4294967296
                    require mem[(32 * _733) + ceil32(return_data.size) + 960 len 4], Mask(224, 32, ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _733) + ceil32(return_data.size) + 960 len 4], Mask(224, 32, ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) >> 32 + (32 * _733) + ceil32(return_data.size) + 960] <= 4294967296 and mem[(32 * _733) + ceil32(return_data.size) + 960 len 4], Mask(224, 32, ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) >> 32 + (32 * mem[mem[(32 * _733) + ceil32(return_data.size) + 960 len 4], Mask(224, 32, ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) >> 32 + (32 * _733) + ceil32(return_data.size) + 960]) + 32 <= return_data.size
                    mem[(32 * _733) + (2 * ceil32(return_data.size)) + 960] = mem[mem[(32 * _733) + ceil32(return_data.size) + 960 len 4], Mask(224, 32, ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) >> 32 + (32 * _733) + ceil32(return_data.size) + 960]
                    _2112 = mem[_2087 + (32 * _733) + ceil32(return_data.size) + 960]
                    mem[(32 * _733) + (2 * ceil32(return_data.size)) + 992 len floor32(mem[_2087 + (32 * _733) + ceil32(return_data.size) + 960])] = mem[_2087 + (32 * _733) + ceil32(return_data.size) + 992 len floor32(mem[_2087 + (32 * _733) + ceil32(return_data.size) + 960])]
                    if 1 < mem[(32 * _733) + (2 * ceil32(return_data.size)) + 960]:
                        _2661 = mem[(32 * _733) + (2 * ceil32(return_data.size)) + 1024]
                        mem[(32 * _2112) + (32 * _733) + (2 * ceil32(return_data.size)) + 992 len 64] = call.data[calldata.size len 64]
                        mem[(32 * _2112) + (32 * _733) + (2 * ceil32(return_data.size)) + 1056 len 64] = call.data[calldata.size len 64]
                        require ext_code.size(arg2)
                        staticcall arg2.0x313ce567 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _2112) + (32 * _733) + (2 * ceil32(return_data.size)) + 1120] = 2
                        mem[(32 * _2112) + (32 * _733) + (2 * ceil32(return_data.size)) + 1152] = arg2
                        mem[(32 * _2112) + (32 * _733) + (2 * ceil32(return_data.size)) + 1184] = arg3
                        mem[(32 * _2112) + (32 * _733) + (2 * ceil32(return_data.size)) + 1216] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _2112) + (32 * _733) + (2 * ceil32(return_data.size)) + 1220] = 10^uint8(ext_call.return_data[0])
                        mem[(32 * _2112) + (32 * _733) + (2 * ceil32(return_data.size)) + 1252] = 64
                        mem[(32 * _2112) + (32 * _733) + (2 * ceil32(return_data.size)) + 1284] = 2
                        mem[(32 * _2112) + (32 * _733) + (2 * ceil32(return_data.size)) + 1316 len 0] = None
                        require ext_code.size(arg1)
                        staticcall arg1.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[(32 * _2112) + (32 * _733) + (2 * ceil32(return_data.size)) + 1316 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _2112) + (32 * _733) + (2 * ceil32(return_data.size)) + 1216 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _2112) + (32 * _733) + (4 * ceil32(return_data.size)) + 1216
                        require return_data.size >= 32
                        _3194 = mem[(32 * _2112) + (32 * _733) + (2 * ceil32(return_data.size)) + 1216 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                        require mem[(32 * _2112) + (32 * _733) + (2 * ceil32(return_data.size)) + 1216 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= 4294967296
                        require mem[(32 * _2112) + (32 * _733) + (2 * ceil32(return_data.size)) + 1216 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _2112) + (32 * _733) + (2 * ceil32(return_data.size)) + 1216 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * _2112) + (32 * _733) + (2 * ceil32(return_data.size)) + 1216] <= 4294967296 and mem[(32 * _2112) + (32 * _733) + (2 * ceil32(return_data.size)) + 1216 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * mem[mem[(32 * _2112) + (32 * _733) + (2 * ceil32(return_data.size)) + 1216 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * _2112) + (32 * _733) + (2 * ceil32(return_data.size)) + 1216]) + 32 <= return_data.size
                        mem[(32 * _2112) + (32 * _733) + (4 * ceil32(return_data.size)) + 1216] = mem[mem[(32 * _2112) + (32 * _733) + (2 * ceil32(return_data.size)) + 1216 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * _2112) + (32 * _733) + (2 * ceil32(return_data.size)) + 1216]
                        _3219 = mem[_3194 + (32 * _2112) + (32 * _733) + (2 * ceil32(return_data.size)) + 1216]
                        mem[(32 * _2112) + (32 * _733) + (4 * ceil32(return_data.size)) + 1248 len floor32(mem[_3194 + (32 * _2112) + (32 * _733) + (2 * ceil32(return_data.size)) + 1216])] = mem[_3194 + (32 * _2112) + (32 * _733) + (2 * ceil32(return_data.size)) + 1248 len floor32(mem[_3194 + (32 * _2112) + (32 * _733) + (2 * ceil32(return_data.size)) + 1216])]
                        if 1 < mem[(32 * _2112) + (32 * _733) + (4 * ceil32(return_data.size)) + 1216]:
                            _3570 = mem[(32 * _2112) + (32 * _733) + (4 * ceil32(return_data.size)) + 1280]
                            require ext_code.size(arg3)
                            staticcall arg3.0x313ce567 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _3219) + (32 * _2112) + (32 * _733) + (4 * ceil32(return_data.size)) + 1248] = 2
                            mem[(32 * _3219) + (32 * _2112) + (32 * _733) + (4 * ceil32(return_data.size)) + 1280] = arg3
                            mem[(32 * _3219) + (32 * _2112) + (32 * _733) + (4 * ceil32(return_data.size)) + 1312] = arg2
                            mem[(32 * _3219) + (32 * _2112) + (32 * _733) + (4 * ceil32(return_data.size)) + 1344] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _3219) + (32 * _2112) + (32 * _733) + (4 * ceil32(return_data.size)) + 1348] = 10^uint8(ext_call.return_data[0])
                            mem[(32 * _3219) + (32 * _2112) + (32 * _733) + (4 * ceil32(return_data.size)) + 1380] = 64
                            mem[(32 * _3219) + (32 * _2112) + (32 * _733) + (4 * ceil32(return_data.size)) + 1412] = 2
                            mem[(32 * _3219) + (32 * _2112) + (32 * _733) + (4 * ceil32(return_data.size)) + 1444 len 0] = None
                            require ext_code.size(arg1)
                            staticcall arg1.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[(32 * _3219) + (32 * _2112) + (32 * _733) + (4 * ceil32(return_data.size)) + 1444 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _3219) + (32 * _2112) + (32 * _733) + (4 * ceil32(return_data.size)) + 1344 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _3219) + (32 * _2112) + (32 * _733) + (6 * ceil32(return_data.size)) + 1344
                            require return_data.size >= 32
                            _3905 = mem[(32 * _3219) + (32 * _2112) + (32 * _733) + (4 * ceil32(return_data.size)) + 1344 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                            require mem[(32 * _3219) + (32 * _2112) + (32 * _733) + (4 * ceil32(return_data.size)) + 1344 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= 4294967296
                            require mem[(32 * _3219) + (32 * _2112) + (32 * _733) + (4 * ceil32(return_data.size)) + 1344 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 32 <= return_data.size
                            require mem[mem[(32 * _3219) + (32 * _2112) + (32 * _733) + (4 * ceil32(return_data.size)) + 1344 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * _3219) + (32 * _2112) + (32 * _733) + (4 * ceil32(return_data.size)) + 1344] <= 4294967296 and mem[(32 * _3219) + (32 * _2112) + (32 * _733) + (4 * ceil32(return_data.size)) + 1344 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * mem[mem[(32 * _3219) + (32 * _2112) + (32 * _733) + (4 * ceil32(return_data.size)) + 1344 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * _3219) + (32 * _2112) + (32 * _733) + (4 * ceil32(return_data.size)) + 1344]) + 32 <= return_data.size
                            mem[(32 * _3219) + (32 * _2112) + (32 * _733) + (6 * ceil32(return_data.size)) + 1344] = mem[mem[(32 * _3219) + (32 * _2112) + (32 * _733) + (4 * ceil32(return_data.size)) + 1344 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * _3219) + (32 * _2112) + (32 * _733) + (4 * ceil32(return_data.size)) + 1344]
                            mem[(32 * _3219) + (32 * _2112) + (32 * _733) + (6 * ceil32(return_data.size)) + 1376 len floor32(mem[_3905 + (32 * _3219) + (32 * _2112) + (32 * _733) + (4 * ceil32(return_data.size)) + 1344])] = mem[_3905 + (32 * _3219) + (32 * _2112) + (32 * _733) + (4 * ceil32(return_data.size)) + 1376 len floor32(mem[_3905 + (32 * _3219) + (32 * _2112) + (32 * _733) + (4 * ceil32(return_data.size)) + 1344])]
                            if 1 < mem[(32 * _3219) + (32 * _2112) + (32 * _733) + (6 * ceil32(return_data.size)) + 1344]:
                                return _3570, 
                                       mem[(32 * _3219) + (32 * _2112) + (32 * _733) + (6 * ceil32(return_data.size)) + 1408],
                                       _1402,
                                       _2661,
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       block.number,
                                       block.timestamp
                else:
                    if ext_call.return_data[0]:
                        mem[(32 * _733) + ceil32(return_data.size) + 964] = ext_call.return_data[0]
                        mem[(32 * _733) + ceil32(return_data.size) + 996] = 64
                        mem[(32 * _733) + ceil32(return_data.size) + 1028] = 2
                        mem[(32 * _733) + ceil32(return_data.size) + 1060 len 0] = None
                        require ext_code.size(arg1)
                        staticcall arg1.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args ext_call.return_data[0], Array(len=2, data=mem[(32 * _733) + ceil32(return_data.size) + 1060 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _733) + ceil32(return_data.size) + 960 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _733) + (2 * ceil32(return_data.size)) + 960
                        require return_data.size >= 32
                        _2083 = mem[(32 * _733) + ceil32(return_data.size) + 960 len 4], ext_call.return_data[0 len 28]
                        require mem[(32 * _733) + ceil32(return_data.size) + 960 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[(32 * _733) + ceil32(return_data.size) + 960 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[(32 * _733) + ceil32(return_data.size) + 960 len 4], ext_call.return_data[0 len 28] + (32 * _733) + ceil32(return_data.size) + 960] <= 4294967296 and mem[(32 * _733) + ceil32(return_data.size) + 960 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * _733) + ceil32(return_data.size) + 960 len 4], ext_call.return_data[0 len 28] + (32 * _733) + ceil32(return_data.size) + 960]) + 32 <= return_data.size
                        mem[(32 * _733) + (2 * ceil32(return_data.size)) + 960] = mem[mem[(32 * _733) + ceil32(return_data.size) + 960 len 4], ext_call.return_data[0 len 28] + (32 * _733) + ceil32(return_data.size) + 960]
                        _2110 = mem[_2083 + (32 * _733) + ceil32(return_data.size) + 960]
                        mem[(32 * _733) + (2 * ceil32(return_data.size)) + 992 len floor32(mem[_2083 + (32 * _733) + ceil32(return_data.size) + 960])] = mem[_2083 + (32 * _733) + ceil32(return_data.size) + 992 len floor32(mem[_2083 + (32 * _733) + ceil32(return_data.size) + 960])]
                        if 1 < mem[(32 * _733) + (2 * ceil32(return_data.size)) + 960]:
                            _2659 = mem[(32 * _733) + (2 * ceil32(return_data.size)) + 1024]
                            mem[(32 * _2110) + (32 * _733) + (2 * ceil32(return_data.size)) + 992 len 64] = call.data[calldata.size len 64]
                            mem[(32 * _2110) + (32 * _733) + (2 * ceil32(return_data.size)) + 1056 len 64] = call.data[calldata.size len 64]
                            require ext_code.size(arg2)
                            staticcall arg2.0x313ce567 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _2110) + (32 * _733) + (2 * ceil32(return_data.size)) + 1120] = 2
                            mem[(32 * _2110) + (32 * _733) + (2 * ceil32(return_data.size)) + 1152] = arg2
                            mem[(32 * _2110) + (32 * _733) + (2 * ceil32(return_data.size)) + 1184] = arg3
                            mem[(32 * _2110) + (32 * _733) + (2 * ceil32(return_data.size)) + 1216] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _2110) + (32 * _733) + (2 * ceil32(return_data.size)) + 1220] = 10^uint8(ext_call.return_data[0])
                            mem[(32 * _2110) + (32 * _733) + (2 * ceil32(return_data.size)) + 1252] = 64
                            mem[(32 * _2110) + (32 * _733) + (2 * ceil32(return_data.size)) + 1284] = 2
                            mem[(32 * _2110) + (32 * _733) + (2 * ceil32(return_data.size)) + 1316 len 0] = None
                            require ext_code.size(arg1)
                            staticcall arg1.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[(32 * _2110) + (32 * _733) + (2 * ceil32(return_data.size)) + 1316 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _2110) + (32 * _733) + (2 * ceil32(return_data.size)) + 1216 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _2110) + (32 * _733) + (4 * ceil32(return_data.size)) + 1216
                            require return_data.size >= 32
                            _3190 = mem[(32 * _2110) + (32 * _733) + (2 * ceil32(return_data.size)) + 1216 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                            require mem[(32 * _2110) + (32 * _733) + (2 * ceil32(return_data.size)) + 1216 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= 4294967296
                            require mem[(32 * _2110) + (32 * _733) + (2 * ceil32(return_data.size)) + 1216 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 32 <= return_data.size
                            require mem[mem[(32 * _2110) + (32 * _733) + (2 * ceil32(return_data.size)) + 1216 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * _2110) + (32 * _733) + (2 * ceil32(return_data.size)) + 1216] <= 4294967296 and mem[(32 * _2110) + (32 * _733) + (2 * ceil32(return_data.size)) + 1216 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * mem[mem[(32 * _2110) + (32 * _733) + (2 * ceil32(return_data.size)) + 1216 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * _2110) + (32 * _733) + (2 * ceil32(return_data.size)) + 1216]) + 32 <= return_data.size
                            mem[(32 * _2110) + (32 * _733) + (4 * ceil32(return_data.size)) + 1216] = mem[mem[(32 * _2110) + (32 * _733) + (2 * ceil32(return_data.size)) + 1216 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * _2110) + (32 * _733) + (2 * ceil32(return_data.size)) + 1216]
                            _3217 = mem[_3190 + (32 * _2110) + (32 * _733) + (2 * ceil32(return_data.size)) + 1216]
                            mem[(32 * _2110) + (32 * _733) + (4 * ceil32(return_data.size)) + 1248 len floor32(mem[_3190 + (32 * _2110) + (32 * _733) + (2 * ceil32(return_data.size)) + 1216])] = mem[_3190 + (32 * _2110) + (32 * _733) + (2 * ceil32(return_data.size)) + 1248 len floor32(mem[_3190 + (32 * _2110) + (32 * _733) + (2 * ceil32(return_data.size)) + 1216])]
                            if 1 < mem[(32 * _2110) + (32 * _733) + (4 * ceil32(return_data.size)) + 1216]:
                                _3568 = mem[(32 * _2110) + (32 * _733) + (4 * ceil32(return_data.size)) + 1280]
                                require ext_code.size(arg3)
                                staticcall arg3.0x313ce567 with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(32 * _3217) + (32 * _2110) + (32 * _733) + (4 * ceil32(return_data.size)) + 1248] = 2
                                mem[(32 * _3217) + (32 * _2110) + (32 * _733) + (4 * ceil32(return_data.size)) + 1280] = arg3
                                mem[(32 * _3217) + (32 * _2110) + (32 * _733) + (4 * ceil32(return_data.size)) + 1312] = arg2
                                mem[(32 * _3217) + (32 * _2110) + (32 * _733) + (4 * ceil32(return_data.size)) + 1344] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _3217) + (32 * _2110) + (32 * _733) + (4 * ceil32(return_data.size)) + 1348] = 10^uint8(ext_call.return_data[0])
                                mem[(32 * _3217) + (32 * _2110) + (32 * _733) + (4 * ceil32(return_data.size)) + 1380] = 64
                                mem[(32 * _3217) + (32 * _2110) + (32 * _733) + (4 * ceil32(return_data.size)) + 1412] = 2
                                mem[(32 * _3217) + (32 * _2110) + (32 * _733) + (4 * ceil32(return_data.size)) + 1444 len 0] = None
                                require ext_code.size(arg1)
                                staticcall arg1.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[(32 * _3217) + (32 * _2110) + (32 * _733) + (4 * ceil32(return_data.size)) + 1444 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _3217) + (32 * _2110) + (32 * _733) + (4 * ceil32(return_data.size)) + 1344 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _3217) + (32 * _2110) + (32 * _733) + (6 * ceil32(return_data.size)) + 1344
                                require return_data.size >= 32
                                _3901 = mem[(32 * _3217) + (32 * _2110) + (32 * _733) + (4 * ceil32(return_data.size)) + 1344 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                                require mem[(32 * _3217) + (32 * _2110) + (32 * _733) + (4 * ceil32(return_data.size)) + 1344 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= 4294967296
                                require mem[(32 * _3217) + (32 * _2110) + (32 * _733) + (4 * ceil32(return_data.size)) + 1344 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 32 <= return_data.size
                                require mem[mem[(32 * _3217) + (32 * _2110) + (32 * _733) + (4 * ceil32(return_data.size)) + 1344 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * _3217) + (32 * _2110) + (32 * _733) + (4 * ceil32(return_data.size)) + 1344] <= 4294967296 and mem[(32 * _3217) + (32 * _2110) + (32 * _733) + (4 * ceil32(return_data.size)) + 1344 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * mem[mem[(32 * _3217) + (32 * _2110) + (32 * _733) + (4 * ceil32(return_data.size)) + 1344 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * _3217) + (32 * _2110) + (32 * _733) + (4 * ceil32(return_data.size)) + 1344]) + 32 <= return_data.size
                                mem[(32 * _3217) + (32 * _2110) + (32 * _733) + (6 * ceil32(return_data.size)) + 1344] = mem[mem[(32 * _3217) + (32 * _2110) + (32 * _733) + (4 * ceil32(return_data.size)) + 1344 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * _3217) + (32 * _2110) + (32 * _733) + (4 * ceil32(return_data.size)) + 1344]
                                mem[(32 * _3217) + (32 * _2110) + (32 * _733) + (6 * ceil32(return_data.size)) + 1376 len floor32(mem[_3901 + (32 * _3217) + (32 * _2110) + (32 * _733) + (4 * ceil32(return_data.size)) + 1344])] = mem[_3901 + (32 * _3217) + (32 * _2110) + (32 * _733) + (4 * ceil32(return_data.size)) + 1376 len floor32(mem[_3901 + (32 * _3217) + (32 * _2110) + (32 * _733) + (4 * ceil32(return_data.size)) + 1344])]
                                if 1 < mem[(32 * _3217) + (32 * _2110) + (32 * _733) + (6 * ceil32(return_data.size)) + 1344]:
                                    return _3568, 
                                           mem[(32 * _3217) + (32 * _2110) + (32 * _733) + (6 * ceil32(return_data.size)) + 1408],
                                           _1402,
                                           _2659,
                                           ext_call.return_data[0],
                                           ext_call.return_data[0],
                                           block.number,
                                           block.timestamp
                    else:
                        mem[(32 * _733) + ceil32(return_data.size) + 964] = 10^uint8(ext_call.return_data[0])
                        mem[(32 * _733) + ceil32(return_data.size) + 996] = 64
                        mem[(32 * _733) + ceil32(return_data.size) + 1028] = 2
                        mem[(32 * _733) + ceil32(return_data.size) + 1060 len 0] = None
                        require ext_code.size(arg1)
                        staticcall arg1.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[(32 * _733) + ceil32(return_data.size) + 1060 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _733) + ceil32(return_data.size) + 960 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _733) + (2 * ceil32(return_data.size)) + 960
                        require return_data.size >= 32
                        _2085 = mem[(32 * _733) + ceil32(return_data.size) + 960 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                        require mem[(32 * _733) + ceil32(return_data.size) + 960 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= 4294967296
                        require mem[(32 * _733) + ceil32(return_data.size) + 960 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _733) + ceil32(return_data.size) + 960 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * _733) + ceil32(return_data.size) + 960] <= 4294967296 and mem[(32 * _733) + ceil32(return_data.size) + 960 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * mem[mem[(32 * _733) + ceil32(return_data.size) + 960 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * _733) + ceil32(return_data.size) + 960]) + 32 <= return_data.size
                        mem[(32 * _733) + (2 * ceil32(return_data.size)) + 960] = mem[mem[(32 * _733) + ceil32(return_data.size) + 960 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * _733) + ceil32(return_data.size) + 960]
                        _2111 = mem[_2085 + (32 * _733) + ceil32(return_data.size) + 960]
                        mem[(32 * _733) + (2 * ceil32(return_data.size)) + 992 len floor32(mem[_2085 + (32 * _733) + ceil32(return_data.size) + 960])] = mem[_2085 + (32 * _733) + ceil32(return_data.size) + 992 len floor32(mem[_2085 + (32 * _733) + ceil32(return_data.size) + 960])]
                        if 1 < mem[(32 * _733) + (2 * ceil32(return_data.size)) + 960]:
                            _2660 = mem[(32 * _733) + (2 * ceil32(return_data.size)) + 1024]
                            mem[(32 * _2111) + (32 * _733) + (2 * ceil32(return_data.size)) + 992 len 64] = call.data[calldata.size len 64]
                            mem[(32 * _2111) + (32 * _733) + (2 * ceil32(return_data.size)) + 1056 len 64] = call.data[calldata.size len 64]
                            require ext_code.size(arg2)
                            staticcall arg2.0x313ce567 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _2111) + (32 * _733) + (2 * ceil32(return_data.size)) + 1120] = 2
                            mem[(32 * _2111) + (32 * _733) + (2 * ceil32(return_data.size)) + 1152] = arg2
                            mem[(32 * _2111) + (32 * _733) + (2 * ceil32(return_data.size)) + 1184] = arg3
                            mem[(32 * _2111) + (32 * _733) + (2 * ceil32(return_data.size)) + 1216] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _2111) + (32 * _733) + (2 * ceil32(return_data.size)) + 1220] = 10^uint8(ext_call.return_data[0])
                            mem[(32 * _2111) + (32 * _733) + (2 * ceil32(return_data.size)) + 1252] = 64
                            mem[(32 * _2111) + (32 * _733) + (2 * ceil32(return_data.size)) + 1284] = 2
                            mem[(32 * _2111) + (32 * _733) + (2 * ceil32(return_data.size)) + 1316 len 0] = None
                            require ext_code.size(arg1)
                            staticcall arg1.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[(32 * _2111) + (32 * _733) + (2 * ceil32(return_data.size)) + 1316 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _2111) + (32 * _733) + (2 * ceil32(return_data.size)) + 1216 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _2111) + (32 * _733) + (4 * ceil32(return_data.size)) + 1216
                            require return_data.size >= 32
                            _3192 = mem[(32 * _2111) + (32 * _733) + (2 * ceil32(return_data.size)) + 1216 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                            require mem[(32 * _2111) + (32 * _733) + (2 * ceil32(return_data.size)) + 1216 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= 4294967296
                            require mem[(32 * _2111) + (32 * _733) + (2 * ceil32(return_data.size)) + 1216 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 32 <= return_data.size
                            require mem[mem[(32 * _2111) + (32 * _733) + (2 * ceil32(return_data.size)) + 1216 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * _2111) + (32 * _733) + (2 * ceil32(return_data.size)) + 1216] <= 4294967296 and mem[(32 * _2111) + (32 * _733) + (2 * ceil32(return_data.size)) + 1216 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * mem[mem[(32 * _2111) + (32 * _733) + (2 * ceil32(return_data.size)) + 1216 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * _2111) + (32 * _733) + (2 * ceil32(return_data.size)) + 1216]) + 32 <= return_data.size
                            mem[(32 * _2111) + (32 * _733) + (4 * ceil32(return_data.size)) + 1216] = mem[mem[(32 * _2111) + (32 * _733) + (2 * ceil32(return_data.size)) + 1216 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * _2111) + (32 * _733) + (2 * ceil32(return_data.size)) + 1216]
                            _3218 = mem[_3192 + (32 * _2111) + (32 * _733) + (2 * ceil32(return_data.size)) + 1216]
                            mem[(32 * _2111) + (32 * _733) + (4 * ceil32(return_data.size)) + 1248 len floor32(mem[_3192 + (32 * _2111) + (32 * _733) + (2 * ceil32(return_data.size)) + 1216])] = mem[_3192 + (32 * _2111) + (32 * _733) + (2 * ceil32(return_data.size)) + 1248 len floor32(mem[_3192 + (32 * _2111) + (32 * _733) + (2 * ceil32(return_data.size)) + 1216])]
                            if 1 < mem[(32 * _2111) + (32 * _733) + (4 * ceil32(return_data.size)) + 1216]:
                                _3569 = mem[(32 * _2111) + (32 * _733) + (4 * ceil32(return_data.size)) + 1280]
                                require ext_code.size(arg3)
                                staticcall arg3.0x313ce567 with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(32 * _3218) + (32 * _2111) + (32 * _733) + (4 * ceil32(return_data.size)) + 1248] = 2
                                mem[(32 * _3218) + (32 * _2111) + (32 * _733) + (4 * ceil32(return_data.size)) + 1280] = arg3
                                mem[(32 * _3218) + (32 * _2111) + (32 * _733) + (4 * ceil32(return_data.size)) + 1312] = arg2
                                mem[(32 * _3218) + (32 * _2111) + (32 * _733) + (4 * ceil32(return_data.size)) + 1344] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _3218) + (32 * _2111) + (32 * _733) + (4 * ceil32(return_data.size)) + 1348] = 10^uint8(ext_call.return_data[0])
                                mem[(32 * _3218) + (32 * _2111) + (32 * _733) + (4 * ceil32(return_data.size)) + 1380] = 64
                                mem[(32 * _3218) + (32 * _2111) + (32 * _733) + (4 * ceil32(return_data.size)) + 1412] = 2
                                mem[(32 * _3218) + (32 * _2111) + (32 * _733) + (4 * ceil32(return_data.size)) + 1444 len 0] = None
                                require ext_code.size(arg1)
                                staticcall arg1.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[(32 * _3218) + (32 * _2111) + (32 * _733) + (4 * ceil32(return_data.size)) + 1444 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _3218) + (32 * _2111) + (32 * _733) + (4 * ceil32(return_data.size)) + 1344 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _3218) + (32 * _2111) + (32 * _733) + (6 * ceil32(return_data.size)) + 1344
                                require return_data.size >= 32
                                _3903 = mem[(32 * _3218) + (32 * _2111) + (32 * _733) + (4 * ceil32(return_data.size)) + 1344 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                                require mem[(32 * _3218) + (32 * _2111) + (32 * _733) + (4 * ceil32(return_data.size)) + 1344 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= 4294967296
                                require mem[(32 * _3218) + (32 * _2111) + (32 * _733) + (4 * ceil32(return_data.size)) + 1344 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 32 <= return_data.size
                                require mem[mem[(32 * _3218) + (32 * _2111) + (32 * _733) + (4 * ceil32(return_data.size)) + 1344 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * _3218) + (32 * _2111) + (32 * _733) + (4 * ceil32(return_data.size)) + 1344] <= 4294967296 and mem[(32 * _3218) + (32 * _2111) + (32 * _733) + (4 * ceil32(return_data.size)) + 1344 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * mem[mem[(32 * _3218) + (32 * _2111) + (32 * _733) + (4 * ceil32(return_data.size)) + 1344 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * _3218) + (32 * _2111) + (32 * _733) + (4 * ceil32(return_data.size)) + 1344]) + 32 <= return_data.size
                                mem[(32 * _3218) + (32 * _2111) + (32 * _733) + (6 * ceil32(return_data.size)) + 1344] = mem[mem[(32 * _3218) + (32 * _2111) + (32 * _733) + (4 * ceil32(return_data.size)) + 1344 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * _3218) + (32 * _2111) + (32 * _733) + (4 * ceil32(return_data.size)) + 1344]
                                mem[(32 * _3218) + (32 * _2111) + (32 * _733) + (6 * ceil32(return_data.size)) + 1376 len floor32(mem[_3903 + (32 * _3218) + (32 * _2111) + (32 * _733) + (4 * ceil32(return_data.size)) + 1344])] = mem[_3903 + (32 * _3218) + (32 * _2111) + (32 * _733) + (4 * ceil32(return_data.size)) + 1376 len floor32(mem[_3903 + (32 * _3218) + (32 * _2111) + (32 * _733) + (4 * ceil32(return_data.size)) + 1344])]
                                if 1 < mem[(32 * _3218) + (32 * _2111) + (32 * _733) + (6 * ceil32(return_data.size)) + 1344]:
                                    return _3569, 
                                           mem[(32 * _3218) + (32 * _2111) + (32 * _733) + (6 * ceil32(return_data.size)) + 1408],
                                           _1402,
                                           _2660,
                                           ext_call.return_data[0],
                                           ext_call.return_data[0],
                                           block.number,
                                           block.timestamp
        else:
            mem[836] = 10^uint8(ext_call.return_data[0])
            mem[868] = 64
            mem[900] = 2
            mem[932 len 0] = None
            require ext_code.size(arg1)
            staticcall arg1.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[932 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[832 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 832
            require return_data.size >= 32
            _726 = mem[832 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
            require mem[832 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= 4294967296
            require mem[832 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 32 <= return_data.size
            require mem[mem[832 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 832] <= 4294967296 and mem[832 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * mem[mem[832 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 832]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 832] = mem[mem[832 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 832]
            _734 = mem[_726 + 832]
            mem[ceil32(return_data.size) + 864 len floor32(mem[_726 + 832])] = mem[_726 + 864 len floor32(mem[_726 + 832])]
            if 1 < mem[ceil32(return_data.size) + 832]:
                _1403 = mem[ceil32(return_data.size) + 896]
                require ext_code.size(arg3)
                staticcall arg3.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(32 * _734) + ceil32(return_data.size) + 864] = 2
                mem[(32 * _734) + ceil32(return_data.size) + 896] = arg3
                mem[(32 * _734) + ceil32(return_data.size) + 928] = arg2
                mem[(32 * _734) + ceil32(return_data.size) + 960] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                if ext_call.return_data[0] == 1:
                    mem[(32 * _734) + ceil32(return_data.size) + 964] = ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])
                    mem[(32 * _734) + ceil32(return_data.size) + 996] = 64
                    mem[(32 * _734) + ceil32(return_data.size) + 1028] = 2
                    mem[(32 * _734) + ceil32(return_data.size) + 1060 len 0] = None
                    require ext_code.size(arg1)
                    staticcall arg1.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args ext_call.return_data[0] * 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[(32 * _734) + ceil32(return_data.size) + 1060 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _734) + ceil32(return_data.size) + 960 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _734) + (2 * ceil32(return_data.size)) + 960
                    require return_data.size >= 32
                    _2093 = mem[(32 * _734) + ceil32(return_data.size) + 960 len 4], Mask(224, 32, ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) >> 32
                    require mem[(32 * _734) + ceil32(return_data.size) + 960 len 4], Mask(224, 32, ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) >> 32 <= 4294967296
                    require mem[(32 * _734) + ceil32(return_data.size) + 960 len 4], Mask(224, 32, ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _734) + ceil32(return_data.size) + 960 len 4], Mask(224, 32, ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) >> 32 + (32 * _734) + ceil32(return_data.size) + 960] <= 4294967296 and mem[(32 * _734) + ceil32(return_data.size) + 960 len 4], Mask(224, 32, ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) >> 32 + (32 * mem[mem[(32 * _734) + ceil32(return_data.size) + 960 len 4], Mask(224, 32, ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) >> 32 + (32 * _734) + ceil32(return_data.size) + 960]) + 32 <= return_data.size
                    mem[(32 * _734) + (2 * ceil32(return_data.size)) + 960] = mem[mem[(32 * _734) + ceil32(return_data.size) + 960 len 4], Mask(224, 32, ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) >> 32 + (32 * _734) + ceil32(return_data.size) + 960]
                    _2115 = mem[_2093 + (32 * _734) + ceil32(return_data.size) + 960]
                    mem[(32 * _734) + (2 * ceil32(return_data.size)) + 992 len floor32(mem[_2093 + (32 * _734) + ceil32(return_data.size) + 960])] = mem[_2093 + (32 * _734) + ceil32(return_data.size) + 992 len floor32(mem[_2093 + (32 * _734) + ceil32(return_data.size) + 960])]
                    if 1 < mem[(32 * _734) + (2 * ceil32(return_data.size)) + 960]:
                        _2664 = mem[(32 * _734) + (2 * ceil32(return_data.size)) + 1024]
                        mem[(32 * _2115) + (32 * _734) + (2 * ceil32(return_data.size)) + 992 len 64] = call.data[calldata.size len 64]
                        mem[(32 * _2115) + (32 * _734) + (2 * ceil32(return_data.size)) + 1056 len 64] = call.data[calldata.size len 64]
                        require ext_code.size(arg2)
                        staticcall arg2.0x313ce567 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _2115) + (32 * _734) + (2 * ceil32(return_data.size)) + 1120] = 2
                        mem[(32 * _2115) + (32 * _734) + (2 * ceil32(return_data.size)) + 1152] = arg2
                        mem[(32 * _2115) + (32 * _734) + (2 * ceil32(return_data.size)) + 1184] = arg3
                        mem[(32 * _2115) + (32 * _734) + (2 * ceil32(return_data.size)) + 1216] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _2115) + (32 * _734) + (2 * ceil32(return_data.size)) + 1220] = 10^uint8(ext_call.return_data[0])
                        mem[(32 * _2115) + (32 * _734) + (2 * ceil32(return_data.size)) + 1252] = 64
                        mem[(32 * _2115) + (32 * _734) + (2 * ceil32(return_data.size)) + 1284] = 2
                        mem[(32 * _2115) + (32 * _734) + (2 * ceil32(return_data.size)) + 1316 len 0] = None
                        require ext_code.size(arg1)
                        staticcall arg1.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[(32 * _2115) + (32 * _734) + (2 * ceil32(return_data.size)) + 1316 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _2115) + (32 * _734) + (2 * ceil32(return_data.size)) + 1216 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _2115) + (32 * _734) + (4 * ceil32(return_data.size)) + 1216
                        require return_data.size >= 32
                        _3200 = mem[(32 * _2115) + (32 * _734) + (2 * ceil32(return_data.size)) + 1216 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                        require mem[(32 * _2115) + (32 * _734) + (2 * ceil32(return_data.size)) + 1216 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= 4294967296
                        require mem[(32 * _2115) + (32 * _734) + (2 * ceil32(return_data.size)) + 1216 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _2115) + (32 * _734) + (2 * ceil32(return_data.size)) + 1216 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * _2115) + (32 * _734) + (2 * ceil32(return_data.size)) + 1216] <= 4294967296 and mem[(32 * _2115) + (32 * _734) + (2 * ceil32(return_data.size)) + 1216 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * mem[mem[(32 * _2115) + (32 * _734) + (2 * ceil32(return_data.size)) + 1216 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * _2115) + (32 * _734) + (2 * ceil32(return_data.size)) + 1216]) + 32 <= return_data.size
                        mem[(32 * _2115) + (32 * _734) + (4 * ceil32(return_data.size)) + 1216] = mem[mem[(32 * _2115) + (32 * _734) + (2 * ceil32(return_data.size)) + 1216 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * _2115) + (32 * _734) + (2 * ceil32(return_data.size)) + 1216]
                        _3222 = mem[_3200 + (32 * _2115) + (32 * _734) + (2 * ceil32(return_data.size)) + 1216]
                        mem[(32 * _2115) + (32 * _734) + (4 * ceil32(return_data.size)) + 1248 len floor32(mem[_3200 + (32 * _2115) + (32 * _734) + (2 * ceil32(return_data.size)) + 1216])] = mem[_3200 + (32 * _2115) + (32 * _734) + (2 * ceil32(return_data.size)) + 1248 len floor32(mem[_3200 + (32 * _2115) + (32 * _734) + (2 * ceil32(return_data.size)) + 1216])]
                        if 1 < mem[(32 * _2115) + (32 * _734) + (4 * ceil32(return_data.size)) + 1216]:
                            _3573 = mem[(32 * _2115) + (32 * _734) + (4 * ceil32(return_data.size)) + 1280]
                            require ext_code.size(arg3)
                            staticcall arg3.0x313ce567 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _3222) + (32 * _2115) + (32 * _734) + (4 * ceil32(return_data.size)) + 1248] = 2
                            mem[(32 * _3222) + (32 * _2115) + (32 * _734) + (4 * ceil32(return_data.size)) + 1280] = arg3
                            mem[(32 * _3222) + (32 * _2115) + (32 * _734) + (4 * ceil32(return_data.size)) + 1312] = arg2
                            mem[(32 * _3222) + (32 * _2115) + (32 * _734) + (4 * ceil32(return_data.size)) + 1344] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _3222) + (32 * _2115) + (32 * _734) + (4 * ceil32(return_data.size)) + 1348] = 10^uint8(ext_call.return_data[0])
                            mem[(32 * _3222) + (32 * _2115) + (32 * _734) + (4 * ceil32(return_data.size)) + 1380] = 64
                            mem[(32 * _3222) + (32 * _2115) + (32 * _734) + (4 * ceil32(return_data.size)) + 1412] = 2
                            mem[(32 * _3222) + (32 * _2115) + (32 * _734) + (4 * ceil32(return_data.size)) + 1444 len 0] = None
                            require ext_code.size(arg1)
                            staticcall arg1.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[(32 * _3222) + (32 * _2115) + (32 * _734) + (4 * ceil32(return_data.size)) + 1444 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _3222) + (32 * _2115) + (32 * _734) + (4 * ceil32(return_data.size)) + 1344 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _3222) + (32 * _2115) + (32 * _734) + (6 * ceil32(return_data.size)) + 1344
                            require return_data.size >= 32
                            _3911 = mem[(32 * _3222) + (32 * _2115) + (32 * _734) + (4 * ceil32(return_data.size)) + 1344 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                            require mem[(32 * _3222) + (32 * _2115) + (32 * _734) + (4 * ceil32(return_data.size)) + 1344 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= 4294967296
                            require mem[(32 * _3222) + (32 * _2115) + (32 * _734) + (4 * ceil32(return_data.size)) + 1344 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 32 <= return_data.size
                            require mem[mem[(32 * _3222) + (32 * _2115) + (32 * _734) + (4 * ceil32(return_data.size)) + 1344 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * _3222) + (32 * _2115) + (32 * _734) + (4 * ceil32(return_data.size)) + 1344] <= 4294967296 and mem[(32 * _3222) + (32 * _2115) + (32 * _734) + (4 * ceil32(return_data.size)) + 1344 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * mem[mem[(32 * _3222) + (32 * _2115) + (32 * _734) + (4 * ceil32(return_data.size)) + 1344 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * _3222) + (32 * _2115) + (32 * _734) + (4 * ceil32(return_data.size)) + 1344]) + 32 <= return_data.size
                            mem[(32 * _3222) + (32 * _2115) + (32 * _734) + (6 * ceil32(return_data.size)) + 1344] = mem[mem[(32 * _3222) + (32 * _2115) + (32 * _734) + (4 * ceil32(return_data.size)) + 1344 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * _3222) + (32 * _2115) + (32 * _734) + (4 * ceil32(return_data.size)) + 1344]
                            mem[(32 * _3222) + (32 * _2115) + (32 * _734) + (6 * ceil32(return_data.size)) + 1376 len floor32(mem[_3911 + (32 * _3222) + (32 * _2115) + (32 * _734) + (4 * ceil32(return_data.size)) + 1344])] = mem[_3911 + (32 * _3222) + (32 * _2115) + (32 * _734) + (4 * ceil32(return_data.size)) + 1376 len floor32(mem[_3911 + (32 * _3222) + (32 * _2115) + (32 * _734) + (4 * ceil32(return_data.size)) + 1344])]
                            if 1 < mem[(32 * _3222) + (32 * _2115) + (32 * _734) + (6 * ceil32(return_data.size)) + 1344]:
                                return _3573, 
                                       mem[(32 * _3222) + (32 * _2115) + (32 * _734) + (6 * ceil32(return_data.size)) + 1408],
                                       _1403,
                                       _2664,
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       block.number,
                                       block.timestamp
                else:
                    if ext_call.return_data[0]:
                        mem[(32 * _734) + ceil32(return_data.size) + 964] = ext_call.return_data[0]
                        mem[(32 * _734) + ceil32(return_data.size) + 996] = 64
                        mem[(32 * _734) + ceil32(return_data.size) + 1028] = 2
                        mem[(32 * _734) + ceil32(return_data.size) + 1060 len 0] = None
                        require ext_code.size(arg1)
                        staticcall arg1.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args ext_call.return_data[0], Array(len=2, data=mem[(32 * _734) + ceil32(return_data.size) + 1060 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _734) + ceil32(return_data.size) + 960 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _734) + (2 * ceil32(return_data.size)) + 960
                        require return_data.size >= 32
                        _2089 = mem[(32 * _734) + ceil32(return_data.size) + 960 len 4], ext_call.return_data[0 len 28]
                        require mem[(32 * _734) + ceil32(return_data.size) + 960 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[(32 * _734) + ceil32(return_data.size) + 960 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[(32 * _734) + ceil32(return_data.size) + 960 len 4], ext_call.return_data[0 len 28] + (32 * _734) + ceil32(return_data.size) + 960] <= 4294967296 and mem[(32 * _734) + ceil32(return_data.size) + 960 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * _734) + ceil32(return_data.size) + 960 len 4], ext_call.return_data[0 len 28] + (32 * _734) + ceil32(return_data.size) + 960]) + 32 <= return_data.size
                        mem[(32 * _734) + (2 * ceil32(return_data.size)) + 960] = mem[mem[(32 * _734) + ceil32(return_data.size) + 960 len 4], ext_call.return_data[0 len 28] + (32 * _734) + ceil32(return_data.size) + 960]
                        _2113 = mem[_2089 + (32 * _734) + ceil32(return_data.size) + 960]
                        mem[(32 * _734) + (2 * ceil32(return_data.size)) + 992 len floor32(mem[_2089 + (32 * _734) + ceil32(return_data.size) + 960])] = mem[_2089 + (32 * _734) + ceil32(return_data.size) + 992 len floor32(mem[_2089 + (32 * _734) + ceil32(return_data.size) + 960])]
                        if 1 < mem[(32 * _734) + (2 * ceil32(return_data.size)) + 960]:
                            _2662 = mem[(32 * _734) + (2 * ceil32(return_data.size)) + 1024]
                            mem[(32 * _2113) + (32 * _734) + (2 * ceil32(return_data.size)) + 992 len 64] = call.data[calldata.size len 64]
                            mem[(32 * _2113) + (32 * _734) + (2 * ceil32(return_data.size)) + 1056 len 64] = call.data[calldata.size len 64]
                            require ext_code.size(arg2)
                            staticcall arg2.0x313ce567 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _2113) + (32 * _734) + (2 * ceil32(return_data.size)) + 1120] = 2
                            mem[(32 * _2113) + (32 * _734) + (2 * ceil32(return_data.size)) + 1152] = arg2
                            mem[(32 * _2113) + (32 * _734) + (2 * ceil32(return_data.size)) + 1184] = arg3
                            mem[(32 * _2113) + (32 * _734) + (2 * ceil32(return_data.size)) + 1216] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _2113) + (32 * _734) + (2 * ceil32(return_data.size)) + 1220] = 10^uint8(ext_call.return_data[0])
                            mem[(32 * _2113) + (32 * _734) + (2 * ceil32(return_data.size)) + 1252] = 64
                            mem[(32 * _2113) + (32 * _734) + (2 * ceil32(return_data.size)) + 1284] = 2
                            mem[(32 * _2113) + (32 * _734) + (2 * ceil32(return_data.size)) + 1316 len 0] = None
                            require ext_code.size(arg1)
                            staticcall arg1.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[(32 * _2113) + (32 * _734) + (2 * ceil32(return_data.size)) + 1316 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _2113) + (32 * _734) + (2 * ceil32(return_data.size)) + 1216 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _2113) + (32 * _734) + (4 * ceil32(return_data.size)) + 1216
                            require return_data.size >= 32
                            _3196 = mem[(32 * _2113) + (32 * _734) + (2 * ceil32(return_data.size)) + 1216 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                            require mem[(32 * _2113) + (32 * _734) + (2 * ceil32(return_data.size)) + 1216 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= 4294967296
                            require mem[(32 * _2113) + (32 * _734) + (2 * ceil32(return_data.size)) + 1216 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 32 <= return_data.size
                            require mem[mem[(32 * _2113) + (32 * _734) + (2 * ceil32(return_data.size)) + 1216 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * _2113) + (32 * _734) + (2 * ceil32(return_data.size)) + 1216] <= 4294967296 and mem[(32 * _2113) + (32 * _734) + (2 * ceil32(return_data.size)) + 1216 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * mem[mem[(32 * _2113) + (32 * _734) + (2 * ceil32(return_data.size)) + 1216 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * _2113) + (32 * _734) + (2 * ceil32(return_data.size)) + 1216]) + 32 <= return_data.size
                            mem[(32 * _2113) + (32 * _734) + (4 * ceil32(return_data.size)) + 1216] = mem[mem[(32 * _2113) + (32 * _734) + (2 * ceil32(return_data.size)) + 1216 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * _2113) + (32 * _734) + (2 * ceil32(return_data.size)) + 1216]
                            _3220 = mem[_3196 + (32 * _2113) + (32 * _734) + (2 * ceil32(return_data.size)) + 1216]
                            mem[(32 * _2113) + (32 * _734) + (4 * ceil32(return_data.size)) + 1248 len floor32(mem[_3196 + (32 * _2113) + (32 * _734) + (2 * ceil32(return_data.size)) + 1216])] = mem[_3196 + (32 * _2113) + (32 * _734) + (2 * ceil32(return_data.size)) + 1248 len floor32(mem[_3196 + (32 * _2113) + (32 * _734) + (2 * ceil32(return_data.size)) + 1216])]
                            if 1 < mem[(32 * _2113) + (32 * _734) + (4 * ceil32(return_data.size)) + 1216]:
                                _3571 = mem[(32 * _2113) + (32 * _734) + (4 * ceil32(return_data.size)) + 1280]
                                require ext_code.size(arg3)
                                staticcall arg3.0x313ce567 with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(32 * _3220) + (32 * _2113) + (32 * _734) + (4 * ceil32(return_data.size)) + 1248] = 2
                                mem[(32 * _3220) + (32 * _2113) + (32 * _734) + (4 * ceil32(return_data.size)) + 1280] = arg3
                                mem[(32 * _3220) + (32 * _2113) + (32 * _734) + (4 * ceil32(return_data.size)) + 1312] = arg2
                                mem[(32 * _3220) + (32 * _2113) + (32 * _734) + (4 * ceil32(return_data.size)) + 1344] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _3220) + (32 * _2113) + (32 * _734) + (4 * ceil32(return_data.size)) + 1348] = 10^uint8(ext_call.return_data[0])
                                mem[(32 * _3220) + (32 * _2113) + (32 * _734) + (4 * ceil32(return_data.size)) + 1380] = 64
                                mem[(32 * _3220) + (32 * _2113) + (32 * _734) + (4 * ceil32(return_data.size)) + 1412] = 2
                                mem[(32 * _3220) + (32 * _2113) + (32 * _734) + (4 * ceil32(return_data.size)) + 1444 len 0] = None
                                require ext_code.size(arg1)
                                staticcall arg1.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[(32 * _3220) + (32 * _2113) + (32 * _734) + (4 * ceil32(return_data.size)) + 1444 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _3220) + (32 * _2113) + (32 * _734) + (4 * ceil32(return_data.size)) + 1344 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _3220) + (32 * _2113) + (32 * _734) + (6 * ceil32(return_data.size)) + 1344
                                require return_data.size >= 32
                                _3907 = mem[(32 * _3220) + (32 * _2113) + (32 * _734) + (4 * ceil32(return_data.size)) + 1344 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                                require mem[(32 * _3220) + (32 * _2113) + (32 * _734) + (4 * ceil32(return_data.size)) + 1344 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= 4294967296
                                require mem[(32 * _3220) + (32 * _2113) + (32 * _734) + (4 * ceil32(return_data.size)) + 1344 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 32 <= return_data.size
                                require mem[mem[(32 * _3220) + (32 * _2113) + (32 * _734) + (4 * ceil32(return_data.size)) + 1344 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * _3220) + (32 * _2113) + (32 * _734) + (4 * ceil32(return_data.size)) + 1344] <= 4294967296 and mem[(32 * _3220) + (32 * _2113) + (32 * _734) + (4 * ceil32(return_data.size)) + 1344 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * mem[mem[(32 * _3220) + (32 * _2113) + (32 * _734) + (4 * ceil32(return_data.size)) + 1344 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * _3220) + (32 * _2113) + (32 * _734) + (4 * ceil32(return_data.size)) + 1344]) + 32 <= return_data.size
                                mem[(32 * _3220) + (32 * _2113) + (32 * _734) + (6 * ceil32(return_data.size)) + 1344] = mem[mem[(32 * _3220) + (32 * _2113) + (32 * _734) + (4 * ceil32(return_data.size)) + 1344 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * _3220) + (32 * _2113) + (32 * _734) + (4 * ceil32(return_data.size)) + 1344]
                                mem[(32 * _3220) + (32 * _2113) + (32 * _734) + (6 * ceil32(return_data.size)) + 1376 len floor32(mem[_3907 + (32 * _3220) + (32 * _2113) + (32 * _734) + (4 * ceil32(return_data.size)) + 1344])] = mem[_3907 + (32 * _3220) + (32 * _2113) + (32 * _734) + (4 * ceil32(return_data.size)) + 1376 len floor32(mem[_3907 + (32 * _3220) + (32 * _2113) + (32 * _734) + (4 * ceil32(return_data.size)) + 1344])]
                                if 1 < mem[(32 * _3220) + (32 * _2113) + (32 * _734) + (6 * ceil32(return_data.size)) + 1344]:
                                    return _3571, 
                                           mem[(32 * _3220) + (32 * _2113) + (32 * _734) + (6 * ceil32(return_data.size)) + 1408],
                                           _1403,
                                           _2662,
                                           ext_call.return_data[0],
                                           ext_call.return_data[0],
                                           block.number,
                                           block.timestamp
                    else:
                        mem[(32 * _734) + ceil32(return_data.size) + 964] = 10^uint8(ext_call.return_data[0])
                        mem[(32 * _734) + ceil32(return_data.size) + 996] = 64
                        mem[(32 * _734) + ceil32(return_data.size) + 1028] = 2
                        mem[(32 * _734) + ceil32(return_data.size) + 1060 len 0] = None
                        require ext_code.size(arg1)
                        staticcall arg1.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[(32 * _734) + ceil32(return_data.size) + 1060 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _734) + ceil32(return_data.size) + 960 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _734) + (2 * ceil32(return_data.size)) + 960
                        require return_data.size >= 32
                        _2091 = mem[(32 * _734) + ceil32(return_data.size) + 960 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                        require mem[(32 * _734) + ceil32(return_data.size) + 960 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= 4294967296
                        require mem[(32 * _734) + ceil32(return_data.size) + 960 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _734) + ceil32(return_data.size) + 960 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * _734) + ceil32(return_data.size) + 960] <= 4294967296 and mem[(32 * _734) + ceil32(return_data.size) + 960 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * mem[mem[(32 * _734) + ceil32(return_data.size) + 960 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * _734) + ceil32(return_data.size) + 960]) + 32 <= return_data.size
                        mem[(32 * _734) + (2 * ceil32(return_data.size)) + 960] = mem[mem[(32 * _734) + ceil32(return_data.size) + 960 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * _734) + ceil32(return_data.size) + 960]
                        _2114 = mem[_2091 + (32 * _734) + ceil32(return_data.size) + 960]
                        mem[(32 * _734) + (2 * ceil32(return_data.size)) + 992 len floor32(mem[_2091 + (32 * _734) + ceil32(return_data.size) + 960])] = mem[_2091 + (32 * _734) + ceil32(return_data.size) + 992 len floor32(mem[_2091 + (32 * _734) + ceil32(return_data.size) + 960])]
                        if 1 < mem[(32 * _734) + (2 * ceil32(return_data.size)) + 960]:
                            _2663 = mem[(32 * _734) + (2 * ceil32(return_data.size)) + 1024]
                            mem[(32 * _2114) + (32 * _734) + (2 * ceil32(return_data.size)) + 992 len 64] = call.data[calldata.size len 64]
                            mem[(32 * _2114) + (32 * _734) + (2 * ceil32(return_data.size)) + 1056 len 64] = call.data[calldata.size len 64]
                            require ext_code.size(arg2)
                            staticcall arg2.0x313ce567 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _2114) + (32 * _734) + (2 * ceil32(return_data.size)) + 1120] = 2
                            mem[(32 * _2114) + (32 * _734) + (2 * ceil32(return_data.size)) + 1152] = arg2
                            mem[(32 * _2114) + (32 * _734) + (2 * ceil32(return_data.size)) + 1184] = arg3
                            mem[(32 * _2114) + (32 * _734) + (2 * ceil32(return_data.size)) + 1216] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _2114) + (32 * _734) + (2 * ceil32(return_data.size)) + 1220] = 10^uint8(ext_call.return_data[0])
                            mem[(32 * _2114) + (32 * _734) + (2 * ceil32(return_data.size)) + 1252] = 64
                            mem[(32 * _2114) + (32 * _734) + (2 * ceil32(return_data.size)) + 1284] = 2
                            mem[(32 * _2114) + (32 * _734) + (2 * ceil32(return_data.size)) + 1316 len 0] = None
                            require ext_code.size(arg1)
                            staticcall arg1.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[(32 * _2114) + (32 * _734) + (2 * ceil32(return_data.size)) + 1316 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _2114) + (32 * _734) + (2 * ceil32(return_data.size)) + 1216 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _2114) + (32 * _734) + (4 * ceil32(return_data.size)) + 1216
                            require return_data.size >= 32
                            _3198 = mem[(32 * _2114) + (32 * _734) + (2 * ceil32(return_data.size)) + 1216 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                            require mem[(32 * _2114) + (32 * _734) + (2 * ceil32(return_data.size)) + 1216 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= 4294967296
                            require mem[(32 * _2114) + (32 * _734) + (2 * ceil32(return_data.size)) + 1216 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 32 <= return_data.size
                            require mem[mem[(32 * _2114) + (32 * _734) + (2 * ceil32(return_data.size)) + 1216 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * _2114) + (32 * _734) + (2 * ceil32(return_data.size)) + 1216] <= 4294967296 and mem[(32 * _2114) + (32 * _734) + (2 * ceil32(return_data.size)) + 1216 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * mem[mem[(32 * _2114) + (32 * _734) + (2 * ceil32(return_data.size)) + 1216 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * _2114) + (32 * _734) + (2 * ceil32(return_data.size)) + 1216]) + 32 <= return_data.size
                            mem[(32 * _2114) + (32 * _734) + (4 * ceil32(return_data.size)) + 1216] = mem[mem[(32 * _2114) + (32 * _734) + (2 * ceil32(return_data.size)) + 1216 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * _2114) + (32 * _734) + (2 * ceil32(return_data.size)) + 1216]
                            _3221 = mem[_3198 + (32 * _2114) + (32 * _734) + (2 * ceil32(return_data.size)) + 1216]
                            mem[(32 * _2114) + (32 * _734) + (4 * ceil32(return_data.size)) + 1248 len floor32(mem[_3198 + (32 * _2114) + (32 * _734) + (2 * ceil32(return_data.size)) + 1216])] = mem[_3198 + (32 * _2114) + (32 * _734) + (2 * ceil32(return_data.size)) + 1248 len floor32(mem[_3198 + (32 * _2114) + (32 * _734) + (2 * ceil32(return_data.size)) + 1216])]
                            if 1 < mem[(32 * _2114) + (32 * _734) + (4 * ceil32(return_data.size)) + 1216]:
                                _3572 = mem[(32 * _2114) + (32 * _734) + (4 * ceil32(return_data.size)) + 1280]
                                require ext_code.size(arg3)
                                staticcall arg3.0x313ce567 with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(32 * _3221) + (32 * _2114) + (32 * _734) + (4 * ceil32(return_data.size)) + 1248] = 2
                                mem[(32 * _3221) + (32 * _2114) + (32 * _734) + (4 * ceil32(return_data.size)) + 1280] = arg3
                                mem[(32 * _3221) + (32 * _2114) + (32 * _734) + (4 * ceil32(return_data.size)) + 1312] = arg2
                                mem[(32 * _3221) + (32 * _2114) + (32 * _734) + (4 * ceil32(return_data.size)) + 1344] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _3221) + (32 * _2114) + (32 * _734) + (4 * ceil32(return_data.size)) + 1348] = 10^uint8(ext_call.return_data[0])
                                mem[(32 * _3221) + (32 * _2114) + (32 * _734) + (4 * ceil32(return_data.size)) + 1380] = 64
                                mem[(32 * _3221) + (32 * _2114) + (32 * _734) + (4 * ceil32(return_data.size)) + 1412] = 2
                                mem[(32 * _3221) + (32 * _2114) + (32 * _734) + (4 * ceil32(return_data.size)) + 1444 len 0] = None
                                require ext_code.size(arg1)
                                staticcall arg1.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[(32 * _3221) + (32 * _2114) + (32 * _734) + (4 * ceil32(return_data.size)) + 1444 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _3221) + (32 * _2114) + (32 * _734) + (4 * ceil32(return_data.size)) + 1344 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _3221) + (32 * _2114) + (32 * _734) + (6 * ceil32(return_data.size)) + 1344
                                require return_data.size >= 32
                                _3909 = mem[(32 * _3221) + (32 * _2114) + (32 * _734) + (4 * ceil32(return_data.size)) + 1344 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                                require mem[(32 * _3221) + (32 * _2114) + (32 * _734) + (4 * ceil32(return_data.size)) + 1344 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= 4294967296
                                require mem[(32 * _3221) + (32 * _2114) + (32 * _734) + (4 * ceil32(return_data.size)) + 1344 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 32 <= return_data.size
                                require mem[mem[(32 * _3221) + (32 * _2114) + (32 * _734) + (4 * ceil32(return_data.size)) + 1344 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * _3221) + (32 * _2114) + (32 * _734) + (4 * ceil32(return_data.size)) + 1344] <= 4294967296 and mem[(32 * _3221) + (32 * _2114) + (32 * _734) + (4 * ceil32(return_data.size)) + 1344 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * mem[mem[(32 * _3221) + (32 * _2114) + (32 * _734) + (4 * ceil32(return_data.size)) + 1344 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * _3221) + (32 * _2114) + (32 * _734) + (4 * ceil32(return_data.size)) + 1344]) + 32 <= return_data.size
                                mem[(32 * _3221) + (32 * _2114) + (32 * _734) + (6 * ceil32(return_data.size)) + 1344] = mem[mem[(32 * _3221) + (32 * _2114) + (32 * _734) + (4 * ceil32(return_data.size)) + 1344 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + (32 * _3221) + (32 * _2114) + (32 * _734) + (4 * ceil32(return_data.size)) + 1344]
                                mem[(32 * _3221) + (32 * _2114) + (32 * _734) + (6 * ceil32(return_data.size)) + 1376 len floor32(mem[_3909 + (32 * _3221) + (32 * _2114) + (32 * _734) + (4 * ceil32(return_data.size)) + 1344])] = mem[_3909 + (32 * _3221) + (32 * _2114) + (32 * _734) + (4 * ceil32(return_data.size)) + 1376 len floor32(mem[_3909 + (32 * _3221) + (32 * _2114) + (32 * _734) + (4 * ceil32(return_data.size)) + 1344])]
                                if 1 < mem[(32 * _3221) + (32 * _2114) + (32 * _734) + (6 * ceil32(return_data.size)) + 1344]:
                                    return _3572, 
                                           mem[(32 * _3221) + (32 * _2114) + (32 * _734) + (6 * ceil32(return_data.size)) + 1408],
                                           _1403,
                                           _2663,
                                           ext_call.return_data[0],
                                           ext_call.return_data[0],
                                           block.number,
                                           block.timestamp
    revert
}



}
