contract main {




// =====================  Runtime code  =====================


#
#  - sub_2ee6f874(?)
#
address owner;
mapping of uint8 stor1;

function tras_er5as_3434(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor1[arg1])
}

function owner() {
    return owner
}

function decodeUniswapMetadata(uint256 arg1) {
    require calldata.size - 4 >= 32
    return (-5 * arg1 % 128) + 10000 << 240, bool(Mask(1, 7, arg1))
}

function getUniswapAmountOut(uint256 arg1, uint256 arg2, uint256 arg3, uint16 arg4) {
    require calldata.size - 4 >= 128
    return (arg3 * arg1 * arg4 / (10000 * arg2) + (arg1 * arg4))
}

function drainEth(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require owner == msg.sender
    call arg2 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
}

function _fallback() payable {
    mem[64] = 96
    mem[0 len calldata.size] = call.data[0 len calldata.size]
    mem[3 len 8] = 33
    delegate this.address.0x0 with:
         gas gas_remaining wei
        args mem[4 len calldata.size - 4]
}

function decodeCurveMetaData(uint8 arg1) {
    require calldata.size - 4 >= 32
    return ('signextend', 15, ('mask_shl', 3, 3, -3, ('param', 'arg1'))), 
           ('signextend', 15, ('mask_shl', 3, 0, 0, ('param', 'arg1'))),
           bool(Mask(1, 6, arg1))
}

function getUniswapReserves(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    if arg2:
        return ext_call.return_data[0], ext_call.return_data[32]
    return ext_call.return_data[32], ext_call.return_data[0]
}

function drainToken(address arg1, uint256 arg2, address arg3) {
    require calldata.size - 4 >= 96
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg3), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function decodeHeader(bytes arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 128] = mem[arg2 + 128 len 1]
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function addTrader__(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        stor1[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
}

function removeTrader__(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        stor1[mem[(32 * idx) + 140 len 20]] = 0
        idx = idx + 1
        continue 
}

function getCurveAmountOut(address arg1, int128 arg2, int128 arg3, bool arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    require ext_code.size(arg1)
    if not arg4:
        staticcall arg1.get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                gas gas_remaining wei
               args ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('signextend', 15, ('signextend', 15, ('param', 'arg3'))), arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return ext_call.return_data[0]
    staticcall arg1.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
            gas gas_remaining wei
           args ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('signextend', 15, ('signextend', 15, ('param', 'arg3'))), arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 9999 * ext_call.return_data[0] / 9999 != ext_call.return_data[0]:
        revert with 0, 'ds-math-mul-overflow'
    return (9999 * ext_call.return_data[0] / 10000)
}

function sub_dc545c7c(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    _2 = Mask(248, 0, arg1.length), mem[128 len 1]
    mem[64] = ceil32(arg1.length) + (32 * mem[128 len 1] + 1) + 128
    mem[ceil32(arg1.length) + 128] = mem[128 len 1]
    _4 = mem[64]
    mem[64] = mem[64] + (32 * uint8(_2) + 1)
    mem[_4] = uint8(_2)
    _5 = mem[64]
    mem[64] = mem[64] + (32 * uint8(_2) + 1)
    mem[_5] = uint8(_2)
    idx = 0
    s = 32 * uint8(_2) + 1
    while idx < uint8(_2):
        mem[ceil32(arg1.length) + (32 * idx + 1) + 128] = mem[(20 * idx) + 129 len 20]
        mem[_4 + (32 * idx + 1)] = mem[(20 * uint8(_2)) + idx + 98]
        mem[_5 + (32 * idx + 1)] = mem[(21 * uint8(_2)) + idx + 98]
        idx = idx + 1
        s = 32 * idx + 1
        continue 
    _24 = mem[(22 * uint8(_2)) + 143]
    _26 = mem[64]
    mem[mem[64] + 96] = mem[(22 * uint8(_2)) + 129 len 14]
    mem[mem[64] + 128] = Mask(160, 96, _24) >> 96
    mem[mem[64]] = 160
    mem[_26 + 160] = mem[ceil32(arg1.length) + 128]
    _28 = mem[ceil32(arg1.length) + 128]
    mem[_26 + 192 len floor32(mem[ceil32(arg1.length) + 128])] = mem[ceil32(arg1.length) + 160 len floor32(mem[ceil32(arg1.length) + 128])]
    mem[_26 + 32] = (32 * _28) + 192
    mem[(32 * _28) + _26 + 192] = mem[_4]
    _39 = mem[_4]
    mem[(32 * _28) + _26 + 224 len floor32(mem[_4])] = mem[_4 + 32 len floor32(mem[_4])]
    mem[_26 + 64] = (32 * _39) + (32 * _28) + 224
    mem[(32 * _39) + (32 * _28) + _26 + 224] = mem[_5]
    _47 = mem[_5]
    mem[(32 * _39) + (32 * _28) + _26 + 256 len floor32(mem[_5])] = mem[_5 + 32 len floor32(mem[_5])]
    return memory
      from mem[64]
       len (32 * _47) + (32 * _39) + (32 * _28) + _26 + -mem[64] + 256
}

function decodeNoCapital(bytes arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    _2 = Mask(248, 0, arg1.length), mem[128 len 1]
    mem[64] = ceil32(arg1.length) + (32 * mem[128 len 1] + 1) + 128
    mem[ceil32(arg1.length) + 128] = mem[128 len 1]
    _4 = mem[64]
    mem[64] = mem[64] + (32 * uint8(_2) + 1)
    mem[_4] = uint8(_2)
    _5 = mem[64]
    mem[64] = mem[64] + (32 * uint8(_2) + 1)
    mem[_5] = uint8(_2)
    _6 = mem[64]
    mem[64] = mem[64] + (32 * uint8(_2) + 1)
    mem[_6] = uint8(_2)
    idx = 0
    s = 32 * uint8(_2) + 1
    while idx < uint8(_2):
        mem[ceil32(arg1.length) + (32 * idx + 1) + 128] = mem[(20 * idx) + 129 len 20]
        mem[_4 + (32 * idx + 1)] = mem[(20 * uint8(_2)) + idx + 98]
        mem[_5 + (32 * idx + 1)] = mem[(21 * uint8(_2)) + idx + 98]
        idx = idx + 1
        s = 32 * idx + 1
        continue 
    _25 = mem[(22 * uint8(_2)) + 111]
    idx = 0
    s = (32 * uint8(_2) + 1) + (251 * uint8(_2))
    while idx < uint8(_2):
        mem[_6 + (32 * idx + 1)] = mem[(20 * idx) + (22 * uint8(_2)) + 143 len 20]
        idx = idx + 1
        s = 32 * idx + 1
        continue 
    _44 = mem[64]
    mem[mem[64] + 96] = Mask(112, 0, _25)
    mem[mem[64]] = 160
    mem[_44 + 160] = mem[ceil32(arg1.length) + 128]
    _46 = mem[ceil32(arg1.length) + 128]
    mem[_44 + 192 len floor32(mem[ceil32(arg1.length) + 128])] = mem[ceil32(arg1.length) + 160 len floor32(mem[ceil32(arg1.length) + 128])]
    mem[_44 + 32] = (32 * _46) + 192
    mem[(32 * _46) + _44 + 192] = mem[_4]
    _60 = mem[_4]
    mem[(32 * _46) + _44 + 224 len floor32(mem[_4])] = mem[_4 + 32 len floor32(mem[_4])]
    mem[_44 + 64] = (32 * _60) + (32 * _46) + 224
    mem[(32 * _60) + (32 * _46) + _44 + 224] = mem[_5]
    _71 = mem[_5]
    mem[(32 * _60) + (32 * _46) + _44 + 256 len floor32(mem[_5])] = mem[_5 + 32 len floor32(mem[_5])]
    mem[_44 + 128] = (32 * _71) + (32 * _60) + (32 * _46) + 256
    mem[(32 * _71) + (32 * _60) + (32 * _46) + _44 + 256] = mem[_6]
    _79 = mem[_6]
    mem[(32 * _71) + (32 * _60) + (32 * _46) + _44 + 288 len floor32(mem[_6])] = mem[_6 + 32 len floor32(mem[_6])]
    return memory
      from mem[64]
       len (32 * _79) + (32 * _71) + (32 * _60) + (32 * _46) + _44 + -mem[64] + 288
}

function check(bytes arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    _2 = Mask(248, 0, arg1.length), mem[128 len 1]
    mem[64] = ceil32(arg1.length) + (32 * mem[128 len 1] + 1) + 128
    mem[ceil32(arg1.length) + 128] = mem[128 len 1]
    _4 = mem[64]
    mem[64] = mem[64] + (32 * uint8(_2) + 1)
    mem[_4] = uint8(_2)
    _5 = mem[64]
    mem[64] = mem[64] + (32 * uint8(_2) + 1)
    mem[_5] = uint8(_2)
    idx = 0
    s = 32 * uint8(_2) + 1
    while idx < uint8(_2):
        mem[ceil32(arg1.length) + (32 * idx + 1) + 128] = mem[(20 * idx) + 129 len 20]
        mem[_4 + (32 * idx + 1)] = mem[(20 * uint8(_2)) + idx + 98]
        mem[_5 + (32 * idx + 1)] = mem[(21 * uint8(_2)) + idx + 98]
        idx = idx + 1
        s = 32 * idx + 1
        continue 
    _119 = mem[(22 * uint8(_2)) + 111]
    _124 = mem[ceil32(arg1.length) + 128]
    require mem[ceil32(arg1.length) + 128] + 1 <= test266151307()
    _125 = mem[64]
    mem[mem[64]] = mem[ceil32(arg1.length) + 128] + 1
    mem[64] = mem[64] + (32 * _124 + 1) + 32
    if not _124 + 1:
        require 0 < mem[_125]
        mem[_125 + 32] = Mask(112, 0, _119)
        _232 = mem[ceil32(arg1.length) + 128]
        idx = 0
        s = 15
        while uint8(idx) < _232:
            require uint8(idx) < mem[_4]
            if mem[(32 * uint8(idx)) + _4 + 63 len 1] < 2:
                require uint8(idx) < mem[_5]
                _249 = mem[(32 * uint8(idx)) + _5 + 32]
                require uint8(idx) < mem[ceil32(arg1.length) + 128]
                _262 = mem[(32 * uint8(idx)) + ceil32(arg1.length) + 160]
                mem[2816] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                staticcall _262.getReserves() with:
                        gas gas_remaining wei
                mem[3072 len 64] = ext_call.return_data[0 len 64]
                require uint8(idx) < mem[_4]
                if Mask(1, 7, _249):
                    if mem[(32 * uint8(idx)) + _4 + 63 len 1]:
                        require uint8(idx) < mem[_125]
                        require uint8(idx + 1) < mem[_125]
                        mem[(32 * uint8(idx + 1)) + _125 + 32] = (10000 * mem[(32 * uint8(idx)) + _125 + 32] * ext_call.return_data[32]) - (5 * _249 % 128 * mem[(32 * uint8(idx)) + _125 + 32] * ext_call.return_data[32]) / (10000 * ext_call.return_data[0]) + (10000 * mem[(32 * uint8(idx)) + _125 + 32]) - (5 * _249 % 128 * mem[(32 * uint8(idx)) + _125 + 32])
                        _232 = mem[ceil32(arg1.length) + 128]
                        idx = idx + 1
                        s = s
                        continue 
                    if s != 15:
                        if uint8(idx) != mem[ceil32(arg1.length) + 128] - 1:
                            require uint8(idx) < mem[_125]
                            require uint8(idx + 1) < mem[_125]
                            mem[(32 * uint8(idx + 1)) + _125 + 32] = (10000 * mem[(32 * uint8(idx)) + _125 + 32] * ext_call.return_data[32]) - (5 * _249 % 128 * mem[(32 * uint8(idx)) + _125 + 32] * ext_call.return_data[32]) / (10000 * ext_call.return_data[0]) + (10000 * mem[(32 * uint8(idx)) + _125 + 32]) - (5 * _249 % 128 * mem[(32 * uint8(idx)) + _125 + 32])
                            _232 = mem[ceil32(arg1.length) + 128]
                            idx = idx + 1
                            s = s
                            continue 
                    require uint8(idx) < mem[_125]
                    require uint8(idx + 1) < mem[_125]
                    mem[(32 * uint8(idx + 1)) + _125 + 32] = (10000 * mem[(32 * uint8(idx)) + _125 + 32] * ext_call.return_data[32]) - (5 * _249 % 128 * mem[(32 * uint8(idx)) + _125 + 32] * ext_call.return_data[32]) / (10000 * ext_call.return_data[0]) + (10000 * mem[(32 * uint8(idx)) + _125 + 32]) - (5 * _249 % 128 * mem[(32 * uint8(idx)) + _125 + 32])
                else:
                    if mem[(32 * uint8(idx)) + _4 + 63 len 1]:
                        require uint8(idx) < mem[_125]
                        require uint8(idx + 1) < mem[_125]
                        mem[(32 * uint8(idx + 1)) + _125 + 32] = (10000 * mem[(32 * uint8(idx)) + _125 + 32] * ext_call.return_data[0]) - (5 * _249 % 128 * mem[(32 * uint8(idx)) + _125 + 32] * ext_call.return_data[0]) / (10000 * ext_call.return_data[32]) + (10000 * mem[(32 * uint8(idx)) + _125 + 32]) - (5 * _249 % 128 * mem[(32 * uint8(idx)) + _125 + 32])
                        _232 = mem[ceil32(arg1.length) + 128]
                        idx = idx + 1
                        s = s
                        continue 
                    if s != 15:
                        if uint8(idx) != mem[ceil32(arg1.length) + 128] - 1:
                            require uint8(idx) < mem[_125]
                            require uint8(idx + 1) < mem[_125]
                            mem[(32 * uint8(idx + 1)) + _125 + 32] = (10000 * mem[(32 * uint8(idx)) + _125 + 32] * ext_call.return_data[0]) - (5 * _249 % 128 * mem[(32 * uint8(idx)) + _125 + 32] * ext_call.return_data[0]) / (10000 * ext_call.return_data[32]) + (10000 * mem[(32 * uint8(idx)) + _125 + 32]) - (5 * _249 % 128 * mem[(32 * uint8(idx)) + _125 + 32])
                            _232 = mem[ceil32(arg1.length) + 128]
                            idx = idx + 1
                            s = s
                            continue 
                    require uint8(idx) < mem[_125]
                    require uint8(idx + 1) < mem[_125]
                    mem[(32 * uint8(idx + 1)) + _125 + 32] = (10000 * mem[(32 * uint8(idx)) + _125 + 32] * ext_call.return_data[0]) - (5 * _249 % 128 * mem[(32 * uint8(idx)) + _125 + 32] * ext_call.return_data[0]) / (10000 * ext_call.return_data[32]) + (10000 * mem[(32 * uint8(idx)) + _125 + 32]) - (5 * _249 % 128 * mem[(32 * uint8(idx)) + _125 + 32])
                _232 = mem[ceil32(arg1.length) + 128]
                idx = idx + 1
                s = uint8(idx)
                continue 
            require uint8(idx) < mem[_4]
            if mem[(32 * uint8(idx)) + _4 + 63 len 1] == 2:
                require uint8(idx) < mem[_5]
                _258 = mem[(32 * uint8(idx)) + _5 + 32]
                require uint8(idx) < mem[ceil32(arg1.length) + 128]
                _266 = mem[(32 * uint8(idx)) + ceil32(arg1.length) + 160]
                require uint8(idx) < mem[_125]
                _278 = mem[(32 * uint8(idx)) + _125 + 32]
                mem[mem[64] + 4] = ('signextend', 15, ('mask_shl', 3, 3, -3, ('mem', ('range', ('add', 32, ('mask_shl', 8, 0, 5, ('var', 0)), ('var', '_5')), 32))))
                mem[mem[64] + 36] = ('signextend', 15, ('mask_shl', 3, 0, 0, ('var', '_258')))
                mem[mem[64] + 68] = _278
                require ext_code.size(address(_266))
                if not Mask(1, 6, mem[(32 * uint8(idx)) + _5 + 32]):
                    staticcall address(_266).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], ('signextend', 15, ('mask_shl', 3, 0, 0, ('var', '_258'))), _278
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require uint8(idx + 1) < mem[_125]
                    mem[(32 * uint8(idx + 1)) + _125 + 32] = ext_call.return_data[0]
                else:
                    staticcall address(_266).get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], ('signextend', 15, ('mask_shl', 3, 0, 0, ('var', '_258'))), _278
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 9999 * ext_call.return_data[0] / 9999 != ext_call.return_data[0]:
                        revert with 0, 'ds-math-mul-overflow'
                    require uint8(idx + 1) < mem[_125]
                    mem[(32 * uint8(idx + 1)) + _125 + 32] = 9999 * ext_call.return_data[0] / 10000
            _232 = mem[ceil32(arg1.length) + 128]
            idx = idx + 1
            s = s
            continue 
        mem[mem[64] + 32] = s
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[_125]
        _240 = mem[_125]
        mem[mem[64] + 96 len floor32(mem[_125])] = mem[_125 + 32 len floor32(mem[_125])]
        return 64, s, mem[mem[64] + 64 len (32 * _240) + 32]
    mem[_125 + 32 len 32 * _124 + 1] = call.data[calldata.size len 32 * _124 + 1]
    require 0 < mem[_125]
    mem[_125 + 32] = Mask(112, 0, _119)
    _233 = mem[ceil32(arg1.length) + 128]
    idx = 0
    s = 15
    while uint8(idx) < _233:
        require uint8(idx) < mem[_4]
        if mem[(32 * uint8(idx)) + _4 + 63 len 1] < 2:
            require uint8(idx) < mem[_5]
            _251 = mem[(32 * uint8(idx)) + _5 + 32]
            require uint8(idx) < mem[ceil32(arg1.length) + 128]
            _263 = mem[(32 * uint8(idx)) + ceil32(arg1.length) + 160]
            mem[2816] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
            staticcall _263.getReserves() with:
                    gas gas_remaining wei
            mem[3072 len 64] = ext_call.return_data[0 len 64]
            require uint8(idx) < mem[_4]
            if Mask(1, 7, _251):
                if mem[(32 * uint8(idx)) + _4 + 63 len 1]:
                    require uint8(idx) < mem[_125]
                    require uint8(idx + 1) < mem[_125]
                    mem[(32 * uint8(idx + 1)) + _125 + 32] = (10000 * mem[(32 * uint8(idx)) + _125 + 32] * ext_call.return_data[32]) - (5 * _251 % 128 * mem[(32 * uint8(idx)) + _125 + 32] * ext_call.return_data[32]) / (10000 * ext_call.return_data[0]) + (10000 * mem[(32 * uint8(idx)) + _125 + 32]) - (5 * _251 % 128 * mem[(32 * uint8(idx)) + _125 + 32])
                    _233 = mem[ceil32(arg1.length) + 128]
                    idx = idx + 1
                    s = s
                    continue 
                if s != 15:
                    if uint8(idx) != mem[ceil32(arg1.length) + 128] - 1:
                        require uint8(idx) < mem[_125]
                        require uint8(idx + 1) < mem[_125]
                        mem[(32 * uint8(idx + 1)) + _125 + 32] = (10000 * mem[(32 * uint8(idx)) + _125 + 32] * ext_call.return_data[32]) - (5 * _251 % 128 * mem[(32 * uint8(idx)) + _125 + 32] * ext_call.return_data[32]) / (10000 * ext_call.return_data[0]) + (10000 * mem[(32 * uint8(idx)) + _125 + 32]) - (5 * _251 % 128 * mem[(32 * uint8(idx)) + _125 + 32])
                        _233 = mem[ceil32(arg1.length) + 128]
                        idx = idx + 1
                        s = s
                        continue 
                require uint8(idx) < mem[_125]
                require uint8(idx + 1) < mem[_125]
                mem[(32 * uint8(idx + 1)) + _125 + 32] = (10000 * mem[(32 * uint8(idx)) + _125 + 32] * ext_call.return_data[32]) - (5 * _251 % 128 * mem[(32 * uint8(idx)) + _125 + 32] * ext_call.return_data[32]) / (10000 * ext_call.return_data[0]) + (10000 * mem[(32 * uint8(idx)) + _125 + 32]) - (5 * _251 % 128 * mem[(32 * uint8(idx)) + _125 + 32])
            else:
                if mem[(32 * uint8(idx)) + _4 + 63 len 1]:
                    require uint8(idx) < mem[_125]
                    require uint8(idx + 1) < mem[_125]
                    mem[(32 * uint8(idx + 1)) + _125 + 32] = (10000 * mem[(32 * uint8(idx)) + _125 + 32] * ext_call.return_data[0]) - (5 * _251 % 128 * mem[(32 * uint8(idx)) + _125 + 32] * ext_call.return_data[0]) / (10000 * ext_call.return_data[32]) + (10000 * mem[(32 * uint8(idx)) + _125 + 32]) - (5 * _251 % 128 * mem[(32 * uint8(idx)) + _125 + 32])
                    _233 = mem[ceil32(arg1.length) + 128]
                    idx = idx + 1
                    s = s
                    continue 
                if s != 15:
                    if uint8(idx) != mem[ceil32(arg1.length) + 128] - 1:
                        require uint8(idx) < mem[_125]
                        require uint8(idx + 1) < mem[_125]
                        mem[(32 * uint8(idx + 1)) + _125 + 32] = (10000 * mem[(32 * uint8(idx)) + _125 + 32] * ext_call.return_data[0]) - (5 * _251 % 128 * mem[(32 * uint8(idx)) + _125 + 32] * ext_call.return_data[0]) / (10000 * ext_call.return_data[32]) + (10000 * mem[(32 * uint8(idx)) + _125 + 32]) - (5 * _251 % 128 * mem[(32 * uint8(idx)) + _125 + 32])
                        _233 = mem[ceil32(arg1.length) + 128]
                        idx = idx + 1
                        s = s
                        continue 
                require uint8(idx) < mem[_125]
                require uint8(idx + 1) < mem[_125]
                mem[(32 * uint8(idx + 1)) + _125 + 32] = (10000 * mem[(32 * uint8(idx)) + _125 + 32] * ext_call.return_data[0]) - (5 * _251 % 128 * mem[(32 * uint8(idx)) + _125 + 32] * ext_call.return_data[0]) / (10000 * ext_call.return_data[32]) + (10000 * mem[(32 * uint8(idx)) + _125 + 32]) - (5 * _251 % 128 * mem[(32 * uint8(idx)) + _125 + 32])
            _233 = mem[ceil32(arg1.length) + 128]
            idx = idx + 1
            s = uint8(idx)
            continue 
        require uint8(idx) < mem[_4]
        if mem[(32 * uint8(idx)) + _4 + 63 len 1] == 2:
            require uint8(idx) < mem[_5]
            _260 = mem[(32 * uint8(idx)) + _5 + 32]
            require uint8(idx) < mem[ceil32(arg1.length) + 128]
            _272 = mem[(32 * uint8(idx)) + ceil32(arg1.length) + 160]
            require uint8(idx) < mem[_125]
            _279 = mem[(32 * uint8(idx)) + _125 + 32]
            mem[mem[64] + 4] = ('signextend', 15, ('mask_shl', 3, 3, -3, ('mem', ('range', ('add', 32, ('mask_shl', 8, 0, 5, ('var', 0)), ('var', '_5')), 32))))
            mem[mem[64] + 36] = ('signextend', 15, ('mask_shl', 3, 0, 0, ('var', '_260')))
            mem[mem[64] + 68] = _279
            require ext_code.size(address(_272))
            if not Mask(1, 6, mem[(32 * uint8(idx)) + _5 + 32]):
                staticcall address(_272).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4], ('signextend', 15, ('mask_shl', 3, 0, 0, ('var', '_260'))), _279
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require uint8(idx + 1) < mem[_125]
                mem[(32 * uint8(idx + 1)) + _125 + 32] = ext_call.return_data[0]
            else:
                staticcall address(_272).get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4], ('signextend', 15, ('mask_shl', 3, 0, 0, ('var', '_260'))), _279
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 9999 * ext_call.return_data[0] / 9999 != ext_call.return_data[0]:
                    revert with 0, 'ds-math-mul-overflow'
                require uint8(idx + 1) < mem[_125]
                mem[(32 * uint8(idx + 1)) + _125 + 32] = 9999 * ext_call.return_data[0] / 10000
        _233 = mem[ceil32(arg1.length) + 128]
        idx = idx + 1
        s = s
        continue 
    mem[mem[64] + 32] = s
    mem[mem[64]] = 64
    mem[mem[64] + 64] = mem[_125]
    _245 = mem[_125]
    mem[mem[64] + 96 len floor32(mem[_125])] = mem[_125 + 32 len floor32(mem[_125])]
    return 64, s, mem[mem[64] + 64 len (32 * _245) + 32]
}

function getAmountsOut(uint112 arg1, address[] arg2, uint8[] arg3, uint8[] arg4) {
    require calldata.size - 4 >= 128
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = arg4.length
    mem[(32 * arg2.length) + (32 * arg3.length) + 192 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    require arg2.length + 1 <= test266151307()
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192] = arg2.length + 1
    if not arg2.length + 1:
        require 0 < arg2.length + 1
        mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = Mask(112, 0, arg1)
        idx = 0
        s = 15
        while uint8(idx) < arg2.length:
            require uint8(idx) < mem[(32 * arg2.length) + 128]
            if mem[(32 * uint8(idx)) + (32 * arg2.length) + 191 len 1] < 2:
                require uint8(idx) < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
                _131 = mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + 192]
                require uint8(idx) < arg2.length
                _142 = mem[(32 * uint8(idx)) + 128]
                mem[2816] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                staticcall _142.getReserves() with:
                        gas gas_remaining wei
                mem[3072 len 64] = ext_call.return_data[0 len 64]
                require uint8(idx) < mem[(32 * arg2.length) + 128]
                if Mask(1, 7, _131):
                    if mem[(32 * uint8(idx)) + (32 * arg2.length) + 191 len 1]:
                        require uint8(idx) < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                        require uint8(idx + 1) < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                        mem[(32 * uint8(idx + 1)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = (10000 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * ext_call.return_data[32]) - (5 * _131 % 128 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * ext_call.return_data[32]) / (10000 * ext_call.return_data[0]) + (10000 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (5 * _131 % 128 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224])
                        idx = idx + 1
                        s = s
                        continue 
                    if s != 15:
                        if uint8(idx) != arg2.length - 1:
                            require uint8(idx) < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                            require uint8(idx + 1) < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                            mem[(32 * uint8(idx + 1)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = (10000 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * ext_call.return_data[32]) - (5 * _131 % 128 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * ext_call.return_data[32]) / (10000 * ext_call.return_data[0]) + (10000 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (5 * _131 % 128 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224])
                            idx = idx + 1
                            s = s
                            continue 
                    require uint8(idx) < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                    require uint8(idx + 1) < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                    mem[(32 * uint8(idx + 1)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = (10000 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * ext_call.return_data[32]) - (5 * _131 % 128 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * ext_call.return_data[32]) / (10000 * ext_call.return_data[0]) + (10000 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (5 * _131 % 128 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224])
                else:
                    if mem[(32 * uint8(idx)) + (32 * arg2.length) + 191 len 1]:
                        require uint8(idx) < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                        require uint8(idx + 1) < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                        mem[(32 * uint8(idx + 1)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = (10000 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * ext_call.return_data[0]) - (5 * _131 % 128 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * ext_call.return_data[0]) / (10000 * ext_call.return_data[32]) + (10000 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (5 * _131 % 128 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224])
                        idx = idx + 1
                        s = s
                        continue 
                    if s != 15:
                        if uint8(idx) != arg2.length - 1:
                            require uint8(idx) < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                            require uint8(idx + 1) < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                            mem[(32 * uint8(idx + 1)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = (10000 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * ext_call.return_data[0]) - (5 * _131 % 128 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * ext_call.return_data[0]) / (10000 * ext_call.return_data[32]) + (10000 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (5 * _131 % 128 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224])
                            idx = idx + 1
                            s = s
                            continue 
                    require uint8(idx) < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                    require uint8(idx + 1) < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                    mem[(32 * uint8(idx + 1)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = (10000 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * ext_call.return_data[0]) - (5 * _131 % 128 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * ext_call.return_data[0]) / (10000 * ext_call.return_data[32]) + (10000 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (5 * _131 % 128 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224])
                idx = idx + 1
                s = uint8(idx)
                continue 
            require uint8(idx) < mem[(32 * arg2.length) + 128]
            if mem[(32 * uint8(idx)) + (32 * arg2.length) + 191 len 1] == 2:
                require uint8(idx) < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
                _138 = mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + 192]
                require uint8(idx) < arg2.length
                _146 = mem[(32 * uint8(idx)) + 128]
                require uint8(idx) < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                _158 = mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]
                mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg2.length + 1) + 228] = ('signextend', 15, ('mask_shl', 3, 3, -3, ('mem', ('range', ('add', 192, ('mask_shl', 8, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg3'))))), 32))))
                mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg2.length + 1) + 260] = ('signextend', 15, ('mask_shl', 3, 0, 0, ('var', '_138')))
                mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg2.length + 1) + 292] = _158
                require ext_code.size(address(_146))
                if not Mask(1, 6, mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + 192]):
                    staticcall address(_146).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg2.length + 1) + 228], ('signextend', 15, ('mask_shl', 3, 0, 0, ('var', '_138'))), _158
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg2.length + 1) + 224] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require uint8(idx + 1) < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                    mem[(32 * uint8(idx + 1)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = ext_call.return_data[0]
                else:
                    staticcall address(_146).get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg2.length + 1) + 228], ('signextend', 15, ('mask_shl', 3, 0, 0, ('var', '_138'))), _158
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg2.length + 1) + 224] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 9999 * ext_call.return_data[0] / 9999 != ext_call.return_data[0]:
                        revert with 0, 'ds-math-mul-overflow'
                    require uint8(idx + 1) < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                    mem[(32 * uint8(idx + 1)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = 9999 * ext_call.return_data[0] / 10000
            idx = idx + 1
            s = s
            continue 
    else:
        mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224 len 32 * arg2.length + 1] = call.data[calldata.size len 32 * arg2.length + 1]
        require 0 < arg2.length + 1
        mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = Mask(112, 0, arg1)
        idx = 0
        s = 15
        while uint8(idx) < arg2.length:
            require uint8(idx) < mem[(32 * arg2.length) + 128]
            if mem[(32 * uint8(idx)) + (32 * arg2.length) + 191 len 1] < 2:
                require uint8(idx) < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
                _135 = mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + 192]
                require uint8(idx) < arg2.length
                _143 = mem[(32 * uint8(idx)) + 128]
                mem[2816] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                staticcall _143.getReserves() with:
                        gas gas_remaining wei
                mem[3072 len 64] = ext_call.return_data[0 len 64]
                require uint8(idx) < mem[(32 * arg2.length) + 128]
                if Mask(1, 7, _135):
                    if mem[(32 * uint8(idx)) + (32 * arg2.length) + 191 len 1]:
                        require uint8(idx) < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                        require uint8(idx + 1) < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                        mem[(32 * uint8(idx + 1)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = (10000 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * ext_call.return_data[32]) - (5 * _135 % 128 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * ext_call.return_data[32]) / (10000 * ext_call.return_data[0]) + (10000 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (5 * _135 % 128 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224])
                        idx = idx + 1
                        s = s
                        continue 
                    if s != 15:
                        if uint8(idx) != arg2.length - 1:
                            require uint8(idx) < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                            require uint8(idx + 1) < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                            mem[(32 * uint8(idx + 1)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = (10000 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * ext_call.return_data[32]) - (5 * _135 % 128 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * ext_call.return_data[32]) / (10000 * ext_call.return_data[0]) + (10000 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (5 * _135 % 128 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224])
                            idx = idx + 1
                            s = s
                            continue 
                    require uint8(idx) < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                    require uint8(idx + 1) < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                    mem[(32 * uint8(idx + 1)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = (10000 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * ext_call.return_data[32]) - (5 * _135 % 128 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * ext_call.return_data[32]) / (10000 * ext_call.return_data[0]) + (10000 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (5 * _135 % 128 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224])
                else:
                    if mem[(32 * uint8(idx)) + (32 * arg2.length) + 191 len 1]:
                        require uint8(idx) < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                        require uint8(idx + 1) < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                        mem[(32 * uint8(idx + 1)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = (10000 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * ext_call.return_data[0]) - (5 * _135 % 128 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * ext_call.return_data[0]) / (10000 * ext_call.return_data[32]) + (10000 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (5 * _135 % 128 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224])
                        idx = idx + 1
                        s = s
                        continue 
                    if s != 15:
                        if uint8(idx) != arg2.length - 1:
                            require uint8(idx) < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                            require uint8(idx + 1) < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                            mem[(32 * uint8(idx + 1)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = (10000 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * ext_call.return_data[0]) - (5 * _135 % 128 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * ext_call.return_data[0]) / (10000 * ext_call.return_data[32]) + (10000 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (5 * _135 % 128 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224])
                            idx = idx + 1
                            s = s
                            continue 
                    require uint8(idx) < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                    require uint8(idx + 1) < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                    mem[(32 * uint8(idx + 1)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = (10000 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * ext_call.return_data[0]) - (5 * _135 % 128 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * ext_call.return_data[0]) / (10000 * ext_call.return_data[32]) + (10000 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (5 * _135 % 128 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224])
                idx = idx + 1
                s = uint8(idx)
                continue 
            require uint8(idx) < mem[(32 * arg2.length) + 128]
            if mem[(32 * uint8(idx)) + (32 * arg2.length) + 191 len 1] == 2:
                require uint8(idx) < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
                _140 = mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + 192]
                require uint8(idx) < arg2.length
                _152 = mem[(32 * uint8(idx)) + 128]
                require uint8(idx) < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                _159 = mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]
                mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg2.length + 1) + 228] = ('signextend', 15, ('mask_shl', 3, 3, -3, ('mem', ('range', ('add', 192, ('mask_shl', 8, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg3'))))), 32))))
                mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg2.length + 1) + 260] = ('signextend', 15, ('mask_shl', 3, 0, 0, ('var', '_140')))
                mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg2.length + 1) + 292] = _159
                require ext_code.size(address(_152))
                if not Mask(1, 6, mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + 192]):
                    staticcall address(_152).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg2.length + 1) + 228], ('signextend', 15, ('mask_shl', 3, 0, 0, ('var', '_140'))), _159
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg2.length + 1) + 224] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require uint8(idx + 1) < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                    mem[(32 * uint8(idx + 1)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = ext_call.return_data[0]
                else:
                    staticcall address(_152).get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg2.length + 1) + 228], ('signextend', 15, ('mask_shl', 3, 0, 0, ('var', '_140'))), _159
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg2.length + 1) + 224] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 9999 * ext_call.return_data[0] / 9999 != ext_call.return_data[0]:
                        revert with 0, 'ds-math-mul-overflow'
                    require uint8(idx + 1) < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                    mem[(32 * uint8(idx + 1)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = 9999 * ext_call.return_data[0] / 10000
            idx = idx + 1
            s = s
            continue 
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg2.length + 1) + 256] = s
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg2.length + 1) + 224] = 64
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg2.length + 1) + 288] = mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg2.length + 1) + 320 len floor32(mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192])] = mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224 len floor32(mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192])]
    return Array(len=mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192], data=mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg2.length + 1) + 320 len 32 * mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]]), 
           s
}

function flashSwapTokens(bytes arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    _2 = Mask(248, 0, arg1.length), mem[128 len 1]
    mem[64] = ceil32(arg1.length) + (32 * mem[128 len 1] + 1) + 128
    mem[ceil32(arg1.length) + 128] = mem[128 len 1]
    _4 = mem[64]
    mem[64] = mem[64] + (32 * uint8(_2) + 1)
    mem[_4] = uint8(_2)
    _5 = mem[64]
    mem[64] = mem[64] + (32 * uint8(_2) + 1)
    mem[_5] = uint8(_2)
    _6 = mem[64]
    mem[64] = mem[64] + (32 * uint8(_2) + 1)
    mem[_6] = uint8(_2)
    idx = 0
    s = 32 * uint8(_2) + 1
    while idx < uint8(_2):
        mem[ceil32(arg1.length) + (32 * idx + 1) + 128] = mem[(20 * idx) + 129 len 20]
        mem[_4 + (32 * idx + 1)] = mem[(20 * uint8(_2)) + idx + 98]
        mem[_5 + (32 * idx + 1)] = mem[(21 * uint8(_2)) + idx + 98]
        idx = idx + 1
        s = 32 * idx + 1
        continue 
    _279 = mem[(22 * uint8(_2)) + 111]
    idx = 0
    s = (32 * uint8(_2) + 1) + (251 * uint8(_2))
    while idx < uint8(_2):
        mem[_6 + (32 * idx + 1)] = mem[(20 * idx) + (22 * uint8(_2)) + 143 len 20]
        idx = idx + 1
        s = 32 * idx + 1
        continue 
    _553 = mem[ceil32(arg1.length) + 128]
    require mem[ceil32(arg1.length) + 128] + 1 <= test266151307()
    _554 = mem[64]
    mem[mem[64]] = mem[ceil32(arg1.length) + 128] + 1
    mem[64] = mem[64] + (32 * _553 + 1) + 32
    if not _553 + 1:
        require 0 < mem[_554]
        mem[_554 + 32] = Mask(112, 0, _279)
        _821 = mem[ceil32(arg1.length) + 128]
        idx = 0
        s = 15
        while uint8(idx) < _821:
            require uint8(idx) < mem[_4]
            if mem[(32 * uint8(idx)) + _4 + 63 len 1] < 2:
                require uint8(idx) < mem[_5]
                _841 = mem[(32 * uint8(idx)) + _5 + 32]
                require uint8(idx) < mem[ceil32(arg1.length) + 128]
                _857 = mem[(32 * uint8(idx)) + ceil32(arg1.length) + 160]
                mem[2816] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                staticcall _857.getReserves() with:
                        gas gas_remaining wei
                mem[3072 len 64] = ext_call.return_data[0 len 64]
                require uint8(idx) < mem[_4]
                if Mask(1, 7, _841):
                    if mem[(32 * uint8(idx)) + _4 + 63 len 1]:
                        require uint8(idx) < mem[_554]
                        require uint8(idx + 1) < mem[_554]
                        mem[(32 * uint8(idx + 1)) + _554 + 32] = (10000 * mem[(32 * uint8(idx)) + _554 + 32] * ext_call.return_data[32]) - (5 * _841 % 128 * mem[(32 * uint8(idx)) + _554 + 32] * ext_call.return_data[32]) / (10000 * ext_call.return_data[0]) + (10000 * mem[(32 * uint8(idx)) + _554 + 32]) - (5 * _841 % 128 * mem[(32 * uint8(idx)) + _554 + 32])
                        _821 = mem[ceil32(arg1.length) + 128]
                        idx = idx + 1
                        s = s
                        continue 
                    if s != 15:
                        if uint8(idx) != mem[ceil32(arg1.length) + 128] - 1:
                            require uint8(idx) < mem[_554]
                            require uint8(idx + 1) < mem[_554]
                            mem[(32 * uint8(idx + 1)) + _554 + 32] = (10000 * mem[(32 * uint8(idx)) + _554 + 32] * ext_call.return_data[32]) - (5 * _841 % 128 * mem[(32 * uint8(idx)) + _554 + 32] * ext_call.return_data[32]) / (10000 * ext_call.return_data[0]) + (10000 * mem[(32 * uint8(idx)) + _554 + 32]) - (5 * _841 % 128 * mem[(32 * uint8(idx)) + _554 + 32])
                            _821 = mem[ceil32(arg1.length) + 128]
                            idx = idx + 1
                            s = s
                            continue 
                    require uint8(idx) < mem[_554]
                    require uint8(idx + 1) < mem[_554]
                    mem[(32 * uint8(idx + 1)) + _554 + 32] = (10000 * mem[(32 * uint8(idx)) + _554 + 32] * ext_call.return_data[32]) - (5 * _841 % 128 * mem[(32 * uint8(idx)) + _554 + 32] * ext_call.return_data[32]) / (10000 * ext_call.return_data[0]) + (10000 * mem[(32 * uint8(idx)) + _554 + 32]) - (5 * _841 % 128 * mem[(32 * uint8(idx)) + _554 + 32])
                else:
                    if mem[(32 * uint8(idx)) + _4 + 63 len 1]:
                        require uint8(idx) < mem[_554]
                        require uint8(idx + 1) < mem[_554]
                        mem[(32 * uint8(idx + 1)) + _554 + 32] = (10000 * mem[(32 * uint8(idx)) + _554 + 32] * ext_call.return_data[0]) - (5 * _841 % 128 * mem[(32 * uint8(idx)) + _554 + 32] * ext_call.return_data[0]) / (10000 * ext_call.return_data[32]) + (10000 * mem[(32 * uint8(idx)) + _554 + 32]) - (5 * _841 % 128 * mem[(32 * uint8(idx)) + _554 + 32])
                        _821 = mem[ceil32(arg1.length) + 128]
                        idx = idx + 1
                        s = s
                        continue 
                    if s != 15:
                        if uint8(idx) != mem[ceil32(arg1.length) + 128] - 1:
                            require uint8(idx) < mem[_554]
                            require uint8(idx + 1) < mem[_554]
                            mem[(32 * uint8(idx + 1)) + _554 + 32] = (10000 * mem[(32 * uint8(idx)) + _554 + 32] * ext_call.return_data[0]) - (5 * _841 % 128 * mem[(32 * uint8(idx)) + _554 + 32] * ext_call.return_data[0]) / (10000 * ext_call.return_data[32]) + (10000 * mem[(32 * uint8(idx)) + _554 + 32]) - (5 * _841 % 128 * mem[(32 * uint8(idx)) + _554 + 32])
                            _821 = mem[ceil32(arg1.length) + 128]
                            idx = idx + 1
                            s = s
                            continue 
                    require uint8(idx) < mem[_554]
                    require uint8(idx + 1) < mem[_554]
                    mem[(32 * uint8(idx + 1)) + _554 + 32] = (10000 * mem[(32 * uint8(idx)) + _554 + 32] * ext_call.return_data[0]) - (5 * _841 % 128 * mem[(32 * uint8(idx)) + _554 + 32] * ext_call.return_data[0]) / (10000 * ext_call.return_data[32]) + (10000 * mem[(32 * uint8(idx)) + _554 + 32]) - (5 * _841 % 128 * mem[(32 * uint8(idx)) + _554 + 32])
                _821 = mem[ceil32(arg1.length) + 128]
                idx = idx + 1
                s = uint8(idx)
                continue 
            require uint8(idx) < mem[_4]
            if mem[(32 * uint8(idx)) + _4 + 63 len 1] == 2:
                require uint8(idx) < mem[_5]
                _850 = mem[(32 * uint8(idx)) + _5 + 32]
                require uint8(idx) < mem[ceil32(arg1.length) + 128]
                _865 = mem[(32 * uint8(idx)) + ceil32(arg1.length) + 160]
                require uint8(idx) < mem[_554]
                _881 = mem[(32 * uint8(idx)) + _554 + 32]
                mem[mem[64] + 4] = ('signextend', 15, ('mask_shl', 3, 3, -3, ('mem', ('range', ('add', 32, ('mask_shl', 8, 0, 5, ('var', 0)), ('var', '_5')), 32))))
                mem[mem[64] + 36] = ('signextend', 15, ('mask_shl', 3, 0, 0, ('var', '_850')))
                mem[mem[64] + 68] = _881
                require ext_code.size(address(_865))
                if not Mask(1, 6, mem[(32 * uint8(idx)) + _5 + 32]):
                    staticcall address(_865).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], ('signextend', 15, ('mask_shl', 3, 0, 0, ('var', '_850'))), _881
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require uint8(idx + 1) < mem[_554]
                    mem[(32 * uint8(idx + 1)) + _554 + 32] = ext_call.return_data[0]
                else:
                    staticcall address(_865).get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], ('signextend', 15, ('mask_shl', 3, 0, 0, ('var', '_850'))), _881
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 9999 * ext_call.return_data[0] / 9999 != ext_call.return_data[0]:
                        revert with 0, 'ds-math-mul-overflow'
                    require uint8(idx + 1) < mem[_554]
                    mem[(32 * uint8(idx + 1)) + _554 + 32] = 9999 * ext_call.return_data[0] / 10000
            _821 = mem[ceil32(arg1.length) + 128]
            idx = idx + 1
            s = s
            continue 
        require mem[_554] - 1 < mem[_554]
        require 0 < mem[_554]
        if mem[_554 + 32] >= mem[(32 * mem[_554] - 1) + _554 + 32]:
            return 0
        require s < mem[_5]
        require s + 1 < mem[_554]
        if Mask(1, 7, mem[(32 * s) + _5 + 32]):
            _879 = mem[(32 * s + 1) + _554 + 32]
            _885 = mem[64]
            mem[mem[64] + 160] = s
            mem[mem[64] + 32] = 192
            mem[mem[64] + 224] = mem[ceil32(arg1.length) + 128]
            _887 = mem[ceil32(arg1.length) + 128]
            mem[mem[64] + 256 len floor32(mem[ceil32(arg1.length) + 128])] = mem[ceil32(arg1.length) + 160 len floor32(mem[ceil32(arg1.length) + 128])]
            mem[mem[64] + 64] = (32 * _887) + 224
            mem[(32 * _887) + mem[64] + 256] = mem[_4]
            _1114 = mem[_4]
            mem[(32 * _887) + mem[64] + 288 len floor32(mem[_4])] = mem[_4 + 32 len floor32(mem[_4])]
            mem[mem[64] + 96] = (32 * _1114) + (32 * _887) + 256
            mem[(32 * _1114) + (32 * _887) + mem[64] + 288] = mem[_5]
            _1246 = mem[_5]
            mem[(32 * _1114) + (32 * _887) + mem[64] + 320 len floor32(mem[_5])] = mem[_5 + 32 len floor32(mem[_5])]
            mem[mem[64] + 128] = (32 * _1246) + (32 * _1114) + (32 * _887) + 288
            mem[(32 * _1246) + (32 * _1114) + (32 * _887) + mem[64] + 320] = mem[_554]
            _1366 = mem[_554]
            mem[(32 * _1246) + (32 * _1114) + (32 * _887) + mem[64] + 352 len floor32(mem[_554])] = mem[_554 + 32 len floor32(mem[_554])]
            var49001 = floor32(_1366)
            mem[mem[64] + 192] = (32 * _1366) + (32 * _1246) + (32 * _1114) + (32 * _887) + 320
            mem[(32 * _1366) + (32 * _1246) + (32 * _1114) + (32 * _887) + mem[64] + 352] = mem[_6]
            _1474 = mem[_6]
            mem[(32 * _1366) + (32 * _1246) + (32 * _1114) + (32 * _887) + mem[64] + 384 len floor32(mem[_6])] = mem[_6 + 32 len floor32(mem[_6])]
            _1569 = mem[64]
            mem[mem[64]] = (32 * _1474) + (32 * _1366) + (32 * _1246) + (32 * _1114) + (32 * _887) + 352
            mem[64] = (32 * _1474) + (32 * _1366) + (32 * _1246) + (32 * _1114) + (32 * _887) + mem[64] + 384
            require s < mem[ceil32(arg1.length) + 128]
            _1581 = mem[(32 * s) + ceil32(arg1.length) + 160]
            mem[(32 * _1474) + (32 * _1366) + (32 * _1246) + (32 * _1114) + (32 * _887) + _885 + 384] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _1474) + (32 * _1366) + (32 * _1246) + (32 * _1114) + (32 * _887) + _885 + 388] = 0
            mem[(32 * _1474) + (32 * _1366) + (32 * _1246) + (32 * _1114) + (32 * _887) + _885 + 420] = _879
            mem[(32 * _1474) + (32 * _1366) + (32 * _1246) + (32 * _1114) + (32 * _887) + _885 + 452] = this.address
            mem[(32 * _1474) + (32 * _1366) + (32 * _1246) + (32 * _1114) + (32 * _887) + _885 + 484] = 128
            mem[(32 * _1474) + (32 * _1366) + (32 * _1246) + (32 * _1114) + (32 * _887) + _885 + 516] = mem[_1569]
            _1584 = mem[_1569]
            mem[(32 * _1474) + (32 * _1366) + (32 * _1246) + (32 * _1114) + (32 * _887) + _885 + 548 len ceil32(mem[_1569])] = mem[_1569 + 32 len ceil32(mem[_1569])]
            if not _1584 % 32:
                require ext_code.size(address(_1581))
                call address(_1581).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, _879, address(this.address), 128, mem[(32 * _1474) + (32 * _1366) + (32 * _1246) + (32 * _1114) + (32 * _887) + _885 + 516 len _1584 + 32]
            else:
                mem[floor32(_1584) + (32 * _1474) + (32 * _1366) + (32 * _1246) + (32 * _1114) + (32 * _887) + _885 + 548] = mem[floor32(_1584) + (32 * _1474) + (32 * _1366) + (32 * _1246) + (32 * _1114) + (32 * _887) + _885 + -(_1584 % 32) + 580 len _1584 % 32]
                require ext_code.size(address(_1581))
                call address(_1581).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, _879, address(this.address), 128, mem[(32 * _1474) + (32 * _1366) + (32 * _1246) + (32 * _1114) + (32 * _887) + _885 + 516 len floor32(_1584) + 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require mem[_554] - 1 < mem[_554]
            mem[(32 * _1474) + (32 * _1366) + (32 * _1246) + (32 * _1114) + (32 * _887) + _885 + 384] = mem[(32 * mem[_554] - 1) + _554 + 32]
            return memory
              from (32 * _1474) + (32 * _1366) + (32 * _1246) + (32 * _1114) + (32 * _887) + _885 + 384
               len 32
        _880 = mem[(32 * s + 1) + _554 + 32]
        _888 = mem[64]
        mem[mem[64] + 160] = s
        mem[mem[64] + 32] = 192
        mem[mem[64] + 224] = mem[ceil32(arg1.length) + 128]
        _890 = mem[ceil32(arg1.length) + 128]
        mem[mem[64] + 256 len floor32(mem[ceil32(arg1.length) + 128])] = mem[ceil32(arg1.length) + 160 len floor32(mem[ceil32(arg1.length) + 128])]
        mem[mem[64] + 64] = (32 * _890) + 224
        mem[(32 * _890) + mem[64] + 256] = mem[_4]
        _1117 = mem[_4]
        mem[(32 * _890) + mem[64] + 288 len floor32(mem[_4])] = mem[_4 + 32 len floor32(mem[_4])]
        mem[mem[64] + 96] = (32 * _1117) + (32 * _890) + 256
        mem[(32 * _1117) + (32 * _890) + mem[64] + 288] = mem[_5]
        _1249 = mem[_5]
        mem[(32 * _1117) + (32 * _890) + mem[64] + 320 len floor32(mem[_5])] = mem[_5 + 32 len floor32(mem[_5])]
        mem[mem[64] + 128] = (32 * _1249) + (32 * _1117) + (32 * _890) + 288
        mem[(32 * _1249) + (32 * _1117) + (32 * _890) + mem[64] + 320] = mem[_554]
        _1369 = mem[_554]
        mem[(32 * _1249) + (32 * _1117) + (32 * _890) + mem[64] + 352 len floor32(mem[_554])] = mem[_554 + 32 len floor32(mem[_554])]
        var49001 = floor32(_1369)
        mem[mem[64] + 192] = (32 * _1369) + (32 * _1249) + (32 * _1117) + (32 * _890) + 320
        mem[(32 * _1369) + (32 * _1249) + (32 * _1117) + (32 * _890) + mem[64] + 352] = mem[_6]
        _1477 = mem[_6]
        mem[(32 * _1369) + (32 * _1249) + (32 * _1117) + (32 * _890) + mem[64] + 384 len floor32(mem[_6])] = mem[_6 + 32 len floor32(mem[_6])]
        _1572 = mem[64]
        mem[mem[64]] = (32 * _1477) + (32 * _1369) + (32 * _1249) + (32 * _1117) + (32 * _890) + 352
        mem[64] = (32 * _1477) + (32 * _1369) + (32 * _1249) + (32 * _1117) + (32 * _890) + mem[64] + 384
        require s < mem[ceil32(arg1.length) + 128]
        _1585 = mem[(32 * s) + ceil32(arg1.length) + 160]
        mem[(32 * _1477) + (32 * _1369) + (32 * _1249) + (32 * _1117) + (32 * _890) + _888 + 384] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        mem[(32 * _1477) + (32 * _1369) + (32 * _1249) + (32 * _1117) + (32 * _890) + _888 + 388] = _880
        mem[(32 * _1477) + (32 * _1369) + (32 * _1249) + (32 * _1117) + (32 * _890) + _888 + 420] = 0
        mem[(32 * _1477) + (32 * _1369) + (32 * _1249) + (32 * _1117) + (32 * _890) + _888 + 452] = this.address
        mem[(32 * _1477) + (32 * _1369) + (32 * _1249) + (32 * _1117) + (32 * _890) + _888 + 484] = 128
        mem[(32 * _1477) + (32 * _1369) + (32 * _1249) + (32 * _1117) + (32 * _890) + _888 + 516] = mem[_1572]
        _1588 = mem[_1572]
        mem[(32 * _1477) + (32 * _1369) + (32 * _1249) + (32 * _1117) + (32 * _890) + _888 + 548 len ceil32(mem[_1572])] = mem[_1572 + 32 len ceil32(mem[_1572])]
        if not _1588 % 32:
            require ext_code.size(address(_1585))
            call address(_1585).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args _880, 0, address(this.address), 128, mem[(32 * _1477) + (32 * _1369) + (32 * _1249) + (32 * _1117) + (32 * _890) + _888 + 516 len _1588 + 32]
        else:
            mem[floor32(_1588) + (32 * _1477) + (32 * _1369) + (32 * _1249) + (32 * _1117) + (32 * _890) + _888 + 548] = mem[floor32(_1588) + (32 * _1477) + (32 * _1369) + (32 * _1249) + (32 * _1117) + (32 * _890) + _888 + -(_1588 % 32) + 580 len _1588 % 32]
            require ext_code.size(address(_1585))
            call address(_1585).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args _880, 0, address(this.address), 128, mem[(32 * _1477) + (32 * _1369) + (32 * _1249) + (32 * _1117) + (32 * _890) + _888 + 516 len floor32(_1588) + 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require mem[_554] - 1 < mem[_554]
        mem[(32 * _1477) + (32 * _1369) + (32 * _1249) + (32 * _1117) + (32 * _890) + _888 + 384] = mem[(32 * mem[_554] - 1) + _554 + 32]
        return memory
          from (32 * _1477) + (32 * _1369) + (32 * _1249) + (32 * _1117) + (32 * _890) + _888 + 384
           len 32
    mem[_554 + 32 len 32 * _553 + 1] = call.data[calldata.size len 32 * _553 + 1]
    require 0 < mem[_554]
    mem[_554 + 32] = Mask(112, 0, _279)
    _822 = mem[ceil32(arg1.length) + 128]
    idx = 0
    s = 15
    while uint8(idx) < _822:
        require uint8(idx) < mem[_4]
        if mem[(32 * uint8(idx)) + _4 + 63 len 1] < 2:
            require uint8(idx) < mem[_5]
            _844 = mem[(32 * uint8(idx)) + _5 + 32]
            require uint8(idx) < mem[ceil32(arg1.length) + 128]
            _860 = mem[(32 * uint8(idx)) + ceil32(arg1.length) + 160]
            mem[2816] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
            staticcall _860.getReserves() with:
                    gas gas_remaining wei
            mem[3072 len 64] = ext_call.return_data[0 len 64]
            require uint8(idx) < mem[_4]
            if Mask(1, 7, _844):
                if mem[(32 * uint8(idx)) + _4 + 63 len 1]:
                    require uint8(idx) < mem[_554]
                    require uint8(idx + 1) < mem[_554]
                    mem[(32 * uint8(idx + 1)) + _554 + 32] = (10000 * mem[(32 * uint8(idx)) + _554 + 32] * ext_call.return_data[32]) - (5 * _844 % 128 * mem[(32 * uint8(idx)) + _554 + 32] * ext_call.return_data[32]) / (10000 * ext_call.return_data[0]) + (10000 * mem[(32 * uint8(idx)) + _554 + 32]) - (5 * _844 % 128 * mem[(32 * uint8(idx)) + _554 + 32])
                    _822 = mem[ceil32(arg1.length) + 128]
                    idx = idx + 1
                    s = s
                    continue 
                if s != 15:
                    if uint8(idx) != mem[ceil32(arg1.length) + 128] - 1:
                        require uint8(idx) < mem[_554]
                        require uint8(idx + 1) < mem[_554]
                        mem[(32 * uint8(idx + 1)) + _554 + 32] = (10000 * mem[(32 * uint8(idx)) + _554 + 32] * ext_call.return_data[32]) - (5 * _844 % 128 * mem[(32 * uint8(idx)) + _554 + 32] * ext_call.return_data[32]) / (10000 * ext_call.return_data[0]) + (10000 * mem[(32 * uint8(idx)) + _554 + 32]) - (5 * _844 % 128 * mem[(32 * uint8(idx)) + _554 + 32])
                        _822 = mem[ceil32(arg1.length) + 128]
                        idx = idx + 1
                        s = s
                        continue 
                require uint8(idx) < mem[_554]
                require uint8(idx + 1) < mem[_554]
                mem[(32 * uint8(idx + 1)) + _554 + 32] = (10000 * mem[(32 * uint8(idx)) + _554 + 32] * ext_call.return_data[32]) - (5 * _844 % 128 * mem[(32 * uint8(idx)) + _554 + 32] * ext_call.return_data[32]) / (10000 * ext_call.return_data[0]) + (10000 * mem[(32 * uint8(idx)) + _554 + 32]) - (5 * _844 % 128 * mem[(32 * uint8(idx)) + _554 + 32])
            else:
                if mem[(32 * uint8(idx)) + _4 + 63 len 1]:
                    require uint8(idx) < mem[_554]
                    require uint8(idx + 1) < mem[_554]
                    mem[(32 * uint8(idx + 1)) + _554 + 32] = (10000 * mem[(32 * uint8(idx)) + _554 + 32] * ext_call.return_data[0]) - (5 * _844 % 128 * mem[(32 * uint8(idx)) + _554 + 32] * ext_call.return_data[0]) / (10000 * ext_call.return_data[32]) + (10000 * mem[(32 * uint8(idx)) + _554 + 32]) - (5 * _844 % 128 * mem[(32 * uint8(idx)) + _554 + 32])
                    _822 = mem[ceil32(arg1.length) + 128]
                    idx = idx + 1
                    s = s
                    continue 
                if s != 15:
                    if uint8(idx) != mem[ceil32(arg1.length) + 128] - 1:
                        require uint8(idx) < mem[_554]
                        require uint8(idx + 1) < mem[_554]
                        mem[(32 * uint8(idx + 1)) + _554 + 32] = (10000 * mem[(32 * uint8(idx)) + _554 + 32] * ext_call.return_data[0]) - (5 * _844 % 128 * mem[(32 * uint8(idx)) + _554 + 32] * ext_call.return_data[0]) / (10000 * ext_call.return_data[32]) + (10000 * mem[(32 * uint8(idx)) + _554 + 32]) - (5 * _844 % 128 * mem[(32 * uint8(idx)) + _554 + 32])
                        _822 = mem[ceil32(arg1.length) + 128]
                        idx = idx + 1
                        s = s
                        continue 
                require uint8(idx) < mem[_554]
                require uint8(idx + 1) < mem[_554]
                mem[(32 * uint8(idx + 1)) + _554 + 32] = (10000 * mem[(32 * uint8(idx)) + _554 + 32] * ext_call.return_data[0]) - (5 * _844 % 128 * mem[(32 * uint8(idx)) + _554 + 32] * ext_call.return_data[0]) / (10000 * ext_call.return_data[32]) + (10000 * mem[(32 * uint8(idx)) + _554 + 32]) - (5 * _844 % 128 * mem[(32 * uint8(idx)) + _554 + 32])
            _822 = mem[ceil32(arg1.length) + 128]
            idx = idx + 1
            s = uint8(idx)
            continue 
        require uint8(idx) < mem[_4]
        if mem[(32 * uint8(idx)) + _4 + 63 len 1] == 2:
            require uint8(idx) < mem[_5]
            _853 = mem[(32 * uint8(idx)) + _5 + 32]
            require uint8(idx) < mem[ceil32(arg1.length) + 128]
            _873 = mem[(32 * uint8(idx)) + ceil32(arg1.length) + 160]
            require uint8(idx) < mem[_554]
            _884 = mem[(32 * uint8(idx)) + _554 + 32]
            mem[mem[64] + 4] = ('signextend', 15, ('mask_shl', 3, 3, -3, ('mem', ('range', ('add', 32, ('mask_shl', 8, 0, 5, ('var', 0)), ('var', '_5')), 32))))
            mem[mem[64] + 36] = ('signextend', 15, ('mask_shl', 3, 0, 0, ('var', '_853')))
            mem[mem[64] + 68] = _884
            require ext_code.size(address(_873))
            if not Mask(1, 6, mem[(32 * uint8(idx)) + _5 + 32]):
                staticcall address(_873).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4], ('signextend', 15, ('mask_shl', 3, 0, 0, ('var', '_853'))), _884
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require uint8(idx + 1) < mem[_554]
                mem[(32 * uint8(idx + 1)) + _554 + 32] = ext_call.return_data[0]
            else:
                staticcall address(_873).get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4], ('signextend', 15, ('mask_shl', 3, 0, 0, ('var', '_853'))), _884
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 9999 * ext_call.return_data[0] / 9999 != ext_call.return_data[0]:
                    revert with 0, 'ds-math-mul-overflow'
                require uint8(idx + 1) < mem[_554]
                mem[(32 * uint8(idx + 1)) + _554 + 32] = 9999 * ext_call.return_data[0] / 10000
        _822 = mem[ceil32(arg1.length) + 128]
        idx = idx + 1
        s = s
        continue 
    require mem[_554] - 1 < mem[_554]
    require 0 < mem[_554]
    if mem[_554 + 32] >= mem[(32 * mem[_554] - 1) + _554 + 32]:
        return 0
    require s < mem[_5]
    require s + 1 < mem[_554]
    if Mask(1, 7, mem[(32 * s) + _5 + 32]):
        _882 = mem[(32 * s + 1) + _554 + 32]
        _893 = mem[64]
        mem[mem[64] + 160] = s
        mem[mem[64] + 32] = 192
        mem[mem[64] + 224] = mem[ceil32(arg1.length) + 128]
        _895 = mem[ceil32(arg1.length) + 128]
        mem[mem[64] + 256 len floor32(mem[ceil32(arg1.length) + 128])] = mem[ceil32(arg1.length) + 160 len floor32(mem[ceil32(arg1.length) + 128])]
        mem[mem[64] + 64] = (32 * _895) + 224
        mem[(32 * _895) + mem[64] + 256] = mem[_4]
        _1120 = mem[_4]
        mem[(32 * _895) + mem[64] + 288 len floor32(mem[_4])] = mem[_4 + 32 len floor32(mem[_4])]
        mem[mem[64] + 96] = (32 * _1120) + (32 * _895) + 256
        mem[(32 * _1120) + (32 * _895) + mem[64] + 288] = mem[_5]
        _1252 = mem[_5]
        mem[(32 * _1120) + (32 * _895) + mem[64] + 320 len floor32(mem[_5])] = mem[_5 + 32 len floor32(mem[_5])]
        mem[mem[64] + 128] = (32 * _1252) + (32 * _1120) + (32 * _895) + 288
        mem[(32 * _1252) + (32 * _1120) + (32 * _895) + mem[64] + 320] = mem[_554]
        _1372 = mem[_554]
        mem[(32 * _1252) + (32 * _1120) + (32 * _895) + mem[64] + 352 len floor32(mem[_554])] = mem[_554 + 32 len floor32(mem[_554])]
        mem[mem[64] + 192] = (32 * _1372) + (32 * _1252) + (32 * _1120) + (32 * _895) + 320
        mem[(32 * _1372) + (32 * _1252) + (32 * _1120) + (32 * _895) + mem[64] + 352] = mem[_6]
        _1480 = mem[_6]
        mem[(32 * _1372) + (32 * _1252) + (32 * _1120) + (32 * _895) + mem[64] + 384 len floor32(mem[_6])] = mem[_6 + 32 len floor32(mem[_6])]
        _1575 = mem[64]
        mem[mem[64]] = (32 * _1480) + (32 * _1372) + (32 * _1252) + (32 * _1120) + (32 * _895) + 352
        mem[64] = (32 * _1480) + (32 * _1372) + (32 * _1252) + (32 * _1120) + (32 * _895) + mem[64] + 384
        require s < mem[ceil32(arg1.length) + 128]
        _1589 = mem[(32 * s) + ceil32(arg1.length) + 160]
        mem[(32 * _1480) + (32 * _1372) + (32 * _1252) + (32 * _1120) + (32 * _895) + _893 + 384] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        mem[(32 * _1480) + (32 * _1372) + (32 * _1252) + (32 * _1120) + (32 * _895) + _893 + 388] = 0
        mem[(32 * _1480) + (32 * _1372) + (32 * _1252) + (32 * _1120) + (32 * _895) + _893 + 420] = _882
        mem[(32 * _1480) + (32 * _1372) + (32 * _1252) + (32 * _1120) + (32 * _895) + _893 + 452] = this.address
        mem[(32 * _1480) + (32 * _1372) + (32 * _1252) + (32 * _1120) + (32 * _895) + _893 + 484] = 128
        mem[(32 * _1480) + (32 * _1372) + (32 * _1252) + (32 * _1120) + (32 * _895) + _893 + 516] = mem[_1575]
        _1592 = mem[_1575]
        mem[(32 * _1480) + (32 * _1372) + (32 * _1252) + (32 * _1120) + (32 * _895) + _893 + 548 len ceil32(mem[_1575])] = mem[_1575 + 32 len ceil32(mem[_1575])]
        if not _1592 % 32:
            require ext_code.size(address(_1589))
            call address(_1589).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, _882, address(this.address), 128, mem[(32 * _1480) + (32 * _1372) + (32 * _1252) + (32 * _1120) + (32 * _895) + _893 + 516 len _1592 + 32]
        else:
            mem[floor32(_1592) + (32 * _1480) + (32 * _1372) + (32 * _1252) + (32 * _1120) + (32 * _895) + _893 + 548] = mem[floor32(_1592) + (32 * _1480) + (32 * _1372) + (32 * _1252) + (32 * _1120) + (32 * _895) + _893 + -(_1592 % 32) + 580 len _1592 % 32]
            require ext_code.size(address(_1589))
            call address(_1589).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, _882, address(this.address), 128, mem[(32 * _1480) + (32 * _1372) + (32 * _1252) + (32 * _1120) + (32 * _895) + _893 + 516 len floor32(_1592) + 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require mem[_554] - 1 < mem[_554]
        mem[(32 * _1480) + (32 * _1372) + (32 * _1252) + (32 * _1120) + (32 * _895) + _893 + 384] = mem[(32 * mem[_554] - 1) + _554 + 32]
        return memory
          from (32 * _1480) + (32 * _1372) + (32 * _1252) + (32 * _1120) + (32 * _895) + _893 + 384
           len 32
    _883 = mem[(32 * s + 1) + _554 + 32]
    _896 = mem[64]
    mem[mem[64] + 160] = s
    mem[mem[64] + 32] = 192
    mem[mem[64] + 224] = mem[ceil32(arg1.length) + 128]
    _898 = mem[ceil32(arg1.length) + 128]
    mem[mem[64] + 256 len floor32(mem[ceil32(arg1.length) + 128])] = mem[ceil32(arg1.length) + 160 len floor32(mem[ceil32(arg1.length) + 128])]
    mem[mem[64] + 64] = (32 * _898) + 224
    mem[(32 * _898) + mem[64] + 256] = mem[_4]
    _1123 = mem[_4]
    mem[(32 * _898) + mem[64] + 288 len floor32(mem[_4])] = mem[_4 + 32 len floor32(mem[_4])]
    mem[mem[64] + 96] = (32 * _1123) + (32 * _898) + 256
    mem[(32 * _1123) + (32 * _898) + mem[64] + 288] = mem[_5]
    _1255 = mem[_5]
    mem[(32 * _1123) + (32 * _898) + mem[64] + 320 len floor32(mem[_5])] = mem[_5 + 32 len floor32(mem[_5])]
    mem[mem[64] + 128] = (32 * _1255) + (32 * _1123) + (32 * _898) + 288
    mem[(32 * _1255) + (32 * _1123) + (32 * _898) + mem[64] + 320] = mem[_554]
    _1375 = mem[_554]
    mem[(32 * _1255) + (32 * _1123) + (32 * _898) + mem[64] + 352 len floor32(mem[_554])] = mem[_554 + 32 len floor32(mem[_554])]
    mem[mem[64] + 192] = (32 * _1375) + (32 * _1255) + (32 * _1123) + (32 * _898) + 320
    mem[(32 * _1375) + (32 * _1255) + (32 * _1123) + (32 * _898) + mem[64] + 352] = mem[_6]
    _1483 = mem[_6]
    mem[(32 * _1375) + (32 * _1255) + (32 * _1123) + (32 * _898) + mem[64] + 384 len floor32(mem[_6])] = mem[_6 + 32 len floor32(mem[_6])]
    _1578 = mem[64]
    mem[mem[64]] = (32 * _1483) + (32 * _1375) + (32 * _1255) + (32 * _1123) + (32 * _898) + 352
    mem[64] = (32 * _1483) + (32 * _1375) + (32 * _1255) + (32 * _1123) + (32 * _898) + mem[64] + 384
    require s < mem[ceil32(arg1.length) + 128]
    _1593 = mem[(32 * s) + ceil32(arg1.length) + 160]
    mem[(32 * _1483) + (32 * _1375) + (32 * _1255) + (32 * _1123) + (32 * _898) + _896 + 384] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
    mem[(32 * _1483) + (32 * _1375) + (32 * _1255) + (32 * _1123) + (32 * _898) + _896 + 388] = _883
    mem[(32 * _1483) + (32 * _1375) + (32 * _1255) + (32 * _1123) + (32 * _898) + _896 + 420] = 0
    mem[(32 * _1483) + (32 * _1375) + (32 * _1255) + (32 * _1123) + (32 * _898) + _896 + 452] = this.address
    mem[(32 * _1483) + (32 * _1375) + (32 * _1255) + (32 * _1123) + (32 * _898) + _896 + 484] = 128
    mem[(32 * _1483) + (32 * _1375) + (32 * _1255) + (32 * _1123) + (32 * _898) + _896 + 516] = mem[_1578]
    _1596 = mem[_1578]
    mem[(32 * _1483) + (32 * _1375) + (32 * _1255) + (32 * _1123) + (32 * _898) + _896 + 548 len ceil32(mem[_1578])] = mem[_1578 + 32 len ceil32(mem[_1578])]
    if not _1596 % 32:
        require ext_code.size(address(_1593))
        call address(_1593).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args _883, 0, address(this.address), 128, mem[(32 * _1483) + (32 * _1375) + (32 * _1255) + (32 * _1123) + (32 * _898) + _896 + 516 len _1596 + 32]
    else:
        mem[floor32(_1596) + (32 * _1483) + (32 * _1375) + (32 * _1255) + (32 * _1123) + (32 * _898) + _896 + 548] = mem[floor32(_1596) + (32 * _1483) + (32 * _1375) + (32 * _1255) + (32 * _1123) + (32 * _898) + _896 + -(_1596 % 32) + 580 len _1596 % 32]
        require ext_code.size(address(_1593))
        call address(_1593).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args _883, 0, address(this.address), 128, mem[(32 * _1483) + (32 * _1375) + (32 * _1255) + (32 * _1123) + (32 * _898) + _896 + 516 len floor32(_1596) + 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require mem[_554] - 1 < mem[_554]
    mem[(32 * _1483) + (32 * _1375) + (32 * _1255) + (32 * _1123) + (32 * _898) + _896 + 384] = mem[(32 * mem[_554] - 1) + _554 + 32]
    return memory
      from (32 * _1483) + (32 * _1375) + (32 * _1255) + (32 * _1123) + (32 * _898) + _896 + 384
       len 32
}

function sub_d5e51aba(?) {
    require calldata.size - 4 >= 160
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = arg4.length
    mem[(32 * arg2.length) + (32 * arg3.length) + 192 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + (32 * arg5.length) + 36 <= calldata.size
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192] = arg5.length
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    require arg2.length + 1 <= test266151307()
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224] = arg2.length + 1
    if not arg2.length + 1:
        require 0 < arg2.length + 1
        mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256] = Mask(112, 0, arg1)
        idx = 0
        s = 15
        while uint8(idx) < arg2.length:
            require uint8(idx) < mem[(32 * arg2.length) + 128]
            if mem[(32 * uint8(idx)) + (32 * arg2.length) + 191 len 1] < 2:
                require uint8(idx) < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
                _176 = mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + 192]
                require uint8(idx) < arg2.length
                _187 = mem[(32 * uint8(idx)) + 128]
                mem[2816] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                staticcall _187.getReserves() with:
                        gas gas_remaining wei
                mem[3072 len 64] = ext_call.return_data[0 len 64]
                require uint8(idx) < mem[(32 * arg2.length) + 128]
                if Mask(1, 7, _176):
                    if mem[(32 * uint8(idx)) + (32 * arg2.length) + 191 len 1]:
                        require uint8(idx) < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                        require uint8(idx) < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224]
                        require uint8(idx + 1) < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224]
                        mem[(32 * uint8(idx + 1)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256] = (10000 * (10000 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) - (mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) / 10000 * ext_call.return_data[32]) - (5 * _176 % 128 * (10000 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) - (mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) / 10000 * ext_call.return_data[32]) / (10000 * ext_call.return_data[0]) + (10000 * (10000 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) - (mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) / 10000) - (5 * _176 % 128 * (10000 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) - (mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) / 10000)
                        idx = idx + 1
                        s = s
                        continue 
                    if s != 15:
                        if uint8(idx) != arg2.length - 1:
                            require uint8(idx) < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                            require uint8(idx) < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224]
                            require uint8(idx + 1) < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224]
                            mem[(32 * uint8(idx + 1)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256] = (10000 * (10000 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) - (mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) / 10000 * ext_call.return_data[32]) - (5 * _176 % 128 * (10000 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) - (mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) / 10000 * ext_call.return_data[32]) / (10000 * ext_call.return_data[0]) + (10000 * (10000 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) - (mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) / 10000) - (5 * _176 % 128 * (10000 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) - (mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) / 10000)
                            idx = idx + 1
                            s = s
                            continue 
                    require uint8(idx + 1) < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                    require uint8(idx) < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                    require uint8(idx) < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224]
                    require uint8(idx + 1) < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224]
                    mem[(32 * uint8(idx + 1)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256] = (10000 * (10000 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) - (mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) / 10000 * ext_call.return_data[32]) - (5 * _176 % 128 * (10000 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) - (mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) / 10000 * ext_call.return_data[32]) / (10000 * ext_call.return_data[0]) + (10000 * (10000 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) - (mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) / 10000) - (5 * _176 % 128 * (10000 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) - (mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) / 10000)
                    if mem[(32 * uint8(idx + 1)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]:
                        idx = idx + 1
                        s = s
                        continue 
                else:
                    if mem[(32 * uint8(idx)) + (32 * arg2.length) + 191 len 1]:
                        require uint8(idx) < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                        require uint8(idx) < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224]
                        require uint8(idx + 1) < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224]
                        mem[(32 * uint8(idx + 1)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256] = (10000 * (10000 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) - (mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) / 10000 * ext_call.return_data[0]) - (5 * _176 % 128 * (10000 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) - (mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) / 10000 * ext_call.return_data[0]) / (10000 * ext_call.return_data[32]) + (10000 * (10000 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) - (mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) / 10000) - (5 * _176 % 128 * (10000 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) - (mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) / 10000)
                        idx = idx + 1
                        s = s
                        continue 
                    if s != 15:
                        if uint8(idx) != arg2.length - 1:
                            require uint8(idx) < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                            require uint8(idx) < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224]
                            require uint8(idx + 1) < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224]
                            mem[(32 * uint8(idx + 1)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256] = (10000 * (10000 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) - (mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) / 10000 * ext_call.return_data[0]) - (5 * _176 % 128 * (10000 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) - (mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) / 10000 * ext_call.return_data[0]) / (10000 * ext_call.return_data[32]) + (10000 * (10000 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) - (mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) / 10000) - (5 * _176 % 128 * (10000 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) - (mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) / 10000)
                            idx = idx + 1
                            s = s
                            continue 
                    require uint8(idx + 1) < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                    require uint8(idx) < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                    require uint8(idx) < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224]
                    require uint8(idx + 1) < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224]
                    mem[(32 * uint8(idx + 1)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256] = (10000 * (10000 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) - (mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) / 10000 * ext_call.return_data[0]) - (5 * _176 % 128 * (10000 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) - (mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) / 10000 * ext_call.return_data[0]) / (10000 * ext_call.return_data[32]) + (10000 * (10000 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) - (mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) / 10000) - (5 * _176 % 128 * (10000 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) - (mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) / 10000)
                    if mem[(32 * uint8(idx + 1)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]:
                        idx = idx + 1
                        s = s
                        continue 
                idx = idx + 1
                s = uint8(idx)
                continue 
            require uint8(idx) < mem[(32 * arg2.length) + 128]
            if mem[(32 * uint8(idx)) + (32 * arg2.length) + 191 len 1] == 2:
                require uint8(idx) < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
                _183 = mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + 192]
                require uint8(idx) < arg2.length
                _191 = mem[(32 * uint8(idx)) + 128]
                require uint8(idx) < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224]
                _203 = mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]
                mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg2.length + 1) + 260] = ('signextend', 15, ('mask_shl', 3, 3, -3, ('mem', ('range', ('add', 192, ('mask_shl', 8, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg3'))))), 32))))
                mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg2.length + 1) + 292] = ('signextend', 15, ('mask_shl', 3, 0, 0, ('var', '_183')))
                mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg2.length + 1) + 324] = _203
                require ext_code.size(address(_191))
                if not Mask(1, 6, mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + 192]):
                    staticcall address(_191).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg2.length + 1) + 260], ('signextend', 15, ('mask_shl', 3, 0, 0, ('var', '_183'))), _203
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg2.length + 1) + 256] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require uint8(idx + 1) < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224]
                    mem[(32 * uint8(idx + 1)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256] = ext_call.return_data[0]
                else:
                    staticcall address(_191).get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg2.length + 1) + 260], ('signextend', 15, ('mask_shl', 3, 0, 0, ('var', '_183'))), _203
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg2.length + 1) + 256] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 9999 * ext_call.return_data[0] / 9999 != ext_call.return_data[0]:
                        revert with 0, 'ds-math-mul-overflow'
                    require uint8(idx + 1) < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224]
                    mem[(32 * uint8(idx + 1)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256] = 9999 * ext_call.return_data[0] / 10000
            idx = idx + 1
            s = s
            continue 
    else:
        mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256 len 32 * arg2.length + 1] = call.data[calldata.size len 32 * arg2.length + 1]
        require 0 < arg2.length + 1
        mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256] = Mask(112, 0, arg1)
        idx = 0
        s = 15
        while uint8(idx) < arg2.length:
            require uint8(idx) < mem[(32 * arg2.length) + 128]
            if mem[(32 * uint8(idx)) + (32 * arg2.length) + 191 len 1] < 2:
                require uint8(idx) < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
                _180 = mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + 192]
                require uint8(idx) < arg2.length
                _188 = mem[(32 * uint8(idx)) + 128]
                mem[2816] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                staticcall _188.getReserves() with:
                        gas gas_remaining wei
                mem[3072 len 64] = ext_call.return_data[0 len 64]
                require uint8(idx) < mem[(32 * arg2.length) + 128]
                if Mask(1, 7, _180):
                    if mem[(32 * uint8(idx)) + (32 * arg2.length) + 191 len 1]:
                        require uint8(idx) < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                        require uint8(idx) < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224]
                        require uint8(idx + 1) < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224]
                        mem[(32 * uint8(idx + 1)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256] = (10000 * (10000 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) - (mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) / 10000 * ext_call.return_data[32]) - (5 * _180 % 128 * (10000 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) - (mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) / 10000 * ext_call.return_data[32]) / (10000 * ext_call.return_data[0]) + (10000 * (10000 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) - (mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) / 10000) - (5 * _180 % 128 * (10000 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) - (mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) / 10000)
                        idx = idx + 1
                        s = s
                        continue 
                    if s != 15:
                        if uint8(idx) != arg2.length - 1:
                            require uint8(idx) < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                            require uint8(idx) < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224]
                            require uint8(idx + 1) < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224]
                            mem[(32 * uint8(idx + 1)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256] = (10000 * (10000 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) - (mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) / 10000 * ext_call.return_data[32]) - (5 * _180 % 128 * (10000 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) - (mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) / 10000 * ext_call.return_data[32]) / (10000 * ext_call.return_data[0]) + (10000 * (10000 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) - (mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) / 10000) - (5 * _180 % 128 * (10000 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) - (mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) / 10000)
                            idx = idx + 1
                            s = s
                            continue 
                    require uint8(idx + 1) < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                    require uint8(idx) < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                    require uint8(idx) < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224]
                    require uint8(idx + 1) < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224]
                    mem[(32 * uint8(idx + 1)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256] = (10000 * (10000 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) - (mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) / 10000 * ext_call.return_data[32]) - (5 * _180 % 128 * (10000 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) - (mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) / 10000 * ext_call.return_data[32]) / (10000 * ext_call.return_data[0]) + (10000 * (10000 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) - (mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) / 10000) - (5 * _180 % 128 * (10000 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) - (mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) / 10000)
                    if mem[(32 * uint8(idx + 1)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]:
                        idx = idx + 1
                        s = s
                        continue 
                else:
                    if mem[(32 * uint8(idx)) + (32 * arg2.length) + 191 len 1]:
                        require uint8(idx) < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                        require uint8(idx) < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224]
                        require uint8(idx + 1) < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224]
                        mem[(32 * uint8(idx + 1)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256] = (10000 * (10000 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) - (mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) / 10000 * ext_call.return_data[0]) - (5 * _180 % 128 * (10000 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) - (mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) / 10000 * ext_call.return_data[0]) / (10000 * ext_call.return_data[32]) + (10000 * (10000 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) - (mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) / 10000) - (5 * _180 % 128 * (10000 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) - (mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) / 10000)
                        idx = idx + 1
                        s = s
                        continue 
                    if s != 15:
                        if uint8(idx) != arg2.length - 1:
                            require uint8(idx) < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                            require uint8(idx) < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224]
                            require uint8(idx + 1) < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224]
                            mem[(32 * uint8(idx + 1)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256] = (10000 * (10000 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) - (mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) / 10000 * ext_call.return_data[0]) - (5 * _180 % 128 * (10000 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) - (mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) / 10000 * ext_call.return_data[0]) / (10000 * ext_call.return_data[32]) + (10000 * (10000 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) - (mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) / 10000) - (5 * _180 % 128 * (10000 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) - (mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) / 10000)
                            idx = idx + 1
                            s = s
                            continue 
                    require uint8(idx + 1) < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                    require uint8(idx) < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                    require uint8(idx) < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224]
                    require uint8(idx + 1) < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224]
                    mem[(32 * uint8(idx + 1)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256] = (10000 * (10000 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) - (mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) / 10000 * ext_call.return_data[0]) - (5 * _180 % 128 * (10000 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) - (mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) / 10000 * ext_call.return_data[0]) / (10000 * ext_call.return_data[32]) + (10000 * (10000 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) - (mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) / 10000) - (5 * _180 % 128 * (10000 * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) - (mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]) / 10000)
                    if mem[(32 * uint8(idx + 1)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]:
                        idx = idx + 1
                        s = s
                        continue 
                idx = idx + 1
                s = uint8(idx)
                continue 
            require uint8(idx) < mem[(32 * arg2.length) + 128]
            if mem[(32 * uint8(idx)) + (32 * arg2.length) + 191 len 1] == 2:
                require uint8(idx) < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
                _185 = mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + 192]
                require uint8(idx) < arg2.length
                _197 = mem[(32 * uint8(idx)) + 128]
                require uint8(idx) < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224]
                _204 = mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]
                mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg2.length + 1) + 260] = ('signextend', 15, ('mask_shl', 3, 3, -3, ('mem', ('range', ('add', 192, ('mask_shl', 8, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg3'))))), 32))))
                mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg2.length + 1) + 292] = ('signextend', 15, ('mask_shl', 3, 0, 0, ('var', '_185')))
                mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg2.length + 1) + 324] = _204
                require ext_code.size(address(_197))
                if not Mask(1, 6, mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg3.length) + 192]):
                    staticcall address(_197).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg2.length + 1) + 260], ('signextend', 15, ('mask_shl', 3, 0, 0, ('var', '_185'))), _204
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg2.length + 1) + 256] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require uint8(idx + 1) < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224]
                    mem[(32 * uint8(idx + 1)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256] = ext_call.return_data[0]
                else:
                    staticcall address(_197).get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg2.length + 1) + 260], ('signextend', 15, ('mask_shl', 3, 0, 0, ('var', '_185'))), _204
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg2.length + 1) + 256] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 9999 * ext_call.return_data[0] / 9999 != ext_call.return_data[0]:
                        revert with 0, 'ds-math-mul-overflow'
                    require uint8(idx + 1) < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224]
                    mem[(32 * uint8(idx + 1)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256] = 9999 * ext_call.return_data[0] / 10000
            idx = idx + 1
            s = s
            continue 
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg2.length + 1) + 288] = s
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg2.length + 1) + 256] = 64
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg2.length + 1) + 320] = mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224]
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg2.length + 1) + 352 len floor32(mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224])] = mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256 len floor32(mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224])]
    return Array(len=mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224], data=mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg2.length + 1) + 352 len 32 * mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224]]), 
           s
}

function sub_ba7b8f5f(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    _2 = Mask(248, 0, arg1.length), mem[128 len 1]
    mem[64] = ceil32(arg1.length) + (32 * mem[128 len 1] + 1) + 128
    mem[ceil32(arg1.length) + 128] = mem[128 len 1]
    _4 = mem[64]
    mem[64] = mem[64] + (32 * uint8(_2) + 1)
    mem[_4] = uint8(_2)
    _5 = mem[64]
    mem[64] = mem[64] + (32 * uint8(_2) + 1)
    mem[_5] = uint8(_2)
    idx = 0
    s = 32 * uint8(_2) + 1
    while idx < uint8(_2):
        mem[ceil32(arg1.length) + (32 * idx + 1) + 128] = mem[(20 * idx) + 129 len 20]
        mem[_4 + (32 * idx + 1)] = mem[(20 * uint8(_2)) + idx + 98]
        mem[_5 + (32 * idx + 1)] = mem[(21 * uint8(_2)) + idx + 98]
        idx = idx + 1
        s = 32 * idx + 1
        continue 
    _589 = mem[(22 * uint8(_2)) + 111]
    _591 = mem[(22 * uint8(_2)) + 143]
    _594 = mem[ceil32(arg1.length) + 128]
    require mem[ceil32(arg1.length) + 128] + 1 <= test266151307()
    _595 = mem[64]
    mem[mem[64]] = mem[ceil32(arg1.length) + 128] + 1
    mem[64] = mem[64] + (32 * _594 + 1) + 32
    if not _594 + 1:
        require 0 < mem[_595]
        mem[_595 + 32] = Mask(112, 0, _589)
        _1172 = mem[ceil32(arg1.length) + 128]
        idx = 0
        s = 15
        while uint8(idx) < _1172:
            require uint8(idx) < mem[_4]
            if mem[(32 * uint8(idx)) + _4 + 63 len 1] < 2:
                require uint8(idx) < mem[_5]
                _1192 = mem[(32 * uint8(idx)) + _5 + 32]
                require uint8(idx) < mem[ceil32(arg1.length) + 128]
                _1204 = mem[(32 * uint8(idx)) + ceil32(arg1.length) + 160]
                mem[2816] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                staticcall _1204.getReserves() with:
                        gas gas_remaining wei
                mem[3072 len 64] = ext_call.return_data[0 len 64]
                require uint8(idx) < mem[_4]
                if Mask(1, 7, _1192):
                    if mem[(32 * uint8(idx)) + _4 + 63 len 1]:
                        require uint8(idx) < mem[_595]
                        require uint8(idx + 1) < mem[_595]
                        mem[(32 * uint8(idx + 1)) + _595 + 32] = (10000 * mem[(32 * uint8(idx)) + _595 + 32] * ext_call.return_data[32]) - (5 * _1192 % 128 * mem[(32 * uint8(idx)) + _595 + 32] * ext_call.return_data[32]) / (10000 * ext_call.return_data[0]) + (10000 * mem[(32 * uint8(idx)) + _595 + 32]) - (5 * _1192 % 128 * mem[(32 * uint8(idx)) + _595 + 32])
                        _1172 = mem[ceil32(arg1.length) + 128]
                        idx = idx + 1
                        s = s
                        continue 
                    if s != 15:
                        if uint8(idx) != mem[ceil32(arg1.length) + 128] - 1:
                            require uint8(idx) < mem[_595]
                            require uint8(idx + 1) < mem[_595]
                            mem[(32 * uint8(idx + 1)) + _595 + 32] = (10000 * mem[(32 * uint8(idx)) + _595 + 32] * ext_call.return_data[32]) - (5 * _1192 % 128 * mem[(32 * uint8(idx)) + _595 + 32] * ext_call.return_data[32]) / (10000 * ext_call.return_data[0]) + (10000 * mem[(32 * uint8(idx)) + _595 + 32]) - (5 * _1192 % 128 * mem[(32 * uint8(idx)) + _595 + 32])
                            _1172 = mem[ceil32(arg1.length) + 128]
                            idx = idx + 1
                            s = s
                            continue 
                    require uint8(idx) < mem[_595]
                    require uint8(idx + 1) < mem[_595]
                    mem[(32 * uint8(idx + 1)) + _595 + 32] = (10000 * mem[(32 * uint8(idx)) + _595 + 32] * ext_call.return_data[32]) - (5 * _1192 % 128 * mem[(32 * uint8(idx)) + _595 + 32] * ext_call.return_data[32]) / (10000 * ext_call.return_data[0]) + (10000 * mem[(32 * uint8(idx)) + _595 + 32]) - (5 * _1192 % 128 * mem[(32 * uint8(idx)) + _595 + 32])
                else:
                    if mem[(32 * uint8(idx)) + _4 + 63 len 1]:
                        require uint8(idx) < mem[_595]
                        require uint8(idx + 1) < mem[_595]
                        mem[(32 * uint8(idx + 1)) + _595 + 32] = (10000 * mem[(32 * uint8(idx)) + _595 + 32] * ext_call.return_data[0]) - (5 * _1192 % 128 * mem[(32 * uint8(idx)) + _595 + 32] * ext_call.return_data[0]) / (10000 * ext_call.return_data[32]) + (10000 * mem[(32 * uint8(idx)) + _595 + 32]) - (5 * _1192 % 128 * mem[(32 * uint8(idx)) + _595 + 32])
                        _1172 = mem[ceil32(arg1.length) + 128]
                        idx = idx + 1
                        s = s
                        continue 
                    if s != 15:
                        if uint8(idx) != mem[ceil32(arg1.length) + 128] - 1:
                            require uint8(idx) < mem[_595]
                            require uint8(idx + 1) < mem[_595]
                            mem[(32 * uint8(idx + 1)) + _595 + 32] = (10000 * mem[(32 * uint8(idx)) + _595 + 32] * ext_call.return_data[0]) - (5 * _1192 % 128 * mem[(32 * uint8(idx)) + _595 + 32] * ext_call.return_data[0]) / (10000 * ext_call.return_data[32]) + (10000 * mem[(32 * uint8(idx)) + _595 + 32]) - (5 * _1192 % 128 * mem[(32 * uint8(idx)) + _595 + 32])
                            _1172 = mem[ceil32(arg1.length) + 128]
                            idx = idx + 1
                            s = s
                            continue 
                    require uint8(idx) < mem[_595]
                    require uint8(idx + 1) < mem[_595]
                    mem[(32 * uint8(idx + 1)) + _595 + 32] = (10000 * mem[(32 * uint8(idx)) + _595 + 32] * ext_call.return_data[0]) - (5 * _1192 % 128 * mem[(32 * uint8(idx)) + _595 + 32] * ext_call.return_data[0]) / (10000 * ext_call.return_data[32]) + (10000 * mem[(32 * uint8(idx)) + _595 + 32]) - (5 * _1192 % 128 * mem[(32 * uint8(idx)) + _595 + 32])
                _1172 = mem[ceil32(arg1.length) + 128]
                idx = idx + 1
                s = uint8(idx)
                continue 
            require uint8(idx) < mem[_4]
            if mem[(32 * uint8(idx)) + _4 + 63 len 1] == 2:
                require uint8(idx) < mem[_5]
                _1199 = mem[(32 * uint8(idx)) + _5 + 32]
                require uint8(idx) < mem[ceil32(arg1.length) + 128]
                _1211 = mem[(32 * uint8(idx)) + ceil32(arg1.length) + 160]
                require uint8(idx) < mem[_595]
                _1225 = mem[(32 * uint8(idx)) + _595 + 32]
                mem[mem[64] + 4] = ('signextend', 15, ('mask_shl', 3, 3, -3, ('mem', ('range', ('add', 32, ('mask_shl', 8, 0, 5, ('var', 0)), ('var', '_5')), 32))))
                mem[mem[64] + 36] = ('signextend', 15, ('mask_shl', 3, 0, 0, ('var', '_1199')))
                mem[mem[64] + 68] = _1225
                require ext_code.size(address(_1211))
                if not Mask(1, 6, mem[(32 * uint8(idx)) + _5 + 32]):
                    staticcall address(_1211).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], ('signextend', 15, ('mask_shl', 3, 0, 0, ('var', '_1199'))), _1225
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require uint8(idx + 1) < mem[_595]
                    mem[(32 * uint8(idx + 1)) + _595 + 32] = ext_call.return_data[0]
                else:
                    staticcall address(_1211).get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], ('signextend', 15, ('mask_shl', 3, 0, 0, ('var', '_1199'))), _1225
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 9999 * ext_call.return_data[0] / 9999 != ext_call.return_data[0]:
                        revert with 0, 'ds-math-mul-overflow'
                    require uint8(idx + 1) < mem[_595]
                    mem[(32 * uint8(idx + 1)) + _595 + 32] = 9999 * ext_call.return_data[0] / 10000
            _1172 = mem[ceil32(arg1.length) + 128]
            idx = idx + 1
            s = s
            continue 
        require mem[_595] - 1 < mem[_595]
        require 0 < mem[_595]
        if mem[_595 + 32] < mem[(32 * mem[_595] - 1) + _595 + 32]:
            mem[0] = msg.sender
            mem[32] = 1
            require stor1[address(msg.sender)]
            require 0 < mem[_4]
            if mem[_4 + 63 len 1] >= 2:
                _1774 = mem[ceil32(arg1.length) + 128]
                idx = 0
                s = 0
                t = 0
                while idx < _1774:
                    require idx < mem[_4]
                    _1782 = mem[(32 * idx) + _4 + 32]
                    require idx + 1 < mem[_595]
                    _1790 = mem[(32 * idx + 1) + _595 + 32]
                    if idx >= mem[ceil32(arg1.length) + 128] - 1:
                        if mem[(32 * idx) + _4 + 63 len 1] >= 2:
                            if mem[(32 * idx) + _4 + 63 len 1] != 2:
                                _1774 = mem[ceil32(arg1.length) + 128]
                                idx = idx + 1
                                s = s
                                t = mem[(32 * idx) + _4 + 32]
                                continue 
                            require idx < mem[_595]
                            require idx + 1 < mem[_595]
                            _1774 = mem[ceil32(arg1.length) + 128]
                            idx = idx + 1
                            s = mem[(32 * idx) + _595 + 32]
                            t = mem[(32 * idx) + _4 + 32]
                            continue 
                        require idx < mem[_5]
                        if Mask(1, 7, mem[(32 * idx) + _5 + 32]):
                            if mem[(32 * idx) + _4 + 63 len 1]:
                                if mem[(32 * idx) + _4 + 63 len 1] != 1:
                                    _1774 = mem[ceil32(arg1.length) + 128]
                                    idx = idx + 1
                                    s = 0
                                    t = mem[(32 * idx) + _4 + 32]
                                    continue 
                                require idx < mem[ceil32(arg1.length) + 128]
                                _1910 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _1790
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_1910))
                                call address(_1910).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args 0, _1790, this.address
                            else:
                                require idx < mem[ceil32(arg1.length) + 128]
                                _1895 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                _1913 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1913 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1913 + 36] = 0
                                mem[_1913 + 68] = _1790
                                mem[_1913 + 100] = this.address
                                mem[_1913 + 132] = 128
                                mem[_1913 + 164] = mem[_1913]
                                s = 0
                                while s < mem[_1913]:
                                    mem[_1913 + s + 196] = mem[_1913 + s + 32]
                                    _1774 = mem[ceil32(arg1.length) + 128]
                                    s = s + 32
                                    continue 
                                if not mem[_1913] % 32:
                                    require ext_code.size(address(_1895))
                                    call address(_1895).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1790, address(this.address), 128, mem[_1913 + 164 len mem[_1913] + 32]
                                else:
                                    mem[floor32(mem[_1913]) + _1913 + 196] = mem[floor32(mem[_1913]) + _1913 + -(mem[_1913] % 32) + 228 len mem[_1913] % 32]
                                    require ext_code.size(address(_1895))
                                    call address(_1895).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1790, address(this.address), 128, mem[_1913], mem[_1913 + 196 len floor32(mem[_1913]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1774 = mem[ceil32(arg1.length) + 128]
                            idx = idx + 1
                            s = 0
                            t = _1782
                            continue 
                        if mem[(32 * idx) + _4 + 63 len 1]:
                            if mem[(32 * idx) + _4 + 63 len 1] != 1:
                                _1774 = mem[ceil32(arg1.length) + 128]
                                idx = idx + 1
                                s = mem[(32 * idx + 1) + _595 + 32]
                                t = mem[(32 * idx) + _4 + 32]
                                continue 
                            require idx < mem[ceil32(arg1.length) + 128]
                            _1914 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _1790
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            require ext_code.size(address(_1914))
                            call address(_1914).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                 gas gas_remaining wei
                                args _1790, 0, this.address
                        else:
                            require idx < mem[ceil32(arg1.length) + 128]
                            _1897 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                            _1917 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1917 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1917 + 36] = _1790
                            mem[_1917 + 68] = 0
                            mem[_1917 + 100] = this.address
                            mem[_1917 + 132] = 128
                            mem[_1917 + 164] = mem[_1917]
                            s = 0
                            while s < mem[_1917]:
                                mem[_1917 + s + 196] = mem[_1917 + s + 32]
                                _1774 = mem[ceil32(arg1.length) + 128]
                                s = s + 32
                                continue 
                            if not mem[_1917] % 32:
                                require ext_code.size(address(_1897))
                                call address(_1897).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _1790, 0, address(this.address), 128, mem[_1917 + 164 len mem[_1917] + 32]
                            else:
                                mem[floor32(mem[_1917]) + _1917 + 196] = mem[floor32(mem[_1917]) + _1917 + -(mem[_1917] % 32) + 228 len mem[_1917] % 32]
                                require ext_code.size(address(_1897))
                                call address(_1897).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _1790, 0, address(this.address), 128, mem[_1917], mem[_1917 + 196 len floor32(mem[_1917]) + 32]
                    else:
                        require idx + 1 < mem[_4]
                        if mem[(32 * idx + 1) + _4 + 63 len 1] >= 2:
                            if mem[(32 * idx) + _4 + 63 len 1] >= 2:
                                if mem[(32 * idx) + _4 + 63 len 1] != 2:
                                    _1774 = mem[ceil32(arg1.length) + 128]
                                    idx = idx + 1
                                    s = s
                                    t = mem[(32 * idx) + _4 + 32]
                                    continue 
                                require idx < mem[_595]
                                require idx + 1 < mem[_595]
                                _1774 = mem[ceil32(arg1.length) + 128]
                                idx = idx + 1
                                s = mem[(32 * idx) + _595 + 32]
                                t = mem[(32 * idx) + _4 + 32]
                                continue 
                            require idx < mem[_5]
                            if Mask(1, 7, mem[(32 * idx) + _5 + 32]):
                                if mem[(32 * idx) + _4 + 63 len 1]:
                                    if mem[(32 * idx) + _4 + 63 len 1] != 1:
                                        _1774 = mem[ceil32(arg1.length) + 128]
                                        idx = idx + 1
                                        s = 0
                                        t = mem[(32 * idx) + _4 + 32]
                                        continue 
                                    require idx < mem[ceil32(arg1.length) + 128]
                                    _2002 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _1790
                                    mem[mem[64] + 68] = this.address
                                    require ext_code.size(address(_2002))
                                    call address(_2002).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                         gas gas_remaining wei
                                        args 0, _1790, this.address
                                else:
                                    require idx < mem[ceil32(arg1.length) + 128]
                                    _1959 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                    _2005 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2005 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2005 + 36] = 0
                                    mem[_2005 + 68] = _1790
                                    mem[_2005 + 100] = this.address
                                    mem[_2005 + 132] = 128
                                    mem[_2005 + 164] = mem[_2005]
                                    s = 0
                                    while s < mem[_2005]:
                                        mem[_2005 + s + 196] = mem[_2005 + s + 32]
                                        _1774 = mem[ceil32(arg1.length) + 128]
                                        s = s + 32
                                        continue 
                                    if not mem[_2005] % 32:
                                        require ext_code.size(address(_1959))
                                        call address(_1959).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _1790, address(this.address), 128, mem[_2005 + 164 len mem[_2005] + 32]
                                    else:
                                        mem[floor32(mem[_2005]) + _2005 + 196] = mem[floor32(mem[_2005]) + _2005 + -(mem[_2005] % 32) + 228 len mem[_2005] % 32]
                                        require ext_code.size(address(_1959))
                                        call address(_1959).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _1790, address(this.address), 128, mem[_2005], mem[_2005 + 196 len floor32(mem[_2005]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1774 = mem[ceil32(arg1.length) + 128]
                                idx = idx + 1
                                s = 0
                                t = _1782
                                continue 
                            if mem[(32 * idx) + _4 + 63 len 1]:
                                if mem[(32 * idx) + _4 + 63 len 1] != 1:
                                    _1774 = mem[ceil32(arg1.length) + 128]
                                    idx = idx + 1
                                    s = mem[(32 * idx + 1) + _595 + 32]
                                    t = mem[(32 * idx) + _4 + 32]
                                    continue 
                                require idx < mem[ceil32(arg1.length) + 128]
                                _2006 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1790
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_2006))
                                call address(_2006).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _1790, 0, this.address
                            else:
                                require idx < mem[ceil32(arg1.length) + 128]
                                _1961 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                _2009 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2009 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_2009 + 36] = _1790
                                mem[_2009 + 68] = 0
                                mem[_2009 + 100] = this.address
                                mem[_2009 + 132] = 128
                                mem[_2009 + 164] = mem[_2009]
                                s = 0
                                while s < mem[_2009]:
                                    mem[_2009 + s + 196] = mem[_2009 + s + 32]
                                    _1774 = mem[ceil32(arg1.length) + 128]
                                    s = s + 32
                                    continue 
                                if not mem[_2009] % 32:
                                    require ext_code.size(address(_1961))
                                    call address(_1961).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1790, 0, address(this.address), 128, mem[_2009 + 164 len mem[_2009] + 32]
                                else:
                                    mem[floor32(mem[_2009]) + _2009 + 196] = mem[floor32(mem[_2009]) + _2009 + -(mem[_2009] % 32) + 228 len mem[_2009] % 32]
                                    require ext_code.size(address(_1961))
                                    call address(_1961).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1790, 0, address(this.address), 128, mem[_2009], mem[_2009 + 196 len floor32(mem[_2009]) + 32]
                        else:
                            require idx + 1 < mem[ceil32(arg1.length) + 128]
                            _1816 = mem[(32 * idx + 1) + ceil32(arg1.length) + 160]
                            if mem[(32 * idx) + _4 + 63 len 1] >= 2:
                                if mem[(32 * idx) + _4 + 63 len 1] != 2:
                                    _1774 = mem[ceil32(arg1.length) + 128]
                                    idx = idx + 1
                                    s = s
                                    t = mem[(32 * idx) + _4 + 32]
                                    continue 
                                require idx < mem[_595]
                                require idx + 1 < mem[_595]
                                _1774 = mem[ceil32(arg1.length) + 128]
                                idx = idx + 1
                                s = mem[(32 * idx) + _595 + 32]
                                t = mem[(32 * idx) + _4 + 32]
                                continue 
                            require idx < mem[_5]
                            if Mask(1, 7, mem[(32 * idx) + _5 + 32]):
                                if mem[(32 * idx) + _4 + 63 len 1]:
                                    if mem[(32 * idx) + _4 + 63 len 1] != 1:
                                        _1774 = mem[ceil32(arg1.length) + 128]
                                        idx = idx + 1
                                        s = 0
                                        t = mem[(32 * idx) + _4 + 32]
                                        continue 
                                    require idx < mem[ceil32(arg1.length) + 128]
                                    _2048 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _1790
                                    mem[mem[64] + 68] = address(_1816)
                                    require ext_code.size(address(_2048))
                                    call address(_2048).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                         gas gas_remaining wei
                                        args 0, _1790, address(_1816)
                                else:
                                    require idx < mem[ceil32(arg1.length) + 128]
                                    _1999 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                    _2051 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2051 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2051 + 36] = 0
                                    mem[_2051 + 68] = _1790
                                    mem[_2051 + 100] = address(_1816)
                                    mem[_2051 + 132] = 128
                                    mem[_2051 + 164] = mem[_2051]
                                    s = 0
                                    while s < mem[_2051]:
                                        mem[_2051 + s + 196] = mem[_2051 + s + 32]
                                        _1774 = mem[ceil32(arg1.length) + 128]
                                        s = s + 32
                                        continue 
                                    if not mem[_2051] % 32:
                                        require ext_code.size(address(_1999))
                                        call address(_1999).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _1790, address(_1816), 128, mem[_2051 + 164 len mem[_2051] + 32]
                                    else:
                                        mem[floor32(mem[_2051]) + _2051 + 196] = mem[floor32(mem[_2051]) + _2051 + -(mem[_2051] % 32) + 228 len mem[_2051] % 32]
                                        require ext_code.size(address(_1999))
                                        call address(_1999).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _1790, address(_1816), 128, mem[_2051], mem[_2051 + 196 len floor32(mem[_2051]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1774 = mem[ceil32(arg1.length) + 128]
                                idx = idx + 1
                                s = 0
                                t = _1782
                                continue 
                            if mem[(32 * idx) + _4 + 63 len 1]:
                                if mem[(32 * idx) + _4 + 63 len 1] != 1:
                                    _1774 = mem[ceil32(arg1.length) + 128]
                                    idx = idx + 1
                                    s = mem[(32 * idx + 1) + _595 + 32]
                                    t = mem[(32 * idx) + _4 + 32]
                                    continue 
                                require idx < mem[ceil32(arg1.length) + 128]
                                _2052 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1790
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = address(_1816)
                                require ext_code.size(address(_2052))
                                call address(_2052).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _1790, 0, address(_1816)
                            else:
                                require idx < mem[ceil32(arg1.length) + 128]
                                _2001 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                _2055 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2055 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_2055 + 36] = _1790
                                mem[_2055 + 68] = 0
                                mem[_2055 + 100] = address(_1816)
                                mem[_2055 + 132] = 128
                                mem[_2055 + 164] = mem[_2055]
                                s = 0
                                while s < mem[_2055]:
                                    mem[_2055 + s + 196] = mem[_2055 + s + 32]
                                    _1774 = mem[ceil32(arg1.length) + 128]
                                    s = s + 32
                                    continue 
                                if not mem[_2055] % 32:
                                    require ext_code.size(address(_2001))
                                    call address(_2001).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1790, 0, address(_1816), 128, mem[_2055 + 164 len mem[_2055] + 32]
                                else:
                                    mem[floor32(mem[_2055]) + _2055 + 196] = mem[floor32(mem[_2055]) + _2055 + -(mem[_2055] % 32) + 228 len mem[_2055] % 32]
                                    require ext_code.size(address(_2001))
                                    call address(_2001).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1790, 0, address(_1816), 128, mem[_2055], mem[_2055 + 196 len floor32(mem[_2055]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1774 = mem[ceil32(arg1.length) + 128]
                    idx = idx + 1
                    s = _1790
                    t = _1782
                    continue 
            else:
                require 0 < mem[ceil32(arg1.length) + 128]
                require 0 < mem[_595]
                _1237 = mem[_595 + 32]
                mem[mem[64] + 4] = mem[ceil32(arg1.length) + 172 len 20]
                mem[mem[64] + 36] = _1237
                require ext_code.size(Mask(160, 96, _591) >> 96)
                call Mask(160, 96, _591) >> 96.0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _1237
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _1775 = mem[ceil32(arg1.length) + 128]
                idx = 0
                s = 0
                t = 0
                while idx < _1775:
                    require idx < mem[_4]
                    _1784 = mem[(32 * idx) + _4 + 32]
                    require idx + 1 < mem[_595]
                    _1792 = mem[(32 * idx + 1) + _595 + 32]
                    if idx >= mem[ceil32(arg1.length) + 128] - 1:
                        if mem[(32 * idx) + _4 + 63 len 1] >= 2:
                            if mem[(32 * idx) + _4 + 63 len 1] != 2:
                                _1775 = mem[ceil32(arg1.length) + 128]
                                idx = idx + 1
                                s = s
                                t = mem[(32 * idx) + _4 + 32]
                                continue 
                            require idx < mem[_595]
                            require idx + 1 < mem[_595]
                            _1775 = mem[ceil32(arg1.length) + 128]
                            idx = idx + 1
                            s = mem[(32 * idx) + _595 + 32]
                            t = mem[(32 * idx) + _4 + 32]
                            continue 
                        require idx < mem[_5]
                        if Mask(1, 7, mem[(32 * idx) + _5 + 32]):
                            if mem[(32 * idx) + _4 + 63 len 1]:
                                if mem[(32 * idx) + _4 + 63 len 1] != 1:
                                    _1775 = mem[ceil32(arg1.length) + 128]
                                    idx = idx + 1
                                    s = 0
                                    t = mem[(32 * idx) + _4 + 32]
                                    continue 
                                require idx < mem[ceil32(arg1.length) + 128]
                                _1920 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _1792
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_1920))
                                call address(_1920).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args 0, _1792, this.address
                            else:
                                require idx < mem[ceil32(arg1.length) + 128]
                                _1899 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                _1923 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1923 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1923 + 36] = 0
                                mem[_1923 + 68] = _1792
                                mem[_1923 + 100] = this.address
                                mem[_1923 + 132] = 128
                                mem[_1923 + 164] = mem[_1923]
                                s = 0
                                while s < mem[_1923]:
                                    mem[_1923 + s + 196] = mem[_1923 + s + 32]
                                    _1775 = mem[ceil32(arg1.length) + 128]
                                    s = s + 32
                                    continue 
                                if not mem[_1923] % 32:
                                    require ext_code.size(address(_1899))
                                    call address(_1899).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1792, address(this.address), 128, mem[_1923 + 164 len mem[_1923] + 32]
                                else:
                                    mem[floor32(mem[_1923]) + _1923 + 196] = mem[floor32(mem[_1923]) + _1923 + -(mem[_1923] % 32) + 228 len mem[_1923] % 32]
                                    require ext_code.size(address(_1899))
                                    call address(_1899).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1792, address(this.address), 128, mem[_1923], mem[_1923 + 196 len floor32(mem[_1923]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1775 = mem[ceil32(arg1.length) + 128]
                            idx = idx + 1
                            s = 0
                            t = _1784
                            continue 
                        if mem[(32 * idx) + _4 + 63 len 1]:
                            if mem[(32 * idx) + _4 + 63 len 1] != 1:
                                _1775 = mem[ceil32(arg1.length) + 128]
                                idx = idx + 1
                                s = mem[(32 * idx + 1) + _595 + 32]
                                t = mem[(32 * idx) + _4 + 32]
                                continue 
                            require idx < mem[ceil32(arg1.length) + 128]
                            _1924 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _1792
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            require ext_code.size(address(_1924))
                            call address(_1924).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                 gas gas_remaining wei
                                args _1792, 0, this.address
                        else:
                            require idx < mem[ceil32(arg1.length) + 128]
                            _1901 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                            _1927 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1927 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1927 + 36] = _1792
                            mem[_1927 + 68] = 0
                            mem[_1927 + 100] = this.address
                            mem[_1927 + 132] = 128
                            mem[_1927 + 164] = mem[_1927]
                            s = 0
                            while s < mem[_1927]:
                                mem[_1927 + s + 196] = mem[_1927 + s + 32]
                                _1775 = mem[ceil32(arg1.length) + 128]
                                s = s + 32
                                continue 
                            if not mem[_1927] % 32:
                                require ext_code.size(address(_1901))
                                call address(_1901).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _1792, 0, address(this.address), 128, mem[_1927 + 164 len mem[_1927] + 32]
                            else:
                                mem[floor32(mem[_1927]) + _1927 + 196] = mem[floor32(mem[_1927]) + _1927 + -(mem[_1927] % 32) + 228 len mem[_1927] % 32]
                                require ext_code.size(address(_1901))
                                call address(_1901).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _1792, 0, address(this.address), 128, mem[_1927], mem[_1927 + 196 len floor32(mem[_1927]) + 32]
                    else:
                        require idx + 1 < mem[_4]
                        if mem[(32 * idx + 1) + _4 + 63 len 1] >= 2:
                            if mem[(32 * idx) + _4 + 63 len 1] >= 2:
                                if mem[(32 * idx) + _4 + 63 len 1] != 2:
                                    _1775 = mem[ceil32(arg1.length) + 128]
                                    idx = idx + 1
                                    s = s
                                    t = mem[(32 * idx) + _4 + 32]
                                    continue 
                                require idx < mem[_595]
                                require idx + 1 < mem[_595]
                                _1775 = mem[ceil32(arg1.length) + 128]
                                idx = idx + 1
                                s = mem[(32 * idx) + _595 + 32]
                                t = mem[(32 * idx) + _4 + 32]
                                continue 
                            require idx < mem[_5]
                            if Mask(1, 7, mem[(32 * idx) + _5 + 32]):
                                if mem[(32 * idx) + _4 + 63 len 1]:
                                    if mem[(32 * idx) + _4 + 63 len 1] != 1:
                                        _1775 = mem[ceil32(arg1.length) + 128]
                                        idx = idx + 1
                                        s = 0
                                        t = mem[(32 * idx) + _4 + 32]
                                        continue 
                                    require idx < mem[ceil32(arg1.length) + 128]
                                    _2014 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _1792
                                    mem[mem[64] + 68] = this.address
                                    require ext_code.size(address(_2014))
                                    call address(_2014).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                         gas gas_remaining wei
                                        args 0, _1792, this.address
                                else:
                                    require idx < mem[ceil32(arg1.length) + 128]
                                    _1971 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                    _2017 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2017 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2017 + 36] = 0
                                    mem[_2017 + 68] = _1792
                                    mem[_2017 + 100] = this.address
                                    mem[_2017 + 132] = 128
                                    mem[_2017 + 164] = mem[_2017]
                                    s = 0
                                    while s < mem[_2017]:
                                        mem[_2017 + s + 196] = mem[_2017 + s + 32]
                                        _1775 = mem[ceil32(arg1.length) + 128]
                                        s = s + 32
                                        continue 
                                    if not mem[_2017] % 32:
                                        require ext_code.size(address(_1971))
                                        call address(_1971).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _1792, address(this.address), 128, mem[_2017 + 164 len mem[_2017] + 32]
                                    else:
                                        mem[floor32(mem[_2017]) + _2017 + 196] = mem[floor32(mem[_2017]) + _2017 + -(mem[_2017] % 32) + 228 len mem[_2017] % 32]
                                        require ext_code.size(address(_1971))
                                        call address(_1971).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _1792, address(this.address), 128, mem[_2017], mem[_2017 + 196 len floor32(mem[_2017]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1775 = mem[ceil32(arg1.length) + 128]
                                idx = idx + 1
                                s = 0
                                t = _1784
                                continue 
                            if mem[(32 * idx) + _4 + 63 len 1]:
                                if mem[(32 * idx) + _4 + 63 len 1] != 1:
                                    _1775 = mem[ceil32(arg1.length) + 128]
                                    idx = idx + 1
                                    s = mem[(32 * idx + 1) + _595 + 32]
                                    t = mem[(32 * idx) + _4 + 32]
                                    continue 
                                require idx < mem[ceil32(arg1.length) + 128]
                                _2018 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1792
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_2018))
                                call address(_2018).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _1792, 0, this.address
                            else:
                                require idx < mem[ceil32(arg1.length) + 128]
                                _1973 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                _2021 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2021 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_2021 + 36] = _1792
                                mem[_2021 + 68] = 0
                                mem[_2021 + 100] = this.address
                                mem[_2021 + 132] = 128
                                mem[_2021 + 164] = mem[_2021]
                                s = 0
                                while s < mem[_2021]:
                                    mem[_2021 + s + 196] = mem[_2021 + s + 32]
                                    _1775 = mem[ceil32(arg1.length) + 128]
                                    s = s + 32
                                    continue 
                                if not mem[_2021] % 32:
                                    require ext_code.size(address(_1973))
                                    call address(_1973).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1792, 0, address(this.address), 128, mem[_2021 + 164 len mem[_2021] + 32]
                                else:
                                    mem[floor32(mem[_2021]) + _2021 + 196] = mem[floor32(mem[_2021]) + _2021 + -(mem[_2021] % 32) + 228 len mem[_2021] % 32]
                                    require ext_code.size(address(_1973))
                                    call address(_1973).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1792, 0, address(this.address), 128, mem[_2021], mem[_2021 + 196 len floor32(mem[_2021]) + 32]
                        else:
                            require idx + 1 < mem[ceil32(arg1.length) + 128]
                            _1819 = mem[(32 * idx + 1) + ceil32(arg1.length) + 160]
                            if mem[(32 * idx) + _4 + 63 len 1] >= 2:
                                if mem[(32 * idx) + _4 + 63 len 1] != 2:
                                    _1775 = mem[ceil32(arg1.length) + 128]
                                    idx = idx + 1
                                    s = s
                                    t = mem[(32 * idx) + _4 + 32]
                                    continue 
                                require idx < mem[_595]
                                require idx + 1 < mem[_595]
                                _1775 = mem[ceil32(arg1.length) + 128]
                                idx = idx + 1
                                s = mem[(32 * idx) + _595 + 32]
                                t = mem[(32 * idx) + _4 + 32]
                                continue 
                            require idx < mem[_5]
                            if Mask(1, 7, mem[(32 * idx) + _5 + 32]):
                                if mem[(32 * idx) + _4 + 63 len 1]:
                                    if mem[(32 * idx) + _4 + 63 len 1] != 1:
                                        _1775 = mem[ceil32(arg1.length) + 128]
                                        idx = idx + 1
                                        s = 0
                                        t = mem[(32 * idx) + _4 + 32]
                                        continue 
                                    require idx < mem[ceil32(arg1.length) + 128]
                                    _2064 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _1792
                                    mem[mem[64] + 68] = address(_1819)
                                    require ext_code.size(address(_2064))
                                    call address(_2064).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                         gas gas_remaining wei
                                        args 0, _1792, address(_1819)
                                else:
                                    require idx < mem[ceil32(arg1.length) + 128]
                                    _2011 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                    _2067 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2067 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2067 + 36] = 0
                                    mem[_2067 + 68] = _1792
                                    mem[_2067 + 100] = address(_1819)
                                    mem[_2067 + 132] = 128
                                    mem[_2067 + 164] = mem[_2067]
                                    s = 0
                                    while s < mem[_2067]:
                                        mem[_2067 + s + 196] = mem[_2067 + s + 32]
                                        _1775 = mem[ceil32(arg1.length) + 128]
                                        s = s + 32
                                        continue 
                                    if not mem[_2067] % 32:
                                        require ext_code.size(address(_2011))
                                        call address(_2011).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _1792, address(_1819), 128, mem[_2067 + 164 len mem[_2067] + 32]
                                    else:
                                        mem[floor32(mem[_2067]) + _2067 + 196] = mem[floor32(mem[_2067]) + _2067 + -(mem[_2067] % 32) + 228 len mem[_2067] % 32]
                                        require ext_code.size(address(_2011))
                                        call address(_2011).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _1792, address(_1819), 128, mem[_2067], mem[_2067 + 196 len floor32(mem[_2067]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1775 = mem[ceil32(arg1.length) + 128]
                                idx = idx + 1
                                s = 0
                                t = _1784
                                continue 
                            if mem[(32 * idx) + _4 + 63 len 1]:
                                if mem[(32 * idx) + _4 + 63 len 1] != 1:
                                    _1775 = mem[ceil32(arg1.length) + 128]
                                    idx = idx + 1
                                    s = mem[(32 * idx + 1) + _595 + 32]
                                    t = mem[(32 * idx) + _4 + 32]
                                    continue 
                                require idx < mem[ceil32(arg1.length) + 128]
                                _2068 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1792
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = address(_1819)
                                require ext_code.size(address(_2068))
                                call address(_2068).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _1792, 0, address(_1819)
                            else:
                                require idx < mem[ceil32(arg1.length) + 128]
                                _2013 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                _2071 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2071 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_2071 + 36] = _1792
                                mem[_2071 + 68] = 0
                                mem[_2071 + 100] = address(_1819)
                                mem[_2071 + 132] = 128
                                mem[_2071 + 164] = mem[_2071]
                                s = 0
                                while s < mem[_2071]:
                                    mem[_2071 + s + 196] = mem[_2071 + s + 32]
                                    _1775 = mem[ceil32(arg1.length) + 128]
                                    s = s + 32
                                    continue 
                                if not mem[_2071] % 32:
                                    require ext_code.size(address(_2013))
                                    call address(_2013).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1792, 0, address(_1819), 128, mem[_2071 + 164 len mem[_2071] + 32]
                                else:
                                    mem[floor32(mem[_2071]) + _2071 + 196] = mem[floor32(mem[_2071]) + _2071 + -(mem[_2071] % 32) + 228 len mem[_2071] % 32]
                                    require ext_code.size(address(_2013))
                                    call address(_2013).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1792, 0, address(_1819), 128, mem[_2071], mem[_2071 + 196 len floor32(mem[_2071]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1775 = mem[ceil32(arg1.length) + 128]
                    idx = idx + 1
                    s = _1792
                    t = _1784
                    continue 
    else:
        mem[_595 + 32 len 32 * _594 + 1] = call.data[calldata.size len 32 * _594 + 1]
        require 0 < mem[_595]
        mem[_595 + 32] = Mask(112, 0, _589)
        _1173 = mem[ceil32(arg1.length) + 128]
        idx = 0
        s = 15
        while uint8(idx) < _1173:
            require uint8(idx) < mem[_4]
            if mem[(32 * uint8(idx)) + _4 + 63 len 1] < 2:
                require uint8(idx) < mem[_5]
                _1195 = mem[(32 * uint8(idx)) + _5 + 32]
                require uint8(idx) < mem[ceil32(arg1.length) + 128]
                _1205 = mem[(32 * uint8(idx)) + ceil32(arg1.length) + 160]
                mem[2816] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                staticcall _1205.getReserves() with:
                        gas gas_remaining wei
                mem[3072 len 64] = ext_call.return_data[0 len 64]
                require uint8(idx) < mem[_4]
                if Mask(1, 7, _1195):
                    if mem[(32 * uint8(idx)) + _4 + 63 len 1]:
                        require uint8(idx) < mem[_595]
                        require uint8(idx + 1) < mem[_595]
                        mem[(32 * uint8(idx + 1)) + _595 + 32] = (10000 * mem[(32 * uint8(idx)) + _595 + 32] * ext_call.return_data[32]) - (5 * _1195 % 128 * mem[(32 * uint8(idx)) + _595 + 32] * ext_call.return_data[32]) / (10000 * ext_call.return_data[0]) + (10000 * mem[(32 * uint8(idx)) + _595 + 32]) - (5 * _1195 % 128 * mem[(32 * uint8(idx)) + _595 + 32])
                        _1173 = mem[ceil32(arg1.length) + 128]
                        idx = idx + 1
                        s = s
                        continue 
                    if s != 15:
                        if uint8(idx) != mem[ceil32(arg1.length) + 128] - 1:
                            require uint8(idx) < mem[_595]
                            require uint8(idx + 1) < mem[_595]
                            mem[(32 * uint8(idx + 1)) + _595 + 32] = (10000 * mem[(32 * uint8(idx)) + _595 + 32] * ext_call.return_data[32]) - (5 * _1195 % 128 * mem[(32 * uint8(idx)) + _595 + 32] * ext_call.return_data[32]) / (10000 * ext_call.return_data[0]) + (10000 * mem[(32 * uint8(idx)) + _595 + 32]) - (5 * _1195 % 128 * mem[(32 * uint8(idx)) + _595 + 32])
                            _1173 = mem[ceil32(arg1.length) + 128]
                            idx = idx + 1
                            s = s
                            continue 
                    require uint8(idx) < mem[_595]
                    require uint8(idx + 1) < mem[_595]
                    mem[(32 * uint8(idx + 1)) + _595 + 32] = (10000 * mem[(32 * uint8(idx)) + _595 + 32] * ext_call.return_data[32]) - (5 * _1195 % 128 * mem[(32 * uint8(idx)) + _595 + 32] * ext_call.return_data[32]) / (10000 * ext_call.return_data[0]) + (10000 * mem[(32 * uint8(idx)) + _595 + 32]) - (5 * _1195 % 128 * mem[(32 * uint8(idx)) + _595 + 32])
                else:
                    if mem[(32 * uint8(idx)) + _4 + 63 len 1]:
                        require uint8(idx) < mem[_595]
                        require uint8(idx + 1) < mem[_595]
                        mem[(32 * uint8(idx + 1)) + _595 + 32] = (10000 * mem[(32 * uint8(idx)) + _595 + 32] * ext_call.return_data[0]) - (5 * _1195 % 128 * mem[(32 * uint8(idx)) + _595 + 32] * ext_call.return_data[0]) / (10000 * ext_call.return_data[32]) + (10000 * mem[(32 * uint8(idx)) + _595 + 32]) - (5 * _1195 % 128 * mem[(32 * uint8(idx)) + _595 + 32])
                        _1173 = mem[ceil32(arg1.length) + 128]
                        idx = idx + 1
                        s = s
                        continue 
                    if s != 15:
                        if uint8(idx) != mem[ceil32(arg1.length) + 128] - 1:
                            require uint8(idx) < mem[_595]
                            require uint8(idx + 1) < mem[_595]
                            mem[(32 * uint8(idx + 1)) + _595 + 32] = (10000 * mem[(32 * uint8(idx)) + _595 + 32] * ext_call.return_data[0]) - (5 * _1195 % 128 * mem[(32 * uint8(idx)) + _595 + 32] * ext_call.return_data[0]) / (10000 * ext_call.return_data[32]) + (10000 * mem[(32 * uint8(idx)) + _595 + 32]) - (5 * _1195 % 128 * mem[(32 * uint8(idx)) + _595 + 32])
                            _1173 = mem[ceil32(arg1.length) + 128]
                            idx = idx + 1
                            s = s
                            continue 
                    require uint8(idx) < mem[_595]
                    require uint8(idx + 1) < mem[_595]
                    mem[(32 * uint8(idx + 1)) + _595 + 32] = (10000 * mem[(32 * uint8(idx)) + _595 + 32] * ext_call.return_data[0]) - (5 * _1195 % 128 * mem[(32 * uint8(idx)) + _595 + 32] * ext_call.return_data[0]) / (10000 * ext_call.return_data[32]) + (10000 * mem[(32 * uint8(idx)) + _595 + 32]) - (5 * _1195 % 128 * mem[(32 * uint8(idx)) + _595 + 32])
                _1173 = mem[ceil32(arg1.length) + 128]
                idx = idx + 1
                s = uint8(idx)
                continue 
            require uint8(idx) < mem[_4]
            if mem[(32 * uint8(idx)) + _4 + 63 len 1] == 2:
                require uint8(idx) < mem[_5]
                _1202 = mem[(32 * uint8(idx)) + _5 + 32]
                require uint8(idx) < mem[ceil32(arg1.length) + 128]
                _1218 = mem[(32 * uint8(idx)) + ceil32(arg1.length) + 160]
                require uint8(idx) < mem[_595]
                _1227 = mem[(32 * uint8(idx)) + _595 + 32]
                mem[mem[64] + 4] = ('signextend', 15, ('mask_shl', 3, 3, -3, ('mem', ('range', ('add', 32, ('mask_shl', 8, 0, 5, ('var', 0)), ('var', '_5')), 32))))
                mem[mem[64] + 36] = ('signextend', 15, ('mask_shl', 3, 0, 0, ('var', '_1202')))
                mem[mem[64] + 68] = _1227
                require ext_code.size(address(_1218))
                if not Mask(1, 6, mem[(32 * uint8(idx)) + _5 + 32]):
                    staticcall address(_1218).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], ('signextend', 15, ('mask_shl', 3, 0, 0, ('var', '_1202'))), _1227
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require uint8(idx + 1) < mem[_595]
                    mem[(32 * uint8(idx + 1)) + _595 + 32] = ext_call.return_data[0]
                else:
                    staticcall address(_1218).get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], ('signextend', 15, ('mask_shl', 3, 0, 0, ('var', '_1202'))), _1227
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 9999 * ext_call.return_data[0] / 9999 != ext_call.return_data[0]:
                        revert with 0, 'ds-math-mul-overflow'
                    require uint8(idx + 1) < mem[_595]
                    mem[(32 * uint8(idx + 1)) + _595 + 32] = 9999 * ext_call.return_data[0] / 10000
            _1173 = mem[ceil32(arg1.length) + 128]
            idx = idx + 1
            s = s
            continue 
        require mem[_595] - 1 < mem[_595]
        require 0 < mem[_595]
        if mem[_595 + 32] < mem[(32 * mem[_595] - 1) + _595 + 32]:
            mem[0] = msg.sender
            mem[32] = 1
            require stor1[address(msg.sender)]
            require 0 < mem[_4]
            if mem[_4 + 63 len 1] >= 2:
                _1776 = mem[ceil32(arg1.length) + 128]
                idx = 0
                s = 0
                t = 0
                while idx < _1776:
                    require idx < mem[_4]
                    _1786 = mem[(32 * idx) + _4 + 32]
                    require idx + 1 < mem[_595]
                    _1794 = mem[(32 * idx + 1) + _595 + 32]
                    if idx >= mem[ceil32(arg1.length) + 128] - 1:
                        if mem[(32 * idx) + _4 + 63 len 1] >= 2:
                            if mem[(32 * idx) + _4 + 63 len 1] != 2:
                                _1776 = mem[ceil32(arg1.length) + 128]
                                idx = idx + 1
                                s = s
                                t = mem[(32 * idx) + _4 + 32]
                                continue 
                            require idx < mem[_595]
                            require idx + 1 < mem[_595]
                            _1776 = mem[ceil32(arg1.length) + 128]
                            idx = idx + 1
                            s = mem[(32 * idx) + _595 + 32]
                            t = mem[(32 * idx) + _4 + 32]
                            continue 
                        require idx < mem[_5]
                        if Mask(1, 7, mem[(32 * idx) + _5 + 32]):
                            if mem[(32 * idx) + _4 + 63 len 1]:
                                if mem[(32 * idx) + _4 + 63 len 1] != 1:
                                    _1776 = mem[ceil32(arg1.length) + 128]
                                    idx = idx + 1
                                    s = 0
                                    t = mem[(32 * idx) + _4 + 32]
                                    continue 
                                require idx < mem[ceil32(arg1.length) + 128]
                                _1930 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _1794
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_1930))
                                call address(_1930).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args 0, _1794, this.address
                            else:
                                require idx < mem[ceil32(arg1.length) + 128]
                                _1903 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                _1933 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1933 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1933 + 36] = 0
                                mem[_1933 + 68] = _1794
                                mem[_1933 + 100] = this.address
                                mem[_1933 + 132] = 128
                                mem[_1933 + 164] = mem[_1933]
                                s = 0
                                while s < mem[_1933]:
                                    mem[_1933 + s + 196] = mem[_1933 + s + 32]
                                    _1776 = mem[ceil32(arg1.length) + 128]
                                    s = s + 32
                                    continue 
                                if not mem[_1933] % 32:
                                    require ext_code.size(address(_1903))
                                    call address(_1903).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1794, address(this.address), 128, mem[_1933 + 164 len mem[_1933] + 32]
                                else:
                                    mem[floor32(mem[_1933]) + _1933 + 196] = mem[floor32(mem[_1933]) + _1933 + -(mem[_1933] % 32) + 228 len mem[_1933] % 32]
                                    require ext_code.size(address(_1903))
                                    call address(_1903).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1794, address(this.address), 128, mem[_1933], mem[_1933 + 196 len floor32(mem[_1933]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1776 = mem[ceil32(arg1.length) + 128]
                            idx = idx + 1
                            s = 0
                            t = _1786
                            continue 
                        if mem[(32 * idx) + _4 + 63 len 1]:
                            if mem[(32 * idx) + _4 + 63 len 1] != 1:
                                _1776 = mem[ceil32(arg1.length) + 128]
                                idx = idx + 1
                                s = mem[(32 * idx + 1) + _595 + 32]
                                t = mem[(32 * idx) + _4 + 32]
                                continue 
                            require idx < mem[ceil32(arg1.length) + 128]
                            _1934 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _1794
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            require ext_code.size(address(_1934))
                            call address(_1934).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                 gas gas_remaining wei
                                args _1794, 0, this.address
                        else:
                            require idx < mem[ceil32(arg1.length) + 128]
                            _1905 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                            _1937 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1937 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1937 + 36] = _1794
                            mem[_1937 + 68] = 0
                            mem[_1937 + 100] = this.address
                            mem[_1937 + 132] = 128
                            mem[_1937 + 164] = mem[_1937]
                            s = 0
                            while s < mem[_1937]:
                                mem[_1937 + s + 196] = mem[_1937 + s + 32]
                                _1776 = mem[ceil32(arg1.length) + 128]
                                s = s + 32
                                continue 
                            if not mem[_1937] % 32:
                                require ext_code.size(address(_1905))
                                call address(_1905).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _1794, 0, address(this.address), 128, mem[_1937 + 164 len mem[_1937] + 32]
                            else:
                                mem[floor32(mem[_1937]) + _1937 + 196] = mem[floor32(mem[_1937]) + _1937 + -(mem[_1937] % 32) + 228 len mem[_1937] % 32]
                                require ext_code.size(address(_1905))
                                call address(_1905).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _1794, 0, address(this.address), 128, mem[_1937], mem[_1937 + 196 len floor32(mem[_1937]) + 32]
                    else:
                        require idx + 1 < mem[_4]
                        if mem[(32 * idx + 1) + _4 + 63 len 1] >= 2:
                            if mem[(32 * idx) + _4 + 63 len 1] >= 2:
                                if mem[(32 * idx) + _4 + 63 len 1] != 2:
                                    _1776 = mem[ceil32(arg1.length) + 128]
                                    idx = idx + 1
                                    s = s
                                    t = mem[(32 * idx) + _4 + 32]
                                    continue 
                                require idx < mem[_595]
                                require idx + 1 < mem[_595]
                                _1776 = mem[ceil32(arg1.length) + 128]
                                idx = idx + 1
                                s = mem[(32 * idx) + _595 + 32]
                                t = mem[(32 * idx) + _4 + 32]
                                continue 
                            require idx < mem[_5]
                            if Mask(1, 7, mem[(32 * idx) + _5 + 32]):
                                if mem[(32 * idx) + _4 + 63 len 1]:
                                    if mem[(32 * idx) + _4 + 63 len 1] != 1:
                                        _1776 = mem[ceil32(arg1.length) + 128]
                                        idx = idx + 1
                                        s = 0
                                        t = mem[(32 * idx) + _4 + 32]
                                        continue 
                                    require idx < mem[ceil32(arg1.length) + 128]
                                    _2026 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _1794
                                    mem[mem[64] + 68] = this.address
                                    require ext_code.size(address(_2026))
                                    call address(_2026).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                         gas gas_remaining wei
                                        args 0, _1794, this.address
                                else:
                                    require idx < mem[ceil32(arg1.length) + 128]
                                    _1983 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                    _2029 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2029 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2029 + 36] = 0
                                    mem[_2029 + 68] = _1794
                                    mem[_2029 + 100] = this.address
                                    mem[_2029 + 132] = 128
                                    mem[_2029 + 164] = mem[_2029]
                                    s = 0
                                    while s < mem[_2029]:
                                        mem[_2029 + s + 196] = mem[_2029 + s + 32]
                                        _1776 = mem[ceil32(arg1.length) + 128]
                                        s = s + 32
                                        continue 
                                    if not mem[_2029] % 32:
                                        require ext_code.size(address(_1983))
                                        call address(_1983).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _1794, address(this.address), 128, mem[_2029 + 164 len mem[_2029] + 32]
                                    else:
                                        mem[floor32(mem[_2029]) + _2029 + 196] = mem[floor32(mem[_2029]) + _2029 + -(mem[_2029] % 32) + 228 len mem[_2029] % 32]
                                        require ext_code.size(address(_1983))
                                        call address(_1983).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _1794, address(this.address), 128, mem[_2029], mem[_2029 + 196 len floor32(mem[_2029]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1776 = mem[ceil32(arg1.length) + 128]
                                idx = idx + 1
                                s = 0
                                t = _1786
                                continue 
                            if mem[(32 * idx) + _4 + 63 len 1]:
                                if mem[(32 * idx) + _4 + 63 len 1] != 1:
                                    _1776 = mem[ceil32(arg1.length) + 128]
                                    idx = idx + 1
                                    s = mem[(32 * idx + 1) + _595 + 32]
                                    t = mem[(32 * idx) + _4 + 32]
                                    continue 
                                require idx < mem[ceil32(arg1.length) + 128]
                                _2030 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1794
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_2030))
                                call address(_2030).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _1794, 0, this.address
                            else:
                                require idx < mem[ceil32(arg1.length) + 128]
                                _1985 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                _2033 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2033 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_2033 + 36] = _1794
                                mem[_2033 + 68] = 0
                                mem[_2033 + 100] = this.address
                                mem[_2033 + 132] = 128
                                mem[_2033 + 164] = mem[_2033]
                                s = 0
                                while s < mem[_2033]:
                                    mem[_2033 + s + 196] = mem[_2033 + s + 32]
                                    _1776 = mem[ceil32(arg1.length) + 128]
                                    s = s + 32
                                    continue 
                                if not mem[_2033] % 32:
                                    require ext_code.size(address(_1985))
                                    call address(_1985).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1794, 0, address(this.address), 128, mem[_2033 + 164 len mem[_2033] + 32]
                                else:
                                    mem[floor32(mem[_2033]) + _2033 + 196] = mem[floor32(mem[_2033]) + _2033 + -(mem[_2033] % 32) + 228 len mem[_2033] % 32]
                                    require ext_code.size(address(_1985))
                                    call address(_1985).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1794, 0, address(this.address), 128, mem[_2033], mem[_2033 + 196 len floor32(mem[_2033]) + 32]
                        else:
                            require idx + 1 < mem[ceil32(arg1.length) + 128]
                            _1822 = mem[(32 * idx + 1) + ceil32(arg1.length) + 160]
                            if mem[(32 * idx) + _4 + 63 len 1] >= 2:
                                if mem[(32 * idx) + _4 + 63 len 1] != 2:
                                    _1776 = mem[ceil32(arg1.length) + 128]
                                    idx = idx + 1
                                    s = s
                                    t = mem[(32 * idx) + _4 + 32]
                                    continue 
                                require idx < mem[_595]
                                require idx + 1 < mem[_595]
                                _1776 = mem[ceil32(arg1.length) + 128]
                                idx = idx + 1
                                s = mem[(32 * idx) + _595 + 32]
                                t = mem[(32 * idx) + _4 + 32]
                                continue 
                            require idx < mem[_5]
                            if Mask(1, 7, mem[(32 * idx) + _5 + 32]):
                                if mem[(32 * idx) + _4 + 63 len 1]:
                                    if mem[(32 * idx) + _4 + 63 len 1] != 1:
                                        _1776 = mem[ceil32(arg1.length) + 128]
                                        idx = idx + 1
                                        s = 0
                                        t = mem[(32 * idx) + _4 + 32]
                                        continue 
                                    require idx < mem[ceil32(arg1.length) + 128]
                                    _2080 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _1794
                                    mem[mem[64] + 68] = address(_1822)
                                    require ext_code.size(address(_2080))
                                    call address(_2080).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                         gas gas_remaining wei
                                        args 0, _1794, address(_1822)
                                else:
                                    require idx < mem[ceil32(arg1.length) + 128]
                                    _2023 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                    _2083 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2083 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2083 + 36] = 0
                                    mem[_2083 + 68] = _1794
                                    mem[_2083 + 100] = address(_1822)
                                    mem[_2083 + 132] = 128
                                    mem[_2083 + 164] = mem[_2083]
                                    s = 0
                                    while s < mem[_2083]:
                                        mem[_2083 + s + 196] = mem[_2083 + s + 32]
                                        _1776 = mem[ceil32(arg1.length) + 128]
                                        s = s + 32
                                        continue 
                                    if not mem[_2083] % 32:
                                        require ext_code.size(address(_2023))
                                        call address(_2023).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _1794, address(_1822), 128, mem[_2083 + 164 len mem[_2083] + 32]
                                    else:
                                        mem[floor32(mem[_2083]) + _2083 + 196] = mem[floor32(mem[_2083]) + _2083 + -(mem[_2083] % 32) + 228 len mem[_2083] % 32]
                                        require ext_code.size(address(_2023))
                                        call address(_2023).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _1794, address(_1822), 128, mem[_2083], mem[_2083 + 196 len floor32(mem[_2083]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1776 = mem[ceil32(arg1.length) + 128]
                                idx = idx + 1
                                s = 0
                                t = _1786
                                continue 
                            if mem[(32 * idx) + _4 + 63 len 1]:
                                if mem[(32 * idx) + _4 + 63 len 1] != 1:
                                    _1776 = mem[ceil32(arg1.length) + 128]
                                    idx = idx + 1
                                    s = mem[(32 * idx + 1) + _595 + 32]
                                    t = mem[(32 * idx) + _4 + 32]
                                    continue 
                                require idx < mem[ceil32(arg1.length) + 128]
                                _2084 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1794
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = address(_1822)
                                require ext_code.size(address(_2084))
                                call address(_2084).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _1794, 0, address(_1822)
                            else:
                                require idx < mem[ceil32(arg1.length) + 128]
                                _2025 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                _2087 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2087 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_2087 + 36] = _1794
                                mem[_2087 + 68] = 0
                                mem[_2087 + 100] = address(_1822)
                                mem[_2087 + 132] = 128
                                mem[_2087 + 164] = mem[_2087]
                                s = 0
                                while s < mem[_2087]:
                                    mem[_2087 + s + 196] = mem[_2087 + s + 32]
                                    _1776 = mem[ceil32(arg1.length) + 128]
                                    s = s + 32
                                    continue 
                                if not mem[_2087] % 32:
                                    require ext_code.size(address(_2025))
                                    call address(_2025).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1794, 0, address(_1822), 128, mem[_2087 + 164 len mem[_2087] + 32]
                                else:
                                    mem[floor32(mem[_2087]) + _2087 + 196] = mem[floor32(mem[_2087]) + _2087 + -(mem[_2087] % 32) + 228 len mem[_2087] % 32]
                                    require ext_code.size(address(_2025))
                                    call address(_2025).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1794, 0, address(_1822), 128, mem[_2087], mem[_2087 + 196 len floor32(mem[_2087]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1776 = mem[ceil32(arg1.length) + 128]
                    idx = idx + 1
                    s = _1794
                    t = _1786
                    continue 
            else:
                require 0 < mem[ceil32(arg1.length) + 128]
                require 0 < mem[_595]
                _1247 = mem[_595 + 32]
                mem[mem[64] + 4] = mem[ceil32(arg1.length) + 172 len 20]
                mem[mem[64] + 36] = _1247
                require ext_code.size(Mask(160, 96, _591) >> 96)
                call Mask(160, 96, _591) >> 96.0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _1247
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _1777 = mem[ceil32(arg1.length) + 128]
                idx = 0
                s = 0
                t = 0
                while idx < _1777:
                    require idx < mem[_4]
                    _1788 = mem[(32 * idx) + _4 + 32]
                    require idx + 1 < mem[_595]
                    _1796 = mem[(32 * idx + 1) + _595 + 32]
                    if idx >= mem[ceil32(arg1.length) + 128] - 1:
                        if mem[(32 * idx) + _4 + 63 len 1] >= 2:
                            if mem[(32 * idx) + _4 + 63 len 1] != 2:
                                _1777 = mem[ceil32(arg1.length) + 128]
                                idx = idx + 1
                                s = s
                                t = mem[(32 * idx) + _4 + 32]
                                continue 
                            require idx < mem[_595]
                            require idx + 1 < mem[_595]
                            _1777 = mem[ceil32(arg1.length) + 128]
                            idx = idx + 1
                            s = mem[(32 * idx) + _595 + 32]
                            t = mem[(32 * idx) + _4 + 32]
                            continue 
                        require idx < mem[_5]
                        if Mask(1, 7, mem[(32 * idx) + _5 + 32]):
                            if mem[(32 * idx) + _4 + 63 len 1]:
                                if mem[(32 * idx) + _4 + 63 len 1] != 1:
                                    _1777 = mem[ceil32(arg1.length) + 128]
                                    idx = idx + 1
                                    s = 0
                                    t = mem[(32 * idx) + _4 + 32]
                                    continue 
                                require idx < mem[ceil32(arg1.length) + 128]
                                _1940 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _1796
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_1940))
                                call address(_1940).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args 0, _1796, this.address
                            else:
                                require idx < mem[ceil32(arg1.length) + 128]
                                _1907 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                _1943 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1943 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1943 + 36] = 0
                                mem[_1943 + 68] = _1796
                                mem[_1943 + 100] = this.address
                                mem[_1943 + 132] = 128
                                mem[_1943 + 164] = mem[_1943]
                                s = 0
                                while s < mem[_1943]:
                                    mem[_1943 + s + 196] = mem[_1943 + s + 32]
                                    _1777 = mem[ceil32(arg1.length) + 128]
                                    s = s + 32
                                    continue 
                                if not mem[_1943] % 32:
                                    require ext_code.size(address(_1907))
                                    call address(_1907).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1796, address(this.address), 128, mem[_1943 + 164 len mem[_1943] + 32]
                                else:
                                    mem[floor32(mem[_1943]) + _1943 + 196] = mem[floor32(mem[_1943]) + _1943 + -(mem[_1943] % 32) + 228 len mem[_1943] % 32]
                                    require ext_code.size(address(_1907))
                                    call address(_1907).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1796, address(this.address), 128, mem[_1943], mem[_1943 + 196 len floor32(mem[_1943]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1777 = mem[ceil32(arg1.length) + 128]
                            idx = idx + 1
                            s = 0
                            t = _1788
                            continue 
                        if mem[(32 * idx) + _4 + 63 len 1]:
                            if mem[(32 * idx) + _4 + 63 len 1] != 1:
                                _1777 = mem[ceil32(arg1.length) + 128]
                                idx = idx + 1
                                s = mem[(32 * idx + 1) + _595 + 32]
                                t = mem[(32 * idx) + _4 + 32]
                                continue 
                            require idx < mem[ceil32(arg1.length) + 128]
                            _1944 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _1796
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            require ext_code.size(address(_1944))
                            call address(_1944).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                 gas gas_remaining wei
                                args _1796, 0, this.address
                        else:
                            require idx < mem[ceil32(arg1.length) + 128]
                            _1909 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                            _1947 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1947 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1947 + 36] = _1796
                            mem[_1947 + 68] = 0
                            mem[_1947 + 100] = this.address
                            mem[_1947 + 132] = 128
                            mem[_1947 + 164] = mem[_1947]
                            s = 0
                            while s < mem[_1947]:
                                mem[_1947 + s + 196] = mem[_1947 + s + 32]
                                _1777 = mem[ceil32(arg1.length) + 128]
                                s = s + 32
                                continue 
                            if not mem[_1947] % 32:
                                require ext_code.size(address(_1909))
                                call address(_1909).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _1796, 0, address(this.address), 128, mem[_1947 + 164 len mem[_1947] + 32]
                            else:
                                mem[floor32(mem[_1947]) + _1947 + 196] = mem[floor32(mem[_1947]) + _1947 + -(mem[_1947] % 32) + 228 len mem[_1947] % 32]
                                require ext_code.size(address(_1909))
                                call address(_1909).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _1796, 0, address(this.address), 128, mem[_1947], mem[_1947 + 196 len floor32(mem[_1947]) + 32]
                    else:
                        require idx + 1 < mem[_4]
                        if mem[(32 * idx + 1) + _4 + 63 len 1] >= 2:
                            if mem[(32 * idx) + _4 + 63 len 1] >= 2:
                                if mem[(32 * idx) + _4 + 63 len 1] != 2:
                                    _1777 = mem[ceil32(arg1.length) + 128]
                                    idx = idx + 1
                                    s = s
                                    t = mem[(32 * idx) + _4 + 32]
                                    continue 
                                require idx < mem[_595]
                                require idx + 1 < mem[_595]
                                _1777 = mem[ceil32(arg1.length) + 128]
                                idx = idx + 1
                                s = mem[(32 * idx) + _595 + 32]
                                t = mem[(32 * idx) + _4 + 32]
                                continue 
                            require idx < mem[_5]
                            if Mask(1, 7, mem[(32 * idx) + _5 + 32]):
                                if mem[(32 * idx) + _4 + 63 len 1]:
                                    if mem[(32 * idx) + _4 + 63 len 1] != 1:
                                        _1777 = mem[ceil32(arg1.length) + 128]
                                        idx = idx + 1
                                        s = 0
                                        t = mem[(32 * idx) + _4 + 32]
                                        continue 
                                    require idx < mem[ceil32(arg1.length) + 128]
                                    _2038 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _1796
                                    mem[mem[64] + 68] = this.address
                                    require ext_code.size(address(_2038))
                                    call address(_2038).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                         gas gas_remaining wei
                                        args 0, _1796, this.address
                                else:
                                    require idx < mem[ceil32(arg1.length) + 128]
                                    _1995 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                    _2041 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2041 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2041 + 36] = 0
                                    mem[_2041 + 68] = _1796
                                    mem[_2041 + 100] = this.address
                                    mem[_2041 + 132] = 128
                                    mem[_2041 + 164] = mem[_2041]
                                    s = 0
                                    while s < mem[_2041]:
                                        mem[_2041 + s + 196] = mem[_2041 + s + 32]
                                        _1777 = mem[ceil32(arg1.length) + 128]
                                        s = s + 32
                                        continue 
                                    if not mem[_2041] % 32:
                                        require ext_code.size(address(_1995))
                                        call address(_1995).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _1796, address(this.address), 128, mem[_2041 + 164 len mem[_2041] + 32]
                                    else:
                                        mem[floor32(mem[_2041]) + _2041 + 196] = mem[floor32(mem[_2041]) + _2041 + -(mem[_2041] % 32) + 228 len mem[_2041] % 32]
                                        require ext_code.size(address(_1995))
                                        call address(_1995).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _1796, address(this.address), 128, mem[_2041], mem[_2041 + 196 len floor32(mem[_2041]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1777 = mem[ceil32(arg1.length) + 128]
                                idx = idx + 1
                                s = 0
                                t = _1788
                                continue 
                            if mem[(32 * idx) + _4 + 63 len 1]:
                                if mem[(32 * idx) + _4 + 63 len 1] != 1:
                                    _1777 = mem[ceil32(arg1.length) + 128]
                                    idx = idx + 1
                                    s = mem[(32 * idx + 1) + _595 + 32]
                                    t = mem[(32 * idx) + _4 + 32]
                                    continue 
                                require idx < mem[ceil32(arg1.length) + 128]
                                _2042 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1796
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_2042))
                                call address(_2042).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _1796, 0, this.address
                            else:
                                require idx < mem[ceil32(arg1.length) + 128]
                                _1997 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                _2045 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2045 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_2045 + 36] = _1796
                                mem[_2045 + 68] = 0
                                mem[_2045 + 100] = this.address
                                mem[_2045 + 132] = 128
                                mem[_2045 + 164] = mem[_2045]
                                s = 0
                                while s < mem[_2045]:
                                    mem[_2045 + s + 196] = mem[_2045 + s + 32]
                                    _1777 = mem[ceil32(arg1.length) + 128]
                                    s = s + 32
                                    continue 
                                if not mem[_2045] % 32:
                                    require ext_code.size(address(_1997))
                                    call address(_1997).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1796, 0, address(this.address), 128, mem[_2045 + 164 len mem[_2045] + 32]
                                else:
                                    mem[floor32(mem[_2045]) + _2045 + 196] = mem[floor32(mem[_2045]) + _2045 + -(mem[_2045] % 32) + 228 len mem[_2045] % 32]
                                    require ext_code.size(address(_1997))
                                    call address(_1997).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1796, 0, address(this.address), 128, mem[_2045], mem[_2045 + 196 len floor32(mem[_2045]) + 32]
                        else:
                            require idx + 1 < mem[ceil32(arg1.length) + 128]
                            _1825 = mem[(32 * idx + 1) + ceil32(arg1.length) + 160]
                            if mem[(32 * idx) + _4 + 63 len 1] >= 2:
                                if mem[(32 * idx) + _4 + 63 len 1] != 2:
                                    _1777 = mem[ceil32(arg1.length) + 128]
                                    idx = idx + 1
                                    s = s
                                    t = mem[(32 * idx) + _4 + 32]
                                    continue 
                                require idx < mem[_595]
                                require idx + 1 < mem[_595]
                                _1777 = mem[ceil32(arg1.length) + 128]
                                idx = idx + 1
                                s = mem[(32 * idx) + _595 + 32]
                                t = mem[(32 * idx) + _4 + 32]
                                continue 
                            require idx < mem[_5]
                            if Mask(1, 7, mem[(32 * idx) + _5 + 32]):
                                if mem[(32 * idx) + _4 + 63 len 1]:
                                    if mem[(32 * idx) + _4 + 63 len 1] != 1:
                                        _1777 = mem[ceil32(arg1.length) + 128]
                                        idx = idx + 1
                                        s = 0
                                        t = mem[(32 * idx) + _4 + 32]
                                        continue 
                                    require idx < mem[ceil32(arg1.length) + 128]
                                    _2096 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _1796
                                    mem[mem[64] + 68] = address(_1825)
                                    require ext_code.size(address(_2096))
                                    call address(_2096).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                         gas gas_remaining wei
                                        args 0, _1796, address(_1825)
                                else:
                                    require idx < mem[ceil32(arg1.length) + 128]
                                    _2035 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                    _2099 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2099 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2099 + 36] = 0
                                    mem[_2099 + 68] = _1796
                                    mem[_2099 + 100] = address(_1825)
                                    mem[_2099 + 132] = 128
                                    mem[_2099 + 164] = mem[_2099]
                                    s = 0
                                    while s < mem[_2099]:
                                        mem[_2099 + s + 196] = mem[_2099 + s + 32]
                                        _1777 = mem[ceil32(arg1.length) + 128]
                                        s = s + 32
                                        continue 
                                    if not mem[_2099] % 32:
                                        require ext_code.size(address(_2035))
                                        call address(_2035).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _1796, address(_1825), 128, mem[_2099 + 164 len mem[_2099] + 32]
                                    else:
                                        mem[floor32(mem[_2099]) + _2099 + 196] = mem[floor32(mem[_2099]) + _2099 + -(mem[_2099] % 32) + 228 len mem[_2099] % 32]
                                        require ext_code.size(address(_2035))
                                        call address(_2035).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _1796, address(_1825), 128, mem[_2099], mem[_2099 + 196 len floor32(mem[_2099]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1777 = mem[ceil32(arg1.length) + 128]
                                idx = idx + 1
                                s = 0
                                t = _1788
                                continue 
                            if mem[(32 * idx) + _4 + 63 len 1]:
                                if mem[(32 * idx) + _4 + 63 len 1] != 1:
                                    _1777 = mem[ceil32(arg1.length) + 128]
                                    idx = idx + 1
                                    s = mem[(32 * idx + 1) + _595 + 32]
                                    t = mem[(32 * idx) + _4 + 32]
                                    continue 
                                require idx < mem[ceil32(arg1.length) + 128]
                                _2100 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1796
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = address(_1825)
                                require ext_code.size(address(_2100))
                                call address(_2100).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _1796, 0, address(_1825)
                            else:
                                require idx < mem[ceil32(arg1.length) + 128]
                                _2037 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                _2103 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2103 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_2103 + 36] = _1796
                                mem[_2103 + 68] = 0
                                mem[_2103 + 100] = address(_1825)
                                mem[_2103 + 132] = 128
                                mem[_2103 + 164] = mem[_2103]
                                s = 0
                                while s < mem[_2103]:
                                    mem[_2103 + s + 196] = mem[_2103 + s + 32]
                                    _1777 = mem[ceil32(arg1.length) + 128]
                                    s = s + 32
                                    continue 
                                if not mem[_2103] % 32:
                                    require ext_code.size(address(_2037))
                                    call address(_2037).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1796, 0, address(_1825), 128, mem[_2103 + 164 len mem[_2103] + 32]
                                else:
                                    mem[floor32(mem[_2103]) + _2103 + 196] = mem[floor32(mem[_2103]) + _2103 + -(mem[_2103] % 32) + 228 len mem[_2103] % 32]
                                    require ext_code.size(address(_2037))
                                    call address(_2037).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1796, 0, address(_1825), 128, mem[_2103], mem[_2103 + 196 len floor32(mem[_2103]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1777 = mem[ceil32(arg1.length) + 128]
                    idx = idx + 1
                    s = _1796
                    t = _1788
                    continue 
}

function sub_4eb519ba(?) {
    require calldata.size - 4 >= 160
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    _2 = Mask(248, 0, arg1.length), mem[128 len 1]
    mem[64] = ceil32(arg1.length) + (32 * mem[128 len 1] + 1) + 128
    mem[ceil32(arg1.length) + 128] = mem[128 len 1]
    _4 = mem[64]
    mem[64] = mem[64] + (32 * uint8(_2) + 1)
    mem[_4] = uint8(_2)
    _5 = mem[64]
    mem[64] = mem[64] + (32 * uint8(_2) + 1)
    mem[_5] = uint8(_2)
    idx = 0
    s = 32 * uint8(_2) + 1
    while idx < uint8(_2):
        mem[ceil32(arg1.length) + (32 * idx + 1) + 128] = mem[(20 * idx) + 129 len 20]
        mem[_4 + (32 * idx + 1)] = mem[(20 * uint8(_2)) + idx + 98]
        mem[_5 + (32 * idx + 1)] = mem[(21 * uint8(_2)) + idx + 98]
        idx = idx + 1
        s = 32 * idx + 1
        continue 
    _630 = mem[(22 * uint8(_2)) + 111]
    _632 = mem[(22 * uint8(_2)) + 143]
    _634 = mem[64]
    mem[64] = mem[64] + (32 * arg2.length) + 32
    mem[_634] = arg2.length
    mem[_634 + 32 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[_634 + (32 * arg2.length) + 32] = 0
    _636 = mem[ceil32(arg1.length) + 128]
    require mem[ceil32(arg1.length) + 128] + 1 <= test266151307()
    _637 = mem[64]
    mem[mem[64]] = mem[ceil32(arg1.length) + 128] + 1
    mem[64] = mem[64] + (32 * _636 + 1) + 32
    if not _636 + 1:
        require 0 < mem[_637]
        mem[_637 + 32] = Mask(112, 0, _630)
        _1254 = mem[ceil32(arg1.length) + 128]
        idx = 0
        s = 15
        while uint8(idx) < _1254:
            require uint8(idx) < mem[_4]
            if mem[(32 * uint8(idx)) + _4 + 63 len 1] < 2:
                require uint8(idx) < mem[_5]
                _1271 = mem[(32 * uint8(idx)) + _5 + 32]
                require uint8(idx) < mem[ceil32(arg1.length) + 128]
                _1283 = mem[(32 * uint8(idx)) + ceil32(arg1.length) + 160]
                mem[2816] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                staticcall _1283.getReserves() with:
                        gas gas_remaining wei
                mem[3072 len 64] = ext_call.return_data[0 len 64]
                require uint8(idx) < mem[_4]
                if Mask(1, 7, _1271):
                    if mem[(32 * uint8(idx)) + _4 + 63 len 1]:
                        require uint8(idx) < mem[_634]
                        require uint8(idx) < mem[_637]
                        require uint8(idx + 1) < mem[_637]
                        mem[(32 * uint8(idx + 1)) + _637 + 32] = (10000 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000 * ext_call.return_data[32]) - (5 * _1271 % 128 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000 * ext_call.return_data[32]) / (10000 * ext_call.return_data[0]) + (10000 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000) - (5 * _1271 % 128 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000)
                        _1254 = mem[ceil32(arg1.length) + 128]
                        idx = idx + 1
                        s = s
                        continue 
                    if s != 15:
                        if uint8(idx) != mem[ceil32(arg1.length) + 128] - 1:
                            require uint8(idx) < mem[_634]
                            require uint8(idx) < mem[_637]
                            require uint8(idx + 1) < mem[_637]
                            mem[(32 * uint8(idx + 1)) + _637 + 32] = (10000 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000 * ext_call.return_data[32]) - (5 * _1271 % 128 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000 * ext_call.return_data[32]) / (10000 * ext_call.return_data[0]) + (10000 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000) - (5 * _1271 % 128 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000)
                            _1254 = mem[ceil32(arg1.length) + 128]
                            idx = idx + 1
                            s = s
                            continue 
                    require uint8(idx + 1) < mem[_634]
                    require uint8(idx) < mem[_634]
                    require uint8(idx) < mem[_637]
                    require uint8(idx + 1) < mem[_637]
                    mem[(32 * uint8(idx + 1)) + _637 + 32] = (10000 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000 * ext_call.return_data[32]) - (5 * _1271 % 128 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000 * ext_call.return_data[32]) / (10000 * ext_call.return_data[0]) + (10000 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000) - (5 * _1271 % 128 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000)
                    if mem[(32 * uint8(idx + 1)) + _634 + 32]:
                        _1254 = mem[ceil32(arg1.length) + 128]
                        idx = idx + 1
                        s = s
                        continue 
                else:
                    if mem[(32 * uint8(idx)) + _4 + 63 len 1]:
                        require uint8(idx) < mem[_634]
                        require uint8(idx) < mem[_637]
                        require uint8(idx + 1) < mem[_637]
                        mem[(32 * uint8(idx + 1)) + _637 + 32] = (10000 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000 * ext_call.return_data[0]) - (5 * _1271 % 128 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000 * ext_call.return_data[0]) / (10000 * ext_call.return_data[32]) + (10000 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000) - (5 * _1271 % 128 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000)
                        _1254 = mem[ceil32(arg1.length) + 128]
                        idx = idx + 1
                        s = s
                        continue 
                    if s != 15:
                        if uint8(idx) != mem[ceil32(arg1.length) + 128] - 1:
                            require uint8(idx) < mem[_634]
                            require uint8(idx) < mem[_637]
                            require uint8(idx + 1) < mem[_637]
                            mem[(32 * uint8(idx + 1)) + _637 + 32] = (10000 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000 * ext_call.return_data[0]) - (5 * _1271 % 128 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000 * ext_call.return_data[0]) / (10000 * ext_call.return_data[32]) + (10000 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000) - (5 * _1271 % 128 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000)
                            _1254 = mem[ceil32(arg1.length) + 128]
                            idx = idx + 1
                            s = s
                            continue 
                    require uint8(idx + 1) < mem[_634]
                    require uint8(idx) < mem[_634]
                    require uint8(idx) < mem[_637]
                    require uint8(idx + 1) < mem[_637]
                    mem[(32 * uint8(idx + 1)) + _637 + 32] = (10000 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000 * ext_call.return_data[0]) - (5 * _1271 % 128 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000 * ext_call.return_data[0]) / (10000 * ext_call.return_data[32]) + (10000 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000) - (5 * _1271 % 128 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000)
                    if mem[(32 * uint8(idx + 1)) + _634 + 32]:
                        _1254 = mem[ceil32(arg1.length) + 128]
                        idx = idx + 1
                        s = s
                        continue 
                _1254 = mem[ceil32(arg1.length) + 128]
                idx = idx + 1
                s = uint8(idx)
                continue 
            require uint8(idx) < mem[_4]
            if mem[(32 * uint8(idx)) + _4 + 63 len 1] == 2:
                require uint8(idx) < mem[_5]
                _1278 = mem[(32 * uint8(idx)) + _5 + 32]
                require uint8(idx) < mem[ceil32(arg1.length) + 128]
                _1291 = mem[(32 * uint8(idx)) + ceil32(arg1.length) + 160]
                require uint8(idx) < mem[_637]
                _1306 = mem[(32 * uint8(idx)) + _637 + 32]
                mem[mem[64] + 4] = ('signextend', 15, ('mask_shl', 3, 3, -3, ('mem', ('range', ('add', 32, ('mask_shl', 8, 0, 5, ('var', 0)), ('var', '_5')), 32))))
                mem[mem[64] + 36] = ('signextend', 15, ('mask_shl', 3, 0, 0, ('var', '_1278')))
                mem[mem[64] + 68] = _1306
                require ext_code.size(address(_1291))
                if not Mask(1, 6, mem[(32 * uint8(idx)) + _5 + 32]):
                    staticcall address(_1291).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], ('signextend', 15, ('mask_shl', 3, 0, 0, ('var', '_1278'))), _1306
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require uint8(idx + 1) < mem[_637]
                    mem[(32 * uint8(idx + 1)) + _637 + 32] = ext_call.return_data[0]
                else:
                    staticcall address(_1291).get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], ('signextend', 15, ('mask_shl', 3, 0, 0, ('var', '_1278'))), _1306
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 9999 * ext_call.return_data[0] / 9999 != ext_call.return_data[0]:
                        revert with 0, 'ds-math-mul-overflow'
                    require uint8(idx + 1) < mem[_637]
                    mem[(32 * uint8(idx + 1)) + _637 + 32] = 9999 * ext_call.return_data[0] / 10000
            _1254 = mem[ceil32(arg1.length) + 128]
            idx = idx + 1
            s = s
            continue 
        require mem[_637] - 1 < mem[_637]
        if Mask(112, 0, arg3) < mem[(32 * mem[_637] - 1) + _637 + 32]:
            mem[0] = msg.sender
            mem[32] = 1
            require stor1[address(msg.sender)]
            require 0 < mem[_4]
            if mem[_4 + 63 len 1] >= 2:
                _1940 = mem[ceil32(arg1.length) + 128]
                idx = 0
                s = 0
                t = 0
                while idx < _1940:
                    require idx < mem[_4]
                    _1948 = mem[(32 * idx) + _4 + 32]
                    require idx + 1 < mem[_637]
                    _1956 = mem[(32 * idx + 1) + _637 + 32]
                    if idx >= mem[ceil32(arg1.length) + 128] - 1:
                        if mem[(32 * idx) + _4 + 63 len 1] >= 2:
                            if mem[(32 * idx) + _4 + 63 len 1] != 2:
                                _1940 = mem[ceil32(arg1.length) + 128]
                                idx = idx + 1
                                s = s
                                t = mem[(32 * idx) + _4 + 32]
                                continue 
                            require idx < mem[_637]
                            require idx + 1 < mem[_637]
                            _1940 = mem[ceil32(arg1.length) + 128]
                            idx = idx + 1
                            s = mem[(32 * idx) + _637 + 32]
                            t = mem[(32 * idx) + _4 + 32]
                            continue 
                        require idx < mem[_5]
                        if Mask(1, 7, mem[(32 * idx) + _5 + 32]):
                            if mem[(32 * idx) + _4 + 63 len 1]:
                                if mem[(32 * idx) + _4 + 63 len 1] != 1:
                                    _1940 = mem[ceil32(arg1.length) + 128]
                                    idx = idx + 1
                                    s = 0
                                    t = mem[(32 * idx) + _4 + 32]
                                    continue 
                                require idx < mem[ceil32(arg1.length) + 128]
                                _2076 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _1956
                                mem[mem[64] + 68] = arg5
                                require ext_code.size(address(_2076))
                                call address(_2076).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args 0, _1956, arg5
                            else:
                                require idx < mem[ceil32(arg1.length) + 128]
                                _2061 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                _2079 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2079 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_2079 + 36] = 0
                                mem[_2079 + 68] = _1956
                                mem[_2079 + 100] = arg5
                                mem[_2079 + 132] = 128
                                mem[_2079 + 164] = mem[_2079]
                                s = 0
                                while s < mem[_2079]:
                                    mem[_2079 + s + 196] = mem[_2079 + s + 32]
                                    _1940 = mem[ceil32(arg1.length) + 128]
                                    s = s + 32
                                    continue 
                                if not mem[_2079] % 32:
                                    require ext_code.size(address(_2061))
                                    call address(_2061).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1956, address(arg5), 128, mem[_2079 + 164 len mem[_2079] + 32]
                                else:
                                    mem[floor32(mem[_2079]) + _2079 + 196] = mem[floor32(mem[_2079]) + _2079 + -(mem[_2079] % 32) + 228 len mem[_2079] % 32]
                                    require ext_code.size(address(_2061))
                                    call address(_2061).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1956, address(arg5), 128, mem[_2079], mem[_2079 + 196 len floor32(mem[_2079]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1940 = mem[ceil32(arg1.length) + 128]
                            idx = idx + 1
                            s = 0
                            t = _1948
                            continue 
                        if mem[(32 * idx) + _4 + 63 len 1]:
                            if mem[(32 * idx) + _4 + 63 len 1] != 1:
                                _1940 = mem[ceil32(arg1.length) + 128]
                                idx = idx + 1
                                s = mem[(32 * idx + 1) + _637 + 32]
                                t = mem[(32 * idx) + _4 + 32]
                                continue 
                            require idx < mem[ceil32(arg1.length) + 128]
                            _2080 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _1956
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = arg5
                            require ext_code.size(address(_2080))
                            call address(_2080).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                 gas gas_remaining wei
                                args _1956, 0, arg5
                        else:
                            require idx < mem[ceil32(arg1.length) + 128]
                            _2063 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                            _2083 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2083 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2083 + 36] = _1956
                            mem[_2083 + 68] = 0
                            mem[_2083 + 100] = arg5
                            mem[_2083 + 132] = 128
                            mem[_2083 + 164] = mem[_2083]
                            s = 0
                            while s < mem[_2083]:
                                mem[_2083 + s + 196] = mem[_2083 + s + 32]
                                _1940 = mem[ceil32(arg1.length) + 128]
                                s = s + 32
                                continue 
                            if not mem[_2083] % 32:
                                require ext_code.size(address(_2063))
                                call address(_2063).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _1956, 0, address(arg5), 128, mem[_2083 + 164 len mem[_2083] + 32]
                            else:
                                mem[floor32(mem[_2083]) + _2083 + 196] = mem[floor32(mem[_2083]) + _2083 + -(mem[_2083] % 32) + 228 len mem[_2083] % 32]
                                require ext_code.size(address(_2063))
                                call address(_2063).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _1956, 0, address(arg5), 128, mem[_2083], mem[_2083 + 196 len floor32(mem[_2083]) + 32]
                    else:
                        require idx + 1 < mem[_4]
                        if mem[(32 * idx + 1) + _4 + 63 len 1] >= 2:
                            if mem[(32 * idx) + _4 + 63 len 1] >= 2:
                                if mem[(32 * idx) + _4 + 63 len 1] != 2:
                                    _1940 = mem[ceil32(arg1.length) + 128]
                                    idx = idx + 1
                                    s = s
                                    t = mem[(32 * idx) + _4 + 32]
                                    continue 
                                require idx < mem[_637]
                                require idx + 1 < mem[_637]
                                _1940 = mem[ceil32(arg1.length) + 128]
                                idx = idx + 1
                                s = mem[(32 * idx) + _637 + 32]
                                t = mem[(32 * idx) + _4 + 32]
                                continue 
                            require idx < mem[_5]
                            if Mask(1, 7, mem[(32 * idx) + _5 + 32]):
                                if mem[(32 * idx) + _4 + 63 len 1]:
                                    if mem[(32 * idx) + _4 + 63 len 1] != 1:
                                        _1940 = mem[ceil32(arg1.length) + 128]
                                        idx = idx + 1
                                        s = 0
                                        t = mem[(32 * idx) + _4 + 32]
                                        continue 
                                    require idx < mem[ceil32(arg1.length) + 128]
                                    _2168 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _1956
                                    mem[mem[64] + 68] = arg5
                                    require ext_code.size(address(_2168))
                                    call address(_2168).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                         gas gas_remaining wei
                                        args 0, _1956, arg5
                                else:
                                    require idx < mem[ceil32(arg1.length) + 128]
                                    _2125 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                    _2171 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2171 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2171 + 36] = 0
                                    mem[_2171 + 68] = _1956
                                    mem[_2171 + 100] = arg5
                                    mem[_2171 + 132] = 128
                                    mem[_2171 + 164] = mem[_2171]
                                    s = 0
                                    while s < mem[_2171]:
                                        mem[_2171 + s + 196] = mem[_2171 + s + 32]
                                        _1940 = mem[ceil32(arg1.length) + 128]
                                        s = s + 32
                                        continue 
                                    if not mem[_2171] % 32:
                                        require ext_code.size(address(_2125))
                                        call address(_2125).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _1956, address(arg5), 128, mem[_2171 + 164 len mem[_2171] + 32]
                                    else:
                                        mem[floor32(mem[_2171]) + _2171 + 196] = mem[floor32(mem[_2171]) + _2171 + -(mem[_2171] % 32) + 228 len mem[_2171] % 32]
                                        require ext_code.size(address(_2125))
                                        call address(_2125).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _1956, address(arg5), 128, mem[_2171], mem[_2171 + 196 len floor32(mem[_2171]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1940 = mem[ceil32(arg1.length) + 128]
                                idx = idx + 1
                                s = 0
                                t = _1948
                                continue 
                            if mem[(32 * idx) + _4 + 63 len 1]:
                                if mem[(32 * idx) + _4 + 63 len 1] != 1:
                                    _1940 = mem[ceil32(arg1.length) + 128]
                                    idx = idx + 1
                                    s = mem[(32 * idx + 1) + _637 + 32]
                                    t = mem[(32 * idx) + _4 + 32]
                                    continue 
                                require idx < mem[ceil32(arg1.length) + 128]
                                _2172 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1956
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = arg5
                                require ext_code.size(address(_2172))
                                call address(_2172).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _1956, 0, arg5
                            else:
                                require idx < mem[ceil32(arg1.length) + 128]
                                _2127 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                _2175 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2175 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_2175 + 36] = _1956
                                mem[_2175 + 68] = 0
                                mem[_2175 + 100] = arg5
                                mem[_2175 + 132] = 128
                                mem[_2175 + 164] = mem[_2175]
                                s = 0
                                while s < mem[_2175]:
                                    mem[_2175 + s + 196] = mem[_2175 + s + 32]
                                    _1940 = mem[ceil32(arg1.length) + 128]
                                    s = s + 32
                                    continue 
                                if not mem[_2175] % 32:
                                    require ext_code.size(address(_2127))
                                    call address(_2127).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1956, 0, address(arg5), 128, mem[_2175 + 164 len mem[_2175] + 32]
                                else:
                                    mem[floor32(mem[_2175]) + _2175 + 196] = mem[floor32(mem[_2175]) + _2175 + -(mem[_2175] % 32) + 228 len mem[_2175] % 32]
                                    require ext_code.size(address(_2127))
                                    call address(_2127).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1956, 0, address(arg5), 128, mem[_2175], mem[_2175 + 196 len floor32(mem[_2175]) + 32]
                        else:
                            require idx + 1 < mem[ceil32(arg1.length) + 128]
                            _1982 = mem[(32 * idx + 1) + ceil32(arg1.length) + 160]
                            if mem[(32 * idx) + _4 + 63 len 1] >= 2:
                                if mem[(32 * idx) + _4 + 63 len 1] != 2:
                                    _1940 = mem[ceil32(arg1.length) + 128]
                                    idx = idx + 1
                                    s = s
                                    t = mem[(32 * idx) + _4 + 32]
                                    continue 
                                require idx < mem[_637]
                                require idx + 1 < mem[_637]
                                _1940 = mem[ceil32(arg1.length) + 128]
                                idx = idx + 1
                                s = mem[(32 * idx) + _637 + 32]
                                t = mem[(32 * idx) + _4 + 32]
                                continue 
                            require idx < mem[_5]
                            if Mask(1, 7, mem[(32 * idx) + _5 + 32]):
                                if mem[(32 * idx) + _4 + 63 len 1]:
                                    if mem[(32 * idx) + _4 + 63 len 1] != 1:
                                        _1940 = mem[ceil32(arg1.length) + 128]
                                        idx = idx + 1
                                        s = 0
                                        t = mem[(32 * idx) + _4 + 32]
                                        continue 
                                    require idx < mem[ceil32(arg1.length) + 128]
                                    _2214 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _1956
                                    mem[mem[64] + 68] = address(_1982)
                                    require ext_code.size(address(_2214))
                                    call address(_2214).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                         gas gas_remaining wei
                                        args 0, _1956, address(_1982)
                                else:
                                    require idx < mem[ceil32(arg1.length) + 128]
                                    _2165 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                    _2217 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2217 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2217 + 36] = 0
                                    mem[_2217 + 68] = _1956
                                    mem[_2217 + 100] = address(_1982)
                                    mem[_2217 + 132] = 128
                                    mem[_2217 + 164] = mem[_2217]
                                    s = 0
                                    while s < mem[_2217]:
                                        mem[_2217 + s + 196] = mem[_2217 + s + 32]
                                        _1940 = mem[ceil32(arg1.length) + 128]
                                        s = s + 32
                                        continue 
                                    if not mem[_2217] % 32:
                                        require ext_code.size(address(_2165))
                                        call address(_2165).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _1956, address(_1982), 128, mem[_2217 + 164 len mem[_2217] + 32]
                                    else:
                                        mem[floor32(mem[_2217]) + _2217 + 196] = mem[floor32(mem[_2217]) + _2217 + -(mem[_2217] % 32) + 228 len mem[_2217] % 32]
                                        require ext_code.size(address(_2165))
                                        call address(_2165).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _1956, address(_1982), 128, mem[_2217], mem[_2217 + 196 len floor32(mem[_2217]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1940 = mem[ceil32(arg1.length) + 128]
                                idx = idx + 1
                                s = 0
                                t = _1948
                                continue 
                            if mem[(32 * idx) + _4 + 63 len 1]:
                                if mem[(32 * idx) + _4 + 63 len 1] != 1:
                                    _1940 = mem[ceil32(arg1.length) + 128]
                                    idx = idx + 1
                                    s = mem[(32 * idx + 1) + _637 + 32]
                                    t = mem[(32 * idx) + _4 + 32]
                                    continue 
                                require idx < mem[ceil32(arg1.length) + 128]
                                _2218 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1956
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = address(_1982)
                                require ext_code.size(address(_2218))
                                call address(_2218).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _1956, 0, address(_1982)
                            else:
                                require idx < mem[ceil32(arg1.length) + 128]
                                _2167 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                _2221 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2221 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_2221 + 36] = _1956
                                mem[_2221 + 68] = 0
                                mem[_2221 + 100] = address(_1982)
                                mem[_2221 + 132] = 128
                                mem[_2221 + 164] = mem[_2221]
                                s = 0
                                while s < mem[_2221]:
                                    mem[_2221 + s + 196] = mem[_2221 + s + 32]
                                    _1940 = mem[ceil32(arg1.length) + 128]
                                    s = s + 32
                                    continue 
                                if not mem[_2221] % 32:
                                    require ext_code.size(address(_2167))
                                    call address(_2167).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1956, 0, address(_1982), 128, mem[_2221 + 164 len mem[_2221] + 32]
                                else:
                                    mem[floor32(mem[_2221]) + _2221 + 196] = mem[floor32(mem[_2221]) + _2221 + -(mem[_2221] % 32) + 228 len mem[_2221] % 32]
                                    require ext_code.size(address(_2167))
                                    call address(_2167).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1956, 0, address(_1982), 128, mem[_2221], mem[_2221 + 196 len floor32(mem[_2221]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1940 = mem[ceil32(arg1.length) + 128]
                    idx = idx + 1
                    s = _1956
                    t = _1948
                    continue 
            else:
                require 0 < mem[ceil32(arg1.length) + 128]
                _1304 = mem[ceil32(arg1.length) + 160]
                require 0 < mem[_637]
                _1311 = mem[_637 + 32]
                mem[mem[64] + 4] = arg4
                mem[mem[64] + 36] = address(_1304)
                mem[mem[64] + 68] = _1311
                require ext_code.size(Mask(160, 96, _632) >> 96)
                call Mask(160, 96, _632) >> 96.0x23b872dd with:
                     gas gas_remaining wei
                    args address(arg4), address(_1304), _1311
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _1941 = mem[ceil32(arg1.length) + 128]
                idx = 0
                s = 0
                t = 0
                while idx < _1941:
                    require idx < mem[_4]
                    _1950 = mem[(32 * idx) + _4 + 32]
                    require idx + 1 < mem[_637]
                    _1958 = mem[(32 * idx + 1) + _637 + 32]
                    if idx >= mem[ceil32(arg1.length) + 128] - 1:
                        if mem[(32 * idx) + _4 + 63 len 1] >= 2:
                            if mem[(32 * idx) + _4 + 63 len 1] != 2:
                                _1941 = mem[ceil32(arg1.length) + 128]
                                idx = idx + 1
                                s = s
                                t = mem[(32 * idx) + _4 + 32]
                                continue 
                            require idx < mem[_637]
                            require idx + 1 < mem[_637]
                            _1941 = mem[ceil32(arg1.length) + 128]
                            idx = idx + 1
                            s = mem[(32 * idx) + _637 + 32]
                            t = mem[(32 * idx) + _4 + 32]
                            continue 
                        require idx < mem[_5]
                        if Mask(1, 7, mem[(32 * idx) + _5 + 32]):
                            if mem[(32 * idx) + _4 + 63 len 1]:
                                if mem[(32 * idx) + _4 + 63 len 1] != 1:
                                    _1941 = mem[ceil32(arg1.length) + 128]
                                    idx = idx + 1
                                    s = 0
                                    t = mem[(32 * idx) + _4 + 32]
                                    continue 
                                require idx < mem[ceil32(arg1.length) + 128]
                                _2086 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _1958
                                mem[mem[64] + 68] = arg5
                                require ext_code.size(address(_2086))
                                call address(_2086).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args 0, _1958, arg5
                            else:
                                require idx < mem[ceil32(arg1.length) + 128]
                                _2065 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                _2089 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2089 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_2089 + 36] = 0
                                mem[_2089 + 68] = _1958
                                mem[_2089 + 100] = arg5
                                mem[_2089 + 132] = 128
                                mem[_2089 + 164] = mem[_2089]
                                s = 0
                                while s < mem[_2089]:
                                    mem[_2089 + s + 196] = mem[_2089 + s + 32]
                                    _1941 = mem[ceil32(arg1.length) + 128]
                                    s = s + 32
                                    continue 
                                if not mem[_2089] % 32:
                                    require ext_code.size(address(_2065))
                                    call address(_2065).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1958, address(arg5), 128, mem[_2089 + 164 len mem[_2089] + 32]
                                else:
                                    mem[floor32(mem[_2089]) + _2089 + 196] = mem[floor32(mem[_2089]) + _2089 + -(mem[_2089] % 32) + 228 len mem[_2089] % 32]
                                    require ext_code.size(address(_2065))
                                    call address(_2065).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1958, address(arg5), 128, mem[_2089], mem[_2089 + 196 len floor32(mem[_2089]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1941 = mem[ceil32(arg1.length) + 128]
                            idx = idx + 1
                            s = 0
                            t = _1950
                            continue 
                        if mem[(32 * idx) + _4 + 63 len 1]:
                            if mem[(32 * idx) + _4 + 63 len 1] != 1:
                                _1941 = mem[ceil32(arg1.length) + 128]
                                idx = idx + 1
                                s = mem[(32 * idx + 1) + _637 + 32]
                                t = mem[(32 * idx) + _4 + 32]
                                continue 
                            require idx < mem[ceil32(arg1.length) + 128]
                            _2090 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _1958
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = arg5
                            require ext_code.size(address(_2090))
                            call address(_2090).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                 gas gas_remaining wei
                                args _1958, 0, arg5
                        else:
                            require idx < mem[ceil32(arg1.length) + 128]
                            _2067 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                            _2093 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2093 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2093 + 36] = _1958
                            mem[_2093 + 68] = 0
                            mem[_2093 + 100] = arg5
                            mem[_2093 + 132] = 128
                            mem[_2093 + 164] = mem[_2093]
                            s = 0
                            while s < mem[_2093]:
                                mem[_2093 + s + 196] = mem[_2093 + s + 32]
                                _1941 = mem[ceil32(arg1.length) + 128]
                                s = s + 32
                                continue 
                            if not mem[_2093] % 32:
                                require ext_code.size(address(_2067))
                                call address(_2067).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _1958, 0, address(arg5), 128, mem[_2093 + 164 len mem[_2093] + 32]
                            else:
                                mem[floor32(mem[_2093]) + _2093 + 196] = mem[floor32(mem[_2093]) + _2093 + -(mem[_2093] % 32) + 228 len mem[_2093] % 32]
                                require ext_code.size(address(_2067))
                                call address(_2067).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _1958, 0, address(arg5), 128, mem[_2093], mem[_2093 + 196 len floor32(mem[_2093]) + 32]
                    else:
                        require idx + 1 < mem[_4]
                        if mem[(32 * idx + 1) + _4 + 63 len 1] >= 2:
                            if mem[(32 * idx) + _4 + 63 len 1] >= 2:
                                if mem[(32 * idx) + _4 + 63 len 1] != 2:
                                    _1941 = mem[ceil32(arg1.length) + 128]
                                    idx = idx + 1
                                    s = s
                                    t = mem[(32 * idx) + _4 + 32]
                                    continue 
                                require idx < mem[_637]
                                require idx + 1 < mem[_637]
                                _1941 = mem[ceil32(arg1.length) + 128]
                                idx = idx + 1
                                s = mem[(32 * idx) + _637 + 32]
                                t = mem[(32 * idx) + _4 + 32]
                                continue 
                            require idx < mem[_5]
                            if Mask(1, 7, mem[(32 * idx) + _5 + 32]):
                                if mem[(32 * idx) + _4 + 63 len 1]:
                                    if mem[(32 * idx) + _4 + 63 len 1] != 1:
                                        _1941 = mem[ceil32(arg1.length) + 128]
                                        idx = idx + 1
                                        s = 0
                                        t = mem[(32 * idx) + _4 + 32]
                                        continue 
                                    require idx < mem[ceil32(arg1.length) + 128]
                                    _2180 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _1958
                                    mem[mem[64] + 68] = arg5
                                    require ext_code.size(address(_2180))
                                    call address(_2180).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                         gas gas_remaining wei
                                        args 0, _1958, arg5
                                else:
                                    require idx < mem[ceil32(arg1.length) + 128]
                                    _2137 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                    _2183 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2183 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2183 + 36] = 0
                                    mem[_2183 + 68] = _1958
                                    mem[_2183 + 100] = arg5
                                    mem[_2183 + 132] = 128
                                    mem[_2183 + 164] = mem[_2183]
                                    s = 0
                                    while s < mem[_2183]:
                                        mem[_2183 + s + 196] = mem[_2183 + s + 32]
                                        _1941 = mem[ceil32(arg1.length) + 128]
                                        s = s + 32
                                        continue 
                                    if not mem[_2183] % 32:
                                        require ext_code.size(address(_2137))
                                        call address(_2137).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _1958, address(arg5), 128, mem[_2183 + 164 len mem[_2183] + 32]
                                    else:
                                        mem[floor32(mem[_2183]) + _2183 + 196] = mem[floor32(mem[_2183]) + _2183 + -(mem[_2183] % 32) + 228 len mem[_2183] % 32]
                                        require ext_code.size(address(_2137))
                                        call address(_2137).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _1958, address(arg5), 128, mem[_2183], mem[_2183 + 196 len floor32(mem[_2183]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1941 = mem[ceil32(arg1.length) + 128]
                                idx = idx + 1
                                s = 0
                                t = _1950
                                continue 
                            if mem[(32 * idx) + _4 + 63 len 1]:
                                if mem[(32 * idx) + _4 + 63 len 1] != 1:
                                    _1941 = mem[ceil32(arg1.length) + 128]
                                    idx = idx + 1
                                    s = mem[(32 * idx + 1) + _637 + 32]
                                    t = mem[(32 * idx) + _4 + 32]
                                    continue 
                                require idx < mem[ceil32(arg1.length) + 128]
                                _2184 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1958
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = arg5
                                require ext_code.size(address(_2184))
                                call address(_2184).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _1958, 0, arg5
                            else:
                                require idx < mem[ceil32(arg1.length) + 128]
                                _2139 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                _2187 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2187 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_2187 + 36] = _1958
                                mem[_2187 + 68] = 0
                                mem[_2187 + 100] = arg5
                                mem[_2187 + 132] = 128
                                mem[_2187 + 164] = mem[_2187]
                                s = 0
                                while s < mem[_2187]:
                                    mem[_2187 + s + 196] = mem[_2187 + s + 32]
                                    _1941 = mem[ceil32(arg1.length) + 128]
                                    s = s + 32
                                    continue 
                                if not mem[_2187] % 32:
                                    require ext_code.size(address(_2139))
                                    call address(_2139).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1958, 0, address(arg5), 128, mem[_2187 + 164 len mem[_2187] + 32]
                                else:
                                    mem[floor32(mem[_2187]) + _2187 + 196] = mem[floor32(mem[_2187]) + _2187 + -(mem[_2187] % 32) + 228 len mem[_2187] % 32]
                                    require ext_code.size(address(_2139))
                                    call address(_2139).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1958, 0, address(arg5), 128, mem[_2187], mem[_2187 + 196 len floor32(mem[_2187]) + 32]
                        else:
                            require idx + 1 < mem[ceil32(arg1.length) + 128]
                            _1985 = mem[(32 * idx + 1) + ceil32(arg1.length) + 160]
                            if mem[(32 * idx) + _4 + 63 len 1] >= 2:
                                if mem[(32 * idx) + _4 + 63 len 1] != 2:
                                    _1941 = mem[ceil32(arg1.length) + 128]
                                    idx = idx + 1
                                    s = s
                                    t = mem[(32 * idx) + _4 + 32]
                                    continue 
                                require idx < mem[_637]
                                require idx + 1 < mem[_637]
                                _1941 = mem[ceil32(arg1.length) + 128]
                                idx = idx + 1
                                s = mem[(32 * idx) + _637 + 32]
                                t = mem[(32 * idx) + _4 + 32]
                                continue 
                            require idx < mem[_5]
                            if Mask(1, 7, mem[(32 * idx) + _5 + 32]):
                                if mem[(32 * idx) + _4 + 63 len 1]:
                                    if mem[(32 * idx) + _4 + 63 len 1] != 1:
                                        _1941 = mem[ceil32(arg1.length) + 128]
                                        idx = idx + 1
                                        s = 0
                                        t = mem[(32 * idx) + _4 + 32]
                                        continue 
                                    require idx < mem[ceil32(arg1.length) + 128]
                                    _2230 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _1958
                                    mem[mem[64] + 68] = address(_1985)
                                    require ext_code.size(address(_2230))
                                    call address(_2230).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                         gas gas_remaining wei
                                        args 0, _1958, address(_1985)
                                else:
                                    require idx < mem[ceil32(arg1.length) + 128]
                                    _2177 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                    _2233 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2233 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2233 + 36] = 0
                                    mem[_2233 + 68] = _1958
                                    mem[_2233 + 100] = address(_1985)
                                    mem[_2233 + 132] = 128
                                    mem[_2233 + 164] = mem[_2233]
                                    s = 0
                                    while s < mem[_2233]:
                                        mem[_2233 + s + 196] = mem[_2233 + s + 32]
                                        _1941 = mem[ceil32(arg1.length) + 128]
                                        s = s + 32
                                        continue 
                                    if not mem[_2233] % 32:
                                        require ext_code.size(address(_2177))
                                        call address(_2177).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _1958, address(_1985), 128, mem[_2233 + 164 len mem[_2233] + 32]
                                    else:
                                        mem[floor32(mem[_2233]) + _2233 + 196] = mem[floor32(mem[_2233]) + _2233 + -(mem[_2233] % 32) + 228 len mem[_2233] % 32]
                                        require ext_code.size(address(_2177))
                                        call address(_2177).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _1958, address(_1985), 128, mem[_2233], mem[_2233 + 196 len floor32(mem[_2233]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1941 = mem[ceil32(arg1.length) + 128]
                                idx = idx + 1
                                s = 0
                                t = _1950
                                continue 
                            if mem[(32 * idx) + _4 + 63 len 1]:
                                if mem[(32 * idx) + _4 + 63 len 1] != 1:
                                    _1941 = mem[ceil32(arg1.length) + 128]
                                    idx = idx + 1
                                    s = mem[(32 * idx + 1) + _637 + 32]
                                    t = mem[(32 * idx) + _4 + 32]
                                    continue 
                                require idx < mem[ceil32(arg1.length) + 128]
                                _2234 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1958
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = address(_1985)
                                require ext_code.size(address(_2234))
                                call address(_2234).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _1958, 0, address(_1985)
                            else:
                                require idx < mem[ceil32(arg1.length) + 128]
                                _2179 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                _2237 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2237 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_2237 + 36] = _1958
                                mem[_2237 + 68] = 0
                                mem[_2237 + 100] = address(_1985)
                                mem[_2237 + 132] = 128
                                mem[_2237 + 164] = mem[_2237]
                                s = 0
                                while s < mem[_2237]:
                                    mem[_2237 + s + 196] = mem[_2237 + s + 32]
                                    _1941 = mem[ceil32(arg1.length) + 128]
                                    s = s + 32
                                    continue 
                                if not mem[_2237] % 32:
                                    require ext_code.size(address(_2179))
                                    call address(_2179).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1958, 0, address(_1985), 128, mem[_2237 + 164 len mem[_2237] + 32]
                                else:
                                    mem[floor32(mem[_2237]) + _2237 + 196] = mem[floor32(mem[_2237]) + _2237 + -(mem[_2237] % 32) + 228 len mem[_2237] % 32]
                                    require ext_code.size(address(_2179))
                                    call address(_2179).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1958, 0, address(_1985), 128, mem[_2237], mem[_2237 + 196 len floor32(mem[_2237]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1941 = mem[ceil32(arg1.length) + 128]
                    idx = idx + 1
                    s = _1958
                    t = _1950
                    continue 
    else:
        mem[_637 + 32 len 32 * _636 + 1] = call.data[calldata.size len 32 * _636 + 1]
        require 0 < mem[_637]
        mem[_637 + 32] = Mask(112, 0, _630)
        _1255 = mem[ceil32(arg1.length) + 128]
        idx = 0
        s = 15
        while uint8(idx) < _1255:
            require uint8(idx) < mem[_4]
            if mem[(32 * uint8(idx)) + _4 + 63 len 1] < 2:
                require uint8(idx) < mem[_5]
                _1273 = mem[(32 * uint8(idx)) + _5 + 32]
                require uint8(idx) < mem[ceil32(arg1.length) + 128]
                _1285 = mem[(32 * uint8(idx)) + ceil32(arg1.length) + 160]
                mem[2816] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                staticcall _1285.getReserves() with:
                        gas gas_remaining wei
                mem[3072 len 64] = ext_call.return_data[0 len 64]
                require uint8(idx) < mem[_4]
                if Mask(1, 7, _1273):
                    if mem[(32 * uint8(idx)) + _4 + 63 len 1]:
                        require uint8(idx) < mem[_634]
                        require uint8(idx) < mem[_637]
                        require uint8(idx + 1) < mem[_637]
                        mem[(32 * uint8(idx + 1)) + _637 + 32] = (10000 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000 * ext_call.return_data[32]) - (5 * _1273 % 128 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000 * ext_call.return_data[32]) / (10000 * ext_call.return_data[0]) + (10000 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000) - (5 * _1273 % 128 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000)
                        _1255 = mem[ceil32(arg1.length) + 128]
                        idx = idx + 1
                        s = s
                        continue 
                    if s != 15:
                        if uint8(idx) != mem[ceil32(arg1.length) + 128] - 1:
                            require uint8(idx) < mem[_634]
                            require uint8(idx) < mem[_637]
                            require uint8(idx + 1) < mem[_637]
                            mem[(32 * uint8(idx + 1)) + _637 + 32] = (10000 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000 * ext_call.return_data[32]) - (5 * _1273 % 128 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000 * ext_call.return_data[32]) / (10000 * ext_call.return_data[0]) + (10000 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000) - (5 * _1273 % 128 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000)
                            _1255 = mem[ceil32(arg1.length) + 128]
                            idx = idx + 1
                            s = s
                            continue 
                    require uint8(idx + 1) < mem[_634]
                    require uint8(idx) < mem[_634]
                    require uint8(idx) < mem[_637]
                    require uint8(idx + 1) < mem[_637]
                    mem[(32 * uint8(idx + 1)) + _637 + 32] = (10000 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000 * ext_call.return_data[32]) - (5 * _1273 % 128 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000 * ext_call.return_data[32]) / (10000 * ext_call.return_data[0]) + (10000 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000) - (5 * _1273 % 128 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000)
                    if mem[(32 * uint8(idx + 1)) + _634 + 32]:
                        _1255 = mem[ceil32(arg1.length) + 128]
                        idx = idx + 1
                        s = s
                        continue 
                else:
                    if mem[(32 * uint8(idx)) + _4 + 63 len 1]:
                        require uint8(idx) < mem[_634]
                        require uint8(idx) < mem[_637]
                        require uint8(idx + 1) < mem[_637]
                        mem[(32 * uint8(idx + 1)) + _637 + 32] = (10000 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000 * ext_call.return_data[0]) - (5 * _1273 % 128 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000 * ext_call.return_data[0]) / (10000 * ext_call.return_data[32]) + (10000 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000) - (5 * _1273 % 128 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000)
                        _1255 = mem[ceil32(arg1.length) + 128]
                        idx = idx + 1
                        s = s
                        continue 
                    if s != 15:
                        if uint8(idx) != mem[ceil32(arg1.length) + 128] - 1:
                            require uint8(idx) < mem[_634]
                            require uint8(idx) < mem[_637]
                            require uint8(idx + 1) < mem[_637]
                            mem[(32 * uint8(idx + 1)) + _637 + 32] = (10000 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000 * ext_call.return_data[0]) - (5 * _1273 % 128 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000 * ext_call.return_data[0]) / (10000 * ext_call.return_data[32]) + (10000 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000) - (5 * _1273 % 128 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000)
                            _1255 = mem[ceil32(arg1.length) + 128]
                            idx = idx + 1
                            s = s
                            continue 
                    require uint8(idx + 1) < mem[_634]
                    require uint8(idx) < mem[_634]
                    require uint8(idx) < mem[_637]
                    require uint8(idx + 1) < mem[_637]
                    mem[(32 * uint8(idx + 1)) + _637 + 32] = (10000 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000 * ext_call.return_data[0]) - (5 * _1273 % 128 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000 * ext_call.return_data[0]) / (10000 * ext_call.return_data[32]) + (10000 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000) - (5 * _1273 % 128 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000)
                    if mem[(32 * uint8(idx + 1)) + _634 + 32]:
                        _1255 = mem[ceil32(arg1.length) + 128]
                        idx = idx + 1
                        s = s
                        continue 
                _1255 = mem[ceil32(arg1.length) + 128]
                idx = idx + 1
                s = uint8(idx)
                continue 
            require uint8(idx) < mem[_4]
            if mem[(32 * uint8(idx)) + _4 + 63 len 1] == 2:
                require uint8(idx) < mem[_5]
                _1280 = mem[(32 * uint8(idx)) + _5 + 32]
                require uint8(idx) < mem[ceil32(arg1.length) + 128]
                _1298 = mem[(32 * uint8(idx)) + ceil32(arg1.length) + 160]
                require uint8(idx) < mem[_637]
                _1309 = mem[(32 * uint8(idx)) + _637 + 32]
                mem[mem[64] + 4] = ('signextend', 15, ('mask_shl', 3, 3, -3, ('mem', ('range', ('add', 32, ('mask_shl', 8, 0, 5, ('var', 0)), ('var', '_5')), 32))))
                mem[mem[64] + 36] = ('signextend', 15, ('mask_shl', 3, 0, 0, ('var', '_1280')))
                mem[mem[64] + 68] = _1309
                require ext_code.size(address(_1298))
                if not Mask(1, 6, mem[(32 * uint8(idx)) + _5 + 32]):
                    staticcall address(_1298).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], ('signextend', 15, ('mask_shl', 3, 0, 0, ('var', '_1280'))), _1309
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require uint8(idx + 1) < mem[_637]
                    mem[(32 * uint8(idx + 1)) + _637 + 32] = ext_call.return_data[0]
                else:
                    staticcall address(_1298).get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], ('signextend', 15, ('mask_shl', 3, 0, 0, ('var', '_1280'))), _1309
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 9999 * ext_call.return_data[0] / 9999 != ext_call.return_data[0]:
                        revert with 0, 'ds-math-mul-overflow'
                    require uint8(idx + 1) < mem[_637]
                    mem[(32 * uint8(idx + 1)) + _637 + 32] = 9999 * ext_call.return_data[0] / 10000
            _1255 = mem[ceil32(arg1.length) + 128]
            idx = idx + 1
            s = s
            continue 
        require mem[_637] - 1 < mem[_637]
        if Mask(112, 0, arg3) < mem[(32 * mem[_637] - 1) + _637 + 32]:
            mem[0] = msg.sender
            mem[32] = 1
            require stor1[address(msg.sender)]
            require 0 < mem[_4]
            if mem[_4 + 63 len 1] >= 2:
                _1942 = mem[ceil32(arg1.length) + 128]
                idx = 0
                s = 0
                t = 0
                while idx < _1942:
                    require idx < mem[_4]
                    _1952 = mem[(32 * idx) + _4 + 32]
                    require idx + 1 < mem[_637]
                    _1960 = mem[(32 * idx + 1) + _637 + 32]
                    if idx >= mem[ceil32(arg1.length) + 128] - 1:
                        if mem[(32 * idx) + _4 + 63 len 1] >= 2:
                            if mem[(32 * idx) + _4 + 63 len 1] != 2:
                                _1942 = mem[ceil32(arg1.length) + 128]
                                idx = idx + 1
                                s = s
                                t = mem[(32 * idx) + _4 + 32]
                                continue 
                            require idx < mem[_637]
                            require idx + 1 < mem[_637]
                            _1942 = mem[ceil32(arg1.length) + 128]
                            idx = idx + 1
                            s = mem[(32 * idx) + _637 + 32]
                            t = mem[(32 * idx) + _4 + 32]
                            continue 
                        require idx < mem[_5]
                        if Mask(1, 7, mem[(32 * idx) + _5 + 32]):
                            if mem[(32 * idx) + _4 + 63 len 1]:
                                if mem[(32 * idx) + _4 + 63 len 1] != 1:
                                    _1942 = mem[ceil32(arg1.length) + 128]
                                    idx = idx + 1
                                    s = 0
                                    t = mem[(32 * idx) + _4 + 32]
                                    continue 
                                require idx < mem[ceil32(arg1.length) + 128]
                                _2096 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _1960
                                mem[mem[64] + 68] = arg5
                                require ext_code.size(address(_2096))
                                call address(_2096).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args 0, _1960, arg5
                            else:
                                require idx < mem[ceil32(arg1.length) + 128]
                                _2069 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                _2099 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2099 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_2099 + 36] = 0
                                mem[_2099 + 68] = _1960
                                mem[_2099 + 100] = arg5
                                mem[_2099 + 132] = 128
                                mem[_2099 + 164] = mem[_2099]
                                s = 0
                                while s < mem[_2099]:
                                    mem[_2099 + s + 196] = mem[_2099 + s + 32]
                                    _1942 = mem[ceil32(arg1.length) + 128]
                                    s = s + 32
                                    continue 
                                if not mem[_2099] % 32:
                                    require ext_code.size(address(_2069))
                                    call address(_2069).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1960, address(arg5), 128, mem[_2099 + 164 len mem[_2099] + 32]
                                else:
                                    mem[floor32(mem[_2099]) + _2099 + 196] = mem[floor32(mem[_2099]) + _2099 + -(mem[_2099] % 32) + 228 len mem[_2099] % 32]
                                    require ext_code.size(address(_2069))
                                    call address(_2069).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1960, address(arg5), 128, mem[_2099], mem[_2099 + 196 len floor32(mem[_2099]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1942 = mem[ceil32(arg1.length) + 128]
                            idx = idx + 1
                            s = 0
                            t = _1952
                            continue 
                        if mem[(32 * idx) + _4 + 63 len 1]:
                            if mem[(32 * idx) + _4 + 63 len 1] != 1:
                                _1942 = mem[ceil32(arg1.length) + 128]
                                idx = idx + 1
                                s = mem[(32 * idx + 1) + _637 + 32]
                                t = mem[(32 * idx) + _4 + 32]
                                continue 
                            require idx < mem[ceil32(arg1.length) + 128]
                            _2100 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _1960
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = arg5
                            require ext_code.size(address(_2100))
                            call address(_2100).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                 gas gas_remaining wei
                                args _1960, 0, arg5
                        else:
                            require idx < mem[ceil32(arg1.length) + 128]
                            _2071 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                            _2103 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2103 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2103 + 36] = _1960
                            mem[_2103 + 68] = 0
                            mem[_2103 + 100] = arg5
                            mem[_2103 + 132] = 128
                            mem[_2103 + 164] = mem[_2103]
                            s = 0
                            while s < mem[_2103]:
                                mem[_2103 + s + 196] = mem[_2103 + s + 32]
                                _1942 = mem[ceil32(arg1.length) + 128]
                                s = s + 32
                                continue 
                            if not mem[_2103] % 32:
                                require ext_code.size(address(_2071))
                                call address(_2071).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _1960, 0, address(arg5), 128, mem[_2103 + 164 len mem[_2103] + 32]
                            else:
                                mem[floor32(mem[_2103]) + _2103 + 196] = mem[floor32(mem[_2103]) + _2103 + -(mem[_2103] % 32) + 228 len mem[_2103] % 32]
                                require ext_code.size(address(_2071))
                                call address(_2071).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _1960, 0, address(arg5), 128, mem[_2103], mem[_2103 + 196 len floor32(mem[_2103]) + 32]
                    else:
                        require idx + 1 < mem[_4]
                        if mem[(32 * idx + 1) + _4 + 63 len 1] >= 2:
                            if mem[(32 * idx) + _4 + 63 len 1] >= 2:
                                if mem[(32 * idx) + _4 + 63 len 1] != 2:
                                    _1942 = mem[ceil32(arg1.length) + 128]
                                    idx = idx + 1
                                    s = s
                                    t = mem[(32 * idx) + _4 + 32]
                                    continue 
                                require idx < mem[_637]
                                require idx + 1 < mem[_637]
                                _1942 = mem[ceil32(arg1.length) + 128]
                                idx = idx + 1
                                s = mem[(32 * idx) + _637 + 32]
                                t = mem[(32 * idx) + _4 + 32]
                                continue 
                            require idx < mem[_5]
                            if Mask(1, 7, mem[(32 * idx) + _5 + 32]):
                                if mem[(32 * idx) + _4 + 63 len 1]:
                                    if mem[(32 * idx) + _4 + 63 len 1] != 1:
                                        _1942 = mem[ceil32(arg1.length) + 128]
                                        idx = idx + 1
                                        s = 0
                                        t = mem[(32 * idx) + _4 + 32]
                                        continue 
                                    require idx < mem[ceil32(arg1.length) + 128]
                                    _2192 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _1960
                                    mem[mem[64] + 68] = arg5
                                    require ext_code.size(address(_2192))
                                    call address(_2192).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                         gas gas_remaining wei
                                        args 0, _1960, arg5
                                else:
                                    require idx < mem[ceil32(arg1.length) + 128]
                                    _2149 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                    _2195 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2195 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2195 + 36] = 0
                                    mem[_2195 + 68] = _1960
                                    mem[_2195 + 100] = arg5
                                    mem[_2195 + 132] = 128
                                    mem[_2195 + 164] = mem[_2195]
                                    s = 0
                                    while s < mem[_2195]:
                                        mem[_2195 + s + 196] = mem[_2195 + s + 32]
                                        _1942 = mem[ceil32(arg1.length) + 128]
                                        s = s + 32
                                        continue 
                                    if not mem[_2195] % 32:
                                        require ext_code.size(address(_2149))
                                        call address(_2149).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _1960, address(arg5), 128, mem[_2195 + 164 len mem[_2195] + 32]
                                    else:
                                        mem[floor32(mem[_2195]) + _2195 + 196] = mem[floor32(mem[_2195]) + _2195 + -(mem[_2195] % 32) + 228 len mem[_2195] % 32]
                                        require ext_code.size(address(_2149))
                                        call address(_2149).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _1960, address(arg5), 128, mem[_2195], mem[_2195 + 196 len floor32(mem[_2195]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1942 = mem[ceil32(arg1.length) + 128]
                                idx = idx + 1
                                s = 0
                                t = _1952
                                continue 
                            if mem[(32 * idx) + _4 + 63 len 1]:
                                if mem[(32 * idx) + _4 + 63 len 1] != 1:
                                    _1942 = mem[ceil32(arg1.length) + 128]
                                    idx = idx + 1
                                    s = mem[(32 * idx + 1) + _637 + 32]
                                    t = mem[(32 * idx) + _4 + 32]
                                    continue 
                                require idx < mem[ceil32(arg1.length) + 128]
                                _2196 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1960
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = arg5
                                require ext_code.size(address(_2196))
                                call address(_2196).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _1960, 0, arg5
                            else:
                                require idx < mem[ceil32(arg1.length) + 128]
                                _2151 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                _2199 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2199 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_2199 + 36] = _1960
                                mem[_2199 + 68] = 0
                                mem[_2199 + 100] = arg5
                                mem[_2199 + 132] = 128
                                mem[_2199 + 164] = mem[_2199]
                                s = 0
                                while s < mem[_2199]:
                                    mem[_2199 + s + 196] = mem[_2199 + s + 32]
                                    _1942 = mem[ceil32(arg1.length) + 128]
                                    s = s + 32
                                    continue 
                                if not mem[_2199] % 32:
                                    require ext_code.size(address(_2151))
                                    call address(_2151).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1960, 0, address(arg5), 128, mem[_2199 + 164 len mem[_2199] + 32]
                                else:
                                    mem[floor32(mem[_2199]) + _2199 + 196] = mem[floor32(mem[_2199]) + _2199 + -(mem[_2199] % 32) + 228 len mem[_2199] % 32]
                                    require ext_code.size(address(_2151))
                                    call address(_2151).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1960, 0, address(arg5), 128, mem[_2199], mem[_2199 + 196 len floor32(mem[_2199]) + 32]
                        else:
                            require idx + 1 < mem[ceil32(arg1.length) + 128]
                            _1988 = mem[(32 * idx + 1) + ceil32(arg1.length) + 160]
                            if mem[(32 * idx) + _4 + 63 len 1] >= 2:
                                if mem[(32 * idx) + _4 + 63 len 1] != 2:
                                    _1942 = mem[ceil32(arg1.length) + 128]
                                    idx = idx + 1
                                    s = s
                                    t = mem[(32 * idx) + _4 + 32]
                                    continue 
                                require idx < mem[_637]
                                require idx + 1 < mem[_637]
                                _1942 = mem[ceil32(arg1.length) + 128]
                                idx = idx + 1
                                s = mem[(32 * idx) + _637 + 32]
                                t = mem[(32 * idx) + _4 + 32]
                                continue 
                            require idx < mem[_5]
                            if Mask(1, 7, mem[(32 * idx) + _5 + 32]):
                                if mem[(32 * idx) + _4 + 63 len 1]:
                                    if mem[(32 * idx) + _4 + 63 len 1] != 1:
                                        _1942 = mem[ceil32(arg1.length) + 128]
                                        idx = idx + 1
                                        s = 0
                                        t = mem[(32 * idx) + _4 + 32]
                                        continue 
                                    require idx < mem[ceil32(arg1.length) + 128]
                                    _2246 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _1960
                                    mem[mem[64] + 68] = address(_1988)
                                    require ext_code.size(address(_2246))
                                    call address(_2246).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                         gas gas_remaining wei
                                        args 0, _1960, address(_1988)
                                else:
                                    require idx < mem[ceil32(arg1.length) + 128]
                                    _2189 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                    _2249 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2249 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2249 + 36] = 0
                                    mem[_2249 + 68] = _1960
                                    mem[_2249 + 100] = address(_1988)
                                    mem[_2249 + 132] = 128
                                    mem[_2249 + 164] = mem[_2249]
                                    s = 0
                                    while s < mem[_2249]:
                                        mem[_2249 + s + 196] = mem[_2249 + s + 32]
                                        _1942 = mem[ceil32(arg1.length) + 128]
                                        s = s + 32
                                        continue 
                                    if not mem[_2249] % 32:
                                        require ext_code.size(address(_2189))
                                        call address(_2189).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _1960, address(_1988), 128, mem[_2249 + 164 len mem[_2249] + 32]
                                    else:
                                        mem[floor32(mem[_2249]) + _2249 + 196] = mem[floor32(mem[_2249]) + _2249 + -(mem[_2249] % 32) + 228 len mem[_2249] % 32]
                                        require ext_code.size(address(_2189))
                                        call address(_2189).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _1960, address(_1988), 128, mem[_2249], mem[_2249 + 196 len floor32(mem[_2249]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1942 = mem[ceil32(arg1.length) + 128]
                                idx = idx + 1
                                s = 0
                                t = _1952
                                continue 
                            if mem[(32 * idx) + _4 + 63 len 1]:
                                if mem[(32 * idx) + _4 + 63 len 1] != 1:
                                    _1942 = mem[ceil32(arg1.length) + 128]
                                    idx = idx + 1
                                    s = mem[(32 * idx + 1) + _637 + 32]
                                    t = mem[(32 * idx) + _4 + 32]
                                    continue 
                                require idx < mem[ceil32(arg1.length) + 128]
                                _2250 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1960
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = address(_1988)
                                require ext_code.size(address(_2250))
                                call address(_2250).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _1960, 0, address(_1988)
                            else:
                                require idx < mem[ceil32(arg1.length) + 128]
                                _2191 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                _2253 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2253 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_2253 + 36] = _1960
                                mem[_2253 + 68] = 0
                                mem[_2253 + 100] = address(_1988)
                                mem[_2253 + 132] = 128
                                mem[_2253 + 164] = mem[_2253]
                                s = 0
                                while s < mem[_2253]:
                                    mem[_2253 + s + 196] = mem[_2253 + s + 32]
                                    _1942 = mem[ceil32(arg1.length) + 128]
                                    s = s + 32
                                    continue 
                                if not mem[_2253] % 32:
                                    require ext_code.size(address(_2191))
                                    call address(_2191).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1960, 0, address(_1988), 128, mem[_2253 + 164 len mem[_2253] + 32]
                                else:
                                    mem[floor32(mem[_2253]) + _2253 + 196] = mem[floor32(mem[_2253]) + _2253 + -(mem[_2253] % 32) + 228 len mem[_2253] % 32]
                                    require ext_code.size(address(_2191))
                                    call address(_2191).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1960, 0, address(_1988), 128, mem[_2253], mem[_2253 + 196 len floor32(mem[_2253]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1942 = mem[ceil32(arg1.length) + 128]
                    idx = idx + 1
                    s = _1960
                    t = _1952
                    continue 
            else:
                require 0 < mem[ceil32(arg1.length) + 128]
                _1307 = mem[ceil32(arg1.length) + 160]
                require 0 < mem[_637]
                _1317 = mem[_637 + 32]
                mem[mem[64] + 4] = arg4
                mem[mem[64] + 36] = address(_1307)
                mem[mem[64] + 68] = _1317
                require ext_code.size(Mask(160, 96, _632) >> 96)
                call Mask(160, 96, _632) >> 96.0x23b872dd with:
                     gas gas_remaining wei
                    args address(arg4), address(_1307), _1317
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _1943 = mem[ceil32(arg1.length) + 128]
                idx = 0
                s = 0
                t = 0
                while idx < _1943:
                    require idx < mem[_4]
                    _1954 = mem[(32 * idx) + _4 + 32]
                    require idx + 1 < mem[_637]
                    _1962 = mem[(32 * idx + 1) + _637 + 32]
                    if idx >= mem[ceil32(arg1.length) + 128] - 1:
                        if mem[(32 * idx) + _4 + 63 len 1] >= 2:
                            if mem[(32 * idx) + _4 + 63 len 1] != 2:
                                _1943 = mem[ceil32(arg1.length) + 128]
                                idx = idx + 1
                                s = s
                                t = mem[(32 * idx) + _4 + 32]
                                continue 
                            require idx < mem[_637]
                            require idx + 1 < mem[_637]
                            _1943 = mem[ceil32(arg1.length) + 128]
                            idx = idx + 1
                            s = mem[(32 * idx) + _637 + 32]
                            t = mem[(32 * idx) + _4 + 32]
                            continue 
                        require idx < mem[_5]
                        if Mask(1, 7, mem[(32 * idx) + _5 + 32]):
                            if mem[(32 * idx) + _4 + 63 len 1]:
                                if mem[(32 * idx) + _4 + 63 len 1] != 1:
                                    _1943 = mem[ceil32(arg1.length) + 128]
                                    idx = idx + 1
                                    s = 0
                                    t = mem[(32 * idx) + _4 + 32]
                                    continue 
                                require idx < mem[ceil32(arg1.length) + 128]
                                _2106 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _1962
                                mem[mem[64] + 68] = arg5
                                require ext_code.size(address(_2106))
                                call address(_2106).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args 0, _1962, arg5
                            else:
                                require idx < mem[ceil32(arg1.length) + 128]
                                _2073 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                _2109 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2109 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_2109 + 36] = 0
                                mem[_2109 + 68] = _1962
                                mem[_2109 + 100] = arg5
                                mem[_2109 + 132] = 128
                                mem[_2109 + 164] = mem[_2109]
                                s = 0
                                while s < mem[_2109]:
                                    mem[_2109 + s + 196] = mem[_2109 + s + 32]
                                    _1943 = mem[ceil32(arg1.length) + 128]
                                    s = s + 32
                                    continue 
                                if not mem[_2109] % 32:
                                    require ext_code.size(address(_2073))
                                    call address(_2073).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1962, address(arg5), 128, mem[_2109 + 164 len mem[_2109] + 32]
                                else:
                                    mem[floor32(mem[_2109]) + _2109 + 196] = mem[floor32(mem[_2109]) + _2109 + -(mem[_2109] % 32) + 228 len mem[_2109] % 32]
                                    require ext_code.size(address(_2073))
                                    call address(_2073).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1962, address(arg5), 128, mem[_2109], mem[_2109 + 196 len floor32(mem[_2109]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1943 = mem[ceil32(arg1.length) + 128]
                            idx = idx + 1
                            s = 0
                            t = _1954
                            continue 
                        if mem[(32 * idx) + _4 + 63 len 1]:
                            if mem[(32 * idx) + _4 + 63 len 1] != 1:
                                _1943 = mem[ceil32(arg1.length) + 128]
                                idx = idx + 1
                                s = mem[(32 * idx + 1) + _637 + 32]
                                t = mem[(32 * idx) + _4 + 32]
                                continue 
                            require idx < mem[ceil32(arg1.length) + 128]
                            _2110 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _1962
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = arg5
                            require ext_code.size(address(_2110))
                            call address(_2110).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                 gas gas_remaining wei
                                args _1962, 0, arg5
                        else:
                            require idx < mem[ceil32(arg1.length) + 128]
                            _2075 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                            _2113 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2113 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2113 + 36] = _1962
                            mem[_2113 + 68] = 0
                            mem[_2113 + 100] = arg5
                            mem[_2113 + 132] = 128
                            mem[_2113 + 164] = mem[_2113]
                            s = 0
                            while s < mem[_2113]:
                                mem[_2113 + s + 196] = mem[_2113 + s + 32]
                                _1943 = mem[ceil32(arg1.length) + 128]
                                s = s + 32
                                continue 
                            if not mem[_2113] % 32:
                                require ext_code.size(address(_2075))
                                call address(_2075).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _1962, 0, address(arg5), 128, mem[_2113 + 164 len mem[_2113] + 32]
                            else:
                                mem[floor32(mem[_2113]) + _2113 + 196] = mem[floor32(mem[_2113]) + _2113 + -(mem[_2113] % 32) + 228 len mem[_2113] % 32]
                                require ext_code.size(address(_2075))
                                call address(_2075).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _1962, 0, address(arg5), 128, mem[_2113], mem[_2113 + 196 len floor32(mem[_2113]) + 32]
                    else:
                        require idx + 1 < mem[_4]
                        if mem[(32 * idx + 1) + _4 + 63 len 1] >= 2:
                            if mem[(32 * idx) + _4 + 63 len 1] >= 2:
                                if mem[(32 * idx) + _4 + 63 len 1] != 2:
                                    _1943 = mem[ceil32(arg1.length) + 128]
                                    idx = idx + 1
                                    s = s
                                    t = mem[(32 * idx) + _4 + 32]
                                    continue 
                                require idx < mem[_637]
                                require idx + 1 < mem[_637]
                                _1943 = mem[ceil32(arg1.length) + 128]
                                idx = idx + 1
                                s = mem[(32 * idx) + _637 + 32]
                                t = mem[(32 * idx) + _4 + 32]
                                continue 
                            require idx < mem[_5]
                            if Mask(1, 7, mem[(32 * idx) + _5 + 32]):
                                if mem[(32 * idx) + _4 + 63 len 1]:
                                    if mem[(32 * idx) + _4 + 63 len 1] != 1:
                                        _1943 = mem[ceil32(arg1.length) + 128]
                                        idx = idx + 1
                                        s = 0
                                        t = mem[(32 * idx) + _4 + 32]
                                        continue 
                                    require idx < mem[ceil32(arg1.length) + 128]
                                    _2204 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _1962
                                    mem[mem[64] + 68] = arg5
                                    require ext_code.size(address(_2204))
                                    call address(_2204).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                         gas gas_remaining wei
                                        args 0, _1962, arg5
                                else:
                                    require idx < mem[ceil32(arg1.length) + 128]
                                    _2161 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                    _2207 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2207 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2207 + 36] = 0
                                    mem[_2207 + 68] = _1962
                                    mem[_2207 + 100] = arg5
                                    mem[_2207 + 132] = 128
                                    mem[_2207 + 164] = mem[_2207]
                                    s = 0
                                    while s < mem[_2207]:
                                        mem[_2207 + s + 196] = mem[_2207 + s + 32]
                                        _1943 = mem[ceil32(arg1.length) + 128]
                                        s = s + 32
                                        continue 
                                    if not mem[_2207] % 32:
                                        require ext_code.size(address(_2161))
                                        call address(_2161).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _1962, address(arg5), 128, mem[_2207 + 164 len mem[_2207] + 32]
                                    else:
                                        mem[floor32(mem[_2207]) + _2207 + 196] = mem[floor32(mem[_2207]) + _2207 + -(mem[_2207] % 32) + 228 len mem[_2207] % 32]
                                        require ext_code.size(address(_2161))
                                        call address(_2161).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _1962, address(arg5), 128, mem[_2207], mem[_2207 + 196 len floor32(mem[_2207]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1943 = mem[ceil32(arg1.length) + 128]
                                idx = idx + 1
                                s = 0
                                t = _1954
                                continue 
                            if mem[(32 * idx) + _4 + 63 len 1]:
                                if mem[(32 * idx) + _4 + 63 len 1] != 1:
                                    _1943 = mem[ceil32(arg1.length) + 128]
                                    idx = idx + 1
                                    s = mem[(32 * idx + 1) + _637 + 32]
                                    t = mem[(32 * idx) + _4 + 32]
                                    continue 
                                require idx < mem[ceil32(arg1.length) + 128]
                                _2208 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1962
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = arg5
                                require ext_code.size(address(_2208))
                                call address(_2208).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _1962, 0, arg5
                            else:
                                require idx < mem[ceil32(arg1.length) + 128]
                                _2163 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                _2211 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2211 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_2211 + 36] = _1962
                                mem[_2211 + 68] = 0
                                mem[_2211 + 100] = arg5
                                mem[_2211 + 132] = 128
                                mem[_2211 + 164] = mem[_2211]
                                s = 0
                                while s < mem[_2211]:
                                    mem[_2211 + s + 196] = mem[_2211 + s + 32]
                                    _1943 = mem[ceil32(arg1.length) + 128]
                                    s = s + 32
                                    continue 
                                if not mem[_2211] % 32:
                                    require ext_code.size(address(_2163))
                                    call address(_2163).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1962, 0, address(arg5), 128, mem[_2211 + 164 len mem[_2211] + 32]
                                else:
                                    mem[floor32(mem[_2211]) + _2211 + 196] = mem[floor32(mem[_2211]) + _2211 + -(mem[_2211] % 32) + 228 len mem[_2211] % 32]
                                    require ext_code.size(address(_2163))
                                    call address(_2163).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1962, 0, address(arg5), 128, mem[_2211], mem[_2211 + 196 len floor32(mem[_2211]) + 32]
                        else:
                            require idx + 1 < mem[ceil32(arg1.length) + 128]
                            _1991 = mem[(32 * idx + 1) + ceil32(arg1.length) + 160]
                            if mem[(32 * idx) + _4 + 63 len 1] >= 2:
                                if mem[(32 * idx) + _4 + 63 len 1] != 2:
                                    _1943 = mem[ceil32(arg1.length) + 128]
                                    idx = idx + 1
                                    s = s
                                    t = mem[(32 * idx) + _4 + 32]
                                    continue 
                                require idx < mem[_637]
                                require idx + 1 < mem[_637]
                                _1943 = mem[ceil32(arg1.length) + 128]
                                idx = idx + 1
                                s = mem[(32 * idx) + _637 + 32]
                                t = mem[(32 * idx) + _4 + 32]
                                continue 
                            require idx < mem[_5]
                            if Mask(1, 7, mem[(32 * idx) + _5 + 32]):
                                if mem[(32 * idx) + _4 + 63 len 1]:
                                    if mem[(32 * idx) + _4 + 63 len 1] != 1:
                                        _1943 = mem[ceil32(arg1.length) + 128]
                                        idx = idx + 1
                                        s = 0
                                        t = mem[(32 * idx) + _4 + 32]
                                        continue 
                                    require idx < mem[ceil32(arg1.length) + 128]
                                    _2262 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _1962
                                    mem[mem[64] + 68] = address(_1991)
                                    require ext_code.size(address(_2262))
                                    call address(_2262).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                         gas gas_remaining wei
                                        args 0, _1962, address(_1991)
                                else:
                                    require idx < mem[ceil32(arg1.length) + 128]
                                    _2201 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                    _2265 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2265 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2265 + 36] = 0
                                    mem[_2265 + 68] = _1962
                                    mem[_2265 + 100] = address(_1991)
                                    mem[_2265 + 132] = 128
                                    mem[_2265 + 164] = mem[_2265]
                                    s = 0
                                    while s < mem[_2265]:
                                        mem[_2265 + s + 196] = mem[_2265 + s + 32]
                                        _1943 = mem[ceil32(arg1.length) + 128]
                                        s = s + 32
                                        continue 
                                    if not mem[_2265] % 32:
                                        require ext_code.size(address(_2201))
                                        call address(_2201).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _1962, address(_1991), 128, mem[_2265 + 164 len mem[_2265] + 32]
                                    else:
                                        mem[floor32(mem[_2265]) + _2265 + 196] = mem[floor32(mem[_2265]) + _2265 + -(mem[_2265] % 32) + 228 len mem[_2265] % 32]
                                        require ext_code.size(address(_2201))
                                        call address(_2201).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _1962, address(_1991), 128, mem[_2265], mem[_2265 + 196 len floor32(mem[_2265]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1943 = mem[ceil32(arg1.length) + 128]
                                idx = idx + 1
                                s = 0
                                t = _1954
                                continue 
                            if mem[(32 * idx) + _4 + 63 len 1]:
                                if mem[(32 * idx) + _4 + 63 len 1] != 1:
                                    _1943 = mem[ceil32(arg1.length) + 128]
                                    idx = idx + 1
                                    s = mem[(32 * idx + 1) + _637 + 32]
                                    t = mem[(32 * idx) + _4 + 32]
                                    continue 
                                require idx < mem[ceil32(arg1.length) + 128]
                                _2266 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1962
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = address(_1991)
                                require ext_code.size(address(_2266))
                                call address(_2266).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _1962, 0, address(_1991)
                            else:
                                require idx < mem[ceil32(arg1.length) + 128]
                                _2203 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                _2269 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2269 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_2269 + 36] = _1962
                                mem[_2269 + 68] = 0
                                mem[_2269 + 100] = address(_1991)
                                mem[_2269 + 132] = 128
                                mem[_2269 + 164] = mem[_2269]
                                s = 0
                                while s < mem[_2269]:
                                    mem[_2269 + s + 196] = mem[_2269 + s + 32]
                                    _1943 = mem[ceil32(arg1.length) + 128]
                                    s = s + 32
                                    continue 
                                if not mem[_2269] % 32:
                                    require ext_code.size(address(_2203))
                                    call address(_2203).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1962, 0, address(_1991), 128, mem[_2269 + 164 len mem[_2269] + 32]
                                else:
                                    mem[floor32(mem[_2269]) + _2269 + 196] = mem[floor32(mem[_2269]) + _2269 + -(mem[_2269] % 32) + 228 len mem[_2269] % 32]
                                    require ext_code.size(address(_2203))
                                    call address(_2203).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1962, 0, address(_1991), 128, mem[_2269], mem[_2269 + 196 len floor32(mem[_2269]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1943 = mem[ceil32(arg1.length) + 128]
                    idx = idx + 1
                    s = _1962
                    t = _1954
                    continue 
}

function sub_ab0ebe20(?) {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    _2 = Mask(248, 0, arg1.length), mem[128 len 1]
    mem[64] = ceil32(arg1.length) + (32 * mem[128 len 1] + 1) + 128
    mem[ceil32(arg1.length) + 128] = mem[128 len 1]
    _4 = mem[64]
    mem[64] = mem[64] + (32 * uint8(_2) + 1)
    mem[_4] = uint8(_2)
    _5 = mem[64]
    mem[64] = mem[64] + (32 * uint8(_2) + 1)
    mem[_5] = uint8(_2)
    idx = 0
    s = 32 * uint8(_2) + 1
    while idx < uint8(_2):
        mem[ceil32(arg1.length) + (32 * idx + 1) + 128] = mem[(20 * idx) + 129 len 20]
        mem[_4 + (32 * idx + 1)] = mem[(20 * uint8(_2)) + idx + 98]
        mem[_5 + (32 * idx + 1)] = mem[(21 * uint8(_2)) + idx + 98]
        idx = idx + 1
        s = 32 * idx + 1
        continue 
    _630 = mem[(22 * uint8(_2)) + 111]
    _632 = mem[(22 * uint8(_2)) + 143]
    _634 = mem[64]
    mem[64] = mem[64] + (32 * arg2.length) + 32
    mem[_634] = arg2.length
    mem[_634 + 32 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[_634 + (32 * arg2.length) + 32] = 0
    _636 = mem[ceil32(arg1.length) + 128]
    require mem[ceil32(arg1.length) + 128] + 1 <= test266151307()
    _637 = mem[64]
    mem[mem[64]] = mem[ceil32(arg1.length) + 128] + 1
    mem[64] = mem[64] + (32 * _636 + 1) + 32
    if not _636 + 1:
        require 0 < mem[_637]
        mem[_637 + 32] = Mask(112, 0, _630)
        _1254 = mem[ceil32(arg1.length) + 128]
        idx = 0
        s = 15
        while uint8(idx) < _1254:
            require uint8(idx) < mem[_4]
            if mem[(32 * uint8(idx)) + _4 + 63 len 1] < 2:
                require uint8(idx) < mem[_5]
                _1271 = mem[(32 * uint8(idx)) + _5 + 32]
                require uint8(idx) < mem[ceil32(arg1.length) + 128]
                _1283 = mem[(32 * uint8(idx)) + ceil32(arg1.length) + 160]
                mem[2816] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                staticcall _1283.getReserves() with:
                        gas gas_remaining wei
                mem[3072 len 64] = ext_call.return_data[0 len 64]
                require uint8(idx) < mem[_4]
                if Mask(1, 7, _1271):
                    if mem[(32 * uint8(idx)) + _4 + 63 len 1]:
                        require uint8(idx) < mem[_634]
                        require uint8(idx) < mem[_637]
                        require uint8(idx + 1) < mem[_637]
                        mem[(32 * uint8(idx + 1)) + _637 + 32] = (10000 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000 * ext_call.return_data[32]) - (5 * _1271 % 128 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000 * ext_call.return_data[32]) / (10000 * ext_call.return_data[0]) + (10000 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000) - (5 * _1271 % 128 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000)
                        _1254 = mem[ceil32(arg1.length) + 128]
                        idx = idx + 1
                        s = s
                        continue 
                    if s != 15:
                        if uint8(idx) != mem[ceil32(arg1.length) + 128] - 1:
                            require uint8(idx) < mem[_634]
                            require uint8(idx) < mem[_637]
                            require uint8(idx + 1) < mem[_637]
                            mem[(32 * uint8(idx + 1)) + _637 + 32] = (10000 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000 * ext_call.return_data[32]) - (5 * _1271 % 128 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000 * ext_call.return_data[32]) / (10000 * ext_call.return_data[0]) + (10000 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000) - (5 * _1271 % 128 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000)
                            _1254 = mem[ceil32(arg1.length) + 128]
                            idx = idx + 1
                            s = s
                            continue 
                    require uint8(idx + 1) < mem[_634]
                    require uint8(idx) < mem[_634]
                    require uint8(idx) < mem[_637]
                    require uint8(idx + 1) < mem[_637]
                    mem[(32 * uint8(idx + 1)) + _637 + 32] = (10000 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000 * ext_call.return_data[32]) - (5 * _1271 % 128 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000 * ext_call.return_data[32]) / (10000 * ext_call.return_data[0]) + (10000 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000) - (5 * _1271 % 128 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000)
                    if mem[(32 * uint8(idx + 1)) + _634 + 32]:
                        _1254 = mem[ceil32(arg1.length) + 128]
                        idx = idx + 1
                        s = s
                        continue 
                else:
                    if mem[(32 * uint8(idx)) + _4 + 63 len 1]:
                        require uint8(idx) < mem[_634]
                        require uint8(idx) < mem[_637]
                        require uint8(idx + 1) < mem[_637]
                        mem[(32 * uint8(idx + 1)) + _637 + 32] = (10000 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000 * ext_call.return_data[0]) - (5 * _1271 % 128 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000 * ext_call.return_data[0]) / (10000 * ext_call.return_data[32]) + (10000 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000) - (5 * _1271 % 128 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000)
                        _1254 = mem[ceil32(arg1.length) + 128]
                        idx = idx + 1
                        s = s
                        continue 
                    if s != 15:
                        if uint8(idx) != mem[ceil32(arg1.length) + 128] - 1:
                            require uint8(idx) < mem[_634]
                            require uint8(idx) < mem[_637]
                            require uint8(idx + 1) < mem[_637]
                            mem[(32 * uint8(idx + 1)) + _637 + 32] = (10000 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000 * ext_call.return_data[0]) - (5 * _1271 % 128 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000 * ext_call.return_data[0]) / (10000 * ext_call.return_data[32]) + (10000 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000) - (5 * _1271 % 128 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000)
                            _1254 = mem[ceil32(arg1.length) + 128]
                            idx = idx + 1
                            s = s
                            continue 
                    require uint8(idx + 1) < mem[_634]
                    require uint8(idx) < mem[_634]
                    require uint8(idx) < mem[_637]
                    require uint8(idx + 1) < mem[_637]
                    mem[(32 * uint8(idx + 1)) + _637 + 32] = (10000 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000 * ext_call.return_data[0]) - (5 * _1271 % 128 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000 * ext_call.return_data[0]) / (10000 * ext_call.return_data[32]) + (10000 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000) - (5 * _1271 % 128 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000)
                    if mem[(32 * uint8(idx + 1)) + _634 + 32]:
                        _1254 = mem[ceil32(arg1.length) + 128]
                        idx = idx + 1
                        s = s
                        continue 
                _1254 = mem[ceil32(arg1.length) + 128]
                idx = idx + 1
                s = uint8(idx)
                continue 
            require uint8(idx) < mem[_4]
            if mem[(32 * uint8(idx)) + _4 + 63 len 1] == 2:
                require uint8(idx) < mem[_5]
                _1278 = mem[(32 * uint8(idx)) + _5 + 32]
                require uint8(idx) < mem[ceil32(arg1.length) + 128]
                _1291 = mem[(32 * uint8(idx)) + ceil32(arg1.length) + 160]
                require uint8(idx) < mem[_637]
                _1306 = mem[(32 * uint8(idx)) + _637 + 32]
                mem[mem[64] + 4] = ('signextend', 15, ('mask_shl', 3, 3, -3, ('mem', ('range', ('add', 32, ('mask_shl', 8, 0, 5, ('var', 0)), ('var', '_5')), 32))))
                mem[mem[64] + 36] = ('signextend', 15, ('mask_shl', 3, 0, 0, ('var', '_1278')))
                mem[mem[64] + 68] = _1306
                require ext_code.size(address(_1291))
                if not Mask(1, 6, mem[(32 * uint8(idx)) + _5 + 32]):
                    staticcall address(_1291).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], ('signextend', 15, ('mask_shl', 3, 0, 0, ('var', '_1278'))), _1306
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require uint8(idx + 1) < mem[_637]
                    mem[(32 * uint8(idx + 1)) + _637 + 32] = ext_call.return_data[0]
                else:
                    staticcall address(_1291).get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], ('signextend', 15, ('mask_shl', 3, 0, 0, ('var', '_1278'))), _1306
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 9999 * ext_call.return_data[0] / 9999 != ext_call.return_data[0]:
                        revert with 0, 'ds-math-mul-overflow'
                    require uint8(idx + 1) < mem[_637]
                    mem[(32 * uint8(idx + 1)) + _637 + 32] = 9999 * ext_call.return_data[0] / 10000
            _1254 = mem[ceil32(arg1.length) + 128]
            idx = idx + 1
            s = s
            continue 
        require mem[_637] - 1 < mem[_637]
        if Mask(112, 0, arg3) < mem[(32 * mem[_637] - 1) + _637 + 32]:
            mem[0] = msg.sender
            mem[32] = 1
            require stor1[address(msg.sender)]
            require 0 < mem[_4]
            if mem[_4 + 63 len 1] >= 2:
                _1940 = mem[ceil32(arg1.length) + 128]
                idx = 0
                s = 0
                t = 0
                while idx < _1940:
                    require idx < mem[_4]
                    _1948 = mem[(32 * idx) + _4 + 32]
                    require idx + 1 < mem[_637]
                    _1956 = mem[(32 * idx + 1) + _637 + 32]
                    if idx >= mem[ceil32(arg1.length) + 128] - 1:
                        if mem[(32 * idx) + _4 + 63 len 1] >= 2:
                            if mem[(32 * idx) + _4 + 63 len 1] != 2:
                                _1940 = mem[ceil32(arg1.length) + 128]
                                idx = idx + 1
                                s = s
                                t = mem[(32 * idx) + _4 + 32]
                                continue 
                            require idx < mem[_637]
                            require idx + 1 < mem[_637]
                            _1940 = mem[ceil32(arg1.length) + 128]
                            idx = idx + 1
                            s = mem[(32 * idx) + _637 + 32]
                            t = mem[(32 * idx) + _4 + 32]
                            continue 
                        require idx < mem[_5]
                        if Mask(1, 7, mem[(32 * idx) + _5 + 32]):
                            if mem[(32 * idx) + _4 + 63 len 1]:
                                if mem[(32 * idx) + _4 + 63 len 1] != 1:
                                    _1940 = mem[ceil32(arg1.length) + 128]
                                    idx = idx + 1
                                    s = 0
                                    t = mem[(32 * idx) + _4 + 32]
                                    continue 
                                require idx < mem[ceil32(arg1.length) + 128]
                                _2076 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _1956
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_2076))
                                call address(_2076).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args 0, _1956, this.address
                            else:
                                require idx < mem[ceil32(arg1.length) + 128]
                                _2061 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                _2079 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2079 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_2079 + 36] = 0
                                mem[_2079 + 68] = _1956
                                mem[_2079 + 100] = this.address
                                mem[_2079 + 132] = 128
                                mem[_2079 + 164] = mem[_2079]
                                s = 0
                                while s < mem[_2079]:
                                    mem[_2079 + s + 196] = mem[_2079 + s + 32]
                                    _1940 = mem[ceil32(arg1.length) + 128]
                                    s = s + 32
                                    continue 
                                if not mem[_2079] % 32:
                                    require ext_code.size(address(_2061))
                                    call address(_2061).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1956, address(this.address), 128, mem[_2079 + 164 len mem[_2079] + 32]
                                else:
                                    mem[floor32(mem[_2079]) + _2079 + 196] = mem[floor32(mem[_2079]) + _2079 + -(mem[_2079] % 32) + 228 len mem[_2079] % 32]
                                    require ext_code.size(address(_2061))
                                    call address(_2061).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1956, address(this.address), 128, mem[_2079], mem[_2079 + 196 len floor32(mem[_2079]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1940 = mem[ceil32(arg1.length) + 128]
                            idx = idx + 1
                            s = 0
                            t = _1948
                            continue 
                        if mem[(32 * idx) + _4 + 63 len 1]:
                            if mem[(32 * idx) + _4 + 63 len 1] != 1:
                                _1940 = mem[ceil32(arg1.length) + 128]
                                idx = idx + 1
                                s = mem[(32 * idx + 1) + _637 + 32]
                                t = mem[(32 * idx) + _4 + 32]
                                continue 
                            require idx < mem[ceil32(arg1.length) + 128]
                            _2080 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _1956
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            require ext_code.size(address(_2080))
                            call address(_2080).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                 gas gas_remaining wei
                                args _1956, 0, this.address
                        else:
                            require idx < mem[ceil32(arg1.length) + 128]
                            _2063 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                            _2083 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2083 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2083 + 36] = _1956
                            mem[_2083 + 68] = 0
                            mem[_2083 + 100] = this.address
                            mem[_2083 + 132] = 128
                            mem[_2083 + 164] = mem[_2083]
                            s = 0
                            while s < mem[_2083]:
                                mem[_2083 + s + 196] = mem[_2083 + s + 32]
                                _1940 = mem[ceil32(arg1.length) + 128]
                                s = s + 32
                                continue 
                            if not mem[_2083] % 32:
                                require ext_code.size(address(_2063))
                                call address(_2063).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _1956, 0, address(this.address), 128, mem[_2083 + 164 len mem[_2083] + 32]
                            else:
                                mem[floor32(mem[_2083]) + _2083 + 196] = mem[floor32(mem[_2083]) + _2083 + -(mem[_2083] % 32) + 228 len mem[_2083] % 32]
                                require ext_code.size(address(_2063))
                                call address(_2063).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _1956, 0, address(this.address), 128, mem[_2083], mem[_2083 + 196 len floor32(mem[_2083]) + 32]
                    else:
                        require idx + 1 < mem[_4]
                        if mem[(32 * idx + 1) + _4 + 63 len 1] >= 2:
                            if mem[(32 * idx) + _4 + 63 len 1] >= 2:
                                if mem[(32 * idx) + _4 + 63 len 1] != 2:
                                    _1940 = mem[ceil32(arg1.length) + 128]
                                    idx = idx + 1
                                    s = s
                                    t = mem[(32 * idx) + _4 + 32]
                                    continue 
                                require idx < mem[_637]
                                require idx + 1 < mem[_637]
                                _1940 = mem[ceil32(arg1.length) + 128]
                                idx = idx + 1
                                s = mem[(32 * idx) + _637 + 32]
                                t = mem[(32 * idx) + _4 + 32]
                                continue 
                            require idx < mem[_5]
                            if Mask(1, 7, mem[(32 * idx) + _5 + 32]):
                                if mem[(32 * idx) + _4 + 63 len 1]:
                                    if mem[(32 * idx) + _4 + 63 len 1] != 1:
                                        _1940 = mem[ceil32(arg1.length) + 128]
                                        idx = idx + 1
                                        s = 0
                                        t = mem[(32 * idx) + _4 + 32]
                                        continue 
                                    require idx < mem[ceil32(arg1.length) + 128]
                                    _2168 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _1956
                                    mem[mem[64] + 68] = this.address
                                    require ext_code.size(address(_2168))
                                    call address(_2168).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                         gas gas_remaining wei
                                        args 0, _1956, this.address
                                else:
                                    require idx < mem[ceil32(arg1.length) + 128]
                                    _2125 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                    _2171 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2171 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2171 + 36] = 0
                                    mem[_2171 + 68] = _1956
                                    mem[_2171 + 100] = this.address
                                    mem[_2171 + 132] = 128
                                    mem[_2171 + 164] = mem[_2171]
                                    s = 0
                                    while s < mem[_2171]:
                                        mem[_2171 + s + 196] = mem[_2171 + s + 32]
                                        _1940 = mem[ceil32(arg1.length) + 128]
                                        s = s + 32
                                        continue 
                                    if not mem[_2171] % 32:
                                        require ext_code.size(address(_2125))
                                        call address(_2125).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _1956, address(this.address), 128, mem[_2171 + 164 len mem[_2171] + 32]
                                    else:
                                        mem[floor32(mem[_2171]) + _2171 + 196] = mem[floor32(mem[_2171]) + _2171 + -(mem[_2171] % 32) + 228 len mem[_2171] % 32]
                                        require ext_code.size(address(_2125))
                                        call address(_2125).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _1956, address(this.address), 128, mem[_2171], mem[_2171 + 196 len floor32(mem[_2171]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1940 = mem[ceil32(arg1.length) + 128]
                                idx = idx + 1
                                s = 0
                                t = _1948
                                continue 
                            if mem[(32 * idx) + _4 + 63 len 1]:
                                if mem[(32 * idx) + _4 + 63 len 1] != 1:
                                    _1940 = mem[ceil32(arg1.length) + 128]
                                    idx = idx + 1
                                    s = mem[(32 * idx + 1) + _637 + 32]
                                    t = mem[(32 * idx) + _4 + 32]
                                    continue 
                                require idx < mem[ceil32(arg1.length) + 128]
                                _2172 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1956
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_2172))
                                call address(_2172).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _1956, 0, this.address
                            else:
                                require idx < mem[ceil32(arg1.length) + 128]
                                _2127 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                _2175 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2175 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_2175 + 36] = _1956
                                mem[_2175 + 68] = 0
                                mem[_2175 + 100] = this.address
                                mem[_2175 + 132] = 128
                                mem[_2175 + 164] = mem[_2175]
                                s = 0
                                while s < mem[_2175]:
                                    mem[_2175 + s + 196] = mem[_2175 + s + 32]
                                    _1940 = mem[ceil32(arg1.length) + 128]
                                    s = s + 32
                                    continue 
                                if not mem[_2175] % 32:
                                    require ext_code.size(address(_2127))
                                    call address(_2127).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1956, 0, address(this.address), 128, mem[_2175 + 164 len mem[_2175] + 32]
                                else:
                                    mem[floor32(mem[_2175]) + _2175 + 196] = mem[floor32(mem[_2175]) + _2175 + -(mem[_2175] % 32) + 228 len mem[_2175] % 32]
                                    require ext_code.size(address(_2127))
                                    call address(_2127).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1956, 0, address(this.address), 128, mem[_2175], mem[_2175 + 196 len floor32(mem[_2175]) + 32]
                        else:
                            require idx + 1 < mem[ceil32(arg1.length) + 128]
                            _1982 = mem[(32 * idx + 1) + ceil32(arg1.length) + 160]
                            if mem[(32 * idx) + _4 + 63 len 1] >= 2:
                                if mem[(32 * idx) + _4 + 63 len 1] != 2:
                                    _1940 = mem[ceil32(arg1.length) + 128]
                                    idx = idx + 1
                                    s = s
                                    t = mem[(32 * idx) + _4 + 32]
                                    continue 
                                require idx < mem[_637]
                                require idx + 1 < mem[_637]
                                _1940 = mem[ceil32(arg1.length) + 128]
                                idx = idx + 1
                                s = mem[(32 * idx) + _637 + 32]
                                t = mem[(32 * idx) + _4 + 32]
                                continue 
                            require idx < mem[_5]
                            if Mask(1, 7, mem[(32 * idx) + _5 + 32]):
                                if mem[(32 * idx) + _4 + 63 len 1]:
                                    if mem[(32 * idx) + _4 + 63 len 1] != 1:
                                        _1940 = mem[ceil32(arg1.length) + 128]
                                        idx = idx + 1
                                        s = 0
                                        t = mem[(32 * idx) + _4 + 32]
                                        continue 
                                    require idx < mem[ceil32(arg1.length) + 128]
                                    _2214 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _1956
                                    mem[mem[64] + 68] = address(_1982)
                                    require ext_code.size(address(_2214))
                                    call address(_2214).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                         gas gas_remaining wei
                                        args 0, _1956, address(_1982)
                                else:
                                    require idx < mem[ceil32(arg1.length) + 128]
                                    _2165 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                    _2217 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2217 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2217 + 36] = 0
                                    mem[_2217 + 68] = _1956
                                    mem[_2217 + 100] = address(_1982)
                                    mem[_2217 + 132] = 128
                                    mem[_2217 + 164] = mem[_2217]
                                    s = 0
                                    while s < mem[_2217]:
                                        mem[_2217 + s + 196] = mem[_2217 + s + 32]
                                        _1940 = mem[ceil32(arg1.length) + 128]
                                        s = s + 32
                                        continue 
                                    if not mem[_2217] % 32:
                                        require ext_code.size(address(_2165))
                                        call address(_2165).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _1956, address(_1982), 128, mem[_2217 + 164 len mem[_2217] + 32]
                                    else:
                                        mem[floor32(mem[_2217]) + _2217 + 196] = mem[floor32(mem[_2217]) + _2217 + -(mem[_2217] % 32) + 228 len mem[_2217] % 32]
                                        require ext_code.size(address(_2165))
                                        call address(_2165).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _1956, address(_1982), 128, mem[_2217], mem[_2217 + 196 len floor32(mem[_2217]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1940 = mem[ceil32(arg1.length) + 128]
                                idx = idx + 1
                                s = 0
                                t = _1948
                                continue 
                            if mem[(32 * idx) + _4 + 63 len 1]:
                                if mem[(32 * idx) + _4 + 63 len 1] != 1:
                                    _1940 = mem[ceil32(arg1.length) + 128]
                                    idx = idx + 1
                                    s = mem[(32 * idx + 1) + _637 + 32]
                                    t = mem[(32 * idx) + _4 + 32]
                                    continue 
                                require idx < mem[ceil32(arg1.length) + 128]
                                _2218 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1956
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = address(_1982)
                                require ext_code.size(address(_2218))
                                call address(_2218).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _1956, 0, address(_1982)
                            else:
                                require idx < mem[ceil32(arg1.length) + 128]
                                _2167 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                _2221 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2221 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_2221 + 36] = _1956
                                mem[_2221 + 68] = 0
                                mem[_2221 + 100] = address(_1982)
                                mem[_2221 + 132] = 128
                                mem[_2221 + 164] = mem[_2221]
                                s = 0
                                while s < mem[_2221]:
                                    mem[_2221 + s + 196] = mem[_2221 + s + 32]
                                    _1940 = mem[ceil32(arg1.length) + 128]
                                    s = s + 32
                                    continue 
                                if not mem[_2221] % 32:
                                    require ext_code.size(address(_2167))
                                    call address(_2167).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1956, 0, address(_1982), 128, mem[_2221 + 164 len mem[_2221] + 32]
                                else:
                                    mem[floor32(mem[_2221]) + _2221 + 196] = mem[floor32(mem[_2221]) + _2221 + -(mem[_2221] % 32) + 228 len mem[_2221] % 32]
                                    require ext_code.size(address(_2167))
                                    call address(_2167).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1956, 0, address(_1982), 128, mem[_2221], mem[_2221 + 196 len floor32(mem[_2221]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1940 = mem[ceil32(arg1.length) + 128]
                    idx = idx + 1
                    s = _1956
                    t = _1948
                    continue 
            else:
                require 0 < mem[ceil32(arg1.length) + 128]
                require 0 < mem[_637]
                _1311 = mem[_637 + 32]
                mem[mem[64] + 4] = mem[ceil32(arg1.length) + 172 len 20]
                mem[mem[64] + 36] = _1311
                require ext_code.size(Mask(160, 96, _632) >> 96)
                call Mask(160, 96, _632) >> 96.0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _1311
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _1941 = mem[ceil32(arg1.length) + 128]
                idx = 0
                s = 0
                t = 0
                while idx < _1941:
                    require idx < mem[_4]
                    _1950 = mem[(32 * idx) + _4 + 32]
                    require idx + 1 < mem[_637]
                    _1958 = mem[(32 * idx + 1) + _637 + 32]
                    if idx >= mem[ceil32(arg1.length) + 128] - 1:
                        if mem[(32 * idx) + _4 + 63 len 1] >= 2:
                            if mem[(32 * idx) + _4 + 63 len 1] != 2:
                                _1941 = mem[ceil32(arg1.length) + 128]
                                idx = idx + 1
                                s = s
                                t = mem[(32 * idx) + _4 + 32]
                                continue 
                            require idx < mem[_637]
                            require idx + 1 < mem[_637]
                            _1941 = mem[ceil32(arg1.length) + 128]
                            idx = idx + 1
                            s = mem[(32 * idx) + _637 + 32]
                            t = mem[(32 * idx) + _4 + 32]
                            continue 
                        require idx < mem[_5]
                        if Mask(1, 7, mem[(32 * idx) + _5 + 32]):
                            if mem[(32 * idx) + _4 + 63 len 1]:
                                if mem[(32 * idx) + _4 + 63 len 1] != 1:
                                    _1941 = mem[ceil32(arg1.length) + 128]
                                    idx = idx + 1
                                    s = 0
                                    t = mem[(32 * idx) + _4 + 32]
                                    continue 
                                require idx < mem[ceil32(arg1.length) + 128]
                                _2086 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _1958
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_2086))
                                call address(_2086).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args 0, _1958, this.address
                            else:
                                require idx < mem[ceil32(arg1.length) + 128]
                                _2065 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                _2089 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2089 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_2089 + 36] = 0
                                mem[_2089 + 68] = _1958
                                mem[_2089 + 100] = this.address
                                mem[_2089 + 132] = 128
                                mem[_2089 + 164] = mem[_2089]
                                s = 0
                                while s < mem[_2089]:
                                    mem[_2089 + s + 196] = mem[_2089 + s + 32]
                                    _1941 = mem[ceil32(arg1.length) + 128]
                                    s = s + 32
                                    continue 
                                if not mem[_2089] % 32:
                                    require ext_code.size(address(_2065))
                                    call address(_2065).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1958, address(this.address), 128, mem[_2089 + 164 len mem[_2089] + 32]
                                else:
                                    mem[floor32(mem[_2089]) + _2089 + 196] = mem[floor32(mem[_2089]) + _2089 + -(mem[_2089] % 32) + 228 len mem[_2089] % 32]
                                    require ext_code.size(address(_2065))
                                    call address(_2065).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1958, address(this.address), 128, mem[_2089], mem[_2089 + 196 len floor32(mem[_2089]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1941 = mem[ceil32(arg1.length) + 128]
                            idx = idx + 1
                            s = 0
                            t = _1950
                            continue 
                        if mem[(32 * idx) + _4 + 63 len 1]:
                            if mem[(32 * idx) + _4 + 63 len 1] != 1:
                                _1941 = mem[ceil32(arg1.length) + 128]
                                idx = idx + 1
                                s = mem[(32 * idx + 1) + _637 + 32]
                                t = mem[(32 * idx) + _4 + 32]
                                continue 
                            require idx < mem[ceil32(arg1.length) + 128]
                            _2090 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _1958
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            require ext_code.size(address(_2090))
                            call address(_2090).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                 gas gas_remaining wei
                                args _1958, 0, this.address
                        else:
                            require idx < mem[ceil32(arg1.length) + 128]
                            _2067 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                            _2093 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2093 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2093 + 36] = _1958
                            mem[_2093 + 68] = 0
                            mem[_2093 + 100] = this.address
                            mem[_2093 + 132] = 128
                            mem[_2093 + 164] = mem[_2093]
                            s = 0
                            while s < mem[_2093]:
                                mem[_2093 + s + 196] = mem[_2093 + s + 32]
                                _1941 = mem[ceil32(arg1.length) + 128]
                                s = s + 32
                                continue 
                            if not mem[_2093] % 32:
                                require ext_code.size(address(_2067))
                                call address(_2067).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _1958, 0, address(this.address), 128, mem[_2093 + 164 len mem[_2093] + 32]
                            else:
                                mem[floor32(mem[_2093]) + _2093 + 196] = mem[floor32(mem[_2093]) + _2093 + -(mem[_2093] % 32) + 228 len mem[_2093] % 32]
                                require ext_code.size(address(_2067))
                                call address(_2067).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _1958, 0, address(this.address), 128, mem[_2093], mem[_2093 + 196 len floor32(mem[_2093]) + 32]
                    else:
                        require idx + 1 < mem[_4]
                        if mem[(32 * idx + 1) + _4 + 63 len 1] >= 2:
                            if mem[(32 * idx) + _4 + 63 len 1] >= 2:
                                if mem[(32 * idx) + _4 + 63 len 1] != 2:
                                    _1941 = mem[ceil32(arg1.length) + 128]
                                    idx = idx + 1
                                    s = s
                                    t = mem[(32 * idx) + _4 + 32]
                                    continue 
                                require idx < mem[_637]
                                require idx + 1 < mem[_637]
                                _1941 = mem[ceil32(arg1.length) + 128]
                                idx = idx + 1
                                s = mem[(32 * idx) + _637 + 32]
                                t = mem[(32 * idx) + _4 + 32]
                                continue 
                            require idx < mem[_5]
                            if Mask(1, 7, mem[(32 * idx) + _5 + 32]):
                                if mem[(32 * idx) + _4 + 63 len 1]:
                                    if mem[(32 * idx) + _4 + 63 len 1] != 1:
                                        _1941 = mem[ceil32(arg1.length) + 128]
                                        idx = idx + 1
                                        s = 0
                                        t = mem[(32 * idx) + _4 + 32]
                                        continue 
                                    require idx < mem[ceil32(arg1.length) + 128]
                                    _2180 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _1958
                                    mem[mem[64] + 68] = this.address
                                    require ext_code.size(address(_2180))
                                    call address(_2180).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                         gas gas_remaining wei
                                        args 0, _1958, this.address
                                else:
                                    require idx < mem[ceil32(arg1.length) + 128]
                                    _2137 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                    _2183 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2183 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2183 + 36] = 0
                                    mem[_2183 + 68] = _1958
                                    mem[_2183 + 100] = this.address
                                    mem[_2183 + 132] = 128
                                    mem[_2183 + 164] = mem[_2183]
                                    s = 0
                                    while s < mem[_2183]:
                                        mem[_2183 + s + 196] = mem[_2183 + s + 32]
                                        _1941 = mem[ceil32(arg1.length) + 128]
                                        s = s + 32
                                        continue 
                                    if not mem[_2183] % 32:
                                        require ext_code.size(address(_2137))
                                        call address(_2137).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _1958, address(this.address), 128, mem[_2183 + 164 len mem[_2183] + 32]
                                    else:
                                        mem[floor32(mem[_2183]) + _2183 + 196] = mem[floor32(mem[_2183]) + _2183 + -(mem[_2183] % 32) + 228 len mem[_2183] % 32]
                                        require ext_code.size(address(_2137))
                                        call address(_2137).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _1958, address(this.address), 128, mem[_2183], mem[_2183 + 196 len floor32(mem[_2183]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1941 = mem[ceil32(arg1.length) + 128]
                                idx = idx + 1
                                s = 0
                                t = _1950
                                continue 
                            if mem[(32 * idx) + _4 + 63 len 1]:
                                if mem[(32 * idx) + _4 + 63 len 1] != 1:
                                    _1941 = mem[ceil32(arg1.length) + 128]
                                    idx = idx + 1
                                    s = mem[(32 * idx + 1) + _637 + 32]
                                    t = mem[(32 * idx) + _4 + 32]
                                    continue 
                                require idx < mem[ceil32(arg1.length) + 128]
                                _2184 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1958
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_2184))
                                call address(_2184).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _1958, 0, this.address
                            else:
                                require idx < mem[ceil32(arg1.length) + 128]
                                _2139 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                _2187 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2187 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_2187 + 36] = _1958
                                mem[_2187 + 68] = 0
                                mem[_2187 + 100] = this.address
                                mem[_2187 + 132] = 128
                                mem[_2187 + 164] = mem[_2187]
                                s = 0
                                while s < mem[_2187]:
                                    mem[_2187 + s + 196] = mem[_2187 + s + 32]
                                    _1941 = mem[ceil32(arg1.length) + 128]
                                    s = s + 32
                                    continue 
                                if not mem[_2187] % 32:
                                    require ext_code.size(address(_2139))
                                    call address(_2139).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1958, 0, address(this.address), 128, mem[_2187 + 164 len mem[_2187] + 32]
                                else:
                                    mem[floor32(mem[_2187]) + _2187 + 196] = mem[floor32(mem[_2187]) + _2187 + -(mem[_2187] % 32) + 228 len mem[_2187] % 32]
                                    require ext_code.size(address(_2139))
                                    call address(_2139).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1958, 0, address(this.address), 128, mem[_2187], mem[_2187 + 196 len floor32(mem[_2187]) + 32]
                        else:
                            require idx + 1 < mem[ceil32(arg1.length) + 128]
                            _1985 = mem[(32 * idx + 1) + ceil32(arg1.length) + 160]
                            if mem[(32 * idx) + _4 + 63 len 1] >= 2:
                                if mem[(32 * idx) + _4 + 63 len 1] != 2:
                                    _1941 = mem[ceil32(arg1.length) + 128]
                                    idx = idx + 1
                                    s = s
                                    t = mem[(32 * idx) + _4 + 32]
                                    continue 
                                require idx < mem[_637]
                                require idx + 1 < mem[_637]
                                _1941 = mem[ceil32(arg1.length) + 128]
                                idx = idx + 1
                                s = mem[(32 * idx) + _637 + 32]
                                t = mem[(32 * idx) + _4 + 32]
                                continue 
                            require idx < mem[_5]
                            if Mask(1, 7, mem[(32 * idx) + _5 + 32]):
                                if mem[(32 * idx) + _4 + 63 len 1]:
                                    if mem[(32 * idx) + _4 + 63 len 1] != 1:
                                        _1941 = mem[ceil32(arg1.length) + 128]
                                        idx = idx + 1
                                        s = 0
                                        t = mem[(32 * idx) + _4 + 32]
                                        continue 
                                    require idx < mem[ceil32(arg1.length) + 128]
                                    _2230 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _1958
                                    mem[mem[64] + 68] = address(_1985)
                                    require ext_code.size(address(_2230))
                                    call address(_2230).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                         gas gas_remaining wei
                                        args 0, _1958, address(_1985)
                                else:
                                    require idx < mem[ceil32(arg1.length) + 128]
                                    _2177 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                    _2233 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2233 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2233 + 36] = 0
                                    mem[_2233 + 68] = _1958
                                    mem[_2233 + 100] = address(_1985)
                                    mem[_2233 + 132] = 128
                                    mem[_2233 + 164] = mem[_2233]
                                    s = 0
                                    while s < mem[_2233]:
                                        mem[_2233 + s + 196] = mem[_2233 + s + 32]
                                        _1941 = mem[ceil32(arg1.length) + 128]
                                        s = s + 32
                                        continue 
                                    if not mem[_2233] % 32:
                                        require ext_code.size(address(_2177))
                                        call address(_2177).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _1958, address(_1985), 128, mem[_2233 + 164 len mem[_2233] + 32]
                                    else:
                                        mem[floor32(mem[_2233]) + _2233 + 196] = mem[floor32(mem[_2233]) + _2233 + -(mem[_2233] % 32) + 228 len mem[_2233] % 32]
                                        require ext_code.size(address(_2177))
                                        call address(_2177).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _1958, address(_1985), 128, mem[_2233], mem[_2233 + 196 len floor32(mem[_2233]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1941 = mem[ceil32(arg1.length) + 128]
                                idx = idx + 1
                                s = 0
                                t = _1950
                                continue 
                            if mem[(32 * idx) + _4 + 63 len 1]:
                                if mem[(32 * idx) + _4 + 63 len 1] != 1:
                                    _1941 = mem[ceil32(arg1.length) + 128]
                                    idx = idx + 1
                                    s = mem[(32 * idx + 1) + _637 + 32]
                                    t = mem[(32 * idx) + _4 + 32]
                                    continue 
                                require idx < mem[ceil32(arg1.length) + 128]
                                _2234 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1958
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = address(_1985)
                                require ext_code.size(address(_2234))
                                call address(_2234).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _1958, 0, address(_1985)
                            else:
                                require idx < mem[ceil32(arg1.length) + 128]
                                _2179 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                _2237 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2237 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_2237 + 36] = _1958
                                mem[_2237 + 68] = 0
                                mem[_2237 + 100] = address(_1985)
                                mem[_2237 + 132] = 128
                                mem[_2237 + 164] = mem[_2237]
                                s = 0
                                while s < mem[_2237]:
                                    mem[_2237 + s + 196] = mem[_2237 + s + 32]
                                    _1941 = mem[ceil32(arg1.length) + 128]
                                    s = s + 32
                                    continue 
                                if not mem[_2237] % 32:
                                    require ext_code.size(address(_2179))
                                    call address(_2179).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1958, 0, address(_1985), 128, mem[_2237 + 164 len mem[_2237] + 32]
                                else:
                                    mem[floor32(mem[_2237]) + _2237 + 196] = mem[floor32(mem[_2237]) + _2237 + -(mem[_2237] % 32) + 228 len mem[_2237] % 32]
                                    require ext_code.size(address(_2179))
                                    call address(_2179).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1958, 0, address(_1985), 128, mem[_2237], mem[_2237 + 196 len floor32(mem[_2237]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1941 = mem[ceil32(arg1.length) + 128]
                    idx = idx + 1
                    s = _1958
                    t = _1950
                    continue 
    else:
        mem[_637 + 32 len 32 * _636 + 1] = call.data[calldata.size len 32 * _636 + 1]
        require 0 < mem[_637]
        mem[_637 + 32] = Mask(112, 0, _630)
        _1255 = mem[ceil32(arg1.length) + 128]
        idx = 0
        s = 15
        while uint8(idx) < _1255:
            require uint8(idx) < mem[_4]
            if mem[(32 * uint8(idx)) + _4 + 63 len 1] < 2:
                require uint8(idx) < mem[_5]
                _1273 = mem[(32 * uint8(idx)) + _5 + 32]
                require uint8(idx) < mem[ceil32(arg1.length) + 128]
                _1285 = mem[(32 * uint8(idx)) + ceil32(arg1.length) + 160]
                mem[2816] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                staticcall _1285.getReserves() with:
                        gas gas_remaining wei
                mem[3072 len 64] = ext_call.return_data[0 len 64]
                require uint8(idx) < mem[_4]
                if Mask(1, 7, _1273):
                    if mem[(32 * uint8(idx)) + _4 + 63 len 1]:
                        require uint8(idx) < mem[_634]
                        require uint8(idx) < mem[_637]
                        require uint8(idx + 1) < mem[_637]
                        mem[(32 * uint8(idx + 1)) + _637 + 32] = (10000 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000 * ext_call.return_data[32]) - (5 * _1273 % 128 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000 * ext_call.return_data[32]) / (10000 * ext_call.return_data[0]) + (10000 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000) - (5 * _1273 % 128 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000)
                        _1255 = mem[ceil32(arg1.length) + 128]
                        idx = idx + 1
                        s = s
                        continue 
                    if s != 15:
                        if uint8(idx) != mem[ceil32(arg1.length) + 128] - 1:
                            require uint8(idx) < mem[_634]
                            require uint8(idx) < mem[_637]
                            require uint8(idx + 1) < mem[_637]
                            mem[(32 * uint8(idx + 1)) + _637 + 32] = (10000 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000 * ext_call.return_data[32]) - (5 * _1273 % 128 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000 * ext_call.return_data[32]) / (10000 * ext_call.return_data[0]) + (10000 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000) - (5 * _1273 % 128 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000)
                            _1255 = mem[ceil32(arg1.length) + 128]
                            idx = idx + 1
                            s = s
                            continue 
                    require uint8(idx + 1) < mem[_634]
                    require uint8(idx) < mem[_634]
                    require uint8(idx) < mem[_637]
                    require uint8(idx + 1) < mem[_637]
                    mem[(32 * uint8(idx + 1)) + _637 + 32] = (10000 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000 * ext_call.return_data[32]) - (5 * _1273 % 128 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000 * ext_call.return_data[32]) / (10000 * ext_call.return_data[0]) + (10000 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000) - (5 * _1273 % 128 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000)
                    if mem[(32 * uint8(idx + 1)) + _634 + 32]:
                        _1255 = mem[ceil32(arg1.length) + 128]
                        idx = idx + 1
                        s = s
                        continue 
                else:
                    if mem[(32 * uint8(idx)) + _4 + 63 len 1]:
                        require uint8(idx) < mem[_634]
                        require uint8(idx) < mem[_637]
                        require uint8(idx + 1) < mem[_637]
                        mem[(32 * uint8(idx + 1)) + _637 + 32] = (10000 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000 * ext_call.return_data[0]) - (5 * _1273 % 128 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000 * ext_call.return_data[0]) / (10000 * ext_call.return_data[32]) + (10000 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000) - (5 * _1273 % 128 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000)
                        _1255 = mem[ceil32(arg1.length) + 128]
                        idx = idx + 1
                        s = s
                        continue 
                    if s != 15:
                        if uint8(idx) != mem[ceil32(arg1.length) + 128] - 1:
                            require uint8(idx) < mem[_634]
                            require uint8(idx) < mem[_637]
                            require uint8(idx + 1) < mem[_637]
                            mem[(32 * uint8(idx + 1)) + _637 + 32] = (10000 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000 * ext_call.return_data[0]) - (5 * _1273 % 128 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000 * ext_call.return_data[0]) / (10000 * ext_call.return_data[32]) + (10000 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000) - (5 * _1273 % 128 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000)
                            _1255 = mem[ceil32(arg1.length) + 128]
                            idx = idx + 1
                            s = s
                            continue 
                    require uint8(idx + 1) < mem[_634]
                    require uint8(idx) < mem[_634]
                    require uint8(idx) < mem[_637]
                    require uint8(idx + 1) < mem[_637]
                    mem[(32 * uint8(idx + 1)) + _637 + 32] = (10000 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000 * ext_call.return_data[0]) - (5 * _1273 % 128 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000 * ext_call.return_data[0]) / (10000 * ext_call.return_data[32]) + (10000 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000) - (5 * _1273 % 128 * (10000 * mem[(32 * uint8(idx)) + _637 + 32]) - (mem[(32 * uint8(idx)) + _634 + 32] * mem[(32 * uint8(idx)) + _637 + 32]) / 10000)
                    if mem[(32 * uint8(idx + 1)) + _634 + 32]:
                        _1255 = mem[ceil32(arg1.length) + 128]
                        idx = idx + 1
                        s = s
                        continue 
                _1255 = mem[ceil32(arg1.length) + 128]
                idx = idx + 1
                s = uint8(idx)
                continue 
            require uint8(idx) < mem[_4]
            if mem[(32 * uint8(idx)) + _4 + 63 len 1] == 2:
                require uint8(idx) < mem[_5]
                _1280 = mem[(32 * uint8(idx)) + _5 + 32]
                require uint8(idx) < mem[ceil32(arg1.length) + 128]
                _1298 = mem[(32 * uint8(idx)) + ceil32(arg1.length) + 160]
                require uint8(idx) < mem[_637]
                _1309 = mem[(32 * uint8(idx)) + _637 + 32]
                mem[mem[64] + 4] = ('signextend', 15, ('mask_shl', 3, 3, -3, ('mem', ('range', ('add', 32, ('mask_shl', 8, 0, 5, ('var', 0)), ('var', '_5')), 32))))
                mem[mem[64] + 36] = ('signextend', 15, ('mask_shl', 3, 0, 0, ('var', '_1280')))
                mem[mem[64] + 68] = _1309
                require ext_code.size(address(_1298))
                if not Mask(1, 6, mem[(32 * uint8(idx)) + _5 + 32]):
                    staticcall address(_1298).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], ('signextend', 15, ('mask_shl', 3, 0, 0, ('var', '_1280'))), _1309
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require uint8(idx + 1) < mem[_637]
                    mem[(32 * uint8(idx + 1)) + _637 + 32] = ext_call.return_data[0]
                else:
                    staticcall address(_1298).get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], ('signextend', 15, ('mask_shl', 3, 0, 0, ('var', '_1280'))), _1309
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 9999 * ext_call.return_data[0] / 9999 != ext_call.return_data[0]:
                        revert with 0, 'ds-math-mul-overflow'
                    require uint8(idx + 1) < mem[_637]
                    mem[(32 * uint8(idx + 1)) + _637 + 32] = 9999 * ext_call.return_data[0] / 10000
            _1255 = mem[ceil32(arg1.length) + 128]
            idx = idx + 1
            s = s
            continue 
        require mem[_637] - 1 < mem[_637]
        if Mask(112, 0, arg3) < mem[(32 * mem[_637] - 1) + _637 + 32]:
            mem[0] = msg.sender
            mem[32] = 1
            require stor1[address(msg.sender)]
            require 0 < mem[_4]
            if mem[_4 + 63 len 1] >= 2:
                _1942 = mem[ceil32(arg1.length) + 128]
                idx = 0
                s = 0
                t = 0
                while idx < _1942:
                    require idx < mem[_4]
                    _1952 = mem[(32 * idx) + _4 + 32]
                    require idx + 1 < mem[_637]
                    _1960 = mem[(32 * idx + 1) + _637 + 32]
                    if idx >= mem[ceil32(arg1.length) + 128] - 1:
                        if mem[(32 * idx) + _4 + 63 len 1] >= 2:
                            if mem[(32 * idx) + _4 + 63 len 1] != 2:
                                _1942 = mem[ceil32(arg1.length) + 128]
                                idx = idx + 1
                                s = s
                                t = mem[(32 * idx) + _4 + 32]
                                continue 
                            require idx < mem[_637]
                            require idx + 1 < mem[_637]
                            _1942 = mem[ceil32(arg1.length) + 128]
                            idx = idx + 1
                            s = mem[(32 * idx) + _637 + 32]
                            t = mem[(32 * idx) + _4 + 32]
                            continue 
                        require idx < mem[_5]
                        if Mask(1, 7, mem[(32 * idx) + _5 + 32]):
                            if mem[(32 * idx) + _4 + 63 len 1]:
                                if mem[(32 * idx) + _4 + 63 len 1] != 1:
                                    _1942 = mem[ceil32(arg1.length) + 128]
                                    idx = idx + 1
                                    s = 0
                                    t = mem[(32 * idx) + _4 + 32]
                                    continue 
                                require idx < mem[ceil32(arg1.length) + 128]
                                _2096 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _1960
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_2096))
                                call address(_2096).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args 0, _1960, this.address
                            else:
                                require idx < mem[ceil32(arg1.length) + 128]
                                _2069 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                _2099 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2099 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_2099 + 36] = 0
                                mem[_2099 + 68] = _1960
                                mem[_2099 + 100] = this.address
                                mem[_2099 + 132] = 128
                                mem[_2099 + 164] = mem[_2099]
                                s = 0
                                while s < mem[_2099]:
                                    mem[_2099 + s + 196] = mem[_2099 + s + 32]
                                    _1942 = mem[ceil32(arg1.length) + 128]
                                    s = s + 32
                                    continue 
                                if not mem[_2099] % 32:
                                    require ext_code.size(address(_2069))
                                    call address(_2069).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1960, address(this.address), 128, mem[_2099 + 164 len mem[_2099] + 32]
                                else:
                                    mem[floor32(mem[_2099]) + _2099 + 196] = mem[floor32(mem[_2099]) + _2099 + -(mem[_2099] % 32) + 228 len mem[_2099] % 32]
                                    require ext_code.size(address(_2069))
                                    call address(_2069).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1960, address(this.address), 128, mem[_2099], mem[_2099 + 196 len floor32(mem[_2099]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1942 = mem[ceil32(arg1.length) + 128]
                            idx = idx + 1
                            s = 0
                            t = _1952
                            continue 
                        if mem[(32 * idx) + _4 + 63 len 1]:
                            if mem[(32 * idx) + _4 + 63 len 1] != 1:
                                _1942 = mem[ceil32(arg1.length) + 128]
                                idx = idx + 1
                                s = mem[(32 * idx + 1) + _637 + 32]
                                t = mem[(32 * idx) + _4 + 32]
                                continue 
                            require idx < mem[ceil32(arg1.length) + 128]
                            _2100 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _1960
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            require ext_code.size(address(_2100))
                            call address(_2100).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                 gas gas_remaining wei
                                args _1960, 0, this.address
                        else:
                            require idx < mem[ceil32(arg1.length) + 128]
                            _2071 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                            _2103 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2103 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2103 + 36] = _1960
                            mem[_2103 + 68] = 0
                            mem[_2103 + 100] = this.address
                            mem[_2103 + 132] = 128
                            mem[_2103 + 164] = mem[_2103]
                            s = 0
                            while s < mem[_2103]:
                                mem[_2103 + s + 196] = mem[_2103 + s + 32]
                                _1942 = mem[ceil32(arg1.length) + 128]
                                s = s + 32
                                continue 
                            if not mem[_2103] % 32:
                                require ext_code.size(address(_2071))
                                call address(_2071).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _1960, 0, address(this.address), 128, mem[_2103 + 164 len mem[_2103] + 32]
                            else:
                                mem[floor32(mem[_2103]) + _2103 + 196] = mem[floor32(mem[_2103]) + _2103 + -(mem[_2103] % 32) + 228 len mem[_2103] % 32]
                                require ext_code.size(address(_2071))
                                call address(_2071).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _1960, 0, address(this.address), 128, mem[_2103], mem[_2103 + 196 len floor32(mem[_2103]) + 32]
                    else:
                        require idx + 1 < mem[_4]
                        if mem[(32 * idx + 1) + _4 + 63 len 1] >= 2:
                            if mem[(32 * idx) + _4 + 63 len 1] >= 2:
                                if mem[(32 * idx) + _4 + 63 len 1] != 2:
                                    _1942 = mem[ceil32(arg1.length) + 128]
                                    idx = idx + 1
                                    s = s
                                    t = mem[(32 * idx) + _4 + 32]
                                    continue 
                                require idx < mem[_637]
                                require idx + 1 < mem[_637]
                                _1942 = mem[ceil32(arg1.length) + 128]
                                idx = idx + 1
                                s = mem[(32 * idx) + _637 + 32]
                                t = mem[(32 * idx) + _4 + 32]
                                continue 
                            require idx < mem[_5]
                            if Mask(1, 7, mem[(32 * idx) + _5 + 32]):
                                if mem[(32 * idx) + _4 + 63 len 1]:
                                    if mem[(32 * idx) + _4 + 63 len 1] != 1:
                                        _1942 = mem[ceil32(arg1.length) + 128]
                                        idx = idx + 1
                                        s = 0
                                        t = mem[(32 * idx) + _4 + 32]
                                        continue 
                                    require idx < mem[ceil32(arg1.length) + 128]
                                    _2192 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _1960
                                    mem[mem[64] + 68] = this.address
                                    require ext_code.size(address(_2192))
                                    call address(_2192).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                         gas gas_remaining wei
                                        args 0, _1960, this.address
                                else:
                                    require idx < mem[ceil32(arg1.length) + 128]
                                    _2149 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                    _2195 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2195 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2195 + 36] = 0
                                    mem[_2195 + 68] = _1960
                                    mem[_2195 + 100] = this.address
                                    mem[_2195 + 132] = 128
                                    mem[_2195 + 164] = mem[_2195]
                                    s = 0
                                    while s < mem[_2195]:
                                        mem[_2195 + s + 196] = mem[_2195 + s + 32]
                                        _1942 = mem[ceil32(arg1.length) + 128]
                                        s = s + 32
                                        continue 
                                    if not mem[_2195] % 32:
                                        require ext_code.size(address(_2149))
                                        call address(_2149).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _1960, address(this.address), 128, mem[_2195 + 164 len mem[_2195] + 32]
                                    else:
                                        mem[floor32(mem[_2195]) + _2195 + 196] = mem[floor32(mem[_2195]) + _2195 + -(mem[_2195] % 32) + 228 len mem[_2195] % 32]
                                        require ext_code.size(address(_2149))
                                        call address(_2149).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _1960, address(this.address), 128, mem[_2195], mem[_2195 + 196 len floor32(mem[_2195]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1942 = mem[ceil32(arg1.length) + 128]
                                idx = idx + 1
                                s = 0
                                t = _1952
                                continue 
                            if mem[(32 * idx) + _4 + 63 len 1]:
                                if mem[(32 * idx) + _4 + 63 len 1] != 1:
                                    _1942 = mem[ceil32(arg1.length) + 128]
                                    idx = idx + 1
                                    s = mem[(32 * idx + 1) + _637 + 32]
                                    t = mem[(32 * idx) + _4 + 32]
                                    continue 
                                require idx < mem[ceil32(arg1.length) + 128]
                                _2196 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1960
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_2196))
                                call address(_2196).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _1960, 0, this.address
                            else:
                                require idx < mem[ceil32(arg1.length) + 128]
                                _2151 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                _2199 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2199 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_2199 + 36] = _1960
                                mem[_2199 + 68] = 0
                                mem[_2199 + 100] = this.address
                                mem[_2199 + 132] = 128
                                mem[_2199 + 164] = mem[_2199]
                                s = 0
                                while s < mem[_2199]:
                                    mem[_2199 + s + 196] = mem[_2199 + s + 32]
                                    _1942 = mem[ceil32(arg1.length) + 128]
                                    s = s + 32
                                    continue 
                                if not mem[_2199] % 32:
                                    require ext_code.size(address(_2151))
                                    call address(_2151).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1960, 0, address(this.address), 128, mem[_2199 + 164 len mem[_2199] + 32]
                                else:
                                    mem[floor32(mem[_2199]) + _2199 + 196] = mem[floor32(mem[_2199]) + _2199 + -(mem[_2199] % 32) + 228 len mem[_2199] % 32]
                                    require ext_code.size(address(_2151))
                                    call address(_2151).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1960, 0, address(this.address), 128, mem[_2199], mem[_2199 + 196 len floor32(mem[_2199]) + 32]
                        else:
                            require idx + 1 < mem[ceil32(arg1.length) + 128]
                            _1988 = mem[(32 * idx + 1) + ceil32(arg1.length) + 160]
                            if mem[(32 * idx) + _4 + 63 len 1] >= 2:
                                if mem[(32 * idx) + _4 + 63 len 1] != 2:
                                    _1942 = mem[ceil32(arg1.length) + 128]
                                    idx = idx + 1
                                    s = s
                                    t = mem[(32 * idx) + _4 + 32]
                                    continue 
                                require idx < mem[_637]
                                require idx + 1 < mem[_637]
                                _1942 = mem[ceil32(arg1.length) + 128]
                                idx = idx + 1
                                s = mem[(32 * idx) + _637 + 32]
                                t = mem[(32 * idx) + _4 + 32]
                                continue 
                            require idx < mem[_5]
                            if Mask(1, 7, mem[(32 * idx) + _5 + 32]):
                                if mem[(32 * idx) + _4 + 63 len 1]:
                                    if mem[(32 * idx) + _4 + 63 len 1] != 1:
                                        _1942 = mem[ceil32(arg1.length) + 128]
                                        idx = idx + 1
                                        s = 0
                                        t = mem[(32 * idx) + _4 + 32]
                                        continue 
                                    require idx < mem[ceil32(arg1.length) + 128]
                                    _2246 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _1960
                                    mem[mem[64] + 68] = address(_1988)
                                    require ext_code.size(address(_2246))
                                    call address(_2246).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                         gas gas_remaining wei
                                        args 0, _1960, address(_1988)
                                else:
                                    require idx < mem[ceil32(arg1.length) + 128]
                                    _2189 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                    _2249 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2249 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2249 + 36] = 0
                                    mem[_2249 + 68] = _1960
                                    mem[_2249 + 100] = address(_1988)
                                    mem[_2249 + 132] = 128
                                    mem[_2249 + 164] = mem[_2249]
                                    s = 0
                                    while s < mem[_2249]:
                                        mem[_2249 + s + 196] = mem[_2249 + s + 32]
                                        _1942 = mem[ceil32(arg1.length) + 128]
                                        s = s + 32
                                        continue 
                                    if not mem[_2249] % 32:
                                        require ext_code.size(address(_2189))
                                        call address(_2189).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _1960, address(_1988), 128, mem[_2249 + 164 len mem[_2249] + 32]
                                    else:
                                        mem[floor32(mem[_2249]) + _2249 + 196] = mem[floor32(mem[_2249]) + _2249 + -(mem[_2249] % 32) + 228 len mem[_2249] % 32]
                                        require ext_code.size(address(_2189))
                                        call address(_2189).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _1960, address(_1988), 128, mem[_2249], mem[_2249 + 196 len floor32(mem[_2249]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1942 = mem[ceil32(arg1.length) + 128]
                                idx = idx + 1
                                s = 0
                                t = _1952
                                continue 
                            if mem[(32 * idx) + _4 + 63 len 1]:
                                if mem[(32 * idx) + _4 + 63 len 1] != 1:
                                    _1942 = mem[ceil32(arg1.length) + 128]
                                    idx = idx + 1
                                    s = mem[(32 * idx + 1) + _637 + 32]
                                    t = mem[(32 * idx) + _4 + 32]
                                    continue 
                                require idx < mem[ceil32(arg1.length) + 128]
                                _2250 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1960
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = address(_1988)
                                require ext_code.size(address(_2250))
                                call address(_2250).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _1960, 0, address(_1988)
                            else:
                                require idx < mem[ceil32(arg1.length) + 128]
                                _2191 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                _2253 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2253 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_2253 + 36] = _1960
                                mem[_2253 + 68] = 0
                                mem[_2253 + 100] = address(_1988)
                                mem[_2253 + 132] = 128
                                mem[_2253 + 164] = mem[_2253]
                                s = 0
                                while s < mem[_2253]:
                                    mem[_2253 + s + 196] = mem[_2253 + s + 32]
                                    _1942 = mem[ceil32(arg1.length) + 128]
                                    s = s + 32
                                    continue 
                                if not mem[_2253] % 32:
                                    require ext_code.size(address(_2191))
                                    call address(_2191).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1960, 0, address(_1988), 128, mem[_2253 + 164 len mem[_2253] + 32]
                                else:
                                    mem[floor32(mem[_2253]) + _2253 + 196] = mem[floor32(mem[_2253]) + _2253 + -(mem[_2253] % 32) + 228 len mem[_2253] % 32]
                                    require ext_code.size(address(_2191))
                                    call address(_2191).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1960, 0, address(_1988), 128, mem[_2253], mem[_2253 + 196 len floor32(mem[_2253]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1942 = mem[ceil32(arg1.length) + 128]
                    idx = idx + 1
                    s = _1960
                    t = _1952
                    continue 
            else:
                require 0 < mem[ceil32(arg1.length) + 128]
                require 0 < mem[_637]
                _1317 = mem[_637 + 32]
                mem[mem[64] + 4] = mem[ceil32(arg1.length) + 172 len 20]
                mem[mem[64] + 36] = _1317
                require ext_code.size(Mask(160, 96, _632) >> 96)
                call Mask(160, 96, _632) >> 96.0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _1317
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _1943 = mem[ceil32(arg1.length) + 128]
                idx = 0
                s = 0
                t = 0
                while idx < _1943:
                    require idx < mem[_4]
                    _1954 = mem[(32 * idx) + _4 + 32]
                    require idx + 1 < mem[_637]
                    _1962 = mem[(32 * idx + 1) + _637 + 32]
                    if idx >= mem[ceil32(arg1.length) + 128] - 1:
                        if mem[(32 * idx) + _4 + 63 len 1] >= 2:
                            if mem[(32 * idx) + _4 + 63 len 1] != 2:
                                _1943 = mem[ceil32(arg1.length) + 128]
                                idx = idx + 1
                                s = s
                                t = mem[(32 * idx) + _4 + 32]
                                continue 
                            require idx < mem[_637]
                            require idx + 1 < mem[_637]
                            _1943 = mem[ceil32(arg1.length) + 128]
                            idx = idx + 1
                            s = mem[(32 * idx) + _637 + 32]
                            t = mem[(32 * idx) + _4 + 32]
                            continue 
                        require idx < mem[_5]
                        if Mask(1, 7, mem[(32 * idx) + _5 + 32]):
                            if mem[(32 * idx) + _4 + 63 len 1]:
                                if mem[(32 * idx) + _4 + 63 len 1] != 1:
                                    _1943 = mem[ceil32(arg1.length) + 128]
                                    idx = idx + 1
                                    s = 0
                                    t = mem[(32 * idx) + _4 + 32]
                                    continue 
                                require idx < mem[ceil32(arg1.length) + 128]
                                _2106 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _1962
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_2106))
                                call address(_2106).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args 0, _1962, this.address
                            else:
                                require idx < mem[ceil32(arg1.length) + 128]
                                _2073 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                _2109 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2109 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_2109 + 36] = 0
                                mem[_2109 + 68] = _1962
                                mem[_2109 + 100] = this.address
                                mem[_2109 + 132] = 128
                                mem[_2109 + 164] = mem[_2109]
                                s = 0
                                while s < mem[_2109]:
                                    mem[_2109 + s + 196] = mem[_2109 + s + 32]
                                    _1943 = mem[ceil32(arg1.length) + 128]
                                    s = s + 32
                                    continue 
                                if not mem[_2109] % 32:
                                    require ext_code.size(address(_2073))
                                    call address(_2073).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1962, address(this.address), 128, mem[_2109 + 164 len mem[_2109] + 32]
                                else:
                                    mem[floor32(mem[_2109]) + _2109 + 196] = mem[floor32(mem[_2109]) + _2109 + -(mem[_2109] % 32) + 228 len mem[_2109] % 32]
                                    require ext_code.size(address(_2073))
                                    call address(_2073).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1962, address(this.address), 128, mem[_2109], mem[_2109 + 196 len floor32(mem[_2109]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1943 = mem[ceil32(arg1.length) + 128]
                            idx = idx + 1
                            s = 0
                            t = _1954
                            continue 
                        if mem[(32 * idx) + _4 + 63 len 1]:
                            if mem[(32 * idx) + _4 + 63 len 1] != 1:
                                _1943 = mem[ceil32(arg1.length) + 128]
                                idx = idx + 1
                                s = mem[(32 * idx + 1) + _637 + 32]
                                t = mem[(32 * idx) + _4 + 32]
                                continue 
                            require idx < mem[ceil32(arg1.length) + 128]
                            _2110 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _1962
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            require ext_code.size(address(_2110))
                            call address(_2110).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                 gas gas_remaining wei
                                args _1962, 0, this.address
                        else:
                            require idx < mem[ceil32(arg1.length) + 128]
                            _2075 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                            _2113 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2113 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2113 + 36] = _1962
                            mem[_2113 + 68] = 0
                            mem[_2113 + 100] = this.address
                            mem[_2113 + 132] = 128
                            mem[_2113 + 164] = mem[_2113]
                            s = 0
                            while s < mem[_2113]:
                                mem[_2113 + s + 196] = mem[_2113 + s + 32]
                                _1943 = mem[ceil32(arg1.length) + 128]
                                s = s + 32
                                continue 
                            if not mem[_2113] % 32:
                                require ext_code.size(address(_2075))
                                call address(_2075).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _1962, 0, address(this.address), 128, mem[_2113 + 164 len mem[_2113] + 32]
                            else:
                                mem[floor32(mem[_2113]) + _2113 + 196] = mem[floor32(mem[_2113]) + _2113 + -(mem[_2113] % 32) + 228 len mem[_2113] % 32]
                                require ext_code.size(address(_2075))
                                call address(_2075).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _1962, 0, address(this.address), 128, mem[_2113], mem[_2113 + 196 len floor32(mem[_2113]) + 32]
                    else:
                        require idx + 1 < mem[_4]
                        if mem[(32 * idx + 1) + _4 + 63 len 1] >= 2:
                            if mem[(32 * idx) + _4 + 63 len 1] >= 2:
                                if mem[(32 * idx) + _4 + 63 len 1] != 2:
                                    _1943 = mem[ceil32(arg1.length) + 128]
                                    idx = idx + 1
                                    s = s
                                    t = mem[(32 * idx) + _4 + 32]
                                    continue 
                                require idx < mem[_637]
                                require idx + 1 < mem[_637]
                                _1943 = mem[ceil32(arg1.length) + 128]
                                idx = idx + 1
                                s = mem[(32 * idx) + _637 + 32]
                                t = mem[(32 * idx) + _4 + 32]
                                continue 
                            require idx < mem[_5]
                            if Mask(1, 7, mem[(32 * idx) + _5 + 32]):
                                if mem[(32 * idx) + _4 + 63 len 1]:
                                    if mem[(32 * idx) + _4 + 63 len 1] != 1:
                                        _1943 = mem[ceil32(arg1.length) + 128]
                                        idx = idx + 1
                                        s = 0
                                        t = mem[(32 * idx) + _4 + 32]
                                        continue 
                                    require idx < mem[ceil32(arg1.length) + 128]
                                    _2204 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _1962
                                    mem[mem[64] + 68] = this.address
                                    require ext_code.size(address(_2204))
                                    call address(_2204).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                         gas gas_remaining wei
                                        args 0, _1962, this.address
                                else:
                                    require idx < mem[ceil32(arg1.length) + 128]
                                    _2161 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                    _2207 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2207 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2207 + 36] = 0
                                    mem[_2207 + 68] = _1962
                                    mem[_2207 + 100] = this.address
                                    mem[_2207 + 132] = 128
                                    mem[_2207 + 164] = mem[_2207]
                                    s = 0
                                    while s < mem[_2207]:
                                        mem[_2207 + s + 196] = mem[_2207 + s + 32]
                                        _1943 = mem[ceil32(arg1.length) + 128]
                                        s = s + 32
                                        continue 
                                    if not mem[_2207] % 32:
                                        require ext_code.size(address(_2161))
                                        call address(_2161).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _1962, address(this.address), 128, mem[_2207 + 164 len mem[_2207] + 32]
                                    else:
                                        mem[floor32(mem[_2207]) + _2207 + 196] = mem[floor32(mem[_2207]) + _2207 + -(mem[_2207] % 32) + 228 len mem[_2207] % 32]
                                        require ext_code.size(address(_2161))
                                        call address(_2161).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _1962, address(this.address), 128, mem[_2207], mem[_2207 + 196 len floor32(mem[_2207]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1943 = mem[ceil32(arg1.length) + 128]
                                idx = idx + 1
                                s = 0
                                t = _1954
                                continue 
                            if mem[(32 * idx) + _4 + 63 len 1]:
                                if mem[(32 * idx) + _4 + 63 len 1] != 1:
                                    _1943 = mem[ceil32(arg1.length) + 128]
                                    idx = idx + 1
                                    s = mem[(32 * idx + 1) + _637 + 32]
                                    t = mem[(32 * idx) + _4 + 32]
                                    continue 
                                require idx < mem[ceil32(arg1.length) + 128]
                                _2208 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1962
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_2208))
                                call address(_2208).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _1962, 0, this.address
                            else:
                                require idx < mem[ceil32(arg1.length) + 128]
                                _2163 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                _2211 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2211 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_2211 + 36] = _1962
                                mem[_2211 + 68] = 0
                                mem[_2211 + 100] = this.address
                                mem[_2211 + 132] = 128
                                mem[_2211 + 164] = mem[_2211]
                                s = 0
                                while s < mem[_2211]:
                                    mem[_2211 + s + 196] = mem[_2211 + s + 32]
                                    _1943 = mem[ceil32(arg1.length) + 128]
                                    s = s + 32
                                    continue 
                                if not mem[_2211] % 32:
                                    require ext_code.size(address(_2163))
                                    call address(_2163).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1962, 0, address(this.address), 128, mem[_2211 + 164 len mem[_2211] + 32]
                                else:
                                    mem[floor32(mem[_2211]) + _2211 + 196] = mem[floor32(mem[_2211]) + _2211 + -(mem[_2211] % 32) + 228 len mem[_2211] % 32]
                                    require ext_code.size(address(_2163))
                                    call address(_2163).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1962, 0, address(this.address), 128, mem[_2211], mem[_2211 + 196 len floor32(mem[_2211]) + 32]
                        else:
                            require idx + 1 < mem[ceil32(arg1.length) + 128]
                            _1991 = mem[(32 * idx + 1) + ceil32(arg1.length) + 160]
                            if mem[(32 * idx) + _4 + 63 len 1] >= 2:
                                if mem[(32 * idx) + _4 + 63 len 1] != 2:
                                    _1943 = mem[ceil32(arg1.length) + 128]
                                    idx = idx + 1
                                    s = s
                                    t = mem[(32 * idx) + _4 + 32]
                                    continue 
                                require idx < mem[_637]
                                require idx + 1 < mem[_637]
                                _1943 = mem[ceil32(arg1.length) + 128]
                                idx = idx + 1
                                s = mem[(32 * idx) + _637 + 32]
                                t = mem[(32 * idx) + _4 + 32]
                                continue 
                            require idx < mem[_5]
                            if Mask(1, 7, mem[(32 * idx) + _5 + 32]):
                                if mem[(32 * idx) + _4 + 63 len 1]:
                                    if mem[(32 * idx) + _4 + 63 len 1] != 1:
                                        _1943 = mem[ceil32(arg1.length) + 128]
                                        idx = idx + 1
                                        s = 0
                                        t = mem[(32 * idx) + _4 + 32]
                                        continue 
                                    require idx < mem[ceil32(arg1.length) + 128]
                                    _2262 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _1962
                                    mem[mem[64] + 68] = address(_1991)
                                    require ext_code.size(address(_2262))
                                    call address(_2262).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                         gas gas_remaining wei
                                        args 0, _1962, address(_1991)
                                else:
                                    require idx < mem[ceil32(arg1.length) + 128]
                                    _2201 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                    _2265 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2265 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2265 + 36] = 0
                                    mem[_2265 + 68] = _1962
                                    mem[_2265 + 100] = address(_1991)
                                    mem[_2265 + 132] = 128
                                    mem[_2265 + 164] = mem[_2265]
                                    s = 0
                                    while s < mem[_2265]:
                                        mem[_2265 + s + 196] = mem[_2265 + s + 32]
                                        _1943 = mem[ceil32(arg1.length) + 128]
                                        s = s + 32
                                        continue 
                                    if not mem[_2265] % 32:
                                        require ext_code.size(address(_2201))
                                        call address(_2201).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _1962, address(_1991), 128, mem[_2265 + 164 len mem[_2265] + 32]
                                    else:
                                        mem[floor32(mem[_2265]) + _2265 + 196] = mem[floor32(mem[_2265]) + _2265 + -(mem[_2265] % 32) + 228 len mem[_2265] % 32]
                                        require ext_code.size(address(_2201))
                                        call address(_2201).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _1962, address(_1991), 128, mem[_2265], mem[_2265 + 196 len floor32(mem[_2265]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1943 = mem[ceil32(arg1.length) + 128]
                                idx = idx + 1
                                s = 0
                                t = _1954
                                continue 
                            if mem[(32 * idx) + _4 + 63 len 1]:
                                if mem[(32 * idx) + _4 + 63 len 1] != 1:
                                    _1943 = mem[ceil32(arg1.length) + 128]
                                    idx = idx + 1
                                    s = mem[(32 * idx + 1) + _637 + 32]
                                    t = mem[(32 * idx) + _4 + 32]
                                    continue 
                                require idx < mem[ceil32(arg1.length) + 128]
                                _2266 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1962
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = address(_1991)
                                require ext_code.size(address(_2266))
                                call address(_2266).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _1962, 0, address(_1991)
                            else:
                                require idx < mem[ceil32(arg1.length) + 128]
                                _2203 = mem[(32 * idx) + ceil32(arg1.length) + 160]
                                _2269 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2269 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_2269 + 36] = _1962
                                mem[_2269 + 68] = 0
                                mem[_2269 + 100] = address(_1991)
                                mem[_2269 + 132] = 128
                                mem[_2269 + 164] = mem[_2269]
                                s = 0
                                while s < mem[_2269]:
                                    mem[_2269 + s + 196] = mem[_2269 + s + 32]
                                    _1943 = mem[ceil32(arg1.length) + 128]
                                    s = s + 32
                                    continue 
                                if not mem[_2269] % 32:
                                    require ext_code.size(address(_2203))
                                    call address(_2203).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1962, 0, address(_1991), 128, mem[_2269 + 164 len mem[_2269] + 32]
                                else:
                                    mem[floor32(mem[_2269]) + _2269 + 196] = mem[floor32(mem[_2269]) + _2269 + -(mem[_2269] % 32) + 228 len mem[_2269] % 32]
                                    require ext_code.size(address(_2203))
                                    call address(_2203).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _1962, 0, address(_1991), 128, mem[_2269], mem[_2269 + 196 len floor32(mem[_2269]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1943 = mem[ceil32(arg1.length) + 128]
                    idx = idx + 1
                    s = _1962
                    t = _1954
                    continue 
}

function externalFlashCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[96] = arg4.length
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    require arg4.length >= 192
    _3 = mem[128]
    require mem[128] <= 4294967296
    require mem[128] + 64 <= arg4.length + 32
    require mem[mem[128] + 128] <= 4294967296 and mem[128] + (32 * mem[mem[128] + 128]) + 64 <= arg4.length + 32
    mem[ceil32(arg4.length) + 128] = mem[mem[128] + 128]
    _6 = mem[_3 + 128]
    mem[ceil32(arg4.length) + 160 len floor32(mem[_3 + 128])] = mem[_3 + 160 len floor32(mem[_3 + 128])]
    _1561 = mem[160]
    require mem[160] <= 4294967296
    require mem[160] + 64 <= arg4.length + 32
    require mem[mem[160] + 128] <= 4294967296 and mem[160] + (32 * mem[mem[160] + 128]) + 64 <= arg4.length + 32
    mem[(32 * _6) + ceil32(arg4.length) + 160] = mem[mem[160] + 128]
    _1565 = mem[_1561 + 128]
    mem[(32 * _6) + ceil32(arg4.length) + 192 len floor32(mem[_1561 + 128])] = mem[_1561 + 160 len floor32(mem[_1561 + 128])]
    _3115 = mem[192]
    require mem[192] <= 4294967296
    require mem[192] + 64 <= arg4.length + 32
    require mem[mem[192] + 128] <= 4294967296 and mem[192] + (32 * mem[mem[192] + 128]) + 64 <= arg4.length + 32
    mem[(32 * _1565) + (32 * _6) + ceil32(arg4.length) + 192] = mem[mem[192] + 128]
    _3119 = mem[_3115 + 128]
    mem[(32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224 len floor32(mem[_3115 + 128])] = mem[_3115 + 160 len floor32(mem[_3115 + 128])]
    _4664 = mem[224]
    require mem[224] <= 4294967296
    require mem[224] + 64 <= arg4.length + 32
    require mem[mem[224] + 128] <= 4294967296 and mem[224] + (32 * mem[mem[224] + 128]) + 64 <= arg4.length + 32
    mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224] = mem[mem[224] + 128]
    _4668 = mem[_4664 + 128]
    mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256 len floor32(mem[_4664 + 128])] = mem[_4664 + 160 len floor32(mem[_4664 + 128])]
    _6208 = mem[256]
    _6209 = mem[288]
    require mem[288] <= 4294967296
    require mem[288] + 64 <= arg4.length + 32
    require mem[mem[288] + 128] <= 4294967296 and mem[288] + (32 * mem[mem[288] + 128]) + 64 <= arg4.length + 32
    mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256] = mem[mem[288] + 128]
    _6213 = mem[_6209 + 128]
    mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288 len floor32(mem[_6209 + 128])] = mem[_6209 + 160 len floor32(mem[_6209 + 128])]
    mem[64] = (32 * _6213) + (32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288
    require Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
    require uint8(_6208 + 1) % Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] < mem[(32 * _6) + ceil32(arg4.length) + 160]
    if mem[(32 * uint8(_6208 + 1) % Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + (32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
        _7752 = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
        idx = 1
        s = 0
        t = 0
        u = 0
        u = 0
        u = 0
        while uint8(idx) < _7752:
            require _7752
            require uint8(_6208 + idx) % _7752 < mem[(32 * _6) + ceil32(arg4.length) + 160]
            _9283 = mem[(32 * uint8(_6208 + idx) % _7752) + (32 * _6) + ceil32(arg4.length) + 192]
            if uint8(_6208 + idx) % _7752 >= _7752 - 1:
                if mem[(32 * uint8(_6208 + idx) % _7752) + (32 * _6) + ceil32(arg4.length) + 223 len 1] < 2:
                    require uint8(_6208 + idx) % _7752 < mem[(32 * _1565) + (32 * _6) + ceil32(arg4.length) + 192]
                    _9293 = mem[(32 * uint8(_6208 + idx) % _7752) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                    require (uint8(_6208 + idx) % _7752) + 1 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                    if Mask(1, 7, mem[(32 * uint8(_6208 + idx) % _7752) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]):
                        _9320 = mem[(32 * (uint8(_6208 + idx) % _7752) + 1) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                        if mem[(32 * uint8(_6208 + idx) % _7752) + (32 * _6) + ceil32(arg4.length) + 223 len 1]:
                            if mem[(32 * uint8(_6208 + idx) % _7752) + (32 * _6) + ceil32(arg4.length) + 223 len 1] != 1:
                                if uint8(_6208) == _7752 - 1:
                                    idx = idx + 1
                                    s = Mask(1, 7, mem[(32 * uint8(_6208 + idx) % _7752) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224])
                                    t = 0
                                    u = this.address
                                    u = uint8(_6208 + idx) % _7752
                                    u = mem[(32 * uint8(_6208 + idx) % _7752) + (32 * _6) + ceil32(arg4.length) + 192]
                                    continue 
                                if uint8(_6208 + idx) % _7752 != _7752 - 1:
                                    idx = idx + 1
                                    s = Mask(1, 7, mem[(32 * uint8(_6208 + idx) % _7752) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224])
                                    t = 0
                                    u = this.address
                                    u = uint8(_6208 + idx) % _7752
                                    u = mem[(32 * uint8(_6208 + idx) % _7752) + (32 * _6) + ceil32(arg4.length) + 192]
                                    continue 
                                require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                                if mem[(32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                                    idx = idx + 1
                                    s = Mask(1, 7, mem[(32 * uint8(_6208 + idx) % _7752) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224])
                                    t = 0
                                    u = this.address
                                    u = uint8(_6208 + idx) % _7752
                                    u = mem[(32 * uint8(_6208 + idx) % _7752) + (32 * _6) + ceil32(arg4.length) + 192]
                                    continue 
                                require 0 < mem[ceil32(arg4.length) + 128]
                                _9662 = mem[ceil32(arg4.length) + 160]
                                require 0 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                                _9702 = mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                                require 0 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                                _9732 = mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                                mem[mem[64] + 4] = mem[ceil32(arg4.length) + 172 len 20]
                                mem[mem[64] + 36] = _9702
                                require ext_code.size(address(_9732))
                                call address(_9732).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], _9702
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                idx = idx + 1
                                s = Mask(1, 7, _9293)
                                t = _9702
                                u = _9662
                                u = uint8(_6208 + idx) % _7752
                                u = _9283
                                continue 
                            require uint8(_6208 + idx) % _7752 < mem[ceil32(arg4.length) + 128]
                            _9385 = mem[(32 * uint8(_6208 + idx) % _7752) + ceil32(arg4.length) + 160]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _9320
                            mem[mem[64] + 68] = this.address
                            require ext_code.size(address(_9385))
                            call address(_9385).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                 gas gas_remaining wei
                                args 0, _9320, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if uint8(_6208) == _7752 - 1:
                                idx = idx + 1
                                s = Mask(1, 7, _9293)
                                t = 0
                                u = this.address
                                u = uint8(_6208 + idx) % _7752
                                u = _9283
                                continue 
                            if uint8(_6208 + idx) % _7752 != _7752 - 1:
                                idx = idx + 1
                                s = Mask(1, 7, _9293)
                                t = 0
                                u = this.address
                                u = uint8(_6208 + idx) % _7752
                                u = _9283
                                continue 
                            require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                            if mem[(32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                                idx = idx + 1
                                s = Mask(1, 7, _9293)
                                t = 0
                                u = this.address
                                u = uint8(_6208 + idx) % _7752
                                u = _9283
                                continue 
                            require 0 < mem[ceil32(arg4.length) + 128]
                            _9797 = mem[ceil32(arg4.length) + 160]
                            require 0 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                            _9841 = mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                            require 0 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                            _9886 = mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                            mem[mem[64] + 4] = mem[ceil32(arg4.length) + 172 len 20]
                            mem[mem[64] + 36] = _9841
                            require ext_code.size(address(_9886))
                            call address(_9886).0xa9059cbb with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], _9841
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            s = Mask(1, 7, _9293)
                            t = _9841
                            u = _9797
                            u = uint8(_6208 + idx) % _7752
                            u = _9283
                            continue 
                        require uint8(_6208 + idx) % _7752 < mem[ceil32(arg4.length) + 128]
                        _9360 = mem[(32 * uint8(_6208 + idx) % _7752) + ceil32(arg4.length) + 160]
                        _9388 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_9388 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_9388 + 36] = 0
                        mem[_9388 + 68] = _9320
                        mem[_9388 + 100] = this.address
                        mem[_9388 + 132] = 128
                        mem[_9388 + 164] = mem[_9388]
                        s = 0
                        while s < mem[_9388]:
                            mem[_9388 + s + 196] = mem[_9388 + s + 32]
                            s = s + 32
                            continue 
                        if not mem[_9388] % 32:
                            require ext_code.size(address(_9360))
                            call address(_9360).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _9320, address(this.address), 128, mem[_9388 + 164 len mem[_9388] + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if uint8(_6208) == _7752 - 1:
                                idx = idx + 1
                                s = Mask(1, 7, _9293)
                                t = 0
                                u = this.address
                                u = uint8(_6208 + idx) % _7752
                                u = _9283
                                continue 
                            if uint8(_6208 + idx) % _7752 != _7752 - 1:
                                idx = idx + 1
                                s = Mask(1, 7, _9293)
                                t = 0
                                u = this.address
                                u = uint8(_6208 + idx) % _7752
                                u = _9283
                                continue 
                            require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                            if mem[(32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                                idx = idx + 1
                                s = Mask(1, 7, _9293)
                                t = 0
                                u = this.address
                                u = uint8(_6208 + idx) % _7752
                                u = _9283
                                continue 
                            require 0 < mem[ceil32(arg4.length) + 128]
                            _10902 = mem[ceil32(arg4.length) + 160]
                            require 0 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                            _10938 = mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                            require 0 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                            _10986 = mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                            mem[_9388 + 36] = mem[ceil32(arg4.length) + 172 len 20]
                            mem[_9388 + 68] = _10938
                            require ext_code.size(address(_10986))
                            call address(_10986).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(_10902), _10938
                            mem[_9388 + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            s = Mask(1, 7, _9293)
                            t = _10938
                            u = _10902
                            u = uint8(_6208 + idx) % _7752
                            u = _9283
                            continue 
                        mem[floor32(mem[_9388]) + _9388 + 196] = mem[floor32(mem[_9388]) + _9388 + -(mem[_9388] % 32) + 228 len mem[_9388] % 32]
                        require ext_code.size(address(_9360))
                        call address(_9360).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _9320, address(this.address), 128, mem[_9388], mem[_9388 + 196 len floor32(mem[_9388]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if uint8(_6208) == _7752 - 1:
                            idx = idx + 1
                            s = Mask(1, 7, _9293)
                            t = 0
                            u = this.address
                            u = uint8(_6208 + idx) % _7752
                            u = _9283
                            continue 
                        if uint8(_6208 + idx) % _7752 != _7752 - 1:
                            idx = idx + 1
                            s = Mask(1, 7, _9293)
                            t = 0
                            u = this.address
                            u = uint8(_6208 + idx) % _7752
                            u = _9283
                            continue 
                        require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                        if mem[(32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                            idx = idx + 1
                            s = Mask(1, 7, _9293)
                            t = 0
                            u = this.address
                            u = uint8(_6208 + idx) % _7752
                            u = _9283
                            continue 
                        require 0 < mem[ceil32(arg4.length) + 128]
                        _10940 = mem[ceil32(arg4.length) + 160]
                        require 0 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                        _10989 = mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                        require 0 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                        _11046 = mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                        mem[_9388 + 36] = mem[ceil32(arg4.length) + 172 len 20]
                        mem[_9388 + 68] = _10989
                        require ext_code.size(address(_11046))
                        call address(_11046).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(_10940), _10989
                        mem[_9388 + 32] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        s = Mask(1, 7, _9293)
                        t = _10989
                        u = _10940
                        u = uint8(_6208 + idx) % _7752
                        u = _9283
                        continue 
                    _9321 = mem[(32 * (uint8(_6208 + idx) % _7752) + 1) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                    if mem[(32 * uint8(_6208 + idx) % _7752) + (32 * _6) + ceil32(arg4.length) + 223 len 1]:
                        if mem[(32 * uint8(_6208 + idx) % _7752) + (32 * _6) + ceil32(arg4.length) + 223 len 1] != 1:
                            if uint8(_6208) == _7752 - 1:
                                idx = idx + 1
                                s = Mask(1, 7, mem[(32 * uint8(_6208 + idx) % _7752) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224])
                                t = mem[(32 * (uint8(_6208 + idx) % _7752) + 1) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                                u = this.address
                                u = uint8(_6208 + idx) % _7752
                                u = mem[(32 * uint8(_6208 + idx) % _7752) + (32 * _6) + ceil32(arg4.length) + 192]
                                continue 
                            if uint8(_6208 + idx) % _7752 != _7752 - 1:
                                idx = idx + 1
                                s = Mask(1, 7, mem[(32 * uint8(_6208 + idx) % _7752) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224])
                                t = mem[(32 * (uint8(_6208 + idx) % _7752) + 1) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                                u = this.address
                                u = uint8(_6208 + idx) % _7752
                                u = mem[(32 * uint8(_6208 + idx) % _7752) + (32 * _6) + ceil32(arg4.length) + 192]
                                continue 
                            require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                            if mem[(32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                                idx = idx + 1
                                s = Mask(1, 7, mem[(32 * uint8(_6208 + idx) % _7752) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224])
                                t = mem[(32 * (uint8(_6208 + idx) % _7752) + 1) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                                u = this.address
                                u = uint8(_6208 + idx) % _7752
                                u = mem[(32 * uint8(_6208 + idx) % _7752) + (32 * _6) + ceil32(arg4.length) + 192]
                                continue 
                            require 0 < mem[ceil32(arg4.length) + 128]
                            _9665 = mem[ceil32(arg4.length) + 160]
                            require 0 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                            _9705 = mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                            require 0 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                            _9735 = mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                            mem[mem[64] + 4] = mem[ceil32(arg4.length) + 172 len 20]
                            mem[mem[64] + 36] = _9705
                            require ext_code.size(address(_9735))
                            call address(_9735).0xa9059cbb with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], _9705
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            s = Mask(1, 7, _9293)
                            t = _9705
                            u = _9665
                            u = uint8(_6208 + idx) % _7752
                            u = _9283
                            continue 
                        require uint8(_6208 + idx) % _7752 < mem[ceil32(arg4.length) + 128]
                        _9389 = mem[(32 * uint8(_6208 + idx) % _7752) + ceil32(arg4.length) + 160]
                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _9321
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = this.address
                        require ext_code.size(address(_9389))
                        call address(_9389).swap(uint256 arg1, uint256 arg2, address arg3) with:
                             gas gas_remaining wei
                            args _9321, 0, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if uint8(_6208) == _7752 - 1:
                            idx = idx + 1
                            s = Mask(1, 7, _9293)
                            t = _9321
                            u = this.address
                            u = uint8(_6208 + idx) % _7752
                            u = _9283
                            continue 
                        if uint8(_6208 + idx) % _7752 != _7752 - 1:
                            idx = idx + 1
                            s = Mask(1, 7, _9293)
                            t = _9321
                            u = this.address
                            u = uint8(_6208 + idx) % _7752
                            u = _9283
                            continue 
                        require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                        if mem[(32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                            idx = idx + 1
                            s = Mask(1, 7, _9293)
                            t = _9321
                            u = this.address
                            u = uint8(_6208 + idx) % _7752
                            u = _9283
                            continue 
                        require 0 < mem[ceil32(arg4.length) + 128]
                        _9802 = mem[ceil32(arg4.length) + 160]
                        require 0 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                        _9845 = mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                        require 0 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                        _9890 = mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                        mem[mem[64] + 4] = mem[ceil32(arg4.length) + 172 len 20]
                        mem[mem[64] + 36] = _9845
                        require ext_code.size(address(_9890))
                        call address(_9890).0xa9059cbb with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _9845
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        s = Mask(1, 7, _9293)
                        t = _9845
                        u = _9802
                        u = uint8(_6208 + idx) % _7752
                        u = _9283
                        continue 
                    require uint8(_6208 + idx) % _7752 < mem[ceil32(arg4.length) + 128]
                    _9362 = mem[(32 * uint8(_6208 + idx) % _7752) + ceil32(arg4.length) + 160]
                    _9392 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_9392 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_9392 + 36] = _9321
                    mem[_9392 + 68] = 0
                    mem[_9392 + 100] = this.address
                    mem[_9392 + 132] = 128
                    mem[_9392 + 164] = mem[_9392]
                    s = 0
                    while s < mem[_9392]:
                        mem[_9392 + s + 196] = mem[_9392 + s + 32]
                        s = s + 32
                        continue 
                    if not mem[_9392] % 32:
                        require ext_code.size(address(_9362))
                        call address(_9362).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _9321, 0, address(this.address), 128, mem[_9392 + 164 len mem[_9392] + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if uint8(_6208) == _7752 - 1:
                            idx = idx + 1
                            s = Mask(1, 7, _9293)
                            t = _9321
                            u = this.address
                            u = uint8(_6208 + idx) % _7752
                            u = _9283
                            continue 
                        if uint8(_6208 + idx) % _7752 != _7752 - 1:
                            idx = idx + 1
                            s = Mask(1, 7, _9293)
                            t = _9321
                            u = this.address
                            u = uint8(_6208 + idx) % _7752
                            u = _9283
                            continue 
                        require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                        if mem[(32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                            idx = idx + 1
                            s = Mask(1, 7, _9293)
                            t = _9321
                            u = this.address
                            u = uint8(_6208 + idx) % _7752
                            u = _9283
                            continue 
                        require 0 < mem[ceil32(arg4.length) + 128]
                        _10905 = mem[ceil32(arg4.length) + 160]
                        require 0 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                        _10942 = mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                        require 0 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                        _10991 = mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                        mem[_9392 + 36] = mem[ceil32(arg4.length) + 172 len 20]
                        mem[_9392 + 68] = _10942
                        require ext_code.size(address(_10991))
                        call address(_10991).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(_10905), _10942
                        mem[_9392 + 32] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        s = Mask(1, 7, _9293)
                        t = _10942
                        u = _10905
                        u = uint8(_6208 + idx) % _7752
                        u = _9283
                        continue 
                    mem[floor32(mem[_9392]) + _9392 + 196] = mem[floor32(mem[_9392]) + _9392 + -(mem[_9392] % 32) + 228 len mem[_9392] % 32]
                    require ext_code.size(address(_9362))
                    call address(_9362).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _9321, 0, address(this.address), 128, mem[_9392], mem[_9392 + 196 len floor32(mem[_9392]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if uint8(_6208) == _7752 - 1:
                        idx = idx + 1
                        s = Mask(1, 7, _9293)
                        t = _9321
                        u = this.address
                        u = uint8(_6208 + idx) % _7752
                        u = _9283
                        continue 
                    if uint8(_6208 + idx) % _7752 != _7752 - 1:
                        idx = idx + 1
                        s = Mask(1, 7, _9293)
                        t = _9321
                        u = this.address
                        u = uint8(_6208 + idx) % _7752
                        u = _9283
                        continue 
                    require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                    if mem[(32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                        idx = idx + 1
                        s = Mask(1, 7, _9293)
                        t = _9321
                        u = this.address
                        u = uint8(_6208 + idx) % _7752
                        u = _9283
                        continue 
                    require 0 < mem[ceil32(arg4.length) + 128]
                    _10944 = mem[ceil32(arg4.length) + 160]
                    require 0 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                    _10994 = mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                    require 0 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                    _11049 = mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                    mem[_9392 + 36] = mem[ceil32(arg4.length) + 172 len 20]
                    mem[_9392 + 68] = _10994
                    require ext_code.size(address(_11049))
                    call address(_11049).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(_10944), _10994
                    mem[_9392 + 32] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = idx + 1
                    s = Mask(1, 7, _9293)
                    t = _10994
                    u = _10944
                    u = uint8(_6208 + idx) % _7752
                    u = _9283
                    continue 
                if mem[(32 * uint8(_6208 + idx) % _7752) + (32 * _6) + ceil32(arg4.length) + 223 len 1] != 2:
                    if uint8(_6208) == _7752 - 1:
                        idx = idx + 1
                        s = s
                        t = t
                        u = this.address
                        u = uint8(_6208 + idx) % _7752
                        u = mem[(32 * uint8(_6208 + idx) % _7752) + (32 * _6) + ceil32(arg4.length) + 192]
                        continue 
                    if uint8(_6208 + idx) % _7752 != _7752 - 1:
                        idx = idx + 1
                        s = s
                        t = t
                        u = this.address
                        u = uint8(_6208 + idx) % _7752
                        u = mem[(32 * uint8(_6208 + idx) % _7752) + (32 * _6) + ceil32(arg4.length) + 192]
                        continue 
                    require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                    if mem[(32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                        idx = idx + 1
                        s = s
                        t = t
                        u = this.address
                        u = uint8(_6208 + idx) % _7752
                        u = mem[(32 * uint8(_6208 + idx) % _7752) + (32 * _6) + ceil32(arg4.length) + 192]
                        continue 
                    require 0 < mem[ceil32(arg4.length) + 128]
                    _9380 = mem[ceil32(arg4.length) + 160]
                    require 0 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                    _9414 = mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                    require 0 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                    _9444 = mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                    mem[mem[64] + 4] = mem[ceil32(arg4.length) + 172 len 20]
                    mem[mem[64] + 36] = _9414
                    require ext_code.size(address(_9444))
                    call address(_9444).0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], _9414
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = idx + 1
                    s = s
                    t = _9414
                    u = _9380
                    u = uint8(_6208 + idx) % _7752
                    u = _9283
                    continue 
                require uint8(_6208 + idx) % _7752 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                _9296 = mem[(32 * uint8(_6208 + idx) % _7752) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                require (uint8(_6208 + idx) % _7752) + 1 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                _9302 = mem[(32 * (uint8(_6208 + idx) % _7752) + 1) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                require uint8(_6208 + idx) % _7752 < mem[(32 * _1565) + (32 * _6) + ceil32(arg4.length) + 192]
                _9319 = mem[(32 * uint8(_6208 + idx) % _7752) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                require uint8(_6208 + idx) % _7752 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                _9357 = mem[(32 * uint8(_6208 + idx) % _7752) + (32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                require uint8(_6208 + idx) % _7752 < mem[ceil32(arg4.length) + 128]
                mem[mem[64] + 4] = mem[(32 * uint8(_6208 + idx) % _7752) + ceil32(arg4.length) + 172 len 20]
                mem[mem[64] + 36] = _9296
                require ext_code.size(address(_9357))
                call address(_9357).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _9296
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require uint8(_6208 + idx) % _7752 < mem[ceil32(arg4.length) + 128]
                if not Mask(1, 6, _9319):
                    _9555 = mem[(32 * uint8(_6208 + idx) % _7752) + ceil32(arg4.length) + 160]
                    mem[mem[64]] = 0x3df0212400000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = ('signextend', 15, ('mask_shl', 3, 3, -3, ('var', '_9319')))
                    mem[mem[64] + 36] = ('signextend', 15, ('mask_shl', 3, 0, 0, ('var', '_9319')))
                    mem[mem[64] + 68] = _9296
                    mem[mem[64] + 100] = _9302
                    require ext_code.size(address(_9555))
                    call address(_9555).exchange(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
                         gas gas_remaining wei
                        args ('signextend', 15, ('mask_shl', 3, 3, -3, ('var', '_9319'))), ('signextend', 15, ('mask_shl', 3, 0, 0, ('var', '_9319'))), _9296, _9302
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if this.address == this.address:
                        if uint8(_6208) == _7752 - 1:
                            idx = idx + 1
                            s = s
                            t = _9296
                            u = this.address
                            u = uint8(_6208 + idx) % _7752
                            u = _9283
                            continue 
                        if uint8(_6208 + idx) % _7752 != _7752 - 1:
                            idx = idx + 1
                            s = s
                            t = _9296
                            u = this.address
                            u = uint8(_6208 + idx) % _7752
                            u = _9283
                            continue 
                        require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                        if mem[(32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                            idx = idx + 1
                            s = s
                            t = _9296
                            u = this.address
                            u = uint8(_6208 + idx) % _7752
                            u = _9283
                            continue 
                        require 0 < mem[ceil32(arg4.length) + 128]
                        _10230 = mem[ceil32(arg4.length) + 160]
                        require 0 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                        _10298 = mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                        require 0 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                        _10362 = mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                        mem[mem[64] + 4] = mem[ceil32(arg4.length) + 172 len 20]
                        mem[mem[64] + 36] = _10298
                        require ext_code.size(address(_10362))
                        call address(_10362).0xa9059cbb with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _10298
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        s = s
                        t = _10298
                        u = _10230
                        u = uint8(_6208 + idx) % _7752
                        u = _9283
                        continue 
                    if not this.address:
                        if uint8(_6208) == _7752 - 1:
                            idx = idx + 1
                            s = s
                            t = _9296
                            u = this.address
                            u = uint8(_6208 + idx) % _7752
                            u = _9283
                            continue 
                        if uint8(_6208 + idx) % _7752 != _7752 - 1:
                            idx = idx + 1
                            s = s
                            t = _9296
                            u = this.address
                            u = uint8(_6208 + idx) % _7752
                            u = _9283
                            continue 
                        require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                        if mem[(32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                            idx = idx + 1
                            s = s
                            t = _9296
                            u = this.address
                            u = uint8(_6208 + idx) % _7752
                            u = _9283
                            continue 
                        require 0 < mem[ceil32(arg4.length) + 128]
                        _10300 = mem[ceil32(arg4.length) + 160]
                        require 0 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                        _10365 = mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                        require 0 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                        _10422 = mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                        mem[mem[64] + 4] = mem[ceil32(arg4.length) + 172 len 20]
                        mem[mem[64] + 36] = _10365
                        require ext_code.size(address(_10422))
                        call address(_10422).0xa9059cbb with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _10365
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        s = s
                        t = _10365
                        u = _10300
                        u = uint8(_6208 + idx) % _7752
                        u = _9283
                        continue 
                    require mem[ceil32(arg4.length) + 128]
                    require (uint8(_6208 + idx) % _7752) + 1 % mem[ceil32(arg4.length) + 128] < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                    _9834 = mem[(32 * (uint8(_6208 + idx) % _7752) + 1 % mem[ceil32(arg4.length) + 128]) + (32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = _9302
                    require ext_code.size(address(_9834))
                    call address(_9834).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(this.address), _9302
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if uint8(_6208) == _7752 - 1:
                        idx = idx + 1
                        s = s
                        t = _9296
                        u = this.address
                        u = uint8(_6208 + idx) % _7752
                        u = _9283
                        continue 
                    if uint8(_6208 + idx) % _7752 != _7752 - 1:
                        idx = idx + 1
                        s = s
                        t = _9296
                        u = this.address
                        u = uint8(_6208 + idx) % _7752
                        u = _9283
                        continue 
                    require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                    if mem[(32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                        idx = idx + 1
                        s = s
                        t = _9296
                        u = this.address
                        u = uint8(_6208 + idx) % _7752
                        u = _9283
                        continue 
                    require 0 < mem[ceil32(arg4.length) + 128]
                    _10602 = mem[ceil32(arg4.length) + 160]
                    require 0 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                    _10638 = mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                    require 0 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                    _10670 = mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                    mem[mem[64] + 4] = mem[ceil32(arg4.length) + 172 len 20]
                    mem[mem[64] + 36] = _10638
                    require ext_code.size(address(_10670))
                    call address(_10670).0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], _10638
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = idx + 1
                    s = s
                    t = _10638
                    u = _10602
                    u = uint8(_6208 + idx) % _7752
                    u = _9283
                    continue 
                _9558 = mem[(32 * uint8(_6208 + idx) % _7752) + ceil32(arg4.length) + 160]
                mem[mem[64]] = 0xa6417ed600000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = ('signextend', 15, ('mask_shl', 3, 3, -3, ('var', '_9319')))
                mem[mem[64] + 36] = ('signextend', 15, ('mask_shl', 3, 0, 0, ('var', '_9319')))
                mem[mem[64] + 68] = _9296
                mem[mem[64] + 100] = 0
                require ext_code.size(address(_9558))
                call address(_9558).exchange_underlying(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args ('signextend', 15, ('mask_shl', 3, 3, -3, ('var', '_9319'))), ('signextend', 15, ('mask_shl', 3, 0, 0, ('var', '_9319'))), _9296, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if this.address == this.address:
                    if uint8(_6208) == _7752 - 1:
                        idx = idx + 1
                        s = s
                        t = _9296
                        u = this.address
                        u = uint8(_6208 + idx) % _7752
                        u = _9283
                        continue 
                    if uint8(_6208 + idx) % _7752 != _7752 - 1:
                        idx = idx + 1
                        s = s
                        t = _9296
                        u = this.address
                        u = uint8(_6208 + idx) % _7752
                        u = _9283
                        continue 
                    require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                    if mem[(32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                        idx = idx + 1
                        s = s
                        t = _9296
                        u = this.address
                        u = uint8(_6208 + idx) % _7752
                        u = _9283
                        continue 
                    require 0 < mem[ceil32(arg4.length) + 128]
                    _10233 = mem[ceil32(arg4.length) + 160]
                    require 0 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                    _10302 = mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                    require 0 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                    _10367 = mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                    mem[mem[64] + 4] = mem[ceil32(arg4.length) + 172 len 20]
                    mem[mem[64] + 36] = _10302
                    require ext_code.size(address(_10367))
                    call address(_10367).0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], _10302
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = idx + 1
                    s = s
                    t = _10302
                    u = _10233
                    u = uint8(_6208 + idx) % _7752
                    u = _9283
                    continue 
                if not this.address:
                    if uint8(_6208) == _7752 - 1:
                        idx = idx + 1
                        s = s
                        t = _9296
                        u = this.address
                        u = uint8(_6208 + idx) % _7752
                        u = _9283
                        continue 
                    if uint8(_6208 + idx) % _7752 != _7752 - 1:
                        idx = idx + 1
                        s = s
                        t = _9296
                        u = this.address
                        u = uint8(_6208 + idx) % _7752
                        u = _9283
                        continue 
                    require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                    if mem[(32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                        idx = idx + 1
                        s = s
                        t = _9296
                        u = this.address
                        u = uint8(_6208 + idx) % _7752
                        u = _9283
                        continue 
                    require 0 < mem[ceil32(arg4.length) + 128]
                    _10304 = mem[ceil32(arg4.length) + 160]
                    require 0 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                    _10370 = mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                    require 0 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                    _10426 = mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                    mem[mem[64] + 4] = mem[ceil32(arg4.length) + 172 len 20]
                    mem[mem[64] + 36] = _10370
                    require ext_code.size(address(_10426))
                    call address(_10426).0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], _10370
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = idx + 1
                    s = s
                    t = _10370
                    u = _10304
                    u = uint8(_6208 + idx) % _7752
                    u = _9283
                    continue 
                require mem[ceil32(arg4.length) + 128]
                require (uint8(_6208 + idx) % _7752) + 1 % mem[ceil32(arg4.length) + 128] < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                _9837 = mem[(32 * (uint8(_6208 + idx) % _7752) + 1 % mem[ceil32(arg4.length) + 128]) + (32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = _9302
                require ext_code.size(address(_9837))
                call address(_9837).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(this.address), _9302
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if uint8(_6208) == _7752 - 1:
                    idx = idx + 1
                    s = s
                    t = _9296
                    u = this.address
                    u = uint8(_6208 + idx) % _7752
                    u = _9283
                    continue 
                if uint8(_6208 + idx) % _7752 != _7752 - 1:
                    idx = idx + 1
                    s = s
                    t = _9296
                    u = this.address
                    u = uint8(_6208 + idx) % _7752
                    u = _9283
                    continue 
                require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                if mem[(32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                    idx = idx + 1
                    s = s
                    t = _9296
                    u = this.address
                    u = uint8(_6208 + idx) % _7752
                    u = _9283
                    continue 
                require 0 < mem[ceil32(arg4.length) + 128]
                _10604 = mem[ceil32(arg4.length) + 160]
                require 0 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                _10640 = mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                require 0 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                _10673 = mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                mem[mem[64] + 4] = mem[ceil32(arg4.length) + 172 len 20]
                mem[mem[64] + 36] = _10640
                require ext_code.size(address(_10673))
                call address(_10673).0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _10640
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = idx + 1
                s = s
                t = _10640
                u = _10604
                u = uint8(_6208 + idx) % _7752
                u = _9283
                continue 
            require _7752
            require (uint8(_6208 + idx) % _7752) + 1 % _7752 < mem[(32 * _6) + ceil32(arg4.length) + 160]
            if mem[(32 * (uint8(_6208 + idx) % _7752) + 1 % _7752) + (32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                if mem[(32 * uint8(_6208 + idx) % _7752) + (32 * _6) + ceil32(arg4.length) + 223 len 1] < 2:
                    require uint8(_6208 + idx) % _7752 < mem[(32 * _1565) + (32 * _6) + ceil32(arg4.length) + 192]
                    _9312 = mem[(32 * uint8(_6208 + idx) % _7752) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                    require (uint8(_6208 + idx) % _7752) + 1 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                    if Mask(1, 7, mem[(32 * uint8(_6208 + idx) % _7752) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]):
                        _9366 = mem[(32 * (uint8(_6208 + idx) % _7752) + 1) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                        if mem[(32 * uint8(_6208 + idx) % _7752) + (32 * _6) + ceil32(arg4.length) + 223 len 1]:
                            if mem[(32 * uint8(_6208 + idx) % _7752) + (32 * _6) + ceil32(arg4.length) + 223 len 1] != 1:
                                if uint8(_6208) == _7752 - 1:
                                    idx = idx + 1
                                    s = Mask(1, 7, mem[(32 * uint8(_6208 + idx) % _7752) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224])
                                    t = 0
                                    u = this.address
                                    u = uint8(_6208 + idx) % _7752
                                    u = mem[(32 * uint8(_6208 + idx) % _7752) + (32 * _6) + ceil32(arg4.length) + 192]
                                    continue 
                                if uint8(_6208 + idx) % _7752 != _7752 - 1:
                                    idx = idx + 1
                                    s = Mask(1, 7, mem[(32 * uint8(_6208 + idx) % _7752) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224])
                                    t = 0
                                    u = this.address
                                    u = uint8(_6208 + idx) % _7752
                                    u = mem[(32 * uint8(_6208 + idx) % _7752) + (32 * _6) + ceil32(arg4.length) + 192]
                                    continue 
                                require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                                if mem[(32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                                    idx = idx + 1
                                    s = Mask(1, 7, mem[(32 * uint8(_6208 + idx) % _7752) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224])
                                    t = 0
                                    u = this.address
                                    u = uint8(_6208 + idx) % _7752
                                    u = mem[(32 * uint8(_6208 + idx) % _7752) + (32 * _6) + ceil32(arg4.length) + 192]
                                    continue 
                                require 0 < mem[ceil32(arg4.length) + 128]
                                _9776 = mem[ceil32(arg4.length) + 160]
                                require 0 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                                _9808 = mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                                require 0 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                                _9854 = mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                                mem[mem[64] + 4] = mem[ceil32(arg4.length) + 172 len 20]
                                mem[mem[64] + 36] = _9808
                                require ext_code.size(address(_9854))
                                call address(_9854).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], _9808
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                idx = idx + 1
                                s = Mask(1, 7, _9312)
                                t = _9808
                                u = _9776
                                u = uint8(_6208 + idx) % _7752
                                u = _9283
                                continue 
                            require uint8(_6208 + idx) % _7752 < mem[ceil32(arg4.length) + 128]
                            _9479 = mem[(32 * uint8(_6208 + idx) % _7752) + ceil32(arg4.length) + 160]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _9366
                            mem[mem[64] + 68] = this.address
                            require ext_code.size(address(_9479))
                            call address(_9479).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                 gas gas_remaining wei
                                args 0, _9366, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if uint8(_6208) == _7752 - 1:
                                idx = idx + 1
                                s = Mask(1, 7, _9312)
                                t = 0
                                u = this.address
                                u = uint8(_6208 + idx) % _7752
                                u = _9283
                                continue 
                            if uint8(_6208 + idx) % _7752 != _7752 - 1:
                                idx = idx + 1
                                s = Mask(1, 7, _9312)
                                t = 0
                                u = this.address
                                u = uint8(_6208 + idx) % _7752
                                u = _9283
                                continue 
                            require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                            if mem[(32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                                idx = idx + 1
                                s = Mask(1, 7, _9312)
                                t = 0
                                u = this.address
                                u = uint8(_6208 + idx) % _7752
                                u = _9283
                                continue 
                            require 0 < mem[ceil32(arg4.length) + 128]
                            _9943 = mem[ceil32(arg4.length) + 160]
                            require 0 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                            _10005 = mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                            require 0 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                            _10074 = mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                            mem[mem[64] + 4] = mem[ceil32(arg4.length) + 172 len 20]
                            mem[mem[64] + 36] = _10005
                            require ext_code.size(address(_10074))
                            call address(_10074).0xa9059cbb with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], _10005
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            s = Mask(1, 7, _9312)
                            t = _10005
                            u = _9943
                            u = uint8(_6208 + idx) % _7752
                            u = _9283
                            continue 
                        require uint8(_6208 + idx) % _7752 < mem[ceil32(arg4.length) + 128]
                        _9453 = mem[(32 * uint8(_6208 + idx) % _7752) + ceil32(arg4.length) + 160]
                        _9482 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_9482 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_9482 + 36] = 0
                        mem[_9482 + 68] = _9366
                        mem[_9482 + 100] = this.address
                        mem[_9482 + 132] = 128
                        mem[_9482 + 164] = mem[_9482]
                        s = 0
                        while s < mem[_9482]:
                            mem[_9482 + s + 196] = mem[_9482 + s + 32]
                            s = s + 32
                            continue 
                        if not mem[_9482] % 32:
                            require ext_code.size(address(_9453))
                            call address(_9453).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _9366, address(this.address), 128, mem[_9482 + 164 len mem[_9482] + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if uint8(_6208) == _7752 - 1:
                                idx = idx + 1
                                s = Mask(1, 7, _9312)
                                t = 0
                                u = this.address
                                u = uint8(_6208 + idx) % _7752
                                u = _9283
                                continue 
                            if uint8(_6208 + idx) % _7752 != _7752 - 1:
                                idx = idx + 1
                                s = Mask(1, 7, _9312)
                                t = 0
                                u = this.address
                                u = uint8(_6208 + idx) % _7752
                                u = _9283
                                continue 
                            require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                            if mem[(32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                                idx = idx + 1
                                s = Mask(1, 7, _9312)
                                t = 0
                                u = this.address
                                u = uint8(_6208 + idx) % _7752
                                u = _9283
                                continue 
                            require 0 < mem[ceil32(arg4.length) + 128]
                            _10914 = mem[ceil32(arg4.length) + 160]
                            require 0 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                            _10954 = mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                            require 0 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                            _11006 = mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                            mem[_9482 + 36] = mem[ceil32(arg4.length) + 172 len 20]
                            mem[_9482 + 68] = _10954
                            require ext_code.size(address(_11006))
                            call address(_11006).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(_10914), _10954
                            mem[_9482 + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            s = Mask(1, 7, _9312)
                            t = _10954
                            u = _10914
                            u = uint8(_6208 + idx) % _7752
                            u = _9283
                            continue 
                        mem[floor32(mem[_9482]) + _9482 + 196] = mem[floor32(mem[_9482]) + _9482 + -(mem[_9482] % 32) + 228 len mem[_9482] % 32]
                        require ext_code.size(address(_9453))
                        call address(_9453).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _9366, address(this.address), 128, mem[_9482], mem[_9482 + 196 len floor32(mem[_9482]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if uint8(_6208) == _7752 - 1:
                            idx = idx + 1
                            s = Mask(1, 7, _9312)
                            t = 0
                            u = this.address
                            u = uint8(_6208 + idx) % _7752
                            u = _9283
                            continue 
                        if uint8(_6208 + idx) % _7752 != _7752 - 1:
                            idx = idx + 1
                            s = Mask(1, 7, _9312)
                            t = 0
                            u = this.address
                            u = uint8(_6208 + idx) % _7752
                            u = _9283
                            continue 
                        require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                        if mem[(32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                            idx = idx + 1
                            s = Mask(1, 7, _9312)
                            t = 0
                            u = this.address
                            u = uint8(_6208 + idx) % _7752
                            u = _9283
                            continue 
                        require 0 < mem[ceil32(arg4.length) + 128]
                        _10956 = mem[ceil32(arg4.length) + 160]
                        require 0 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                        _11009 = mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                        require 0 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                        _11058 = mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                        mem[_9482 + 36] = mem[ceil32(arg4.length) + 172 len 20]
                        mem[_9482 + 68] = _11009
                        require ext_code.size(address(_11058))
                        call address(_11058).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(_10956), _11009
                        mem[_9482 + 32] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        s = Mask(1, 7, _9312)
                        t = _11009
                        u = _10956
                        u = uint8(_6208 + idx) % _7752
                        u = _9283
                        continue 
                    _9367 = mem[(32 * (uint8(_6208 + idx) % _7752) + 1) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                    if mem[(32 * uint8(_6208 + idx) % _7752) + (32 * _6) + ceil32(arg4.length) + 223 len 1]:
                        if mem[(32 * uint8(_6208 + idx) % _7752) + (32 * _6) + ceil32(arg4.length) + 223 len 1] != 1:
                            if uint8(_6208) == _7752 - 1:
                                idx = idx + 1
                                s = Mask(1, 7, mem[(32 * uint8(_6208 + idx) % _7752) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224])
                                t = mem[(32 * (uint8(_6208 + idx) % _7752) + 1) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                                u = this.address
                                u = uint8(_6208 + idx) % _7752
                                u = mem[(32 * uint8(_6208 + idx) % _7752) + (32 * _6) + ceil32(arg4.length) + 192]
                                continue 
                            if uint8(_6208 + idx) % _7752 != _7752 - 1:
                                idx = idx + 1
                                s = Mask(1, 7, mem[(32 * uint8(_6208 + idx) % _7752) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224])
                                t = mem[(32 * (uint8(_6208 + idx) % _7752) + 1) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                                u = this.address
                                u = uint8(_6208 + idx) % _7752
                                u = mem[(32 * uint8(_6208 + idx) % _7752) + (32 * _6) + ceil32(arg4.length) + 192]
                                continue 
                            require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                            if mem[(32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                                idx = idx + 1
                                s = Mask(1, 7, mem[(32 * uint8(_6208 + idx) % _7752) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224])
                                t = mem[(32 * (uint8(_6208 + idx) % _7752) + 1) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                                u = this.address
                                u = uint8(_6208 + idx) % _7752
                                u = mem[(32 * uint8(_6208 + idx) % _7752) + (32 * _6) + ceil32(arg4.length) + 192]
                                continue 
                            require 0 < mem[ceil32(arg4.length) + 128]
                            _9779 = mem[ceil32(arg4.length) + 160]
                            require 0 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                            _9811 = mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                            require 0 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                            _9857 = mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                            mem[mem[64] + 4] = mem[ceil32(arg4.length) + 172 len 20]
                            mem[mem[64] + 36] = _9811
                            require ext_code.size(address(_9857))
                            call address(_9857).0xa9059cbb with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], _9811
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            s = Mask(1, 7, _9312)
                            t = _9811
                            u = _9779
                            u = uint8(_6208 + idx) % _7752
                            u = _9283
                            continue 
                        require uint8(_6208 + idx) % _7752 < mem[ceil32(arg4.length) + 128]
                        _9483 = mem[(32 * uint8(_6208 + idx) % _7752) + ceil32(arg4.length) + 160]
                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _9367
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = this.address
                        require ext_code.size(address(_9483))
                        call address(_9483).swap(uint256 arg1, uint256 arg2, address arg3) with:
                             gas gas_remaining wei
                            args _9367, 0, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if uint8(_6208) == _7752 - 1:
                            idx = idx + 1
                            s = Mask(1, 7, _9312)
                            t = _9367
                            u = this.address
                            u = uint8(_6208 + idx) % _7752
                            u = _9283
                            continue 
                        if uint8(_6208 + idx) % _7752 != _7752 - 1:
                            idx = idx + 1
                            s = Mask(1, 7, _9312)
                            t = _9367
                            u = this.address
                            u = uint8(_6208 + idx) % _7752
                            u = _9283
                            continue 
                        require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                        if mem[(32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                            idx = idx + 1
                            s = Mask(1, 7, _9312)
                            t = _9367
                            u = this.address
                            u = uint8(_6208 + idx) % _7752
                            u = _9283
                            continue 
                        require 0 < mem[ceil32(arg4.length) + 128]
                        _9948 = mem[ceil32(arg4.length) + 160]
                        require 0 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                        _10009 = mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                        require 0 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                        _10078 = mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                        mem[mem[64] + 4] = mem[ceil32(arg4.length) + 172 len 20]
                        mem[mem[64] + 36] = _10009
                        require ext_code.size(address(_10078))
                        call address(_10078).0xa9059cbb with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _10009
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        s = Mask(1, 7, _9312)
                        t = _10009
                        u = _9948
                        u = uint8(_6208 + idx) % _7752
                        u = _9283
                        continue 
                    require uint8(_6208 + idx) % _7752 < mem[ceil32(arg4.length) + 128]
                    _9455 = mem[(32 * uint8(_6208 + idx) % _7752) + ceil32(arg4.length) + 160]
                    _9486 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_9486 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_9486 + 36] = _9367
                    mem[_9486 + 68] = 0
                    mem[_9486 + 100] = this.address
                    mem[_9486 + 132] = 128
                    mem[_9486 + 164] = mem[_9486]
                    s = 0
                    while s < mem[_9486]:
                        mem[_9486 + s + 196] = mem[_9486 + s + 32]
                        s = s + 32
                        continue 
                    if not mem[_9486] % 32:
                        require ext_code.size(address(_9455))
                        call address(_9455).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _9367, 0, address(this.address), 128, mem[_9486 + 164 len mem[_9486] + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if uint8(_6208) == _7752 - 1:
                            idx = idx + 1
                            s = Mask(1, 7, _9312)
                            t = _9367
                            u = this.address
                            u = uint8(_6208 + idx) % _7752
                            u = _9283
                            continue 
                        if uint8(_6208 + idx) % _7752 != _7752 - 1:
                            idx = idx + 1
                            s = Mask(1, 7, _9312)
                            t = _9367
                            u = this.address
                            u = uint8(_6208 + idx) % _7752
                            u = _9283
                            continue 
                        require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                        if mem[(32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                            idx = idx + 1
                            s = Mask(1, 7, _9312)
                            t = _9367
                            u = this.address
                            u = uint8(_6208 + idx) % _7752
                            u = _9283
                            continue 
                        require 0 < mem[ceil32(arg4.length) + 128]
                        _10917 = mem[ceil32(arg4.length) + 160]
                        require 0 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                        _10958 = mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                        require 0 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                        _11011 = mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                        mem[_9486 + 36] = mem[ceil32(arg4.length) + 172 len 20]
                        mem[_9486 + 68] = _10958
                        require ext_code.size(address(_11011))
                        call address(_11011).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(_10917), _10958
                        mem[_9486 + 32] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        s = Mask(1, 7, _9312)
                        t = _10958
                        u = _10917
                        u = uint8(_6208 + idx) % _7752
                        u = _9283
                        continue 
                    mem[floor32(mem[_9486]) + _9486 + 196] = mem[floor32(mem[_9486]) + _9486 + -(mem[_9486] % 32) + 228 len mem[_9486] % 32]
                    require ext_code.size(address(_9455))
                    call address(_9455).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _9367, 0, address(this.address), 128, mem[_9486], mem[_9486 + 196 len floor32(mem[_9486]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if uint8(_6208) == _7752 - 1:
                        idx = idx + 1
                        s = Mask(1, 7, _9312)
                        t = _9367
                        u = this.address
                        u = uint8(_6208 + idx) % _7752
                        u = _9283
                        continue 
                    if uint8(_6208 + idx) % _7752 != _7752 - 1:
                        idx = idx + 1
                        s = Mask(1, 7, _9312)
                        t = _9367
                        u = this.address
                        u = uint8(_6208 + idx) % _7752
                        u = _9283
                        continue 
                    require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                    if mem[(32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                        idx = idx + 1
                        s = Mask(1, 7, _9312)
                        t = _9367
                        u = this.address
                        u = uint8(_6208 + idx) % _7752
                        u = _9283
                        continue 
                    require 0 < mem[ceil32(arg4.length) + 128]
                    _10960 = mem[ceil32(arg4.length) + 160]
                    require 0 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                    _11014 = mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                    require 0 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                    _11061 = mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                    mem[_9486 + 36] = mem[ceil32(arg4.length) + 172 len 20]
                    mem[_9486 + 68] = _11014
                    require ext_code.size(address(_11061))
                    call address(_11061).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(_10960), _11014
                    mem[_9486 + 32] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = idx + 1
                    s = Mask(1, 7, _9312)
                    t = _11014
                    u = _10960
                    u = uint8(_6208 + idx) % _7752
                    u = _9283
                    continue 
                if mem[(32 * uint8(_6208 + idx) % _7752) + (32 * _6) + ceil32(arg4.length) + 223 len 1] != 2:
                    if uint8(_6208) == _7752 - 1:
                        idx = idx + 1
                        s = s
                        t = t
                        u = this.address
                        u = uint8(_6208 + idx) % _7752
                        u = mem[(32 * uint8(_6208 + idx) % _7752) + (32 * _6) + ceil32(arg4.length) + 192]
                        continue 
                    if uint8(_6208 + idx) % _7752 != _7752 - 1:
                        idx = idx + 1
                        s = s
                        t = t
                        u = this.address
                        u = uint8(_6208 + idx) % _7752
                        u = mem[(32 * uint8(_6208 + idx) % _7752) + (32 * _6) + ceil32(arg4.length) + 192]
                        continue 
                    require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                    if mem[(32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                        idx = idx + 1
                        s = s
                        t = t
                        u = this.address
                        u = uint8(_6208 + idx) % _7752
                        u = mem[(32 * uint8(_6208 + idx) % _7752) + (32 * _6) + ceil32(arg4.length) + 192]
                        continue 
                    require 0 < mem[ceil32(arg4.length) + 128]
                    _9474 = mem[ceil32(arg4.length) + 160]
                    require 0 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                    _9522 = mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                    require 0 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                    _9578 = mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                    mem[mem[64] + 4] = mem[ceil32(arg4.length) + 172 len 20]
                    mem[mem[64] + 36] = _9522
                    require ext_code.size(address(_9578))
                    call address(_9578).0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], _9522
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = idx + 1
                    s = s
                    t = _9522
                    u = _9474
                    u = uint8(_6208 + idx) % _7752
                    u = _9283
                    continue 
                require uint8(_6208 + idx) % _7752 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                _9323 = mem[(32 * uint8(_6208 + idx) % _7752) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                require (uint8(_6208 + idx) % _7752) + 1 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                _9335 = mem[(32 * (uint8(_6208 + idx) % _7752) + 1) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                require uint8(_6208 + idx) % _7752 < mem[(32 * _1565) + (32 * _6) + ceil32(arg4.length) + 192]
                _9365 = mem[(32 * uint8(_6208 + idx) % _7752) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                require uint8(_6208 + idx) % _7752 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                _9450 = mem[(32 * uint8(_6208 + idx) % _7752) + (32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                require uint8(_6208 + idx) % _7752 < mem[ceil32(arg4.length) + 128]
                mem[mem[64] + 4] = mem[(32 * uint8(_6208 + idx) % _7752) + ceil32(arg4.length) + 172 len 20]
                mem[mem[64] + 36] = _9323
                require ext_code.size(address(_9450))
                call address(_9450).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _9323
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require uint8(_6208 + idx) % _7752 < mem[ceil32(arg4.length) + 128]
                if not Mask(1, 6, _9365):
                    _9672 = mem[(32 * uint8(_6208 + idx) % _7752) + ceil32(arg4.length) + 160]
                    mem[mem[64]] = 0x3df0212400000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = ('signextend', 15, ('mask_shl', 3, 3, -3, ('var', '_9365')))
                    mem[mem[64] + 36] = ('signextend', 15, ('mask_shl', 3, 0, 0, ('var', '_9365')))
                    mem[mem[64] + 68] = _9323
                    mem[mem[64] + 100] = _9335
                    require ext_code.size(address(_9672))
                    call address(_9672).exchange(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
                         gas gas_remaining wei
                        args ('signextend', 15, ('mask_shl', 3, 3, -3, ('var', '_9365'))), ('signextend', 15, ('mask_shl', 3, 0, 0, ('var', '_9365'))), _9323, _9335
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if this.address == this.address:
                        if uint8(_6208) == _7752 - 1:
                            idx = idx + 1
                            s = s
                            t = _9323
                            u = this.address
                            u = uint8(_6208 + idx) % _7752
                            u = _9283
                            continue 
                        if uint8(_6208 + idx) % _7752 != _7752 - 1:
                            idx = idx + 1
                            s = s
                            t = _9323
                            u = this.address
                            u = uint8(_6208 + idx) % _7752
                            u = _9283
                            continue 
                        require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                        if mem[(32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                            idx = idx + 1
                            s = s
                            t = _9323
                            u = this.address
                            u = uint8(_6208 + idx) % _7752
                            u = _9283
                            continue 
                        require 0 < mem[ceil32(arg4.length) + 128]
                        _10438 = mem[ceil32(arg4.length) + 160]
                        require 0 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                        _10482 = mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                        require 0 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                        _10524 = mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                        mem[mem[64] + 4] = mem[ceil32(arg4.length) + 172 len 20]
                        mem[mem[64] + 36] = _10482
                        require ext_code.size(address(_10524))
                        call address(_10524).0xa9059cbb with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _10482
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        s = s
                        t = _10482
                        u = _10438
                        u = uint8(_6208 + idx) % _7752
                        u = _9283
                        continue 
                    if not this.address:
                        if uint8(_6208) == _7752 - 1:
                            idx = idx + 1
                            s = s
                            t = _9323
                            u = this.address
                            u = uint8(_6208 + idx) % _7752
                            u = _9283
                            continue 
                        if uint8(_6208 + idx) % _7752 != _7752 - 1:
                            idx = idx + 1
                            s = s
                            t = _9323
                            u = this.address
                            u = uint8(_6208 + idx) % _7752
                            u = _9283
                            continue 
                        require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                        if mem[(32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                            idx = idx + 1
                            s = s
                            t = _9323
                            u = this.address
                            u = uint8(_6208 + idx) % _7752
                            u = _9283
                            continue 
                        require 0 < mem[ceil32(arg4.length) + 128]
                        _10484 = mem[ceil32(arg4.length) + 160]
                        require 0 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                        _10527 = mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                        require 0 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                        _10572 = mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                        mem[mem[64] + 4] = mem[ceil32(arg4.length) + 172 len 20]
                        mem[mem[64] + 36] = _10527
                        require ext_code.size(address(_10572))
                        call address(_10572).0xa9059cbb with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _10527
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        s = s
                        t = _10527
                        u = _10484
                        u = uint8(_6208 + idx) % _7752
                        u = _9283
                        continue 
                    require mem[ceil32(arg4.length) + 128]
                    require (uint8(_6208 + idx) % _7752) + 1 % mem[ceil32(arg4.length) + 128] < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                    _9998 = mem[(32 * (uint8(_6208 + idx) % _7752) + 1 % mem[ceil32(arg4.length) + 128]) + (32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = _9335
                    require ext_code.size(address(_9998))
                    call address(_9998).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(this.address), _9335
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if uint8(_6208) == _7752 - 1:
                        idx = idx + 1
                        s = s
                        t = _9323
                        u = this.address
                        u = uint8(_6208 + idx) % _7752
                        u = _9283
                        continue 
                    if uint8(_6208 + idx) % _7752 != _7752 - 1:
                        idx = idx + 1
                        s = s
                        t = _9323
                        u = this.address
                        u = uint8(_6208 + idx) % _7752
                        u = _9283
                        continue 
                    require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                    if mem[(32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                        idx = idx + 1
                        s = s
                        t = _9323
                        u = this.address
                        u = uint8(_6208 + idx) % _7752
                        u = _9283
                        continue 
                    require 0 < mem[ceil32(arg4.length) + 128]
                    _10702 = mem[ceil32(arg4.length) + 160]
                    require 0 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                    _10720 = mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                    require 0 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                    _10740 = mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                    mem[mem[64] + 4] = mem[ceil32(arg4.length) + 172 len 20]
                    mem[mem[64] + 36] = _10720
                    require ext_code.size(address(_10740))
                    call address(_10740).0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], _10720
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = idx + 1
                    s = s
                    t = _10720
                    u = _10702
                    u = uint8(_6208 + idx) % _7752
                    u = _9283
                    continue 
                _9675 = mem[(32 * uint8(_6208 + idx) % _7752) + ceil32(arg4.length) + 160]
                mem[mem[64]] = 0xa6417ed600000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = ('signextend', 15, ('mask_shl', 3, 3, -3, ('var', '_9365')))
                mem[mem[64] + 36] = ('signextend', 15, ('mask_shl', 3, 0, 0, ('var', '_9365')))
                mem[mem[64] + 68] = _9323
                mem[mem[64] + 100] = 0
                require ext_code.size(address(_9675))
                call address(_9675).exchange_underlying(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args ('signextend', 15, ('mask_shl', 3, 3, -3, ('var', '_9365'))), ('signextend', 15, ('mask_shl', 3, 0, 0, ('var', '_9365'))), _9323, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if this.address == this.address:
                    if uint8(_6208) == _7752 - 1:
                        idx = idx + 1
                        s = s
                        t = _9323
                        u = this.address
                        u = uint8(_6208 + idx) % _7752
                        u = _9283
                        continue 
                    if uint8(_6208 + idx) % _7752 != _7752 - 1:
                        idx = idx + 1
                        s = s
                        t = _9323
                        u = this.address
                        u = uint8(_6208 + idx) % _7752
                        u = _9283
                        continue 
                    require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                    if mem[(32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                        idx = idx + 1
                        s = s
                        t = _9323
                        u = this.address
                        u = uint8(_6208 + idx) % _7752
                        u = _9283
                        continue 
                    require 0 < mem[ceil32(arg4.length) + 128]
                    _10441 = mem[ceil32(arg4.length) + 160]
                    require 0 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                    _10486 = mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                    require 0 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                    _10529 = mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                    mem[mem[64] + 4] = mem[ceil32(arg4.length) + 172 len 20]
                    mem[mem[64] + 36] = _10486
                    require ext_code.size(address(_10529))
                    call address(_10529).0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], _10486
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = idx + 1
                    s = s
                    t = _10486
                    u = _10441
                    u = uint8(_6208 + idx) % _7752
                    u = _9283
                    continue 
                if not this.address:
                    if uint8(_6208) == _7752 - 1:
                        idx = idx + 1
                        s = s
                        t = _9323
                        u = this.address
                        u = uint8(_6208 + idx) % _7752
                        u = _9283
                        continue 
                    if uint8(_6208 + idx) % _7752 != _7752 - 1:
                        idx = idx + 1
                        s = s
                        t = _9323
                        u = this.address
                        u = uint8(_6208 + idx) % _7752
                        u = _9283
                        continue 
                    require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                    if mem[(32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                        idx = idx + 1
                        s = s
                        t = _9323
                        u = this.address
                        u = uint8(_6208 + idx) % _7752
                        u = _9283
                        continue 
                    require 0 < mem[ceil32(arg4.length) + 128]
                    _10488 = mem[ceil32(arg4.length) + 160]
                    require 0 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                    _10532 = mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                    require 0 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                    _10576 = mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                    mem[mem[64] + 4] = mem[ceil32(arg4.length) + 172 len 20]
                    mem[mem[64] + 36] = _10532
                    require ext_code.size(address(_10576))
                    call address(_10576).0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], _10532
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = idx + 1
                    s = s
                    t = _10532
                    u = _10488
                    u = uint8(_6208 + idx) % _7752
                    u = _9283
                    continue 
                require mem[ceil32(arg4.length) + 128]
                require (uint8(_6208 + idx) % _7752) + 1 % mem[ceil32(arg4.length) + 128] < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                _10001 = mem[(32 * (uint8(_6208 + idx) % _7752) + 1 % mem[ceil32(arg4.length) + 128]) + (32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = _9335
                require ext_code.size(address(_10001))
                call address(_10001).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(this.address), _9335
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if uint8(_6208) == _7752 - 1:
                    idx = idx + 1
                    s = s
                    t = _9323
                    u = this.address
                    u = uint8(_6208 + idx) % _7752
                    u = _9283
                    continue 
                if uint8(_6208 + idx) % _7752 != _7752 - 1:
                    idx = idx + 1
                    s = s
                    t = _9323
                    u = this.address
                    u = uint8(_6208 + idx) % _7752
                    u = _9283
                    continue 
                require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                if mem[(32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                    idx = idx + 1
                    s = s
                    t = _9323
                    u = this.address
                    u = uint8(_6208 + idx) % _7752
                    u = _9283
                    continue 
                require 0 < mem[ceil32(arg4.length) + 128]
                _10704 = mem[ceil32(arg4.length) + 160]
                require 0 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                _10722 = mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                require 0 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                _10743 = mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                mem[mem[64] + 4] = mem[ceil32(arg4.length) + 172 len 20]
                mem[mem[64] + 36] = _10722
                require ext_code.size(address(_10743))
                call address(_10743).0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _10722
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = idx + 1
                s = s
                t = _10722
                u = _10704
                u = uint8(_6208 + idx) % _7752
                u = _9283
                continue 
            require _7752
            require (uint8(_6208 + idx) % _7752) + 1 % _7752 < mem[ceil32(arg4.length) + 128]
            _9303 = mem[(32 * (uint8(_6208 + idx) % _7752) + 1 % _7752) + ceil32(arg4.length) + 160]
            if mem[(32 * uint8(_6208 + idx) % _7752) + (32 * _6) + ceil32(arg4.length) + 223 len 1] < 2:
                require uint8(_6208 + idx) % _7752 < mem[(32 * _1565) + (32 * _6) + ceil32(arg4.length) + 192]
                _9334 = mem[(32 * uint8(_6208 + idx) % _7752) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                require (uint8(_6208 + idx) % _7752) + 1 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                if Mask(1, 7, mem[(32 * uint8(_6208 + idx) % _7752) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]):
                    _9424 = mem[(32 * (uint8(_6208 + idx) % _7752) + 1) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                    if mem[(32 * uint8(_6208 + idx) % _7752) + (32 * _6) + ceil32(arg4.length) + 223 len 1]:
                        if mem[(32 * uint8(_6208 + idx) % _7752) + (32 * _6) + ceil32(arg4.length) + 223 len 1] != 1:
                            if uint8(_6208) == _7752 - 1:
                                idx = idx + 1
                                s = Mask(1, 7, mem[(32 * uint8(_6208 + idx) % _7752) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224])
                                t = 0
                                u = mem[(32 * (uint8(_6208 + idx) % _7752) + 1 % _7752) + ceil32(arg4.length) + 160]
                                u = uint8(_6208 + idx) % _7752
                                u = mem[(32 * uint8(_6208 + idx) % _7752) + (32 * _6) + ceil32(arg4.length) + 192]
                                continue 
                            if uint8(_6208 + idx) % _7752 != _7752 - 1:
                                idx = idx + 1
                                s = Mask(1, 7, mem[(32 * uint8(_6208 + idx) % _7752) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224])
                                t = 0
                                u = mem[(32 * (uint8(_6208 + idx) % _7752) + 1 % _7752) + ceil32(arg4.length) + 160]
                                u = uint8(_6208 + idx) % _7752
                                u = mem[(32 * uint8(_6208 + idx) % _7752) + (32 * _6) + ceil32(arg4.length) + 192]
                                continue 
                            require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                            if mem[(32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                                idx = idx + 1
                                s = Mask(1, 7, mem[(32 * uint8(_6208 + idx) % _7752) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224])
                                t = 0
                                u = mem[(32 * (uint8(_6208 + idx) % _7752) + 1 % _7752) + ceil32(arg4.length) + 160]
                                u = uint8(_6208 + idx) % _7752
                                u = mem[(32 * uint8(_6208 + idx) % _7752) + (32 * _6) + ceil32(arg4.length) + 192]
                                continue 
                            require 0 < mem[ceil32(arg4.length) + 128]
                            _9848 = mem[ceil32(arg4.length) + 160]
                            require 0 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                            _9894 = mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                            require 0 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                            _9934 = mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                            mem[mem[64] + 4] = mem[ceil32(arg4.length) + 172 len 20]
                            mem[mem[64] + 36] = _9894
                            require ext_code.size(address(_9934))
                            call address(_9934).0xa9059cbb with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], _9894
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            s = Mask(1, 7, _9334)
                            t = _9894
                            u = _9848
                            u = uint8(_6208 + idx) % _7752
                            u = _9283
                            continue 
                        require uint8(_6208 + idx) % _7752 < mem[ceil32(arg4.length) + 128]
                        _9570 = mem[(32 * uint8(_6208 + idx) % _7752) + ceil32(arg4.length) + 160]
                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = _9424
                        mem[mem[64] + 68] = address(_9303)
                        require ext_code.size(address(_9570))
                        call address(_9570).swap(uint256 arg1, uint256 arg2, address arg3) with:
                             gas gas_remaining wei
                            args 0, _9424, address(_9303)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if uint8(_6208) == _7752 - 1:
                            idx = idx + 1
                            s = Mask(1, 7, _9334)
                            t = 0
                            u = _9303
                            u = uint8(_6208 + idx) % _7752
                            u = _9283
                            continue 
                        if uint8(_6208 + idx) % _7752 != _7752 - 1:
                            idx = idx + 1
                            s = Mask(1, 7, _9334)
                            t = 0
                            u = _9303
                            u = uint8(_6208 + idx) % _7752
                            u = _9283
                            continue 
                        require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                        if mem[(32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                            idx = idx + 1
                            s = Mask(1, 7, _9334)
                            t = 0
                            u = _9303
                            u = uint8(_6208 + idx) % _7752
                            u = _9283
                            continue 
                        require 0 < mem[ceil32(arg4.length) + 128]
                        _10065 = mem[ceil32(arg4.length) + 160]
                        require 0 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                        _10133 = mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                        require 0 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                        _10182 = mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                        mem[mem[64] + 4] = mem[ceil32(arg4.length) + 172 len 20]
                        mem[mem[64] + 36] = _10133
                        require ext_code.size(address(_10182))
                        call address(_10182).0xa9059cbb with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _10133
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        s = Mask(1, 7, _9334)
                        t = _10133
                        u = _10065
                        u = uint8(_6208 + idx) % _7752
                        u = _9283
                        continue 
                    require uint8(_6208 + idx) % _7752 < mem[ceil32(arg4.length) + 128]
                    _9519 = mem[(32 * uint8(_6208 + idx) % _7752) + ceil32(arg4.length) + 160]
                    _9573 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_9573 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_9573 + 36] = 0
                    mem[_9573 + 68] = _9424
                    mem[_9573 + 100] = address(_9303)
                    mem[_9573 + 132] = 128
                    mem[_9573 + 164] = mem[_9573]
                    s = 0
                    while s < mem[_9573]:
                        mem[_9573 + s + 196] = mem[_9573 + s + 32]
                        s = s + 32
                        continue 
                    if not mem[_9573] % 32:
                        require ext_code.size(address(_9519))
                        call address(_9519).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _9424, address(_9303), 128, mem[_9573 + 164 len mem[_9573] + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if uint8(_6208) == _7752 - 1:
                            idx = idx + 1
                            s = Mask(1, 7, _9334)
                            t = 0
                            u = _9303
                            u = uint8(_6208 + idx) % _7752
                            u = _9283
                            continue 
                        if uint8(_6208 + idx) % _7752 != _7752 - 1:
                            idx = idx + 1
                            s = Mask(1, 7, _9334)
                            t = 0
                            u = _9303
                            u = uint8(_6208 + idx) % _7752
                            u = _9283
                            continue 
                        require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                        if mem[(32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                            idx = idx + 1
                            s = Mask(1, 7, _9334)
                            t = 0
                            u = _9303
                            u = uint8(_6208 + idx) % _7752
                            u = _9283
                            continue 
                        require 0 < mem[ceil32(arg4.length) + 128]
                        _10908 = mem[ceil32(arg4.length) + 160]
                        require 0 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                        _10946 = mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                        require 0 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                        _10996 = mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                        mem[_9573 + 36] = mem[ceil32(arg4.length) + 172 len 20]
                        mem[_9573 + 68] = _10946
                        require ext_code.size(address(_10996))
                        call address(_10996).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(_10908), _10946
                        mem[_9573 + 32] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        s = Mask(1, 7, _9334)
                        t = _10946
                        u = _10908
                        u = uint8(_6208 + idx) % _7752
                        u = _9283
                        continue 
                    mem[floor32(mem[_9573]) + _9573 + 196] = mem[floor32(mem[_9573]) + _9573 + -(mem[_9573] % 32) + 228 len mem[_9573] % 32]
                    require ext_code.size(address(_9519))
                    call address(_9519).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, _9424, address(_9303), 128, mem[_9573], mem[_9573 + 196 len floor32(mem[_9573]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if uint8(_6208) == _7752 - 1:
                        idx = idx + 1
                        s = Mask(1, 7, _9334)
                        t = 0
                        u = _9303
                        u = uint8(_6208 + idx) % _7752
                        u = _9283
                        continue 
                    if uint8(_6208 + idx) % _7752 != _7752 - 1:
                        idx = idx + 1
                        s = Mask(1, 7, _9334)
                        t = 0
                        u = _9303
                        u = uint8(_6208 + idx) % _7752
                        u = _9283
                        continue 
                    require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                    if mem[(32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                        idx = idx + 1
                        s = Mask(1, 7, _9334)
                        t = 0
                        u = _9303
                        u = uint8(_6208 + idx) % _7752
                        u = _9283
                        continue 
                    require 0 < mem[ceil32(arg4.length) + 128]
                    _10948 = mem[ceil32(arg4.length) + 160]
                    require 0 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                    _10999 = mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                    require 0 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                    _11052 = mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                    mem[_9573 + 36] = mem[ceil32(arg4.length) + 172 len 20]
                    mem[_9573 + 68] = _10999
                    require ext_code.size(address(_11052))
                    call address(_11052).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(_10948), _10999
                    mem[_9573 + 32] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = idx + 1
                    s = Mask(1, 7, _9334)
                    t = _10999
                    u = _10948
                    u = uint8(_6208 + idx) % _7752
                    u = _9283
                    continue 
                _9425 = mem[(32 * (uint8(_6208 + idx) % _7752) + 1) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                if mem[(32 * uint8(_6208 + idx) % _7752) + (32 * _6) + ceil32(arg4.length) + 223 len 1]:
                    if mem[(32 * uint8(_6208 + idx) % _7752) + (32 * _6) + ceil32(arg4.length) + 223 len 1] != 1:
                        if uint8(_6208) == _7752 - 1:
                            idx = idx + 1
                            s = Mask(1, 7, mem[(32 * uint8(_6208 + idx) % _7752) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224])
                            t = mem[(32 * (uint8(_6208 + idx) % _7752) + 1) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                            u = mem[(32 * (uint8(_6208 + idx) % _7752) + 1 % _7752) + ceil32(arg4.length) + 160]
                            u = uint8(_6208 + idx) % _7752
                            u = mem[(32 * uint8(_6208 + idx) % _7752) + (32 * _6) + ceil32(arg4.length) + 192]
                            continue 
                        if uint8(_6208 + idx) % _7752 != _7752 - 1:
                            idx = idx + 1
                            s = Mask(1, 7, mem[(32 * uint8(_6208 + idx) % _7752) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224])
                            t = mem[(32 * (uint8(_6208 + idx) % _7752) + 1) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                            u = mem[(32 * (uint8(_6208 + idx) % _7752) + 1 % _7752) + ceil32(arg4.length) + 160]
                            u = uint8(_6208 + idx) % _7752
                            u = mem[(32 * uint8(_6208 + idx) % _7752) + (32 * _6) + ceil32(arg4.length) + 192]
                            continue 
                        require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                        if mem[(32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                            idx = idx + 1
                            s = Mask(1, 7, mem[(32 * uint8(_6208 + idx) % _7752) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224])
                            t = mem[(32 * (uint8(_6208 + idx) % _7752) + 1) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                            u = mem[(32 * (uint8(_6208 + idx) % _7752) + 1 % _7752) + ceil32(arg4.length) + 160]
                            u = uint8(_6208 + idx) % _7752
                            u = mem[(32 * uint8(_6208 + idx) % _7752) + (32 * _6) + ceil32(arg4.length) + 192]
                            continue 
                        require 0 < mem[ceil32(arg4.length) + 128]
                        _9851 = mem[ceil32(arg4.length) + 160]
                        require 0 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                        _9897 = mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                        require 0 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                        _9937 = mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                        mem[mem[64] + 4] = mem[ceil32(arg4.length) + 172 len 20]
                        mem[mem[64] + 36] = _9897
                        require ext_code.size(address(_9937))
                        call address(_9937).0xa9059cbb with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _9897
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        s = Mask(1, 7, _9334)
                        t = _9897
                        u = _9851
                        u = uint8(_6208 + idx) % _7752
                        u = _9283
                        continue 
                    require uint8(_6208 + idx) % _7752 < mem[ceil32(arg4.length) + 128]
                    _9574 = mem[(32 * uint8(_6208 + idx) % _7752) + ceil32(arg4.length) + 160]
                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _9425
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = address(_9303)
                    require ext_code.size(address(_9574))
                    call address(_9574).swap(uint256 arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args _9425, 0, address(_9303)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if uint8(_6208) == _7752 - 1:
                        idx = idx + 1
                        s = Mask(1, 7, _9334)
                        t = _9425
                        u = _9303
                        u = uint8(_6208 + idx) % _7752
                        u = _9283
                        continue 
                    if uint8(_6208 + idx) % _7752 != _7752 - 1:
                        idx = idx + 1
                        s = Mask(1, 7, _9334)
                        t = _9425
                        u = _9303
                        u = uint8(_6208 + idx) % _7752
                        u = _9283
                        continue 
                    require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                    if mem[(32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                        idx = idx + 1
                        s = Mask(1, 7, _9334)
                        t = _9425
                        u = _9303
                        u = uint8(_6208 + idx) % _7752
                        u = _9283
                        continue 
                    require 0 < mem[ceil32(arg4.length) + 128]
                    _10070 = mem[ceil32(arg4.length) + 160]
                    require 0 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                    _10137 = mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                    require 0 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                    _10186 = mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                    mem[mem[64] + 4] = mem[ceil32(arg4.length) + 172 len 20]
                    mem[mem[64] + 36] = _10137
                    require ext_code.size(address(_10186))
                    call address(_10186).0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], _10137
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = idx + 1
                    s = Mask(1, 7, _9334)
                    t = _10137
                    u = _10070
                    u = uint8(_6208 + idx) % _7752
                    u = _9283
                    continue 
                require uint8(_6208 + idx) % _7752 < mem[ceil32(arg4.length) + 128]
                _9521 = mem[(32 * uint8(_6208 + idx) % _7752) + ceil32(arg4.length) + 160]
                _9577 = mem[64]
                mem[64] = mem[64] + 32
                mem[_9577 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_9577 + 36] = _9425
                mem[_9577 + 68] = 0
                mem[_9577 + 100] = address(_9303)
                mem[_9577 + 132] = 128
                mem[_9577 + 164] = mem[_9577]
                s = 0
                while s < mem[_9577]:
                    mem[_9577 + s + 196] = mem[_9577 + s + 32]
                    s = s + 32
                    continue 
                if not mem[_9577] % 32:
                    require ext_code.size(address(_9521))
                    call address(_9521).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _9425, 0, address(_9303), 128, mem[_9577 + 164 len mem[_9577] + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if uint8(_6208) == _7752 - 1:
                        idx = idx + 1
                        s = Mask(1, 7, _9334)
                        t = _9425
                        u = _9303
                        u = uint8(_6208 + idx) % _7752
                        u = _9283
                        continue 
                    if uint8(_6208 + idx) % _7752 != _7752 - 1:
                        idx = idx + 1
                        s = Mask(1, 7, _9334)
                        t = _9425
                        u = _9303
                        u = uint8(_6208 + idx) % _7752
                        u = _9283
                        continue 
                    require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                    if mem[(32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                        idx = idx + 1
                        s = Mask(1, 7, _9334)
                        t = _9425
                        u = _9303
                        u = uint8(_6208 + idx) % _7752
                        u = _9283
                        continue 
                    require 0 < mem[ceil32(arg4.length) + 128]
                    _10911 = mem[ceil32(arg4.length) + 160]
                    require 0 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                    _10950 = mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                    require 0 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                    _11001 = mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                    mem[_9577 + 36] = mem[ceil32(arg4.length) + 172 len 20]
                    mem[_9577 + 68] = _10950
                    require ext_code.size(address(_11001))
                    call address(_11001).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(_10911), _10950
                    mem[_9577 + 32] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = idx + 1
                    s = Mask(1, 7, _9334)
                    t = _10950
                    u = _10911
                    u = uint8(_6208 + idx) % _7752
                    u = _9283
                    continue 
                mem[floor32(mem[_9577]) + _9577 + 196] = mem[floor32(mem[_9577]) + _9577 + -(mem[_9577] % 32) + 228 len mem[_9577] % 32]
                require ext_code.size(address(_9521))
                call address(_9521).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _9425, 0, address(_9303), 128, mem[_9577], mem[_9577 + 196 len floor32(mem[_9577]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if uint8(_6208) == _7752 - 1:
                    idx = idx + 1
                    s = Mask(1, 7, _9334)
                    t = _9425
                    u = _9303
                    u = uint8(_6208 + idx) % _7752
                    u = _9283
                    continue 
                if uint8(_6208 + idx) % _7752 != _7752 - 1:
                    idx = idx + 1
                    s = Mask(1, 7, _9334)
                    t = _9425
                    u = _9303
                    u = uint8(_6208 + idx) % _7752
                    u = _9283
                    continue 
                require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                if mem[(32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                    idx = idx + 1
                    s = Mask(1, 7, _9334)
                    t = _9425
                    u = _9303
                    u = uint8(_6208 + idx) % _7752
                    u = _9283
                    continue 
                require 0 < mem[ceil32(arg4.length) + 128]
                _10952 = mem[ceil32(arg4.length) + 160]
                require 0 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                _11004 = mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                require 0 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                _11055 = mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                mem[_9577 + 36] = mem[ceil32(arg4.length) + 172 len 20]
                mem[_9577 + 68] = _11004
                require ext_code.size(address(_11055))
                call address(_11055).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(_10952), _11004
                mem[_9577 + 32] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = idx + 1
                s = Mask(1, 7, _9334)
                t = _11004
                u = _10952
                u = uint8(_6208 + idx) % _7752
                u = _9283
                continue 
            if mem[(32 * uint8(_6208 + idx) % _7752) + (32 * _6) + ceil32(arg4.length) + 223 len 1] != 2:
                if uint8(_6208) == _7752 - 1:
                    idx = idx + 1
                    s = s
                    t = t
                    u = mem[(32 * (uint8(_6208 + idx) % _7752) + 1 % _7752) + ceil32(arg4.length) + 160]
                    u = uint8(_6208 + idx) % _7752
                    u = mem[(32 * uint8(_6208 + idx) % _7752) + (32 * _6) + ceil32(arg4.length) + 192]
                    continue 
                if uint8(_6208 + idx) % _7752 != _7752 - 1:
                    idx = idx + 1
                    s = s
                    t = t
                    u = mem[(32 * (uint8(_6208 + idx) % _7752) + 1 % _7752) + ceil32(arg4.length) + 160]
                    u = uint8(_6208 + idx) % _7752
                    u = mem[(32 * uint8(_6208 + idx) % _7752) + (32 * _6) + ceil32(arg4.length) + 192]
                    continue 
                require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                if mem[(32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                    idx = idx + 1
                    s = s
                    t = t
                    u = mem[(32 * (uint8(_6208 + idx) % _7752) + 1 % _7752) + ceil32(arg4.length) + 160]
                    u = uint8(_6208 + idx) % _7752
                    u = mem[(32 * uint8(_6208 + idx) % _7752) + (32 * _6) + ceil32(arg4.length) + 192]
                    continue 
                require 0 < mem[ceil32(arg4.length) + 128]
                _9565 = mem[ceil32(arg4.length) + 160]
                require 0 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                _9610 = mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                require 0 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                _9634 = mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                mem[mem[64] + 4] = mem[ceil32(arg4.length) + 172 len 20]
                mem[mem[64] + 36] = _9610
                require ext_code.size(address(_9634))
                call address(_9634).0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _9610
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = idx + 1
                s = s
                t = _9610
                u = _9565
                u = uint8(_6208 + idx) % _7752
                u = _9283
                continue 
            require uint8(_6208 + idx) % _7752 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
            _9343 = mem[(32 * uint8(_6208 + idx) % _7752) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
            require (uint8(_6208 + idx) % _7752) + 1 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
            _9363 = mem[(32 * (uint8(_6208 + idx) % _7752) + 1) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
            require uint8(_6208 + idx) % _7752 < mem[(32 * _1565) + (32 * _6) + ceil32(arg4.length) + 192]
            _9423 = mem[(32 * uint8(_6208 + idx) % _7752) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
            require uint8(_6208 + idx) % _7752 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
            _9516 = mem[(32 * uint8(_6208 + idx) % _7752) + (32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
            require uint8(_6208 + idx) % _7752 < mem[ceil32(arg4.length) + 128]
            mem[mem[64] + 4] = mem[(32 * uint8(_6208 + idx) % _7752) + ceil32(arg4.length) + 172 len 20]
            mem[mem[64] + 36] = _9343
            require ext_code.size(address(_9516))
            call address(_9516).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], _9343
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require uint8(_6208 + idx) % _7752 < mem[ceil32(arg4.length) + 128]
            if not Mask(1, 6, _9423):
                _9739 = mem[(32 * uint8(_6208 + idx) % _7752) + ceil32(arg4.length) + 160]
                mem[mem[64]] = 0x3df0212400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = ('signextend', 15, ('mask_shl', 3, 3, -3, ('var', '_9423')))
                mem[mem[64] + 36] = ('signextend', 15, ('mask_shl', 3, 0, 0, ('var', '_9423')))
                mem[mem[64] + 68] = _9343
                mem[mem[64] + 100] = _9363
                require ext_code.size(address(_9739))
                call address(_9739).exchange(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args ('signextend', 15, ('mask_shl', 3, 3, -3, ('var', '_9423'))), ('signextend', 15, ('mask_shl', 3, 0, 0, ('var', '_9423'))), _9343, _9363
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if this.address == address(_9303):
                    if uint8(_6208) == _7752 - 1:
                        idx = idx + 1
                        s = s
                        t = _9343
                        u = _9303
                        u = uint8(_6208 + idx) % _7752
                        u = _9283
                        continue 
                    if uint8(_6208 + idx) % _7752 != _7752 - 1:
                        idx = idx + 1
                        s = s
                        t = _9343
                        u = _9303
                        u = uint8(_6208 + idx) % _7752
                        u = _9283
                        continue 
                    require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                    if mem[(32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                        idx = idx + 1
                        s = s
                        t = _9343
                        u = _9303
                        u = uint8(_6208 + idx) % _7752
                        u = _9283
                        continue 
                    require 0 < mem[ceil32(arg4.length) + 128]
                    _10514 = mem[ceil32(arg4.length) + 160]
                    require 0 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                    _10562 = mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                    require 0 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                    _10606 = mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                    mem[mem[64] + 4] = mem[ceil32(arg4.length) + 172 len 20]
                    mem[mem[64] + 36] = _10562
                    require ext_code.size(address(_10606))
                    call address(_10606).0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], _10562
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = idx + 1
                    s = s
                    t = _10562
                    u = _10514
                    u = uint8(_6208 + idx) % _7752
                    u = _9283
                    continue 
                if not address(_9303):
                    if uint8(_6208) == _7752 - 1:
                        idx = idx + 1
                        s = s
                        t = _9343
                        u = _9303
                        u = uint8(_6208 + idx) % _7752
                        u = _9283
                        continue 
                    if uint8(_6208 + idx) % _7752 != _7752 - 1:
                        idx = idx + 1
                        s = s
                        t = _9343
                        u = _9303
                        u = uint8(_6208 + idx) % _7752
                        u = _9283
                        continue 
                    require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                    if mem[(32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                        idx = idx + 1
                        s = s
                        t = _9343
                        u = _9303
                        u = uint8(_6208 + idx) % _7752
                        u = _9283
                        continue 
                    require 0 < mem[ceil32(arg4.length) + 128]
                    _10564 = mem[ceil32(arg4.length) + 160]
                    require 0 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                    _10609 = mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                    require 0 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                    _10642 = mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                    mem[mem[64] + 4] = mem[ceil32(arg4.length) + 172 len 20]
                    mem[mem[64] + 36] = _10609
                    require ext_code.size(address(_10642))
                    call address(_10642).0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], _10609
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = idx + 1
                    s = s
                    t = _10609
                    u = _10564
                    u = uint8(_6208 + idx) % _7752
                    u = _9283
                    continue 
                require mem[ceil32(arg4.length) + 128]
                require (uint8(_6208 + idx) % _7752) + 1 % mem[ceil32(arg4.length) + 128] < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                _10126 = mem[(32 * (uint8(_6208 + idx) % _7752) + 1 % mem[ceil32(arg4.length) + 128]) + (32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                mem[mem[64] + 4] = address(_9303)
                mem[mem[64] + 36] = _9363
                require ext_code.size(address(_10126))
                call address(_10126).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(_9303), _9363
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if uint8(_6208) == _7752 - 1:
                    idx = idx + 1
                    s = s
                    t = _9343
                    u = _9303
                    u = uint8(_6208 + idx) % _7752
                    u = _9283
                    continue 
                if uint8(_6208 + idx) % _7752 != _7752 - 1:
                    idx = idx + 1
                    s = s
                    t = _9343
                    u = _9303
                    u = uint8(_6208 + idx) % _7752
                    u = _9283
                    continue 
                require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                if mem[(32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                    idx = idx + 1
                    s = s
                    t = _9343
                    u = _9303
                    u = uint8(_6208 + idx) % _7752
                    u = _9283
                    continue 
                require 0 < mem[ceil32(arg4.length) + 128]
                _10736 = mem[ceil32(arg4.length) + 160]
                require 0 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                _10758 = mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                require 0 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                _10766 = mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                mem[mem[64] + 4] = mem[ceil32(arg4.length) + 172 len 20]
                mem[mem[64] + 36] = _10758
                require ext_code.size(address(_10766))
                call address(_10766).0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _10758
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = idx + 1
                s = s
                t = _10758
                u = _10736
                u = uint8(_6208 + idx) % _7752
                u = _9283
                continue 
            _9742 = mem[(32 * uint8(_6208 + idx) % _7752) + ceil32(arg4.length) + 160]
            mem[mem[64]] = 0xa6417ed600000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = ('signextend', 15, ('mask_shl', 3, 3, -3, ('var', '_9423')))
            mem[mem[64] + 36] = ('signextend', 15, ('mask_shl', 3, 0, 0, ('var', '_9423')))
            mem[mem[64] + 68] = _9343
            mem[mem[64] + 100] = 0
            require ext_code.size(address(_9742))
            call address(_9742).exchange_underlying(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
                 gas gas_remaining wei
                args ('signextend', 15, ('mask_shl', 3, 3, -3, ('var', '_9423'))), ('signextend', 15, ('mask_shl', 3, 0, 0, ('var', '_9423'))), _9343, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if this.address == address(_9303):
                if uint8(_6208) == _7752 - 1:
                    idx = idx + 1
                    s = s
                    t = _9343
                    u = _9303
                    u = uint8(_6208 + idx) % _7752
                    u = _9283
                    continue 
                if uint8(_6208 + idx) % _7752 != _7752 - 1:
                    idx = idx + 1
                    s = s
                    t = _9343
                    u = _9303
                    u = uint8(_6208 + idx) % _7752
                    u = _9283
                    continue 
                require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                if mem[(32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                    idx = idx + 1
                    s = s
                    t = _9343
                    u = _9303
                    u = uint8(_6208 + idx) % _7752
                    u = _9283
                    continue 
                require 0 < mem[ceil32(arg4.length) + 128]
                _10517 = mem[ceil32(arg4.length) + 160]
                require 0 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                _10566 = mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                require 0 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                _10611 = mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                mem[mem[64] + 4] = mem[ceil32(arg4.length) + 172 len 20]
                mem[mem[64] + 36] = _10566
                require ext_code.size(address(_10611))
                call address(_10611).0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _10566
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = idx + 1
                s = s
                t = _10566
                u = _10517
                u = uint8(_6208 + idx) % _7752
                u = _9283
                continue 
            if not address(_9303):
                if uint8(_6208) == _7752 - 1:
                    idx = idx + 1
                    s = s
                    t = _9343
                    u = _9303
                    u = uint8(_6208 + idx) % _7752
                    u = _9283
                    continue 
                if uint8(_6208 + idx) % _7752 != _7752 - 1:
                    idx = idx + 1
                    s = s
                    t = _9343
                    u = _9303
                    u = uint8(_6208 + idx) % _7752
                    u = _9283
                    continue 
                require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                if mem[(32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                    idx = idx + 1
                    s = s
                    t = _9343
                    u = _9303
                    u = uint8(_6208 + idx) % _7752
                    u = _9283
                    continue 
                require 0 < mem[ceil32(arg4.length) + 128]
                _10568 = mem[ceil32(arg4.length) + 160]
                require 0 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                _10614 = mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                require 0 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                _10646 = mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                mem[mem[64] + 4] = mem[ceil32(arg4.length) + 172 len 20]
                mem[mem[64] + 36] = _10614
                require ext_code.size(address(_10646))
                call address(_10646).0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _10614
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = idx + 1
                s = s
                t = _10614
                u = _10568
                u = uint8(_6208 + idx) % _7752
                u = _9283
                continue 
            require mem[ceil32(arg4.length) + 128]
            require (uint8(_6208 + idx) % _7752) + 1 % mem[ceil32(arg4.length) + 128] < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
            _10129 = mem[(32 * (uint8(_6208 + idx) % _7752) + 1 % mem[ceil32(arg4.length) + 128]) + (32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
            mem[mem[64] + 4] = address(_9303)
            mem[mem[64] + 36] = _9363
            require ext_code.size(address(_10129))
            call address(_10129).0xa9059cbb with:
                 gas gas_remaining wei
                args address(_9303), _9363
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if uint8(_6208) == _7752 - 1:
                idx = idx + 1
                s = s
                t = _9343
                u = _9303
                u = uint8(_6208 + idx) % _7752
                u = _9283
                continue 
            if uint8(_6208 + idx) % _7752 != _7752 - 1:
                idx = idx + 1
                s = s
                t = _9343
                u = _9303
                u = uint8(_6208 + idx) % _7752
                u = _9283
                continue 
            require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
            if mem[(32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                idx = idx + 1
                s = s
                t = _9343
                u = _9303
                u = uint8(_6208 + idx) % _7752
                u = _9283
                continue 
            require 0 < mem[ceil32(arg4.length) + 128]
            _10738 = mem[ceil32(arg4.length) + 160]
            require 0 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
            _10760 = mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
            require 0 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
            _10769 = mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
            mem[mem[64] + 4] = mem[ceil32(arg4.length) + 172 len 20]
            mem[mem[64] + 36] = _10760
            require ext_code.size(address(_10769))
            call address(_10769).0xa9059cbb with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], _10760
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = idx + 1
            s = s
            t = _10760
            u = _10738
            u = uint8(_6208 + idx) % _7752
            u = _9283
            continue 
    else:
        require Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
        require uint8(_6208 + 1) % Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
        _7754 = mem[(32 * uint8(_6208 + 1) % Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + (32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
        require Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
        require uint8(_6208 + 1) % Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
        _7758 = mem[(32 * uint8(_6208 + 1) % Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + ceil32(arg4.length) + 160]
        require Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
        require uint8(_6208 + 1) % Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
        _7763 = mem[(32 * uint8(_6208 + 1) % Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
        mem[(32 * _6213) + (32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 292] = mem[(32 * uint8(_6208 + 1) % Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + ceil32(arg4.length) + 172 len 20]
        mem[(32 * _6213) + (32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 324] = _7763
        require ext_code.size(address(_7754))
        call address(_7754).0xa9059cbb with:
             gas gas_remaining wei
            args address(_7758), _7763
        mem[(32 * _6213) + (32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _7776 = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
        idx = 1
        s = 0
        t = 0
        u = 0
        u = 0
        u = 0
        while uint8(idx) < _7776:
            require _7776
            require uint8(_6208 + idx) % _7776 < mem[(32 * _6) + ceil32(arg4.length) + 160]
            _9285 = mem[(32 * uint8(_6208 + idx) % _7776) + (32 * _6) + ceil32(arg4.length) + 192]
            if uint8(_6208 + idx) % _7776 >= _7776 - 1:
                if mem[(32 * uint8(_6208 + idx) % _7776) + (32 * _6) + ceil32(arg4.length) + 223 len 1] < 2:
                    require uint8(_6208 + idx) % _7776 < mem[(32 * _1565) + (32 * _6) + ceil32(arg4.length) + 192]
                    _9295 = mem[(32 * uint8(_6208 + idx) % _7776) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                    require (uint8(_6208 + idx) % _7776) + 1 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                    if Mask(1, 7, mem[(32 * uint8(_6208 + idx) % _7776) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]):
                        _9327 = mem[(32 * (uint8(_6208 + idx) % _7776) + 1) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                        if mem[(32 * uint8(_6208 + idx) % _7776) + (32 * _6) + ceil32(arg4.length) + 223 len 1]:
                            if mem[(32 * uint8(_6208 + idx) % _7776) + (32 * _6) + ceil32(arg4.length) + 223 len 1] != 1:
                                if uint8(_6208) == _7776 - 1:
                                    idx = idx + 1
                                    s = Mask(1, 7, mem[(32 * uint8(_6208 + idx) % _7776) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224])
                                    t = 0
                                    u = this.address
                                    u = uint8(_6208 + idx) % _7776
                                    u = mem[(32 * uint8(_6208 + idx) % _7776) + (32 * _6) + ceil32(arg4.length) + 192]
                                    continue 
                                if uint8(_6208 + idx) % _7776 != _7776 - 1:
                                    idx = idx + 1
                                    s = Mask(1, 7, mem[(32 * uint8(_6208 + idx) % _7776) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224])
                                    t = 0
                                    u = this.address
                                    u = uint8(_6208 + idx) % _7776
                                    u = mem[(32 * uint8(_6208 + idx) % _7776) + (32 * _6) + ceil32(arg4.length) + 192]
                                    continue 
                                require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                                if mem[(32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                                    idx = idx + 1
                                    s = Mask(1, 7, mem[(32 * uint8(_6208 + idx) % _7776) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224])
                                    t = 0
                                    u = this.address
                                    u = uint8(_6208 + idx) % _7776
                                    u = mem[(32 * uint8(_6208 + idx) % _7776) + (32 * _6) + ceil32(arg4.length) + 192]
                                    continue 
                                require 0 < mem[ceil32(arg4.length) + 128]
                                _9682 = mem[ceil32(arg4.length) + 160]
                                require 0 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                                _9717 = mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                                require 0 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                                _9751 = mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                                mem[mem[64] + 4] = mem[ceil32(arg4.length) + 172 len 20]
                                mem[mem[64] + 36] = _9717
                                require ext_code.size(address(_9751))
                                call address(_9751).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], _9717
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                idx = idx + 1
                                s = Mask(1, 7, _9295)
                                t = _9717
                                u = _9682
                                u = uint8(_6208 + idx) % _7776
                                u = _9285
                                continue 
                            require uint8(_6208 + idx) % _7776 < mem[ceil32(arg4.length) + 128]
                            _9402 = mem[(32 * uint8(_6208 + idx) % _7776) + ceil32(arg4.length) + 160]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _9327
                            mem[mem[64] + 68] = this.address
                            require ext_code.size(address(_9402))
                            call address(_9402).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                 gas gas_remaining wei
                                args 0, _9327, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if uint8(_6208) == _7776 - 1:
                                idx = idx + 1
                                s = Mask(1, 7, _9295)
                                t = 0
                                u = this.address
                                u = uint8(_6208 + idx) % _7776
                                u = _9285
                                continue 
                            if uint8(_6208 + idx) % _7776 != _7776 - 1:
                                idx = idx + 1
                                s = Mask(1, 7, _9295)
                                t = 0
                                u = this.address
                                u = uint8(_6208 + idx) % _7776
                                u = _9285
                                continue 
                            require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                            if mem[(32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                                idx = idx + 1
                                s = Mask(1, 7, _9295)
                                t = 0
                                u = this.address
                                u = uint8(_6208 + idx) % _7776
                                u = _9285
                                continue 
                            require 0 < mem[ceil32(arg4.length) + 128]
                            _9817 = mem[ceil32(arg4.length) + 160]
                            require 0 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                            _9867 = mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                            require 0 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                            _9906 = mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                            mem[mem[64] + 4] = mem[ceil32(arg4.length) + 172 len 20]
                            mem[mem[64] + 36] = _9867
                            require ext_code.size(address(_9906))
                            call address(_9906).0xa9059cbb with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], _9867
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            s = Mask(1, 7, _9295)
                            t = _9867
                            u = _9817
                            u = uint8(_6208 + idx) % _7776
                            u = _9285
                            continue 
                        require uint8(_6208 + idx) % _7776 < mem[ceil32(arg4.length) + 128]
                        _9372 = mem[(32 * uint8(_6208 + idx) % _7776) + ceil32(arg4.length) + 160]
                        _9405 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_9405 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_9405 + 36] = 0
                        mem[_9405 + 68] = _9327
                        mem[_9405 + 100] = this.address
                        mem[_9405 + 132] = 128
                        mem[_9405 + 164] = mem[_9405]
                        s = 0
                        while s < mem[_9405]:
                            mem[_9405 + s + 196] = mem[_9405 + s + 32]
                            s = s + 32
                            continue 
                        if not mem[_9405] % 32:
                            require ext_code.size(address(_9372))
                            call address(_9372).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _9327, address(this.address), 128, mem[_9405 + 164 len mem[_9405] + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if uint8(_6208) == _7776 - 1:
                                idx = idx + 1
                                s = Mask(1, 7, _9295)
                                t = 0
                                u = this.address
                                u = uint8(_6208 + idx) % _7776
                                u = _9285
                                continue 
                            if uint8(_6208 + idx) % _7776 != _7776 - 1:
                                idx = idx + 1
                                s = Mask(1, 7, _9295)
                                t = 0
                                u = this.address
                                u = uint8(_6208 + idx) % _7776
                                u = _9285
                                continue 
                            require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                            if mem[(32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                                idx = idx + 1
                                s = Mask(1, 7, _9295)
                                t = 0
                                u = this.address
                                u = uint8(_6208 + idx) % _7776
                                u = _9285
                                continue 
                            require 0 < mem[ceil32(arg4.length) + 128]
                            _10920 = mem[ceil32(arg4.length) + 160]
                            require 0 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                            _10962 = mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                            require 0 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                            _11016 = mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                            mem[_9405 + 36] = mem[ceil32(arg4.length) + 172 len 20]
                            mem[_9405 + 68] = _10962
                            require ext_code.size(address(_11016))
                            call address(_11016).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(_10920), _10962
                            mem[_9405 + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            s = Mask(1, 7, _9295)
                            t = _10962
                            u = _10920
                            u = uint8(_6208 + idx) % _7776
                            u = _9285
                            continue 
                        mem[floor32(mem[_9405]) + _9405 + 196] = mem[floor32(mem[_9405]) + _9405 + -(mem[_9405] % 32) + 228 len mem[_9405] % 32]
                        require ext_code.size(address(_9372))
                        call address(_9372).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _9327, address(this.address), 128, mem[_9405], mem[_9405 + 196 len floor32(mem[_9405]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if uint8(_6208) == _7776 - 1:
                            idx = idx + 1
                            s = Mask(1, 7, _9295)
                            t = 0
                            u = this.address
                            u = uint8(_6208 + idx) % _7776
                            u = _9285
                            continue 
                        if uint8(_6208 + idx) % _7776 != _7776 - 1:
                            idx = idx + 1
                            s = Mask(1, 7, _9295)
                            t = 0
                            u = this.address
                            u = uint8(_6208 + idx) % _7776
                            u = _9285
                            continue 
                        require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                        if mem[(32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                            idx = idx + 1
                            s = Mask(1, 7, _9295)
                            t = 0
                            u = this.address
                            u = uint8(_6208 + idx) % _7776
                            u = _9285
                            continue 
                        require 0 < mem[ceil32(arg4.length) + 128]
                        _10964 = mem[ceil32(arg4.length) + 160]
                        require 0 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                        _11019 = mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                        require 0 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                        _11064 = mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                        mem[_9405 + 36] = mem[ceil32(arg4.length) + 172 len 20]
                        mem[_9405 + 68] = _11019
                        require ext_code.size(address(_11064))
                        call address(_11064).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(_10964), _11019
                        mem[_9405 + 32] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        s = Mask(1, 7, _9295)
                        t = _11019
                        u = _10964
                        u = uint8(_6208 + idx) % _7776
                        u = _9285
                        continue 
                    _9328 = mem[(32 * (uint8(_6208 + idx) % _7776) + 1) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                    if mem[(32 * uint8(_6208 + idx) % _7776) + (32 * _6) + ceil32(arg4.length) + 223 len 1]:
                        if mem[(32 * uint8(_6208 + idx) % _7776) + (32 * _6) + ceil32(arg4.length) + 223 len 1] != 1:
                            if uint8(_6208) == _7776 - 1:
                                idx = idx + 1
                                s = Mask(1, 7, mem[(32 * uint8(_6208 + idx) % _7776) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224])
                                t = mem[(32 * (uint8(_6208 + idx) % _7776) + 1) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                                u = this.address
                                u = uint8(_6208 + idx) % _7776
                                u = mem[(32 * uint8(_6208 + idx) % _7776) + (32 * _6) + ceil32(arg4.length) + 192]
                                continue 
                            if uint8(_6208 + idx) % _7776 != _7776 - 1:
                                idx = idx + 1
                                s = Mask(1, 7, mem[(32 * uint8(_6208 + idx) % _7776) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224])
                                t = mem[(32 * (uint8(_6208 + idx) % _7776) + 1) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                                u = this.address
                                u = uint8(_6208 + idx) % _7776
                                u = mem[(32 * uint8(_6208 + idx) % _7776) + (32 * _6) + ceil32(arg4.length) + 192]
                                continue 
                            require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                            if mem[(32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                                idx = idx + 1
                                s = Mask(1, 7, mem[(32 * uint8(_6208 + idx) % _7776) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224])
                                t = mem[(32 * (uint8(_6208 + idx) % _7776) + 1) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                                u = this.address
                                u = uint8(_6208 + idx) % _7776
                                u = mem[(32 * uint8(_6208 + idx) % _7776) + (32 * _6) + ceil32(arg4.length) + 192]
                                continue 
                            require 0 < mem[ceil32(arg4.length) + 128]
                            _9685 = mem[ceil32(arg4.length) + 160]
                            require 0 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                            _9720 = mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                            require 0 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                            _9754 = mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                            mem[mem[64] + 4] = mem[ceil32(arg4.length) + 172 len 20]
                            mem[mem[64] + 36] = _9720
                            require ext_code.size(address(_9754))
                            call address(_9754).0xa9059cbb with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], _9720
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            s = Mask(1, 7, _9295)
                            t = _9720
                            u = _9685
                            u = uint8(_6208 + idx) % _7776
                            u = _9285
                            continue 
                        require uint8(_6208 + idx) % _7776 < mem[ceil32(arg4.length) + 128]
                        _9406 = mem[(32 * uint8(_6208 + idx) % _7776) + ceil32(arg4.length) + 160]
                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _9328
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = this.address
                        require ext_code.size(address(_9406))
                        call address(_9406).swap(uint256 arg1, uint256 arg2, address arg3) with:
                             gas gas_remaining wei
                            args _9328, 0, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if uint8(_6208) == _7776 - 1:
                            idx = idx + 1
                            s = Mask(1, 7, _9295)
                            t = _9328
                            u = this.address
                            u = uint8(_6208 + idx) % _7776
                            u = _9285
                            continue 
                        if uint8(_6208 + idx) % _7776 != _7776 - 1:
                            idx = idx + 1
                            s = Mask(1, 7, _9295)
                            t = _9328
                            u = this.address
                            u = uint8(_6208 + idx) % _7776
                            u = _9285
                            continue 
                        require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                        if mem[(32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                            idx = idx + 1
                            s = Mask(1, 7, _9295)
                            t = _9328
                            u = this.address
                            u = uint8(_6208 + idx) % _7776
                            u = _9285
                            continue 
                        require 0 < mem[ceil32(arg4.length) + 128]
                        _9822 = mem[ceil32(arg4.length) + 160]
                        require 0 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                        _9871 = mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                        require 0 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                        _9910 = mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                        mem[mem[64] + 4] = mem[ceil32(arg4.length) + 172 len 20]
                        mem[mem[64] + 36] = _9871
                        require ext_code.size(address(_9910))
                        call address(_9910).0xa9059cbb with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _9871
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        s = Mask(1, 7, _9295)
                        t = _9871
                        u = _9822
                        u = uint8(_6208 + idx) % _7776
                        u = _9285
                        continue 
                    require uint8(_6208 + idx) % _7776 < mem[ceil32(arg4.length) + 128]
                    _9374 = mem[(32 * uint8(_6208 + idx) % _7776) + ceil32(arg4.length) + 160]
                    _9409 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_9409 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_9409 + 36] = _9328
                    mem[_9409 + 68] = 0
                    mem[_9409 + 100] = this.address
                    mem[_9409 + 132] = 128
                    mem[_9409 + 164] = mem[_9409]
                    s = 0
                    while s < mem[_9409]:
                        mem[_9409 + s + 196] = mem[_9409 + s + 32]
                        s = s + 32
                        continue 
                    if not mem[_9409] % 32:
                        require ext_code.size(address(_9374))
                        call address(_9374).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _9328, 0, address(this.address), 128, mem[_9409 + 164 len mem[_9409] + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if uint8(_6208) == _7776 - 1:
                            idx = idx + 1
                            s = Mask(1, 7, _9295)
                            t = _9328
                            u = this.address
                            u = uint8(_6208 + idx) % _7776
                            u = _9285
                            continue 
                        if uint8(_6208 + idx) % _7776 != _7776 - 1:
                            idx = idx + 1
                            s = Mask(1, 7, _9295)
                            t = _9328
                            u = this.address
                            u = uint8(_6208 + idx) % _7776
                            u = _9285
                            continue 
                        require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                        if mem[(32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                            idx = idx + 1
                            s = Mask(1, 7, _9295)
                            t = _9328
                            u = this.address
                            u = uint8(_6208 + idx) % _7776
                            u = _9285
                            continue 
                        require 0 < mem[ceil32(arg4.length) + 128]
                        _10923 = mem[ceil32(arg4.length) + 160]
                        require 0 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                        _10966 = mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                        require 0 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                        _11021 = mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                        mem[_9409 + 36] = mem[ceil32(arg4.length) + 172 len 20]
                        mem[_9409 + 68] = _10966
                        require ext_code.size(address(_11021))
                        call address(_11021).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(_10923), _10966
                        mem[_9409 + 32] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        s = Mask(1, 7, _9295)
                        t = _10966
                        u = _10923
                        u = uint8(_6208 + idx) % _7776
                        u = _9285
                        continue 
                    mem[floor32(mem[_9409]) + _9409 + 196] = mem[floor32(mem[_9409]) + _9409 + -(mem[_9409] % 32) + 228 len mem[_9409] % 32]
                    require ext_code.size(address(_9374))
                    call address(_9374).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _9328, 0, address(this.address), 128, mem[_9409], mem[_9409 + 196 len floor32(mem[_9409]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if uint8(_6208) == _7776 - 1:
                        idx = idx + 1
                        s = Mask(1, 7, _9295)
                        t = _9328
                        u = this.address
                        u = uint8(_6208 + idx) % _7776
                        u = _9285
                        continue 
                    if uint8(_6208 + idx) % _7776 != _7776 - 1:
                        idx = idx + 1
                        s = Mask(1, 7, _9295)
                        t = _9328
                        u = this.address
                        u = uint8(_6208 + idx) % _7776
                        u = _9285
                        continue 
                    require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                    if mem[(32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                        idx = idx + 1
                        s = Mask(1, 7, _9295)
                        t = _9328
                        u = this.address
                        u = uint8(_6208 + idx) % _7776
                        u = _9285
                        continue 
                    require 0 < mem[ceil32(arg4.length) + 128]
                    _10968 = mem[ceil32(arg4.length) + 160]
                    require 0 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                    _11024 = mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                    require 0 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                    _11067 = mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                    mem[_9409 + 36] = mem[ceil32(arg4.length) + 172 len 20]
                    mem[_9409 + 68] = _11024
                    require ext_code.size(address(_11067))
                    call address(_11067).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(_10968), _11024
                    mem[_9409 + 32] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = idx + 1
                    s = Mask(1, 7, _9295)
                    t = _11024
                    u = _10968
                    u = uint8(_6208 + idx) % _7776
                    u = _9285
                    continue 
                if mem[(32 * uint8(_6208 + idx) % _7776) + (32 * _6) + ceil32(arg4.length) + 223 len 1] != 2:
                    if uint8(_6208) == _7776 - 1:
                        idx = idx + 1
                        s = s
                        t = t
                        u = this.address
                        u = uint8(_6208 + idx) % _7776
                        u = mem[(32 * uint8(_6208 + idx) % _7776) + (32 * _6) + ceil32(arg4.length) + 192]
                        continue 
                    if uint8(_6208 + idx) % _7776 != _7776 - 1:
                        idx = idx + 1
                        s = s
                        t = t
                        u = this.address
                        u = uint8(_6208 + idx) % _7776
                        u = mem[(32 * uint8(_6208 + idx) % _7776) + (32 * _6) + ceil32(arg4.length) + 192]
                        continue 
                    require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                    if mem[(32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                        idx = idx + 1
                        s = s
                        t = t
                        u = this.address
                        u = uint8(_6208 + idx) % _7776
                        u = mem[(32 * uint8(_6208 + idx) % _7776) + (32 * _6) + ceil32(arg4.length) + 192]
                        continue 
                    require 0 < mem[ceil32(arg4.length) + 128]
                    _9397 = mem[ceil32(arg4.length) + 160]
                    require 0 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                    _9429 = mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                    require 0 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                    _9456 = mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                    mem[mem[64] + 4] = mem[ceil32(arg4.length) + 172 len 20]
                    mem[mem[64] + 36] = _9429
                    require ext_code.size(address(_9456))
                    call address(_9456).0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], _9429
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = idx + 1
                    s = s
                    t = _9429
                    u = _9397
                    u = uint8(_6208 + idx) % _7776
                    u = _9285
                    continue 
                require uint8(_6208 + idx) % _7776 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                _9299 = mem[(32 * uint8(_6208 + idx) % _7776) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                require (uint8(_6208 + idx) % _7776) + 1 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                _9305 = mem[(32 * (uint8(_6208 + idx) % _7776) + 1) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                require uint8(_6208 + idx) % _7776 < mem[(32 * _1565) + (32 * _6) + ceil32(arg4.length) + 192]
                _9326 = mem[(32 * uint8(_6208 + idx) % _7776) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                require uint8(_6208 + idx) % _7776 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                _9369 = mem[(32 * uint8(_6208 + idx) % _7776) + (32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                require uint8(_6208 + idx) % _7776 < mem[ceil32(arg4.length) + 128]
                mem[mem[64] + 4] = mem[(32 * uint8(_6208 + idx) % _7776) + ceil32(arg4.length) + 172 len 20]
                mem[mem[64] + 36] = _9299
                require ext_code.size(address(_9369))
                call address(_9369).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _9299
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require uint8(_6208 + idx) % _7776 < mem[ceil32(arg4.length) + 128]
                if not Mask(1, 6, _9326):
                    _9583 = mem[(32 * uint8(_6208 + idx) % _7776) + ceil32(arg4.length) + 160]
                    mem[mem[64]] = 0x3df0212400000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = ('signextend', 15, ('mask_shl', 3, 3, -3, ('var', '_9326')))
                    mem[mem[64] + 36] = ('signextend', 15, ('mask_shl', 3, 0, 0, ('var', '_9326')))
                    mem[mem[64] + 68] = _9299
                    mem[mem[64] + 100] = _9305
                    require ext_code.size(address(_9583))
                    call address(_9583).exchange(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
                         gas gas_remaining wei
                        args ('signextend', 15, ('mask_shl', 3, 3, -3, ('var', '_9326'))), ('signextend', 15, ('mask_shl', 3, 0, 0, ('var', '_9326'))), _9299, _9305
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if this.address == this.address:
                        if uint8(_6208) == _7776 - 1:
                            idx = idx + 1
                            s = s
                            t = _9299
                            u = this.address
                            u = uint8(_6208 + idx) % _7776
                            u = _9285
                            continue 
                        if uint8(_6208 + idx) % _7776 != _7776 - 1:
                            idx = idx + 1
                            s = s
                            t = _9299
                            u = this.address
                            u = uint8(_6208 + idx) % _7776
                            u = _9285
                            continue 
                        require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                        if mem[(32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                            idx = idx + 1
                            s = s
                            t = _9299
                            u = this.address
                            u = uint8(_6208 + idx) % _7776
                            u = _9285
                            continue 
                        require 0 < mem[ceil32(arg4.length) + 128]
                        _10264 = mem[ceil32(arg4.length) + 160]
                        require 0 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                        _10330 = mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                        require 0 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                        _10392 = mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                        mem[mem[64] + 4] = mem[ceil32(arg4.length) + 172 len 20]
                        mem[mem[64] + 36] = _10330
                        require ext_code.size(address(_10392))
                        call address(_10392).0xa9059cbb with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _10330
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        s = s
                        t = _10330
                        u = _10264
                        u = uint8(_6208 + idx) % _7776
                        u = _9285
                        continue 
                    if not this.address:
                        if uint8(_6208) == _7776 - 1:
                            idx = idx + 1
                            s = s
                            t = _9299
                            u = this.address
                            u = uint8(_6208 + idx) % _7776
                            u = _9285
                            continue 
                        if uint8(_6208 + idx) % _7776 != _7776 - 1:
                            idx = idx + 1
                            s = s
                            t = _9299
                            u = this.address
                            u = uint8(_6208 + idx) % _7776
                            u = _9285
                            continue 
                        require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                        if mem[(32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                            idx = idx + 1
                            s = s
                            t = _9299
                            u = this.address
                            u = uint8(_6208 + idx) % _7776
                            u = _9285
                            continue 
                        require 0 < mem[ceil32(arg4.length) + 128]
                        _10332 = mem[ceil32(arg4.length) + 160]
                        require 0 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                        _10395 = mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                        require 0 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                        _10448 = mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                        mem[mem[64] + 4] = mem[ceil32(arg4.length) + 172 len 20]
                        mem[mem[64] + 36] = _10395
                        require ext_code.size(address(_10448))
                        call address(_10448).0xa9059cbb with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _10395
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        s = s
                        t = _10395
                        u = _10332
                        u = uint8(_6208 + idx) % _7776
                        u = _9285
                        continue 
                    require mem[ceil32(arg4.length) + 128]
                    require (uint8(_6208 + idx) % _7776) + 1 % mem[ceil32(arg4.length) + 128] < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                    _9860 = mem[(32 * (uint8(_6208 + idx) % _7776) + 1 % mem[ceil32(arg4.length) + 128]) + (32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = _9305
                    require ext_code.size(address(_9860))
                    call address(_9860).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(this.address), _9305
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if uint8(_6208) == _7776 - 1:
                        idx = idx + 1
                        s = s
                        t = _9299
                        u = this.address
                        u = uint8(_6208 + idx) % _7776
                        u = _9285
                        continue 
                    if uint8(_6208 + idx) % _7776 != _7776 - 1:
                        idx = idx + 1
                        s = s
                        t = _9299
                        u = this.address
                        u = uint8(_6208 + idx) % _7776
                        u = _9285
                        continue 
                    require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                    if mem[(32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                        idx = idx + 1
                        s = s
                        t = _9299
                        u = this.address
                        u = uint8(_6208 + idx) % _7776
                        u = _9285
                        continue 
                    require 0 < mem[ceil32(arg4.length) + 128]
                    _10620 = mem[ceil32(arg4.length) + 160]
                    require 0 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                    _10654 = mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                    require 0 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                    _10684 = mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                    mem[mem[64] + 4] = mem[ceil32(arg4.length) + 172 len 20]
                    mem[mem[64] + 36] = _10654
                    require ext_code.size(address(_10684))
                    call address(_10684).0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], _10654
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = idx + 1
                    s = s
                    t = _10654
                    u = _10620
                    u = uint8(_6208 + idx) % _7776
                    u = _9285
                    continue 
                _9586 = mem[(32 * uint8(_6208 + idx) % _7776) + ceil32(arg4.length) + 160]
                mem[mem[64]] = 0xa6417ed600000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = ('signextend', 15, ('mask_shl', 3, 3, -3, ('var', '_9326')))
                mem[mem[64] + 36] = ('signextend', 15, ('mask_shl', 3, 0, 0, ('var', '_9326')))
                mem[mem[64] + 68] = _9299
                mem[mem[64] + 100] = 0
                require ext_code.size(address(_9586))
                call address(_9586).exchange_underlying(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args ('signextend', 15, ('mask_shl', 3, 3, -3, ('var', '_9326'))), ('signextend', 15, ('mask_shl', 3, 0, 0, ('var', '_9326'))), _9299, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if this.address == this.address:
                    if uint8(_6208) == _7776 - 1:
                        idx = idx + 1
                        s = s
                        t = _9299
                        u = this.address
                        u = uint8(_6208 + idx) % _7776
                        u = _9285
                        continue 
                    if uint8(_6208 + idx) % _7776 != _7776 - 1:
                        idx = idx + 1
                        s = s
                        t = _9299
                        u = this.address
                        u = uint8(_6208 + idx) % _7776
                        u = _9285
                        continue 
                    require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                    if mem[(32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                        idx = idx + 1
                        s = s
                        t = _9299
                        u = this.address
                        u = uint8(_6208 + idx) % _7776
                        u = _9285
                        continue 
                    require 0 < mem[ceil32(arg4.length) + 128]
                    _10267 = mem[ceil32(arg4.length) + 160]
                    require 0 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                    _10334 = mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                    require 0 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                    _10397 = mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                    mem[mem[64] + 4] = mem[ceil32(arg4.length) + 172 len 20]
                    mem[mem[64] + 36] = _10334
                    require ext_code.size(address(_10397))
                    call address(_10397).0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], _10334
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = idx + 1
                    s = s
                    t = _10334
                    u = _10267
                    u = uint8(_6208 + idx) % _7776
                    u = _9285
                    continue 
                if not this.address:
                    if uint8(_6208) == _7776 - 1:
                        idx = idx + 1
                        s = s
                        t = _9299
                        u = this.address
                        u = uint8(_6208 + idx) % _7776
                        u = _9285
                        continue 
                    if uint8(_6208 + idx) % _7776 != _7776 - 1:
                        idx = idx + 1
                        s = s
                        t = _9299
                        u = this.address
                        u = uint8(_6208 + idx) % _7776
                        u = _9285
                        continue 
                    require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                    if mem[(32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                        idx = idx + 1
                        s = s
                        t = _9299
                        u = this.address
                        u = uint8(_6208 + idx) % _7776
                        u = _9285
                        continue 
                    require 0 < mem[ceil32(arg4.length) + 128]
                    _10336 = mem[ceil32(arg4.length) + 160]
                    require 0 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                    _10400 = mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                    require 0 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                    _10452 = mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                    mem[mem[64] + 4] = mem[ceil32(arg4.length) + 172 len 20]
                    mem[mem[64] + 36] = _10400
                    require ext_code.size(address(_10452))
                    call address(_10452).0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], _10400
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = idx + 1
                    s = s
                    t = _10400
                    u = _10336
                    u = uint8(_6208 + idx) % _7776
                    u = _9285
                    continue 
                require mem[ceil32(arg4.length) + 128]
                require (uint8(_6208 + idx) % _7776) + 1 % mem[ceil32(arg4.length) + 128] < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                _9863 = mem[(32 * (uint8(_6208 + idx) % _7776) + 1 % mem[ceil32(arg4.length) + 128]) + (32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = _9305
                require ext_code.size(address(_9863))
                call address(_9863).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(this.address), _9305
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if uint8(_6208) == _7776 - 1:
                    idx = idx + 1
                    s = s
                    t = _9299
                    u = this.address
                    u = uint8(_6208 + idx) % _7776
                    u = _9285
                    continue 
                if uint8(_6208 + idx) % _7776 != _7776 - 1:
                    idx = idx + 1
                    s = s
                    t = _9299
                    u = this.address
                    u = uint8(_6208 + idx) % _7776
                    u = _9285
                    continue 
                require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                if mem[(32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                    idx = idx + 1
                    s = s
                    t = _9299
                    u = this.address
                    u = uint8(_6208 + idx) % _7776
                    u = _9285
                    continue 
                require 0 < mem[ceil32(arg4.length) + 128]
                _10622 = mem[ceil32(arg4.length) + 160]
                require 0 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                _10656 = mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                require 0 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                _10687 = mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                mem[mem[64] + 4] = mem[ceil32(arg4.length) + 172 len 20]
                mem[mem[64] + 36] = _10656
                require ext_code.size(address(_10687))
                call address(_10687).0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _10656
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = idx + 1
                s = s
                t = _10656
                u = _10622
                u = uint8(_6208 + idx) % _7776
                u = _9285
                continue 
            require _7776
            require (uint8(_6208 + idx) % _7776) + 1 % _7776 < mem[(32 * _6) + ceil32(arg4.length) + 160]
            if mem[(32 * (uint8(_6208 + idx) % _7776) + 1 % _7776) + (32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                if mem[(32 * uint8(_6208 + idx) % _7776) + (32 * _6) + ceil32(arg4.length) + 223 len 1] < 2:
                    require uint8(_6208 + idx) % _7776 < mem[(32 * _1565) + (32 * _6) + ceil32(arg4.length) + 192]
                    _9317 = mem[(32 * uint8(_6208 + idx) % _7776) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                    require (uint8(_6208 + idx) % _7776) + 1 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                    if Mask(1, 7, mem[(32 * uint8(_6208 + idx) % _7776) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]):
                        _9378 = mem[(32 * (uint8(_6208 + idx) % _7776) + 1) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                        if mem[(32 * uint8(_6208 + idx) % _7776) + (32 * _6) + ceil32(arg4.length) + 223 len 1]:
                            if mem[(32 * uint8(_6208 + idx) % _7776) + (32 * _6) + ceil32(arg4.length) + 223 len 1] != 1:
                                if uint8(_6208) == _7776 - 1:
                                    idx = idx + 1
                                    s = Mask(1, 7, mem[(32 * uint8(_6208 + idx) % _7776) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224])
                                    t = 0
                                    u = this.address
                                    u = uint8(_6208 + idx) % _7776
                                    u = mem[(32 * uint8(_6208 + idx) % _7776) + (32 * _6) + ceil32(arg4.length) + 192]
                                    continue 
                                if uint8(_6208 + idx) % _7776 != _7776 - 1:
                                    idx = idx + 1
                                    s = Mask(1, 7, mem[(32 * uint8(_6208 + idx) % _7776) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224])
                                    t = 0
                                    u = this.address
                                    u = uint8(_6208 + idx) % _7776
                                    u = mem[(32 * uint8(_6208 + idx) % _7776) + (32 * _6) + ceil32(arg4.length) + 192]
                                    continue 
                                require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                                if mem[(32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                                    idx = idx + 1
                                    s = Mask(1, 7, mem[(32 * uint8(_6208 + idx) % _7776) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224])
                                    t = 0
                                    u = this.address
                                    u = uint8(_6208 + idx) % _7776
                                    u = mem[(32 * uint8(_6208 + idx) % _7776) + (32 * _6) + ceil32(arg4.length) + 192]
                                    continue 
                                require 0 < mem[ceil32(arg4.length) + 128]
                                _9788 = mem[ceil32(arg4.length) + 160]
                                require 0 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                                _9828 = mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                                require 0 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                                _9880 = mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                                mem[mem[64] + 4] = mem[ceil32(arg4.length) + 172 len 20]
                                mem[mem[64] + 36] = _9828
                                require ext_code.size(address(_9880))
                                call address(_9880).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], _9828
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                idx = idx + 1
                                s = Mask(1, 7, _9317)
                                t = _9828
                                u = _9788
                                u = uint8(_6208 + idx) % _7776
                                u = _9285
                                continue 
                            require uint8(_6208 + idx) % _7776 < mem[ceil32(arg4.length) + 128]
                            _9498 = mem[(32 * uint8(_6208 + idx) % _7776) + ceil32(arg4.length) + 160]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _9378
                            mem[mem[64] + 68] = this.address
                            require ext_code.size(address(_9498))
                            call address(_9498).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                 gas gas_remaining wei
                                args 0, _9378, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if uint8(_6208) == _7776 - 1:
                                idx = idx + 1
                                s = Mask(1, 7, _9317)
                                t = 0
                                u = this.address
                                u = uint8(_6208 + idx) % _7776
                                u = _9285
                                continue 
                            if uint8(_6208 + idx) % _7776 != _7776 - 1:
                                idx = idx + 1
                                s = Mask(1, 7, _9317)
                                t = 0
                                u = this.address
                                u = uint8(_6208 + idx) % _7776
                                u = _9285
                                continue 
                            require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                            if mem[(32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                                idx = idx + 1
                                s = Mask(1, 7, _9317)
                                t = 0
                                u = this.address
                                u = uint8(_6208 + idx) % _7776
                                u = _9285
                                continue 
                            require 0 < mem[ceil32(arg4.length) + 128]
                            _9969 = mem[ceil32(arg4.length) + 160]
                            require 0 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                            _10039 = mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                            require 0 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                            _10110 = mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                            mem[mem[64] + 4] = mem[ceil32(arg4.length) + 172 len 20]
                            mem[mem[64] + 36] = _10039
                            require ext_code.size(address(_10110))
                            call address(_10110).0xa9059cbb with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], _10039
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            s = Mask(1, 7, _9317)
                            t = _10039
                            u = _9969
                            u = uint8(_6208 + idx) % _7776
                            u = _9285
                            continue 
                        require uint8(_6208 + idx) % _7776 < mem[ceil32(arg4.length) + 128]
                        _9465 = mem[(32 * uint8(_6208 + idx) % _7776) + ceil32(arg4.length) + 160]
                        _9501 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_9501 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_9501 + 36] = 0
                        mem[_9501 + 68] = _9378
                        mem[_9501 + 100] = this.address
                        mem[_9501 + 132] = 128
                        mem[_9501 + 164] = mem[_9501]
                        s = 0
                        while s < mem[_9501]:
                            mem[_9501 + s + 196] = mem[_9501 + s + 32]
                            s = s + 32
                            continue 
                        if not mem[_9501] % 32:
                            require ext_code.size(address(_9465))
                            call address(_9465).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _9378, address(this.address), 128, mem[_9501 + 164 len mem[_9501] + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if uint8(_6208) == _7776 - 1:
                                idx = idx + 1
                                s = Mask(1, 7, _9317)
                                t = 0
                                u = this.address
                                u = uint8(_6208 + idx) % _7776
                                u = _9285
                                continue 
                            if uint8(_6208 + idx) % _7776 != _7776 - 1:
                                idx = idx + 1
                                s = Mask(1, 7, _9317)
                                t = 0
                                u = this.address
                                u = uint8(_6208 + idx) % _7776
                                u = _9285
                                continue 
                            require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                            if mem[(32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                                idx = idx + 1
                                s = Mask(1, 7, _9317)
                                t = 0
                                u = this.address
                                u = uint8(_6208 + idx) % _7776
                                u = _9285
                                continue 
                            require 0 < mem[ceil32(arg4.length) + 128]
                            _10932 = mem[ceil32(arg4.length) + 160]
                            require 0 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                            _10978 = mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                            require 0 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                            _11036 = mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                            mem[_9501 + 36] = mem[ceil32(arg4.length) + 172 len 20]
                            mem[_9501 + 68] = _10978
                            require ext_code.size(address(_11036))
                            call address(_11036).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(_10932), _10978
                            mem[_9501 + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            s = Mask(1, 7, _9317)
                            t = _10978
                            u = _10932
                            u = uint8(_6208 + idx) % _7776
                            u = _9285
                            continue 
                        mem[floor32(mem[_9501]) + _9501 + 196] = mem[floor32(mem[_9501]) + _9501 + -(mem[_9501] % 32) + 228 len mem[_9501] % 32]
                        require ext_code.size(address(_9465))
                        call address(_9465).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _9378, address(this.address), 128, mem[_9501], mem[_9501 + 196 len floor32(mem[_9501]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if uint8(_6208) == _7776 - 1:
                            idx = idx + 1
                            s = Mask(1, 7, _9317)
                            t = 0
                            u = this.address
                            u = uint8(_6208 + idx) % _7776
                            u = _9285
                            continue 
                        if uint8(_6208 + idx) % _7776 != _7776 - 1:
                            idx = idx + 1
                            s = Mask(1, 7, _9317)
                            t = 0
                            u = this.address
                            u = uint8(_6208 + idx) % _7776
                            u = _9285
                            continue 
                        require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                        if mem[(32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                            idx = idx + 1
                            s = Mask(1, 7, _9317)
                            t = 0
                            u = this.address
                            u = uint8(_6208 + idx) % _7776
                            u = _9285
                            continue 
                        require 0 < mem[ceil32(arg4.length) + 128]
                        _10980 = mem[ceil32(arg4.length) + 160]
                        require 0 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                        _11039 = mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                        require 0 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                        _11076 = mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                        mem[_9501 + 36] = mem[ceil32(arg4.length) + 172 len 20]
                        mem[_9501 + 68] = _11039
                        require ext_code.size(address(_11076))
                        call address(_11076).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(_10980), _11039
                        mem[_9501 + 32] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        s = Mask(1, 7, _9317)
                        t = _11039
                        u = _10980
                        u = uint8(_6208 + idx) % _7776
                        u = _9285
                        continue 
                    _9379 = mem[(32 * (uint8(_6208 + idx) % _7776) + 1) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                    if mem[(32 * uint8(_6208 + idx) % _7776) + (32 * _6) + ceil32(arg4.length) + 223 len 1]:
                        if mem[(32 * uint8(_6208 + idx) % _7776) + (32 * _6) + ceil32(arg4.length) + 223 len 1] != 1:
                            if uint8(_6208) == _7776 - 1:
                                idx = idx + 1
                                s = Mask(1, 7, mem[(32 * uint8(_6208 + idx) % _7776) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224])
                                t = mem[(32 * (uint8(_6208 + idx) % _7776) + 1) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                                u = this.address
                                u = uint8(_6208 + idx) % _7776
                                u = mem[(32 * uint8(_6208 + idx) % _7776) + (32 * _6) + ceil32(arg4.length) + 192]
                                continue 
                            if uint8(_6208 + idx) % _7776 != _7776 - 1:
                                idx = idx + 1
                                s = Mask(1, 7, mem[(32 * uint8(_6208 + idx) % _7776) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224])
                                t = mem[(32 * (uint8(_6208 + idx) % _7776) + 1) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                                u = this.address
                                u = uint8(_6208 + idx) % _7776
                                u = mem[(32 * uint8(_6208 + idx) % _7776) + (32 * _6) + ceil32(arg4.length) + 192]
                                continue 
                            require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                            if mem[(32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                                idx = idx + 1
                                s = Mask(1, 7, mem[(32 * uint8(_6208 + idx) % _7776) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224])
                                t = mem[(32 * (uint8(_6208 + idx) % _7776) + 1) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                                u = this.address
                                u = uint8(_6208 + idx) % _7776
                                u = mem[(32 * uint8(_6208 + idx) % _7776) + (32 * _6) + ceil32(arg4.length) + 192]
                                continue 
                            require 0 < mem[ceil32(arg4.length) + 128]
                            _9791 = mem[ceil32(arg4.length) + 160]
                            require 0 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                            _9831 = mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                            require 0 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                            _9883 = mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                            mem[mem[64] + 4] = mem[ceil32(arg4.length) + 172 len 20]
                            mem[mem[64] + 36] = _9831
                            require ext_code.size(address(_9883))
                            call address(_9883).0xa9059cbb with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], _9831
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            s = Mask(1, 7, _9317)
                            t = _9831
                            u = _9791
                            u = uint8(_6208 + idx) % _7776
                            u = _9285
                            continue 
                        require uint8(_6208 + idx) % _7776 < mem[ceil32(arg4.length) + 128]
                        _9502 = mem[(32 * uint8(_6208 + idx) % _7776) + ceil32(arg4.length) + 160]
                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _9379
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = this.address
                        require ext_code.size(address(_9502))
                        call address(_9502).swap(uint256 arg1, uint256 arg2, address arg3) with:
                             gas gas_remaining wei
                            args _9379, 0, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if uint8(_6208) == _7776 - 1:
                            idx = idx + 1
                            s = Mask(1, 7, _9317)
                            t = _9379
                            u = this.address
                            u = uint8(_6208 + idx) % _7776
                            u = _9285
                            continue 
                        if uint8(_6208 + idx) % _7776 != _7776 - 1:
                            idx = idx + 1
                            s = Mask(1, 7, _9317)
                            t = _9379
                            u = this.address
                            u = uint8(_6208 + idx) % _7776
                            u = _9285
                            continue 
                        require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                        if mem[(32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                            idx = idx + 1
                            s = Mask(1, 7, _9317)
                            t = _9379
                            u = this.address
                            u = uint8(_6208 + idx) % _7776
                            u = _9285
                            continue 
                        require 0 < mem[ceil32(arg4.length) + 128]
                        _9974 = mem[ceil32(arg4.length) + 160]
                        require 0 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                        _10043 = mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                        require 0 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                        _10114 = mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                        mem[mem[64] + 4] = mem[ceil32(arg4.length) + 172 len 20]
                        mem[mem[64] + 36] = _10043
                        require ext_code.size(address(_10114))
                        call address(_10114).0xa9059cbb with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _10043
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        s = Mask(1, 7, _9317)
                        t = _10043
                        u = _9974
                        u = uint8(_6208 + idx) % _7776
                        u = _9285
                        continue 
                    require uint8(_6208 + idx) % _7776 < mem[ceil32(arg4.length) + 128]
                    _9467 = mem[(32 * uint8(_6208 + idx) % _7776) + ceil32(arg4.length) + 160]
                    _9505 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_9505 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_9505 + 36] = _9379
                    mem[_9505 + 68] = 0
                    mem[_9505 + 100] = this.address
                    mem[_9505 + 132] = 128
                    mem[_9505 + 164] = mem[_9505]
                    s = 0
                    while s < mem[_9505]:
                        mem[_9505 + s + 196] = mem[_9505 + s + 32]
                        s = s + 32
                        continue 
                    if not mem[_9505] % 32:
                        require ext_code.size(address(_9467))
                        call address(_9467).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _9379, 0, address(this.address), 128, mem[_9505 + 164 len mem[_9505] + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if uint8(_6208) == _7776 - 1:
                            idx = idx + 1
                            s = Mask(1, 7, _9317)
                            t = _9379
                            u = this.address
                            u = uint8(_6208 + idx) % _7776
                            u = _9285
                            continue 
                        if uint8(_6208 + idx) % _7776 != _7776 - 1:
                            idx = idx + 1
                            s = Mask(1, 7, _9317)
                            t = _9379
                            u = this.address
                            u = uint8(_6208 + idx) % _7776
                            u = _9285
                            continue 
                        require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                        if mem[(32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                            idx = idx + 1
                            s = Mask(1, 7, _9317)
                            t = _9379
                            u = this.address
                            u = uint8(_6208 + idx) % _7776
                            u = _9285
                            continue 
                        require 0 < mem[ceil32(arg4.length) + 128]
                        _10935 = mem[ceil32(arg4.length) + 160]
                        require 0 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                        _10982 = mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                        require 0 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                        _11041 = mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                        mem[_9505 + 36] = mem[ceil32(arg4.length) + 172 len 20]
                        mem[_9505 + 68] = _10982
                        require ext_code.size(address(_11041))
                        call address(_11041).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(_10935), _10982
                        mem[_9505 + 32] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        s = Mask(1, 7, _9317)
                        t = _10982
                        u = _10935
                        u = uint8(_6208 + idx) % _7776
                        u = _9285
                        continue 
                    mem[floor32(mem[_9505]) + _9505 + 196] = mem[floor32(mem[_9505]) + _9505 + -(mem[_9505] % 32) + 228 len mem[_9505] % 32]
                    require ext_code.size(address(_9467))
                    call address(_9467).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _9379, 0, address(this.address), 128, mem[_9505], mem[_9505 + 196 len floor32(mem[_9505]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if uint8(_6208) == _7776 - 1:
                        idx = idx + 1
                        s = Mask(1, 7, _9317)
                        t = _9379
                        u = this.address
                        u = uint8(_6208 + idx) % _7776
                        u = _9285
                        continue 
                    if uint8(_6208 + idx) % _7776 != _7776 - 1:
                        idx = idx + 1
                        s = Mask(1, 7, _9317)
                        t = _9379
                        u = this.address
                        u = uint8(_6208 + idx) % _7776
                        u = _9285
                        continue 
                    require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                    if mem[(32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                        idx = idx + 1
                        s = Mask(1, 7, _9317)
                        t = _9379
                        u = this.address
                        u = uint8(_6208 + idx) % _7776
                        u = _9285
                        continue 
                    require 0 < mem[ceil32(arg4.length) + 128]
                    _10984 = mem[ceil32(arg4.length) + 160]
                    require 0 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                    _11044 = mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                    require 0 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                    _11079 = mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                    mem[_9505 + 36] = mem[ceil32(arg4.length) + 172 len 20]
                    mem[_9505 + 68] = _11044
                    require ext_code.size(address(_11079))
                    call address(_11079).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(_10984), _11044
                    mem[_9505 + 32] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = idx + 1
                    s = Mask(1, 7, _9317)
                    t = _11044
                    u = _10984
                    u = uint8(_6208 + idx) % _7776
                    u = _9285
                    continue 
                if mem[(32 * uint8(_6208 + idx) % _7776) + (32 * _6) + ceil32(arg4.length) + 223 len 1] != 2:
                    if uint8(_6208) == _7776 - 1:
                        idx = idx + 1
                        s = s
                        t = t
                        u = this.address
                        u = uint8(_6208 + idx) % _7776
                        u = mem[(32 * uint8(_6208 + idx) % _7776) + (32 * _6) + ceil32(arg4.length) + 192]
                        continue 
                    if uint8(_6208 + idx) % _7776 != _7776 - 1:
                        idx = idx + 1
                        s = s
                        t = t
                        u = this.address
                        u = uint8(_6208 + idx) % _7776
                        u = mem[(32 * uint8(_6208 + idx) % _7776) + (32 * _6) + ceil32(arg4.length) + 192]
                        continue 
                    require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                    if mem[(32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                        idx = idx + 1
                        s = s
                        t = t
                        u = this.address
                        u = uint8(_6208 + idx) % _7776
                        u = mem[(32 * uint8(_6208 + idx) % _7776) + (32 * _6) + ceil32(arg4.length) + 192]
                        continue 
                    require 0 < mem[ceil32(arg4.length) + 128]
                    _9493 = mem[ceil32(arg4.length) + 160]
                    require 0 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                    _9546 = mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                    require 0 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                    _9606 = mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                    mem[mem[64] + 4] = mem[ceil32(arg4.length) + 172 len 20]
                    mem[mem[64] + 36] = _9546
                    require ext_code.size(address(_9606))
                    call address(_9606).0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], _9546
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = idx + 1
                    s = s
                    t = _9546
                    u = _9493
                    u = uint8(_6208 + idx) % _7776
                    u = _9285
                    continue 
                require uint8(_6208 + idx) % _7776 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                _9330 = mem[(32 * uint8(_6208 + idx) % _7776) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                require (uint8(_6208 + idx) % _7776) + 1 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                _9339 = mem[(32 * (uint8(_6208 + idx) % _7776) + 1) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                require uint8(_6208 + idx) % _7776 < mem[(32 * _1565) + (32 * _6) + ceil32(arg4.length) + 192]
                _9377 = mem[(32 * uint8(_6208 + idx) % _7776) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                require uint8(_6208 + idx) % _7776 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                _9462 = mem[(32 * uint8(_6208 + idx) % _7776) + (32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                require uint8(_6208 + idx) % _7776 < mem[ceil32(arg4.length) + 128]
                mem[mem[64] + 4] = mem[(32 * uint8(_6208 + idx) % _7776) + ceil32(arg4.length) + 172 len 20]
                mem[mem[64] + 36] = _9330
                require ext_code.size(address(_9462))
                call address(_9462).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _9330
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require uint8(_6208 + idx) % _7776 < mem[ceil32(arg4.length) + 128]
                if not Mask(1, 6, _9377):
                    _9692 = mem[(32 * uint8(_6208 + idx) % _7776) + ceil32(arg4.length) + 160]
                    mem[mem[64]] = 0x3df0212400000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = ('signextend', 15, ('mask_shl', 3, 3, -3, ('var', '_9377')))
                    mem[mem[64] + 36] = ('signextend', 15, ('mask_shl', 3, 0, 0, ('var', '_9377')))
                    mem[mem[64] + 68] = _9330
                    mem[mem[64] + 100] = _9339
                    require ext_code.size(address(_9692))
                    call address(_9692).exchange(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
                         gas gas_remaining wei
                        args ('signextend', 15, ('mask_shl', 3, 3, -3, ('var', '_9377'))), ('signextend', 15, ('mask_shl', 3, 0, 0, ('var', '_9377'))), _9330, _9339
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if this.address == this.address:
                        if uint8(_6208) == _7776 - 1:
                            idx = idx + 1
                            s = s
                            t = _9330
                            u = this.address
                            u = uint8(_6208 + idx) % _7776
                            u = _9285
                            continue 
                        if uint8(_6208 + idx) % _7776 != _7776 - 1:
                            idx = idx + 1
                            s = s
                            t = _9330
                            u = this.address
                            u = uint8(_6208 + idx) % _7776
                            u = _9285
                            continue 
                        require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                        if mem[(32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                            idx = idx + 1
                            s = s
                            t = _9330
                            u = this.address
                            u = uint8(_6208 + idx) % _7776
                            u = _9285
                            continue 
                        require 0 < mem[ceil32(arg4.length) + 128]
                        _10464 = mem[ceil32(arg4.length) + 160]
                        require 0 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                        _10500 = mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                        require 0 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                        _10548 = mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                        mem[mem[64] + 4] = mem[ceil32(arg4.length) + 172 len 20]
                        mem[mem[64] + 36] = _10500
                        require ext_code.size(address(_10548))
                        call address(_10548).0xa9059cbb with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _10500
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        s = s
                        t = _10500
                        u = _10464
                        u = uint8(_6208 + idx) % _7776
                        u = _9285
                        continue 
                    if not this.address:
                        if uint8(_6208) == _7776 - 1:
                            idx = idx + 1
                            s = s
                            t = _9330
                            u = this.address
                            u = uint8(_6208 + idx) % _7776
                            u = _9285
                            continue 
                        if uint8(_6208 + idx) % _7776 != _7776 - 1:
                            idx = idx + 1
                            s = s
                            t = _9330
                            u = this.address
                            u = uint8(_6208 + idx) % _7776
                            u = _9285
                            continue 
                        require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                        if mem[(32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                            idx = idx + 1
                            s = s
                            t = _9330
                            u = this.address
                            u = uint8(_6208 + idx) % _7776
                            u = _9285
                            continue 
                        require 0 < mem[ceil32(arg4.length) + 128]
                        _10502 = mem[ceil32(arg4.length) + 160]
                        require 0 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                        _10551 = mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                        require 0 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                        _10594 = mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                        mem[mem[64] + 4] = mem[ceil32(arg4.length) + 172 len 20]
                        mem[mem[64] + 36] = _10551
                        require ext_code.size(address(_10594))
                        call address(_10594).0xa9059cbb with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _10551
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        s = s
                        t = _10551
                        u = _10502
                        u = uint8(_6208 + idx) % _7776
                        u = _9285
                        continue 
                    require mem[ceil32(arg4.length) + 128]
                    require (uint8(_6208 + idx) % _7776) + 1 % mem[ceil32(arg4.length) + 128] < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                    _10032 = mem[(32 * (uint8(_6208 + idx) % _7776) + 1 % mem[ceil32(arg4.length) + 128]) + (32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = _9339
                    require ext_code.size(address(_10032))
                    call address(_10032).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(this.address), _9339
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if uint8(_6208) == _7776 - 1:
                        idx = idx + 1
                        s = s
                        t = _9330
                        u = this.address
                        u = uint8(_6208 + idx) % _7776
                        u = _9285
                        continue 
                    if uint8(_6208 + idx) % _7776 != _7776 - 1:
                        idx = idx + 1
                        s = s
                        t = _9330
                        u = this.address
                        u = uint8(_6208 + idx) % _7776
                        u = _9285
                        continue 
                    require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                    if mem[(32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                        idx = idx + 1
                        s = s
                        t = _9330
                        u = this.address
                        u = uint8(_6208 + idx) % _7776
                        u = _9285
                        continue 
                    require 0 < mem[ceil32(arg4.length) + 128]
                    _10710 = mem[ceil32(arg4.length) + 160]
                    require 0 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                    _10730 = mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                    require 0 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                    _10752 = mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                    mem[mem[64] + 4] = mem[ceil32(arg4.length) + 172 len 20]
                    mem[mem[64] + 36] = _10730
                    require ext_code.size(address(_10752))
                    call address(_10752).0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], _10730
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = idx + 1
                    s = s
                    t = _10730
                    u = _10710
                    u = uint8(_6208 + idx) % _7776
                    u = _9285
                    continue 
                _9695 = mem[(32 * uint8(_6208 + idx) % _7776) + ceil32(arg4.length) + 160]
                mem[mem[64]] = 0xa6417ed600000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = ('signextend', 15, ('mask_shl', 3, 3, -3, ('var', '_9377')))
                mem[mem[64] + 36] = ('signextend', 15, ('mask_shl', 3, 0, 0, ('var', '_9377')))
                mem[mem[64] + 68] = _9330
                mem[mem[64] + 100] = 0
                require ext_code.size(address(_9695))
                call address(_9695).exchange_underlying(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args ('signextend', 15, ('mask_shl', 3, 3, -3, ('var', '_9377'))), ('signextend', 15, ('mask_shl', 3, 0, 0, ('var', '_9377'))), _9330, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if this.address == this.address:
                    if uint8(_6208) == _7776 - 1:
                        idx = idx + 1
                        s = s
                        t = _9330
                        u = this.address
                        u = uint8(_6208 + idx) % _7776
                        u = _9285
                        continue 
                    if uint8(_6208 + idx) % _7776 != _7776 - 1:
                        idx = idx + 1
                        s = s
                        t = _9330
                        u = this.address
                        u = uint8(_6208 + idx) % _7776
                        u = _9285
                        continue 
                    require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                    if mem[(32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                        idx = idx + 1
                        s = s
                        t = _9330
                        u = this.address
                        u = uint8(_6208 + idx) % _7776
                        u = _9285
                        continue 
                    require 0 < mem[ceil32(arg4.length) + 128]
                    _10467 = mem[ceil32(arg4.length) + 160]
                    require 0 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                    _10504 = mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                    require 0 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                    _10553 = mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                    mem[mem[64] + 4] = mem[ceil32(arg4.length) + 172 len 20]
                    mem[mem[64] + 36] = _10504
                    require ext_code.size(address(_10553))
                    call address(_10553).0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], _10504
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = idx + 1
                    s = s
                    t = _10504
                    u = _10467
                    u = uint8(_6208 + idx) % _7776
                    u = _9285
                    continue 
                if not this.address:
                    if uint8(_6208) == _7776 - 1:
                        idx = idx + 1
                        s = s
                        t = _9330
                        u = this.address
                        u = uint8(_6208 + idx) % _7776
                        u = _9285
                        continue 
                    if uint8(_6208 + idx) % _7776 != _7776 - 1:
                        idx = idx + 1
                        s = s
                        t = _9330
                        u = this.address
                        u = uint8(_6208 + idx) % _7776
                        u = _9285
                        continue 
                    require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                    if mem[(32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                        idx = idx + 1
                        s = s
                        t = _9330
                        u = this.address
                        u = uint8(_6208 + idx) % _7776
                        u = _9285
                        continue 
                    require 0 < mem[ceil32(arg4.length) + 128]
                    _10506 = mem[ceil32(arg4.length) + 160]
                    require 0 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                    _10556 = mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                    require 0 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                    _10598 = mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                    mem[mem[64] + 4] = mem[ceil32(arg4.length) + 172 len 20]
                    mem[mem[64] + 36] = _10556
                    require ext_code.size(address(_10598))
                    call address(_10598).0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], _10556
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = idx + 1
                    s = s
                    t = _10556
                    u = _10506
                    u = uint8(_6208 + idx) % _7776
                    u = _9285
                    continue 
                require mem[ceil32(arg4.length) + 128]
                require (uint8(_6208 + idx) % _7776) + 1 % mem[ceil32(arg4.length) + 128] < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                _10035 = mem[(32 * (uint8(_6208 + idx) % _7776) + 1 % mem[ceil32(arg4.length) + 128]) + (32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = _9339
                require ext_code.size(address(_10035))
                call address(_10035).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(this.address), _9339
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if uint8(_6208) == _7776 - 1:
                    idx = idx + 1
                    s = s
                    t = _9330
                    u = this.address
                    u = uint8(_6208 + idx) % _7776
                    u = _9285
                    continue 
                if uint8(_6208 + idx) % _7776 != _7776 - 1:
                    idx = idx + 1
                    s = s
                    t = _9330
                    u = this.address
                    u = uint8(_6208 + idx) % _7776
                    u = _9285
                    continue 
                require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                if mem[(32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                    idx = idx + 1
                    s = s
                    t = _9330
                    u = this.address
                    u = uint8(_6208 + idx) % _7776
                    u = _9285
                    continue 
                require 0 < mem[ceil32(arg4.length) + 128]
                _10712 = mem[ceil32(arg4.length) + 160]
                require 0 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                _10732 = mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                require 0 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                _10755 = mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                mem[mem[64] + 4] = mem[ceil32(arg4.length) + 172 len 20]
                mem[mem[64] + 36] = _10732
                require ext_code.size(address(_10755))
                call address(_10755).0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _10732
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = idx + 1
                s = s
                t = _10732
                u = _10712
                u = uint8(_6208 + idx) % _7776
                u = _9285
                continue 
            require _7776
            require (uint8(_6208 + idx) % _7776) + 1 % _7776 < mem[ceil32(arg4.length) + 128]
            _9306 = mem[(32 * (uint8(_6208 + idx) % _7776) + 1 % _7776) + ceil32(arg4.length) + 160]
            if mem[(32 * uint8(_6208 + idx) % _7776) + (32 * _6) + ceil32(arg4.length) + 223 len 1] < 2:
                require uint8(_6208 + idx) % _7776 < mem[(32 * _1565) + (32 * _6) + ceil32(arg4.length) + 192]
                _9338 = mem[(32 * uint8(_6208 + idx) % _7776) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                require (uint8(_6208 + idx) % _7776) + 1 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                if Mask(1, 7, mem[(32 * uint8(_6208 + idx) % _7776) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]):
                    _9439 = mem[(32 * (uint8(_6208 + idx) % _7776) + 1) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                    if mem[(32 * uint8(_6208 + idx) % _7776) + (32 * _6) + ceil32(arg4.length) + 223 len 1]:
                        if mem[(32 * uint8(_6208 + idx) % _7776) + (32 * _6) + ceil32(arg4.length) + 223 len 1] != 1:
                            if uint8(_6208) == _7776 - 1:
                                idx = idx + 1
                                s = Mask(1, 7, mem[(32 * uint8(_6208 + idx) % _7776) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224])
                                t = 0
                                u = mem[(32 * (uint8(_6208 + idx) % _7776) + 1 % _7776) + ceil32(arg4.length) + 160]
                                u = uint8(_6208 + idx) % _7776
                                u = mem[(32 * uint8(_6208 + idx) % _7776) + (32 * _6) + ceil32(arg4.length) + 192]
                                continue 
                            if uint8(_6208 + idx) % _7776 != _7776 - 1:
                                idx = idx + 1
                                s = Mask(1, 7, mem[(32 * uint8(_6208 + idx) % _7776) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224])
                                t = 0
                                u = mem[(32 * (uint8(_6208 + idx) % _7776) + 1 % _7776) + ceil32(arg4.length) + 160]
                                u = uint8(_6208 + idx) % _7776
                                u = mem[(32 * uint8(_6208 + idx) % _7776) + (32 * _6) + ceil32(arg4.length) + 192]
                                continue 
                            require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                            if mem[(32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                                idx = idx + 1
                                s = Mask(1, 7, mem[(32 * uint8(_6208 + idx) % _7776) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224])
                                t = 0
                                u = mem[(32 * (uint8(_6208 + idx) % _7776) + 1 % _7776) + ceil32(arg4.length) + 160]
                                u = uint8(_6208 + idx) % _7776
                                u = mem[(32 * uint8(_6208 + idx) % _7776) + (32 * _6) + ceil32(arg4.length) + 192]
                                continue 
                            require 0 < mem[ceil32(arg4.length) + 128]
                            _9874 = mem[ceil32(arg4.length) + 160]
                            require 0 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                            _9914 = mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                            require 0 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                            _9960 = mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                            mem[mem[64] + 4] = mem[ceil32(arg4.length) + 172 len 20]
                            mem[mem[64] + 36] = _9914
                            require ext_code.size(address(_9960))
                            call address(_9960).0xa9059cbb with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], _9914
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            s = Mask(1, 7, _9338)
                            t = _9914
                            u = _9874
                            u = uint8(_6208 + idx) % _7776
                            u = _9285
                            continue 
                        require uint8(_6208 + idx) % _7776 < mem[ceil32(arg4.length) + 128]
                        _9598 = mem[(32 * uint8(_6208 + idx) % _7776) + ceil32(arg4.length) + 160]
                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = _9439
                        mem[mem[64] + 68] = address(_9306)
                        require ext_code.size(address(_9598))
                        call address(_9598).swap(uint256 arg1, uint256 arg2, address arg3) with:
                             gas gas_remaining wei
                            args 0, _9439, address(_9306)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if uint8(_6208) == _7776 - 1:
                            idx = idx + 1
                            s = Mask(1, 7, _9338)
                            t = 0
                            u = _9306
                            u = uint8(_6208 + idx) % _7776
                            u = _9285
                            continue 
                        if uint8(_6208 + idx) % _7776 != _7776 - 1:
                            idx = idx + 1
                            s = Mask(1, 7, _9338)
                            t = 0
                            u = _9306
                            u = uint8(_6208 + idx) % _7776
                            u = _9285
                            continue 
                        require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                        if mem[(32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                            idx = idx + 1
                            s = Mask(1, 7, _9338)
                            t = 0
                            u = _9306
                            u = uint8(_6208 + idx) % _7776
                            u = _9285
                            continue 
                        require 0 < mem[ceil32(arg4.length) + 128]
                        _10101 = mem[ceil32(arg4.length) + 160]
                        require 0 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                        _10163 = mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                        require 0 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                        _10208 = mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                        mem[mem[64] + 4] = mem[ceil32(arg4.length) + 172 len 20]
                        mem[mem[64] + 36] = _10163
                        require ext_code.size(address(_10208))
                        call address(_10208).0xa9059cbb with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _10163
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        s = Mask(1, 7, _9338)
                        t = _10163
                        u = _10101
                        u = uint8(_6208 + idx) % _7776
                        u = _9285
                        continue 
                    require uint8(_6208 + idx) % _7776 < mem[ceil32(arg4.length) + 128]
                    _9543 = mem[(32 * uint8(_6208 + idx) % _7776) + ceil32(arg4.length) + 160]
                    _9601 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_9601 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_9601 + 36] = 0
                    mem[_9601 + 68] = _9439
                    mem[_9601 + 100] = address(_9306)
                    mem[_9601 + 132] = 128
                    mem[_9601 + 164] = mem[_9601]
                    s = 0
                    while s < mem[_9601]:
                        mem[_9601 + s + 196] = mem[_9601 + s + 32]
                        s = s + 32
                        continue 
                    if not mem[_9601] % 32:
                        require ext_code.size(address(_9543))
                        call address(_9543).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _9439, address(_9306), 128, mem[_9601 + 164 len mem[_9601] + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if uint8(_6208) == _7776 - 1:
                            idx = idx + 1
                            s = Mask(1, 7, _9338)
                            t = 0
                            u = _9306
                            u = uint8(_6208 + idx) % _7776
                            u = _9285
                            continue 
                        if uint8(_6208 + idx) % _7776 != _7776 - 1:
                            idx = idx + 1
                            s = Mask(1, 7, _9338)
                            t = 0
                            u = _9306
                            u = uint8(_6208 + idx) % _7776
                            u = _9285
                            continue 
                        require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                        if mem[(32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                            idx = idx + 1
                            s = Mask(1, 7, _9338)
                            t = 0
                            u = _9306
                            u = uint8(_6208 + idx) % _7776
                            u = _9285
                            continue 
                        require 0 < mem[ceil32(arg4.length) + 128]
                        _10926 = mem[ceil32(arg4.length) + 160]
                        require 0 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                        _10970 = mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                        require 0 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                        _11026 = mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                        mem[_9601 + 36] = mem[ceil32(arg4.length) + 172 len 20]
                        mem[_9601 + 68] = _10970
                        require ext_code.size(address(_11026))
                        call address(_11026).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(_10926), _10970
                        mem[_9601 + 32] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        s = Mask(1, 7, _9338)
                        t = _10970
                        u = _10926
                        u = uint8(_6208 + idx) % _7776
                        u = _9285
                        continue 
                    mem[floor32(mem[_9601]) + _9601 + 196] = mem[floor32(mem[_9601]) + _9601 + -(mem[_9601] % 32) + 228 len mem[_9601] % 32]
                    require ext_code.size(address(_9543))
                    call address(_9543).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, _9439, address(_9306), 128, mem[_9601], mem[_9601 + 196 len floor32(mem[_9601]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if uint8(_6208) == _7776 - 1:
                        idx = idx + 1
                        s = Mask(1, 7, _9338)
                        t = 0
                        u = _9306
                        u = uint8(_6208 + idx) % _7776
                        u = _9285
                        continue 
                    if uint8(_6208 + idx) % _7776 != _7776 - 1:
                        idx = idx + 1
                        s = Mask(1, 7, _9338)
                        t = 0
                        u = _9306
                        u = uint8(_6208 + idx) % _7776
                        u = _9285
                        continue 
                    require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                    if mem[(32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                        idx = idx + 1
                        s = Mask(1, 7, _9338)
                        t = 0
                        u = _9306
                        u = uint8(_6208 + idx) % _7776
                        u = _9285
                        continue 
                    require 0 < mem[ceil32(arg4.length) + 128]
                    _10972 = mem[ceil32(arg4.length) + 160]
                    require 0 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                    _11029 = mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                    require 0 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                    _11070 = mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                    mem[_9601 + 36] = mem[ceil32(arg4.length) + 172 len 20]
                    mem[_9601 + 68] = _11029
                    require ext_code.size(address(_11070))
                    call address(_11070).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(_10972), _11029
                    mem[_9601 + 32] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = idx + 1
                    s = Mask(1, 7, _9338)
                    t = _11029
                    u = _10972
                    u = uint8(_6208 + idx) % _7776
                    u = _9285
                    continue 
                _9440 = mem[(32 * (uint8(_6208 + idx) % _7776) + 1) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                if mem[(32 * uint8(_6208 + idx) % _7776) + (32 * _6) + ceil32(arg4.length) + 223 len 1]:
                    if mem[(32 * uint8(_6208 + idx) % _7776) + (32 * _6) + ceil32(arg4.length) + 223 len 1] != 1:
                        if uint8(_6208) == _7776 - 1:
                            idx = idx + 1
                            s = Mask(1, 7, mem[(32 * uint8(_6208 + idx) % _7776) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224])
                            t = mem[(32 * (uint8(_6208 + idx) % _7776) + 1) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                            u = mem[(32 * (uint8(_6208 + idx) % _7776) + 1 % _7776) + ceil32(arg4.length) + 160]
                            u = uint8(_6208 + idx) % _7776
                            u = mem[(32 * uint8(_6208 + idx) % _7776) + (32 * _6) + ceil32(arg4.length) + 192]
                            continue 
                        if uint8(_6208 + idx) % _7776 != _7776 - 1:
                            idx = idx + 1
                            s = Mask(1, 7, mem[(32 * uint8(_6208 + idx) % _7776) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224])
                            t = mem[(32 * (uint8(_6208 + idx) % _7776) + 1) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                            u = mem[(32 * (uint8(_6208 + idx) % _7776) + 1 % _7776) + ceil32(arg4.length) + 160]
                            u = uint8(_6208 + idx) % _7776
                            u = mem[(32 * uint8(_6208 + idx) % _7776) + (32 * _6) + ceil32(arg4.length) + 192]
                            continue 
                        require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                        if mem[(32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                            idx = idx + 1
                            s = Mask(1, 7, mem[(32 * uint8(_6208 + idx) % _7776) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224])
                            t = mem[(32 * (uint8(_6208 + idx) % _7776) + 1) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                            u = mem[(32 * (uint8(_6208 + idx) % _7776) + 1 % _7776) + ceil32(arg4.length) + 160]
                            u = uint8(_6208 + idx) % _7776
                            u = mem[(32 * uint8(_6208 + idx) % _7776) + (32 * _6) + ceil32(arg4.length) + 192]
                            continue 
                        require 0 < mem[ceil32(arg4.length) + 128]
                        _9877 = mem[ceil32(arg4.length) + 160]
                        require 0 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                        _9917 = mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                        require 0 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                        _9963 = mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                        mem[mem[64] + 4] = mem[ceil32(arg4.length) + 172 len 20]
                        mem[mem[64] + 36] = _9917
                        require ext_code.size(address(_9963))
                        call address(_9963).0xa9059cbb with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _9917
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        s = Mask(1, 7, _9338)
                        t = _9917
                        u = _9877
                        u = uint8(_6208 + idx) % _7776
                        u = _9285
                        continue 
                    require uint8(_6208 + idx) % _7776 < mem[ceil32(arg4.length) + 128]
                    _9602 = mem[(32 * uint8(_6208 + idx) % _7776) + ceil32(arg4.length) + 160]
                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _9440
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = address(_9306)
                    require ext_code.size(address(_9602))
                    call address(_9602).swap(uint256 arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args _9440, 0, address(_9306)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if uint8(_6208) == _7776 - 1:
                        idx = idx + 1
                        s = Mask(1, 7, _9338)
                        t = _9440
                        u = _9306
                        u = uint8(_6208 + idx) % _7776
                        u = _9285
                        continue 
                    if uint8(_6208 + idx) % _7776 != _7776 - 1:
                        idx = idx + 1
                        s = Mask(1, 7, _9338)
                        t = _9440
                        u = _9306
                        u = uint8(_6208 + idx) % _7776
                        u = _9285
                        continue 
                    require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                    if mem[(32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                        idx = idx + 1
                        s = Mask(1, 7, _9338)
                        t = _9440
                        u = _9306
                        u = uint8(_6208 + idx) % _7776
                        u = _9285
                        continue 
                    require 0 < mem[ceil32(arg4.length) + 128]
                    _10106 = mem[ceil32(arg4.length) + 160]
                    require 0 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                    _10167 = mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                    require 0 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                    _10212 = mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                    mem[mem[64] + 4] = mem[ceil32(arg4.length) + 172 len 20]
                    mem[mem[64] + 36] = _10167
                    require ext_code.size(address(_10212))
                    call address(_10212).0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], _10167
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = idx + 1
                    s = Mask(1, 7, _9338)
                    t = _10167
                    u = _10106
                    u = uint8(_6208 + idx) % _7776
                    u = _9285
                    continue 
                require uint8(_6208 + idx) % _7776 < mem[ceil32(arg4.length) + 128]
                _9545 = mem[(32 * uint8(_6208 + idx) % _7776) + ceil32(arg4.length) + 160]
                _9605 = mem[64]
                mem[64] = mem[64] + 32
                mem[_9605 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_9605 + 36] = _9440
                mem[_9605 + 68] = 0
                mem[_9605 + 100] = address(_9306)
                mem[_9605 + 132] = 128
                mem[_9605 + 164] = mem[_9605]
                s = 0
                while s < mem[_9605]:
                    mem[_9605 + s + 196] = mem[_9605 + s + 32]
                    s = s + 32
                    continue 
                if not mem[_9605] % 32:
                    require ext_code.size(address(_9545))
                    call address(_9545).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _9440, 0, address(_9306), 128, mem[_9605 + 164 len mem[_9605] + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if uint8(_6208) == _7776 - 1:
                        idx = idx + 1
                        s = Mask(1, 7, _9338)
                        t = _9440
                        u = _9306
                        u = uint8(_6208 + idx) % _7776
                        u = _9285
                        continue 
                    if uint8(_6208 + idx) % _7776 != _7776 - 1:
                        idx = idx + 1
                        s = Mask(1, 7, _9338)
                        t = _9440
                        u = _9306
                        u = uint8(_6208 + idx) % _7776
                        u = _9285
                        continue 
                    require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                    if mem[(32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                        idx = idx + 1
                        s = Mask(1, 7, _9338)
                        t = _9440
                        u = _9306
                        u = uint8(_6208 + idx) % _7776
                        u = _9285
                        continue 
                    require 0 < mem[ceil32(arg4.length) + 128]
                    _10929 = mem[ceil32(arg4.length) + 160]
                    require 0 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                    _10974 = mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                    require 0 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                    _11031 = mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                    mem[_9605 + 36] = mem[ceil32(arg4.length) + 172 len 20]
                    mem[_9605 + 68] = _10974
                    require ext_code.size(address(_11031))
                    call address(_11031).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(_10929), _10974
                    mem[_9605 + 32] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = idx + 1
                    s = Mask(1, 7, _9338)
                    t = _10974
                    u = _10929
                    u = uint8(_6208 + idx) % _7776
                    u = _9285
                    continue 
                mem[floor32(mem[_9605]) + _9605 + 196] = mem[floor32(mem[_9605]) + _9605 + -(mem[_9605] % 32) + 228 len mem[_9605] % 32]
                require ext_code.size(address(_9545))
                call address(_9545).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _9440, 0, address(_9306), 128, mem[_9605], mem[_9605 + 196 len floor32(mem[_9605]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if uint8(_6208) == _7776 - 1:
                    idx = idx + 1
                    s = Mask(1, 7, _9338)
                    t = _9440
                    u = _9306
                    u = uint8(_6208 + idx) % _7776
                    u = _9285
                    continue 
                if uint8(_6208 + idx) % _7776 != _7776 - 1:
                    idx = idx + 1
                    s = Mask(1, 7, _9338)
                    t = _9440
                    u = _9306
                    u = uint8(_6208 + idx) % _7776
                    u = _9285
                    continue 
                require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                if mem[(32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                    idx = idx + 1
                    s = Mask(1, 7, _9338)
                    t = _9440
                    u = _9306
                    u = uint8(_6208 + idx) % _7776
                    u = _9285
                    continue 
                require 0 < mem[ceil32(arg4.length) + 128]
                _10976 = mem[ceil32(arg4.length) + 160]
                require 0 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                _11034 = mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                require 0 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                _11073 = mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                mem[_9605 + 36] = mem[ceil32(arg4.length) + 172 len 20]
                mem[_9605 + 68] = _11034
                require ext_code.size(address(_11073))
                call address(_11073).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(_10976), _11034
                mem[_9605 + 32] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = idx + 1
                s = Mask(1, 7, _9338)
                t = _11034
                u = _10976
                u = uint8(_6208 + idx) % _7776
                u = _9285
                continue 
            if mem[(32 * uint8(_6208 + idx) % _7776) + (32 * _6) + ceil32(arg4.length) + 223 len 1] != 2:
                if uint8(_6208) == _7776 - 1:
                    idx = idx + 1
                    s = s
                    t = t
                    u = mem[(32 * (uint8(_6208 + idx) % _7776) + 1 % _7776) + ceil32(arg4.length) + 160]
                    u = uint8(_6208 + idx) % _7776
                    u = mem[(32 * uint8(_6208 + idx) % _7776) + (32 * _6) + ceil32(arg4.length) + 192]
                    continue 
                if uint8(_6208 + idx) % _7776 != _7776 - 1:
                    idx = idx + 1
                    s = s
                    t = t
                    u = mem[(32 * (uint8(_6208 + idx) % _7776) + 1 % _7776) + ceil32(arg4.length) + 160]
                    u = uint8(_6208 + idx) % _7776
                    u = mem[(32 * uint8(_6208 + idx) % _7776) + (32 * _6) + ceil32(arg4.length) + 192]
                    continue 
                require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                if mem[(32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                    idx = idx + 1
                    s = s
                    t = t
                    u = mem[(32 * (uint8(_6208 + idx) % _7776) + 1 % _7776) + ceil32(arg4.length) + 160]
                    u = uint8(_6208 + idx) % _7776
                    u = mem[(32 * uint8(_6208 + idx) % _7776) + (32 * _6) + ceil32(arg4.length) + 192]
                    continue 
                require 0 < mem[ceil32(arg4.length) + 128]
                _9593 = mem[ceil32(arg4.length) + 160]
                require 0 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                _9621 = mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                require 0 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                _9649 = mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                mem[mem[64] + 4] = mem[ceil32(arg4.length) + 172 len 20]
                mem[mem[64] + 36] = _9621
                require ext_code.size(address(_9649))
                call address(_9649).0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _9621
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = idx + 1
                s = s
                t = _9621
                u = _9593
                u = uint8(_6208 + idx) % _7776
                u = _9285
                continue 
            require uint8(_6208 + idx) % _7776 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
            _9351 = mem[(32 * uint8(_6208 + idx) % _7776) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
            require (uint8(_6208 + idx) % _7776) + 1 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
            _9375 = mem[(32 * (uint8(_6208 + idx) % _7776) + 1) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
            require uint8(_6208 + idx) % _7776 < mem[(32 * _1565) + (32 * _6) + ceil32(arg4.length) + 192]
            _9438 = mem[(32 * uint8(_6208 + idx) % _7776) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
            require uint8(_6208 + idx) % _7776 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
            _9540 = mem[(32 * uint8(_6208 + idx) % _7776) + (32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
            require uint8(_6208 + idx) % _7776 < mem[ceil32(arg4.length) + 128]
            mem[mem[64] + 4] = mem[(32 * uint8(_6208 + idx) % _7776) + ceil32(arg4.length) + 172 len 20]
            mem[mem[64] + 36] = _9351
            require ext_code.size(address(_9540))
            call address(_9540).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], _9351
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require uint8(_6208 + idx) % _7776 < mem[ceil32(arg4.length) + 128]
            if not Mask(1, 6, _9438):
                _9758 = mem[(32 * uint8(_6208 + idx) % _7776) + ceil32(arg4.length) + 160]
                mem[mem[64]] = 0x3df0212400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = ('signextend', 15, ('mask_shl', 3, 3, -3, ('var', '_9438')))
                mem[mem[64] + 36] = ('signextend', 15, ('mask_shl', 3, 0, 0, ('var', '_9438')))
                mem[mem[64] + 68] = _9351
                mem[mem[64] + 100] = _9375
                require ext_code.size(address(_9758))
                call address(_9758).exchange(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args ('signextend', 15, ('mask_shl', 3, 3, -3, ('var', '_9438'))), ('signextend', 15, ('mask_shl', 3, 0, 0, ('var', '_9438'))), _9351, _9375
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if this.address == address(_9306):
                    if uint8(_6208) == _7776 - 1:
                        idx = idx + 1
                        s = s
                        t = _9351
                        u = _9306
                        u = uint8(_6208 + idx) % _7776
                        u = _9285
                        continue 
                    if uint8(_6208 + idx) % _7776 != _7776 - 1:
                        idx = idx + 1
                        s = s
                        t = _9351
                        u = _9306
                        u = uint8(_6208 + idx) % _7776
                        u = _9285
                        continue 
                    require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                    if mem[(32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                        idx = idx + 1
                        s = s
                        t = _9351
                        u = _9306
                        u = uint8(_6208 + idx) % _7776
                        u = _9285
                        continue 
                    require 0 < mem[ceil32(arg4.length) + 128]
                    _10538 = mem[ceil32(arg4.length) + 160]
                    require 0 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                    _10584 = mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                    require 0 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                    _10624 = mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                    mem[mem[64] + 4] = mem[ceil32(arg4.length) + 172 len 20]
                    mem[mem[64] + 36] = _10584
                    require ext_code.size(address(_10624))
                    call address(_10624).0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], _10584
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = idx + 1
                    s = s
                    t = _10584
                    u = _10538
                    u = uint8(_6208 + idx) % _7776
                    u = _9285
                    continue 
                if not address(_9306):
                    if uint8(_6208) == _7776 - 1:
                        idx = idx + 1
                        s = s
                        t = _9351
                        u = _9306
                        u = uint8(_6208 + idx) % _7776
                        u = _9285
                        continue 
                    if uint8(_6208 + idx) % _7776 != _7776 - 1:
                        idx = idx + 1
                        s = s
                        t = _9351
                        u = _9306
                        u = uint8(_6208 + idx) % _7776
                        u = _9285
                        continue 
                    require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                    if mem[(32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                        idx = idx + 1
                        s = s
                        t = _9351
                        u = _9306
                        u = uint8(_6208 + idx) % _7776
                        u = _9285
                        continue 
                    require 0 < mem[ceil32(arg4.length) + 128]
                    _10586 = mem[ceil32(arg4.length) + 160]
                    require 0 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                    _10627 = mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                    require 0 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                    _10658 = mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                    mem[mem[64] + 4] = mem[ceil32(arg4.length) + 172 len 20]
                    mem[mem[64] + 36] = _10627
                    require ext_code.size(address(_10658))
                    call address(_10658).0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], _10627
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = idx + 1
                    s = s
                    t = _10627
                    u = _10586
                    u = uint8(_6208 + idx) % _7776
                    u = _9285
                    continue 
                require mem[ceil32(arg4.length) + 128]
                require (uint8(_6208 + idx) % _7776) + 1 % mem[ceil32(arg4.length) + 128] < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                _10156 = mem[(32 * (uint8(_6208 + idx) % _7776) + 1 % mem[ceil32(arg4.length) + 128]) + (32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                mem[mem[64] + 4] = address(_9306)
                mem[mem[64] + 36] = _9375
                require ext_code.size(address(_10156))
                call address(_10156).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(_9306), _9375
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if uint8(_6208) == _7776 - 1:
                    idx = idx + 1
                    s = s
                    t = _9351
                    u = _9306
                    u = uint8(_6208 + idx) % _7776
                    u = _9285
                    continue 
                if uint8(_6208 + idx) % _7776 != _7776 - 1:
                    idx = idx + 1
                    s = s
                    t = _9351
                    u = _9306
                    u = uint8(_6208 + idx) % _7776
                    u = _9285
                    continue 
                require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                if mem[(32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                    idx = idx + 1
                    s = s
                    t = _9351
                    u = _9306
                    u = uint8(_6208 + idx) % _7776
                    u = _9285
                    continue 
                require 0 < mem[ceil32(arg4.length) + 128]
                _10748 = mem[ceil32(arg4.length) + 160]
                require 0 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                _10762 = mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                require 0 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                _10774 = mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                mem[mem[64] + 4] = mem[ceil32(arg4.length) + 172 len 20]
                mem[mem[64] + 36] = _10762
                require ext_code.size(address(_10774))
                call address(_10774).0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _10762
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = idx + 1
                s = s
                t = _10762
                u = _10748
                u = uint8(_6208 + idx) % _7776
                u = _9285
                continue 
            _9761 = mem[(32 * uint8(_6208 + idx) % _7776) + ceil32(arg4.length) + 160]
            mem[mem[64]] = 0xa6417ed600000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = ('signextend', 15, ('mask_shl', 3, 3, -3, ('var', '_9438')))
            mem[mem[64] + 36] = ('signextend', 15, ('mask_shl', 3, 0, 0, ('var', '_9438')))
            mem[mem[64] + 68] = _9351
            mem[mem[64] + 100] = 0
            require ext_code.size(address(_9761))
            call address(_9761).exchange_underlying(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
                 gas gas_remaining wei
                args ('signextend', 15, ('mask_shl', 3, 3, -3, ('var', '_9438'))), ('signextend', 15, ('mask_shl', 3, 0, 0, ('var', '_9438'))), _9351, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if this.address == address(_9306):
                if uint8(_6208) == _7776 - 1:
                    idx = idx + 1
                    s = s
                    t = _9351
                    u = _9306
                    u = uint8(_6208 + idx) % _7776
                    u = _9285
                    continue 
                if uint8(_6208 + idx) % _7776 != _7776 - 1:
                    idx = idx + 1
                    s = s
                    t = _9351
                    u = _9306
                    u = uint8(_6208 + idx) % _7776
                    u = _9285
                    continue 
                require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                if mem[(32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                    idx = idx + 1
                    s = s
                    t = _9351
                    u = _9306
                    u = uint8(_6208 + idx) % _7776
                    u = _9285
                    continue 
                require 0 < mem[ceil32(arg4.length) + 128]
                _10541 = mem[ceil32(arg4.length) + 160]
                require 0 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                _10588 = mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                require 0 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                _10629 = mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                mem[mem[64] + 4] = mem[ceil32(arg4.length) + 172 len 20]
                mem[mem[64] + 36] = _10588
                require ext_code.size(address(_10629))
                call address(_10629).0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _10588
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = idx + 1
                s = s
                t = _10588
                u = _10541
                u = uint8(_6208 + idx) % _7776
                u = _9285
                continue 
            if not address(_9306):
                if uint8(_6208) == _7776 - 1:
                    idx = idx + 1
                    s = s
                    t = _9351
                    u = _9306
                    u = uint8(_6208 + idx) % _7776
                    u = _9285
                    continue 
                if uint8(_6208 + idx) % _7776 != _7776 - 1:
                    idx = idx + 1
                    s = s
                    t = _9351
                    u = _9306
                    u = uint8(_6208 + idx) % _7776
                    u = _9285
                    continue 
                require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                if mem[(32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                    idx = idx + 1
                    s = s
                    t = _9351
                    u = _9306
                    u = uint8(_6208 + idx) % _7776
                    u = _9285
                    continue 
                require 0 < mem[ceil32(arg4.length) + 128]
                _10590 = mem[ceil32(arg4.length) + 160]
                require 0 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
                _10632 = mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                require 0 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
                _10662 = mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
                mem[mem[64] + 4] = mem[ceil32(arg4.length) + 172 len 20]
                mem[mem[64] + 36] = _10632
                require ext_code.size(address(_10662))
                call address(_10662).0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _10632
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = idx + 1
                s = s
                t = _10632
                u = _10590
                u = uint8(_6208 + idx) % _7776
                u = _9285
                continue 
            require mem[ceil32(arg4.length) + 128]
            require (uint8(_6208 + idx) % _7776) + 1 % mem[ceil32(arg4.length) + 128] < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
            _10159 = mem[(32 * (uint8(_6208 + idx) % _7776) + 1 % mem[ceil32(arg4.length) + 128]) + (32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
            mem[mem[64] + 4] = address(_9306)
            mem[mem[64] + 36] = _9375
            require ext_code.size(address(_10159))
            call address(_10159).0xa9059cbb with:
                 gas gas_remaining wei
                args address(_9306), _9375
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if uint8(_6208) == _7776 - 1:
                idx = idx + 1
                s = s
                t = _9351
                u = _9306
                u = uint8(_6208 + idx) % _7776
                u = _9285
                continue 
            if uint8(_6208 + idx) % _7776 != _7776 - 1:
                idx = idx + 1
                s = s
                t = _9351
                u = _9306
                u = uint8(_6208 + idx) % _7776
                u = _9285
                continue 
            require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
            if mem[(32 * _6) + ceil32(arg4.length) + 223 len 1] >= 2:
                idx = idx + 1
                s = s
                t = _9351
                u = _9306
                u = uint8(_6208 + idx) % _7776
                u = _9285
                continue 
            require 0 < mem[ceil32(arg4.length) + 128]
            _10750 = mem[ceil32(arg4.length) + 160]
            require 0 < mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 224]
            _10764 = mem[(32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
            require 0 < mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 256]
            _10777 = mem[(32 * _4668) + (32 * _3119) + (32 * _1565) + (32 * _6) + ceil32(arg4.length) + 288]
            mem[mem[64] + 4] = mem[ceil32(arg4.length) + 172 len 20]
            mem[mem[64] + 36] = _10764
            require ext_code.size(address(_10777))
            call address(_10777).0xa9059cbb with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], _10764
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = idx + 1
            s = s
            t = _10764
            u = _10750
            u = uint8(_6208 + idx) % _7776
            u = _9285
            continue 
    require stor1[tx.origin]
}



}
