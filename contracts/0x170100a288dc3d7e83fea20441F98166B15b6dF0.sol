contract main {




// =====================  Runtime code  =====================


#
#  - sub_1a4350a9(?)
#
function _fallback() payable {
    revert
}

function sub_43c4ac73(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(address(arg1))
    staticcall address(arg1).assetOf(address arg1) with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        return 0
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(arg1))
    staticcall address(arg1).getPriceOracle() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getAssetPrice(address arg1) with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).cash() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).liability() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0] << 248, ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0]
}

function sub_93f7e642(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).paused() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(arg1))
    staticcall address(arg1).getC1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    staticcall address(arg1).getXThreshold() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    staticcall address(arg1).getSlippageParamK() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    staticcall address(arg1).getSlippageParamN() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    staticcall address(arg1).getHaircutRate() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    staticcall address(arg1).getMaxPriceDeviation() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0]), 
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0]
}

function sub_b7eb0fc1(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(address(arg1))
    staticcall address(arg1).tokenInfo(address arg1) with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_call.return_data[96] == ext_call.return_data[120 len 8]
    require ext_call.return_data[128] == ext_call.return_data[146 len 14]
    require ext_call.return_data[160] == bool(ext_call.return_data[160])
    require ext_code.size(address(arg1))
    staticcall address(arg1).feeManager() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).feeRate(address arg1) with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    staticcall address(arg1).0xbc8530f9 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).state(address arg1) with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_call.return_data[96] == bool(ext_call.return_data[96])
    return ext_call.return_data[0] << 144, 
           ext_call.return_data[96] << 192,
           ext_call.return_data[128] << 144,
           bool(ext_call.return_data[160]),
           ext_call.return_data[0],
           ext_call.return_data[32],
           ext_call.return_data[64],
           bool(ext_call.return_data[96]),
           ext_call.return_data[0]
}

function balancerV2StablePoolState(address arg1, bytes32 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg3 == arg3
    mem[96] = 0xf94d466800000000000000000000000000000000000000000000000000000000
    mem[100] = arg2
    require ext_code.size(arg1)
    staticcall arg1.getPoolTokens(bytes32 arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 96
    _4 = mem[96 len 4], Mask(224, 32, arg2) >> 32
    require mem[96 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
    require mem[96 len 4], Mask(224, 32, arg2) >> 32 + 127 < return_data.size + 96
    _5 = mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]
    require mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96] <= test266151307()
    require (32 * mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 128 <= test266151307()
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 128
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + (32 * _5) + 32 <= return_data.size
    s = _4 + 128
    t = ceil32(return_data.size) + 128
    idx = 0
    while idx < _5:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    _33 = mem[128]
    require mem[128] <= test266151307()
    require mem[128] + 127 < return_data.size + 96
    _35 = mem[mem[128] + 96]
    require mem[mem[128] + 96] <= test266151307()
    _36 = mem[64]
    require mem[64] + (32 * mem[mem[128] + 96]) + 32 >= mem[64] and mem[64] + (32 * mem[mem[128] + 96]) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * mem[mem[128] + 96]) + 32
    mem[_36] = _35
    require return_data.size >= _33 + (32 * _35) + 32
    mem[_36 + 32 len 32 * _35] = mem[_33 + 128 len 32 * _35]
    require ext_code.size(arg3)
    staticcall arg3.0x18160ddd with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _63 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _64 = mem[_63]
    require ext_code.size(arg3)
    staticcall arg3.getAmplificationParameter() with:
            gas gas_remaining wei
    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _67 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 96
    _68 = mem[_67]
    require mem[_67 + 32] == bool(mem[_67 + 32])
    require ext_code.size(arg3)
    staticcall arg3.getSwapFeePercentage() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _73 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _74 = mem[_73]
    mem[mem[64]] = 160
    mem[mem[64] + 160] = _5
    idx = 0
    s = ceil32(return_data.size) + 128
    t = mem[64] + 192
    while idx < _5:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 32] = (32 * _5) + 192
    _82 = mem[_36]
    mem[mem[64] + (32 * _5) + 192] = mem[_36]
    mem[mem[64] + (32 * _5) + 224 len 32 * _82] = mem[_36 + 32 len 32 * _82]
    mem[mem[64] + 64] = _64
    mem[mem[64] + 96] = _68
    return Array(len=_5, data=mem[mem[64] + 192 len (32 * _5) + (32 * _82) + 32]), (32 * _5) + 192, _64, _68, _74
}

function balancerV2WeightedPoolState(address arg1, bytes32 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg3 == arg3
    mem[96] = 0xf94d466800000000000000000000000000000000000000000000000000000000
    mem[100] = arg2
    require ext_code.size(arg1)
    staticcall arg1.getPoolTokens(bytes32 arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 96
    _4 = mem[96 len 4], Mask(224, 32, arg2) >> 32
    require mem[96 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
    require mem[96 len 4], Mask(224, 32, arg2) >> 32 + 127 < return_data.size + 96
    _5 = mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]
    require mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96] <= test266151307()
    require (32 * mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 128 <= test266151307()
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 128
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + (32 * _5) + 32 <= return_data.size
    s = _4 + 128
    t = ceil32(return_data.size) + 128
    idx = 0
    while idx < _5:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    _36 = mem[128]
    require mem[128] <= test266151307()
    require mem[128] + 127 < return_data.size + 96
    _38 = mem[mem[128] + 96]
    require mem[mem[128] + 96] <= test266151307()
    _39 = mem[64]
    require mem[64] + (32 * mem[mem[128] + 96]) + 32 >= mem[64] and mem[64] + (32 * mem[mem[128] + 96]) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * mem[mem[128] + 96]) + 32
    mem[_39] = _38
    require return_data.size >= _36 + (32 * _38) + 32
    mem[_39 + 32 len 32 * _38] = mem[_36 + 128 len 32 * _38]
    require ext_code.size(arg3)
    staticcall arg3.0x18160ddd with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _69 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _70 = mem[_69]
    mem[mem[64]] = 0xf89f27ed00000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg3)
    staticcall arg3.getNormalizedWeights() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _73 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _74 = mem[_73]
    require mem[_73] <= test266151307()
    require _73 + mem[_73] + 31 < _73 + return_data.size
    _75 = mem[_73 + mem[_73]]
    require mem[_73 + mem[_73]] <= test266151307()
    require (32 * mem[_73 + mem[_73]]) + 32 >= 0 and _73 + ceil32(return_data.size) + (32 * mem[_73 + mem[_73]]) + 32 <= test266151307()
    mem[64] = _73 + ceil32(return_data.size) + (32 * mem[_73 + mem[_73]]) + 32
    mem[_73 + ceil32(return_data.size)] = _75
    require return_data.size >= _74 + (32 * _75) + 32
    mem[_73 + ceil32(return_data.size) + 32 len 32 * _75] = mem[_73 + _74 + 32 len 32 * _75]
    require ext_code.size(arg3)
    staticcall arg3.getSwapFeePercentage() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _93 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _94 = mem[_93]
    mem[mem[64]] = 160
    mem[mem[64] + 160] = _5
    idx = 0
    s = ceil32(return_data.size) + 128
    t = mem[64] + 192
    while idx < _5:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 32] = (32 * _5) + 192
    _104 = mem[_39]
    mem[mem[64] + (32 * _5) + 192] = mem[_39]
    mem[mem[64] + (32 * _5) + 224 len 32 * _104] = mem[_39 + 32 len 32 * _104]
    mem[mem[64] + 64] = _70
    mem[mem[64] + 96] = (32 * _5) + (32 * _104) + 224
    _110 = mem[_73 + ceil32(return_data.size)]
    mem[mem[64] + (32 * _5) + (32 * _104) + 224] = mem[_73 + ceil32(return_data.size)]
    mem[mem[64] + (32 * _5) + (32 * _104) + 256 len 32 * _110] = mem[_73 + ceil32(return_data.size) + 32 len 32 * _110]
    return Array(len=_5, data=mem[mem[64] + 192 len (32 * _5) + (32 * _104) + (32 * _110) + 64]), 
           (32 * _5) + 192,
           _70,
           (32 * _5) + (32 * _104) + 224,
           _94
}

function sub_eb653451(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1)._ntokens() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= test266151307()
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.return_data[0]:
        require ext_call.return_data[0] <= test266151307()
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
        mem[64] = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160
        if not ext_call.return_data[0]:
            idx = 0
            while idx < ext_call.return_data[0]:
                mem[mem[64] + 4] = idx
                require ext_code.size(address(arg1))
                staticcall address(arg1)._tokenInfos(uint256 arg1) with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _125 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require idx < mem[ceil32(return_data.size) + 96]
                mem[(32 * idx) + ceil32(return_data.size) + 128] = mem[_125]
                mem[mem[64] + 4] = idx
                require ext_code.size(address(arg1))
                staticcall address(arg1).getBalance(uint256 arg1) with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _168 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require idx < mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
                mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = mem[_168]
                idx = idx + 1
                continue 
            require ext_code.size(address(arg1))
            staticcall address(arg1)._totalBalance() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _116 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _124 = mem[_116]
            require ext_code.size(address(arg1))
            staticcall address(arg1)._swapFee() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _144 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _156 = mem[_144]
            _164 = mem[64]
            mem[mem[64]] = 128
            _172 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 128] = mem[ceil32(return_data.size) + 96]
            s = 0
            s = ceil32(return_data.size) + 128
            t = mem[64] + 160
            while ext_call.return_data[0] < _172:
                mem[t] = mem[s]
                s = ext_call.return_data[0] + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_164 + 32] = t - _164
            _204 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
            mem[t] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
            mem[t + 32 len 32 * _204] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160 len 32 * _204]
            mem[_164 + 64] = _124
            mem[_164 + 96] = _156
            return memory
              from mem[64]
               len t + (32 * _204) + -mem[64] + 32
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
        idx = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = idx
            require ext_code.size(address(arg1))
            staticcall address(arg1)._tokenInfos(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _127 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require idx < mem[ceil32(return_data.size) + 96]
            mem[(32 * idx) + ceil32(return_data.size) + 128] = mem[_127]
            mem[mem[64] + 4] = idx
            require ext_code.size(address(arg1))
            staticcall address(arg1).getBalance(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _169 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require idx < mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
            mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = mem[_169]
            idx = idx + 1
            continue 
        require ext_code.size(address(arg1))
        staticcall address(arg1)._totalBalance() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _118 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _126 = mem[_118]
        require ext_code.size(address(arg1))
        staticcall address(arg1)._swapFee() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _146 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _157 = mem[_146]
        _165 = mem[64]
        mem[mem[64]] = 128
        _173 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 128] = mem[ceil32(return_data.size) + 96]
        s = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 160
        while ext_call.return_data[0] < _173:
            mem[t] = mem[s]
            s = ext_call.return_data[0] + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_165 + 32] = t - _165
        _205 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
        mem[t] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
        mem[t + 32 len 32 * _205] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160 len 32 * _205]
        mem[_165 + 64] = _126
        mem[_165 + 96] = _157
        return memory
          from mem[64]
           len t + (32 * _205) + -mem[64] + 32
    mem[ceil32(return_data.size) + 128 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
    require ext_call.return_data[0] <= test266151307()
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
    mem[64] = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160
    if not ext_call.return_data[0]:
        idx = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = idx
            require ext_code.size(address(arg1))
            staticcall address(arg1)._tokenInfos(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _129 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require idx < mem[ceil32(return_data.size) + 96]
            mem[(32 * idx) + ceil32(return_data.size) + 128] = mem[_129]
            mem[mem[64] + 4] = idx
            require ext_code.size(address(arg1))
            staticcall address(arg1).getBalance(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _170 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require idx < mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
            mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = mem[_170]
            idx = idx + 1
            continue 
        require ext_code.size(address(arg1))
        staticcall address(arg1)._totalBalance() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _120 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _128 = mem[_120]
        require ext_code.size(address(arg1))
        staticcall address(arg1)._swapFee() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _148 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _158 = mem[_148]
        _166 = mem[64]
        mem[mem[64]] = 128
        _174 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 128] = mem[ceil32(return_data.size) + 96]
        s = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 160
        while ext_call.return_data[0] < _174:
            mem[t] = mem[s]
            s = ext_call.return_data[0] + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_166 + 32] = t - _166
        _206 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
        mem[t] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
        mem[t + 32 len 32 * _206] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160 len 32 * _206]
        mem[_166 + 64] = _128
        mem[_166 + 96] = _158
        return memory
          from mem[64]
           len t + (32 * _206) + -mem[64] + 32
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
    idx = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = idx
        require ext_code.size(address(arg1))
        staticcall address(arg1)._tokenInfos(uint256 arg1) with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _131 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require idx < mem[ceil32(return_data.size) + 96]
        mem[(32 * idx) + ceil32(return_data.size) + 128] = mem[_131]
        mem[mem[64] + 4] = idx
        require ext_code.size(address(arg1))
        staticcall address(arg1).getBalance(uint256 arg1) with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _171 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require idx < mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
        mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = mem[_171]
        idx = idx + 1
        continue 
    require ext_code.size(address(arg1))
    staticcall address(arg1)._totalBalance() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _122 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _130 = mem[_122]
    require ext_code.size(address(arg1))
    staticcall address(arg1)._swapFee() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _150 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _159 = mem[_150]
    _167 = mem[64]
    mem[mem[64]] = 128
    _175 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 128] = mem[ceil32(return_data.size) + 96]
    s = 0
    s = ceil32(return_data.size) + 128
    t = mem[64] + 160
    while ext_call.return_data[0] < _175:
        mem[t] = mem[s]
        s = ext_call.return_data[0] + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_167 + 32] = t - _167
    _207 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
    mem[t] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
    mem[t + 32 len 32 * _207] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160 len 32 * _207]
    mem[_167 + 64] = _130
    mem[_167 + 96] = _159
    return memory
      from mem[64]
       len t + (32 * _207) + -mem[64] + 32
}

function sub_1001f934(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 192
    require ('cd', 4).length == address(('cd', 4).length)
    mem[96] = ('cd', 4).length
    require ('cd', 4)[0] == uint8(('cd', 4)[0])
    mem[128] = ('cd', 4)[0]
    require ('cd', 4)[1] == uint8(('cd', 4)[1])
    mem[160] = ('cd', 4)[1]
    mem[192] = ('cd', 4)[2]
    require ('cd', 4)[3] == address(('cd', 4)[3])
    mem[224] = ('cd', 4)[3]
    require ('cd', 4)[4] <= test266151307()
    require cd[4] + ('cd', 4)[4] + 35 < calldata.size
    require cd[(cd[4] + ('cd', 4)[4] + 4)] <= test266151307()
    require ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 320 >= 288 and ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 320 <= test266151307()
    mem[288] = cd[(cd[4] + ('cd', 4)[4] + 4)]
    require cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + 4)] + 36 <= calldata.size
    mem[320 len cd[(cd[4] + ('cd', 4)[4] + 4)]] = call.data[cd[4] + ('cd', 4)[4] + 36 len cd[(cd[4] + ('cd', 4)[4] + 4)]]
    mem[cd[(cd[4] + ('cd', 4)[4] + 4)] + 320] = 0
    mem[256] = 288
    mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 320] = 8
    mem[64] = ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 608
    mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 352 len 256] = call.data[calldata.size len 256]
    idx = 0
    while idx < uint8(('cd', 4)[0]):
        if 1 == mem[191 len 1]:
            _1057 = mem[96]
            mem[mem[64] + 4] = ('signextend', 15, ('var', 0))
            require ext_code.size(address(_1057))
            staticcall address(_1057).balances(int128 arg1) with:
                    gas gas_remaining wei
                   args ('signextend', 15, ('var', 0))
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1073 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require idx < mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 320]
            mem[(32 * idx) + ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 352] = mem[_1073]
        else:
            _1059 = mem[96]
            mem[mem[64] + 4] = idx
            require ext_code.size(address(_1059))
            staticcall address(_1059).balances(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1074 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require idx < mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 320]
            mem[(32 * idx) + ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 352] = mem[_1074]
        idx = idx + 1
        continue 
    _1051 = mem[64]
    mem[mem[64]] = 8
    mem[64] = mem[64] + 288
    mem[_1051 + 32 len 256] = call.data[calldata.size len 256]
    if not mem[192]:
        _2096 = mem[128]
        idx = 0
        while idx < uint8(_2096):
            require idx < mem[_1051]
            mem[(32 * idx) + _1051 + 32] = 10^18
            idx = idx + 1
            continue 
        _2110 = mem[64]
        mem[mem[64]] = 8
        mem[64] = mem[64] + 288
        mem[_2110 + 32 len 256] = call.data[calldata.size len 256]
        if not mem[192]:
            mem[_2110 + 288] = 0xf446c1d000000000000000000000000000000000000000000000000000000000
            require ext_code.size(mem[108 len 20])
            staticcall mem[108 len 20].A() with:
                    gas gas_remaining wei
            mem[_2110 + 288] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(mem[108 len 20])
            staticcall mem[108 len 20].fee() with:
                    gas gas_remaining wei
            mem[_2110 + ceil32(return_data.size) + 288] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _2110 + (2 * ceil32(return_data.size)) + 288
            require return_data.size >= 32
            mem[_2110 + (2 * ceil32(return_data.size)) + 288] = 160
            _2438 = mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 320]
            mem[_2110 + (2 * ceil32(return_data.size)) + 448] = mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 320]
            mem[_2110 + (2 * ceil32(return_data.size)) + 480 len 32 * _2438] = mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 352 len 32 * _2438]
            mem[_2110 + (2 * ceil32(return_data.size)) + 320] = (32 * _2438) + 192
            mem[_2110 + (2 * ceil32(return_data.size)) + (32 * _2438) + 480] = mem[_2110]
            mem[_2110 + (2 * ceil32(return_data.size)) + (32 * _2438) + 512 len 32 * mem[_2110]] = mem[_2110 + 32 len 32 * mem[_2110]]
            mem[_2110 + (2 * ceil32(return_data.size)) + 352] = (32 * _2438) + (32 * mem[_2110]) + 224
            _4044 = mem[_1051]
            mem[_2110 + (2 * ceil32(return_data.size)) + (32 * _2438) + (32 * mem[_2110]) + 512] = mem[_1051]
            mem[_2110 + (2 * ceil32(return_data.size)) + (32 * _2438) + (32 * mem[_2110]) + 544 len 32 * _4044] = mem[_1051 + 32 len 32 * _4044]
            return Array(len=mem[_2110 + (2 * ceil32(return_data.size)) + 448 len (32 * _2438) + 32], data=mem[_2110], mem[_2110 + (2 * ceil32(return_data.size)) + (32 * _2438) + 512 len (32 * mem[_2110]) + (32 * _4044) + 32]), 
                   (32 * _2438) + 192,
                   (32 * _2438) + (32 * mem[_2110]) + 224,
                   ext_call.return_data[0],
                   ext_call.return_data[0]
        _3120 = mem[128]
        idx = 0
        while idx < uint8(_3120):
            require idx < mem[_1051]
            require idx < mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 320]
            if not mem[(32 * idx) + ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 352]:
                if 10^uint8(Mask(256, -8 * idx, mem[192]) >> 8 * idx) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 10^uint8(Mask(256, -8 * idx, mem[192]) >> 8 * idx)
                require idx < mem[_2110]
                mem[(32 * idx) + _2110 + 32] = 0 / 10^uint8(Mask(256, -8 * idx, mem[192]) >> 8 * idx)
            else:
                if mem[(32 * idx) + _1051 + 32] * mem[(32 * idx) + ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 352] / mem[(32 * idx) + ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 352] != mem[(32 * idx) + _1051 + 32]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 10^uint8(Mask(256, -8 * idx, mem[192]) >> 8 * idx) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 10^uint8(Mask(256, -8 * idx, mem[192]) >> 8 * idx)
                require idx < mem[_2110]
                mem[(32 * idx) + _2110 + 32] = mem[(32 * idx) + _1051 + 32] * mem[(32 * idx) + ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 352] / 10^uint8(Mask(256, -8 * idx, mem[192]) >> 8 * idx)
            _3120 = mem[128]
            idx = idx + 1
            continue 
        require ext_code.size(mem[108 len 20])
        staticcall mem[108 len 20].A() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3196 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _3245 = mem[_3196]
        require ext_code.size(mem[108 len 20])
        staticcall mem[108 len 20].fee() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3326 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _3456 = mem[_3326]
        mem[mem[64]] = 160
        _3587 = mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 320]
        mem[mem[64] + 160] = mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 320]
        mem[mem[64] + 192 len 32 * _3587] = mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 352 len 32 * _3587]
        mem[mem[64] + 32] = (32 * _3587) + 192
        _4045 = mem[_2110]
        mem[mem[64] + (32 * _3587) + 192] = mem[_2110]
        mem[mem[64] + (32 * _3587) + 224 len 32 * _4045] = mem[_2110 + 32 len 32 * _4045]
        mem[mem[64] + 64] = (32 * _3587) + (32 * _4045) + 224
        _4417 = mem[_1051]
        mem[mem[64] + (32 * _3587) + (32 * _4045) + 224] = mem[_1051]
        mem[mem[64] + (32 * _3587) + (32 * _4045) + 256 len 32 * _4417] = mem[_1051 + 32 len 32 * _4417]
        mem[mem[64] + 96] = _3245
        return 160, 
               (32 * _3587) + 192,
               (32 * _3587) + (32 * _4045) + 224,
               _3245,
               _3456,
               mem[mem[64] + 160 len (32 * _3587) + (32 * _4045) + (32 * _4417) + 96]
    _1054 = mem[224]
    _1055 = mem[256]
    require mem[159 len 1] <= test266151307()
    mem[_1051 + 288] = mem[159 len 1]
    mem[64] = _1051 + (32 * uint8(mem[128])) + 320
    if not mem[159 len 1]:
        if mem[mem[256]] <= 0:
            _2097 = mem[128]
            idx = 0
            while idx < uint8(_2097):
                if not mem[_1055]:
                    require idx < mem[_1051]
                    mem[(32 * idx) + _1051 + 32] = 10^18
                    idx = idx + 1
                    continue 
                if address(_1054):
                    _2172 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_2172] = 37
                    mem[_2172 + 32 len 37] = 0xfe416464726573733a206c6f772d6c6576656c207374617469632063616c6c206661696c65
                    if not ext_code.size(address(_1054)):
                        revert with 0, 'Address: static call to non-contract'
                    _2278 = mem[64]
                    _2302 = mem[_1055]
                    s = 0
                    while s < _2302:
                        mem[s + _2278] = mem[s + _1055 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_2302) <= _2302:
                        staticcall address(_1054).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _2302 + _2278 + -mem[64] - 4]
                        if not return_data.size:
                            if ext_call.success:
                                require mem[96] >= 32
                                require idx < mem[_1051]
                                mem[(32 * idx) + _1051 + 32] = mem[128]
                                idx = idx + 1
                                continue 
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            _3335 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            _3397 = mem[_2172]
                            mem[mem[64] + 36] = mem[_2172]
                            idx = 0
                            while idx < _3397:
                                mem[idx + _3335 + 68] = mem[idx + _2172 + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_3397) > _3397:
                                mem[_3335 + _3397 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(_3397) + _3335 + -mem[64] + 68
                        _3222 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_3222] = return_data.size
                        mem[_3222 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            require return_data.size >= 32
                            require idx < mem[_1051]
                            mem[(32 * idx) + _1051 + 32] = mem[_3222 + 32]
                            idx = idx + 1
                            continue 
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3337 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _3398 = mem[_2172]
                        mem[mem[64] + 36] = mem[_2172]
                        idx = 0
                        while idx < _3398:
                            mem[idx + _3337 + 68] = mem[idx + _2172 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_3398) > _3398:
                            mem[_3337 + _3398 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_3398) + _3337 + -mem[64] + 68
                    mem[_2278 + _2302] = 0
                    staticcall address(_1054).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _2302 + _2278 + -mem[64] - 4]
                    if not return_data.size:
                        if ext_call.success:
                            require mem[96] >= 32
                            require idx < mem[_1051]
                            mem[(32 * idx) + _1051 + 32] = mem[128]
                            idx = idx + 1
                            continue 
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        _3399 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _3461 = mem[_2172]
                        mem[mem[64] + 36] = mem[_2172]
                        idx = 0
                        while idx < _3461:
                            mem[idx + _3399 + 68] = mem[idx + _2172 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_3461) > _3461:
                            mem[_3399 + _3461 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_3461) + _3399 + -mem[64] + 68
                    _3248 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_3248] = return_data.size
                    mem[_3248 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        require return_data.size >= 32
                        require idx < mem[_1051]
                        mem[(32 * idx) + _1051 + 32] = mem[_3248 + 32]
                        idx = idx + 1
                        continue 
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3401 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _3462 = mem[_2172]
                    mem[mem[64] + 36] = mem[_2172]
                    idx = 0
                    while idx < _3462:
                        mem[idx + _3401 + 68] = mem[idx + _2172 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_3462) > _3462:
                        mem[_3401 + _3462 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_3462) + _3401 + -mem[64] + 68
                require idx < mem[_1051 + 288]
                _2155 = mem[(32 * idx) + _1051 + 320]
                _2196 = mem[64]
                mem[64] = mem[64] + 96
                mem[_2196] = 37
                mem[_2196 + 32 len 37] = 0xfe416464726573733a206c6f772d6c6576656c207374617469632063616c6c206661696c65
                if not ext_code.size(address(_2155)):
                    revert with 0, 'Address: static call to non-contract'
                _2300 = mem[64]
                _2330 = mem[_1055]
                s = 0
                while s < _2330:
                    mem[s + _2300] = mem[s + _1055 + 32]
                    s = s + 32
                    continue 
                if ceil32(_2330) <= _2330:
                    staticcall address(_2155).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _2330 + _2300 + -mem[64] - 4]
                    if not return_data.size:
                        if ext_call.success:
                            require mem[96] >= 32
                            require idx < mem[_1051]
                            mem[(32 * idx) + _1051 + 32] = mem[128]
                            idx = idx + 1
                            continue 
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        _3329 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _3391 = mem[_2196]
                        mem[mem[64] + 36] = mem[_2196]
                        idx = 0
                        while idx < _3391:
                            mem[idx + _3329 + 68] = mem[idx + _2196 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_3391) > _3391:
                            mem[_3329 + _3391 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_3391) + _3329 + -mem[64] + 68
                    _3220 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_3220] = return_data.size
                    mem[_3220 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        require return_data.size >= 32
                        require idx < mem[_1051]
                        mem[(32 * idx) + _1051 + 32] = mem[_3220 + 32]
                        idx = idx + 1
                        continue 
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3331 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _3392 = mem[_2196]
                    mem[mem[64] + 36] = mem[_2196]
                    idx = 0
                    while idx < _3392:
                        mem[idx + _3331 + 68] = mem[idx + _2196 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_3392) > _3392:
                        mem[_3331 + _3392 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_3392) + _3331 + -mem[64] + 68
                mem[_2300 + _2330] = 0
                staticcall address(_2155).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _2330 + _2300 + -mem[64] - 4]
                if not return_data.size:
                    if ext_call.success:
                        require mem[96] >= 32
                        require idx < mem[_1051]
                        mem[(32 * idx) + _1051 + 32] = mem[128]
                        idx = idx + 1
                        continue 
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    _3393 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _3459 = mem[_2196]
                    mem[mem[64] + 36] = mem[_2196]
                    idx = 0
                    while idx < _3459:
                        mem[idx + _3393 + 68] = mem[idx + _2196 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_3459) > _3459:
                        mem[_3393 + _3459 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_3459) + _3393 + -mem[64] + 68
                _3247 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_3247] = return_data.size
                mem[_3247 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    require return_data.size >= 32
                    require idx < mem[_1051]
                    mem[(32 * idx) + _1051 + 32] = mem[_3247 + 32]
                    idx = idx + 1
                    continue 
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                _3395 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _3460 = mem[_2196]
                mem[mem[64] + 36] = mem[_2196]
                idx = 0
                while idx < _3460:
                    mem[idx + _3395 + 68] = mem[idx + _2196 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_3460) > _3460:
                    mem[_3395 + _3460 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_3460) + _3395 + -mem[64] + 68
            _2112 = mem[64]
            mem[mem[64]] = 8
            mem[64] = mem[64] + 288
            mem[_2112 + 32 len 256] = call.data[calldata.size len 256]
            if not mem[192]:
                mem[_2112 + 288] = 0xf446c1d000000000000000000000000000000000000000000000000000000000
                require ext_code.size(mem[108 len 20])
                staticcall mem[108 len 20].A() with:
                        gas gas_remaining wei
                mem[_2112 + 288] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(mem[108 len 20])
                staticcall mem[108 len 20].fee() with:
                        gas gas_remaining wei
                mem[_2112 + ceil32(return_data.size) + 288] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _2112 + (2 * ceil32(return_data.size)) + 288
                require return_data.size >= 32
                mem[_2112 + (2 * ceil32(return_data.size)) + 288] = 160
                _2442 = mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 320]
                mem[_2112 + (2 * ceil32(return_data.size)) + 448] = mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 320]
                mem[_2112 + (2 * ceil32(return_data.size)) + 480 len 32 * _2442] = mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 352 len 32 * _2442]
                mem[_2112 + (2 * ceil32(return_data.size)) + 320] = (32 * _2442) + 192
                mem[_2112 + (2 * ceil32(return_data.size)) + (32 * _2442) + 480] = mem[_2112]
                mem[_2112 + (2 * ceil32(return_data.size)) + (32 * _2442) + 512 len 32 * mem[_2112]] = mem[_2112 + 32 len 32 * mem[_2112]]
                mem[_2112 + (2 * ceil32(return_data.size)) + 352] = (32 * _2442) + (32 * mem[_2112]) + 224
                _4046 = mem[_1051]
                mem[_2112 + (2 * ceil32(return_data.size)) + (32 * _2442) + (32 * mem[_2112]) + 512] = mem[_1051]
                mem[_2112 + (2 * ceil32(return_data.size)) + (32 * _2442) + (32 * mem[_2112]) + 544 len 32 * _4046] = mem[_1051 + 32 len 32 * _4046]
                return Array(len=mem[_2112 + (2 * ceil32(return_data.size)) + 448 len (32 * _2442) + 32], data=mem[_2112], mem[_2112 + (2 * ceil32(return_data.size)) + (32 * _2442) + 512 len (32 * mem[_2112]) + (32 * _4046) + 32]), 
                       (32 * _2442) + 192,
                       (32 * _2442) + (32 * mem[_2112]) + 224,
                       ext_call.return_data[0],
                       ext_call.return_data[0]
            _3121 = mem[128]
            idx = 0
            while idx < uint8(_3121):
                require idx < mem[_1051]
                require idx < mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 320]
                if not mem[(32 * idx) + ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 352]:
                    if 10^uint8(Mask(256, -8 * idx, mem[192]) >> 8 * idx) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require 10^uint8(Mask(256, -8 * idx, mem[192]) >> 8 * idx)
                    require idx < mem[_2112]
                    mem[(32 * idx) + _2112 + 32] = 0 / 10^uint8(Mask(256, -8 * idx, mem[192]) >> 8 * idx)
                else:
                    if mem[(32 * idx) + _1051 + 32] * mem[(32 * idx) + ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 352] / mem[(32 * idx) + ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 352] != mem[(32 * idx) + _1051 + 32]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 10^uint8(Mask(256, -8 * idx, mem[192]) >> 8 * idx) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require 10^uint8(Mask(256, -8 * idx, mem[192]) >> 8 * idx)
                    require idx < mem[_2112]
                    mem[(32 * idx) + _2112 + 32] = mem[(32 * idx) + _1051 + 32] * mem[(32 * idx) + ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 352] / 10^uint8(Mask(256, -8 * idx, mem[192]) >> 8 * idx)
                idx = idx + 1
                continue 
            require ext_code.size(mem[108 len 20])
            staticcall mem[108 len 20].A() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3198 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _3246 = mem[_3198]
            require ext_code.size(mem[108 len 20])
            staticcall mem[108 len 20].fee() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3328 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _3458 = mem[_3328]
            mem[mem[64]] = 160
            _3588 = mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 320]
            mem[mem[64] + 160] = mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 320]
            mem[mem[64] + 192 len 32 * _3588] = mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 352 len 32 * _3588]
            mem[mem[64] + 32] = (32 * _3588) + 192
            _4047 = mem[_2112]
            mem[mem[64] + (32 * _3588) + 192] = mem[_2112]
            mem[mem[64] + (32 * _3588) + 224 len 32 * _4047] = mem[_2112 + 32 len 32 * _4047]
            mem[mem[64] + 64] = (32 * _3588) + (32 * _4047) + 224
            _4419 = mem[_1051]
            mem[mem[64] + (32 * _3588) + (32 * _4047) + 224] = mem[_1051]
            mem[mem[64] + (32 * _3588) + (32 * _4047) + 256 len 32 * _4419] = mem[_1051 + 32 len 32 * _4419]
            mem[mem[64] + 96] = _3246
            return 160, 
                   (32 * _3588) + 192,
                   (32 * _3588) + (32 * _4047) + 224,
                   _3246,
                   _3458,
                   mem[mem[64] + 160 len (32 * _3588) + (32 * _4047) + (32 * _4419) + 96]
        if mem[236 len 20]:
            _2098 = mem[128]
            idx = 0
            while idx < uint8(_2098):
                if not mem[_1055]:
                    require idx < mem[_1051]
                    mem[(32 * idx) + _1051 + 32] = 10^18
                    idx = idx + 1
                    continue 
                if address(_1054):
                    _2175 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_2175] = 37
                    mem[_2175 + 32 len 37] = 0xfe416464726573733a206c6f772d6c6576656c207374617469632063616c6c206661696c65
                    if not ext_code.size(address(_1054)):
                        revert with 0, 'Address: static call to non-contract'
                    _2280 = mem[64]
                    _2307 = mem[_1055]
                    s = 0
                    while s < _2307:
                        mem[s + _2280] = mem[s + _1055 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_2307) <= _2307:
                        staticcall address(_1054).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _2307 + _2280 + -mem[64] - 4]
                        if not return_data.size:
                            if ext_call.success:
                                require mem[96] >= 32
                                require idx < mem[_1051]
                                mem[(32 * idx) + _1051 + 32] = mem[128]
                                idx = idx + 1
                                continue 
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            _3349 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            _3411 = mem[_2175]
                            mem[mem[64] + 36] = mem[_2175]
                            idx = 0
                            while idx < _3411:
                                mem[idx + _3349 + 68] = mem[idx + _2175 + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_3411) > _3411:
                                mem[_3349 + _3411 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(_3411) + _3349 + -mem[64] + 68
                        _3227 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_3227] = return_data.size
                        mem[_3227 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            require return_data.size >= 32
                            require idx < mem[_1051]
                            mem[(32 * idx) + _1051 + 32] = mem[_3227 + 32]
                            idx = idx + 1
                            continue 
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3351 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _3412 = mem[_2175]
                        mem[mem[64] + 36] = mem[_2175]
                        idx = 0
                        while idx < _3412:
                            mem[idx + _3351 + 68] = mem[idx + _2175 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_3412) > _3412:
                            mem[_3351 + _3412 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_3412) + _3351 + -mem[64] + 68
                    mem[_2280 + _2307] = 0
                    staticcall address(_1054).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _2307 + _2280 + -mem[64] - 4]
                    if not return_data.size:
                        if ext_call.success:
                            require mem[96] >= 32
                            require idx < mem[_1051]
                            mem[(32 * idx) + _1051 + 32] = mem[128]
                            idx = idx + 1
                            continue 
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        _3413 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _3467 = mem[_2175]
                        mem[mem[64] + 36] = mem[_2175]
                        idx = 0
                        while idx < _3467:
                            mem[idx + _3413 + 68] = mem[idx + _2175 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_3467) > _3467:
                            mem[_3413 + _3467 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_3467) + _3413 + -mem[64] + 68
                    _3251 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_3251] = return_data.size
                    mem[_3251 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        require return_data.size >= 32
                        require idx < mem[_1051]
                        mem[(32 * idx) + _1051 + 32] = mem[_3251 + 32]
                        idx = idx + 1
                        continue 
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3415 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _3468 = mem[_2175]
                    mem[mem[64] + 36] = mem[_2175]
                    idx = 0
                    while idx < _3468:
                        mem[idx + _3415 + 68] = mem[idx + _2175 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_3468) > _3468:
                        mem[_3415 + _3468 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_3468) + _3415 + -mem[64] + 68
                require idx < mem[_1051 + 288]
                _2157 = mem[(32 * idx) + _1051 + 320]
                _2201 = mem[64]
                mem[64] = mem[64] + 96
                mem[_2201] = 37
                mem[_2201 + 32 len 37] = 0xfe416464726573733a206c6f772d6c6576656c207374617469632063616c6c206661696c65
                if not ext_code.size(address(_2157)):
                    revert with 0, 'Address: static call to non-contract'
                _2305 = mem[64]
                _2335 = mem[_1055]
                s = 0
                while s < _2335:
                    mem[s + _2305] = mem[s + _1055 + 32]
                    s = s + 32
                    continue 
                if ceil32(_2335) <= _2335:
                    staticcall address(_2157).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _2335 + _2305 + -mem[64] - 4]
                    if not return_data.size:
                        if ext_call.success:
                            require mem[96] >= 32
                            require idx < mem[_1051]
                            mem[(32 * idx) + _1051 + 32] = mem[128]
                            idx = idx + 1
                            continue 
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        _3343 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _3405 = mem[_2201]
                        mem[mem[64] + 36] = mem[_2201]
                        idx = 0
                        while idx < _3405:
                            mem[idx + _3343 + 68] = mem[idx + _2201 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_3405) > _3405:
                            mem[_3343 + _3405 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_3405) + _3343 + -mem[64] + 68
                    _3225 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_3225] = return_data.size
                    mem[_3225 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        require return_data.size >= 32
                        require idx < mem[_1051]
                        mem[(32 * idx) + _1051 + 32] = mem[_3225 + 32]
                        idx = idx + 1
                        continue 
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3345 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _3406 = mem[_2201]
                    mem[mem[64] + 36] = mem[_2201]
                    idx = 0
                    while idx < _3406:
                        mem[idx + _3345 + 68] = mem[idx + _2201 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_3406) > _3406:
                        mem[_3345 + _3406 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_3406) + _3345 + -mem[64] + 68
                mem[_2305 + _2335] = 0
                staticcall address(_2157).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _2335 + _2305 + -mem[64] - 4]
                if not return_data.size:
                    if ext_call.success:
                        require mem[96] >= 32
                        require idx < mem[_1051]
                        mem[(32 * idx) + _1051 + 32] = mem[128]
                        idx = idx + 1
                        continue 
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    _3407 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _3465 = mem[_2201]
                    mem[mem[64] + 36] = mem[_2201]
                    idx = 0
                    while idx < _3465:
                        mem[idx + _3407 + 68] = mem[idx + _2201 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_3465) > _3465:
                        mem[_3407 + _3465 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_3465) + _3407 + -mem[64] + 68
                _3250 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_3250] = return_data.size
                mem[_3250 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    require return_data.size >= 32
                    require idx < mem[_1051]
                    mem[(32 * idx) + _1051 + 32] = mem[_3250 + 32]
                    idx = idx + 1
                    continue 
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                _3409 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _3466 = mem[_2201]
                mem[mem[64] + 36] = mem[_2201]
                idx = 0
                while idx < _3466:
                    mem[idx + _3409 + 68] = mem[idx + _2201 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_3466) > _3466:
                    mem[_3409 + _3466 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_3466) + _3409 + -mem[64] + 68
            _2115 = mem[64]
            mem[mem[64]] = 8
            mem[64] = mem[64] + 288
            mem[_2115 + 32 len 256] = call.data[calldata.size len 256]
            if not mem[192]:
                mem[_2115 + 288] = 0xf446c1d000000000000000000000000000000000000000000000000000000000
                require ext_code.size(mem[108 len 20])
                staticcall mem[108 len 20].A() with:
                        gas gas_remaining wei
                mem[_2115 + 288] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(mem[108 len 20])
                staticcall mem[108 len 20].fee() with:
                        gas gas_remaining wei
                mem[_2115 + ceil32(return_data.size) + 288] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _2115 + (2 * ceil32(return_data.size)) + 288
                require return_data.size >= 32
                mem[_2115 + (2 * ceil32(return_data.size)) + 288] = 160
                _2447 = mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 320]
                mem[_2115 + (2 * ceil32(return_data.size)) + 448] = mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 320]
                mem[_2115 + (2 * ceil32(return_data.size)) + 480 len 32 * _2447] = mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 352 len 32 * _2447]
                mem[_2115 + (2 * ceil32(return_data.size)) + 320] = (32 * _2447) + 192
                mem[_2115 + (2 * ceil32(return_data.size)) + (32 * _2447) + 480] = mem[_2115]
                mem[_2115 + (2 * ceil32(return_data.size)) + (32 * _2447) + 512 len 32 * mem[_2115]] = mem[_2115 + 32 len 32 * mem[_2115]]
                mem[_2115 + (2 * ceil32(return_data.size)) + 352] = (32 * _2447) + (32 * mem[_2115]) + 224
                _4048 = mem[_1051]
                mem[_2115 + (2 * ceil32(return_data.size)) + (32 * _2447) + (32 * mem[_2115]) + 512] = mem[_1051]
                mem[_2115 + (2 * ceil32(return_data.size)) + (32 * _2447) + (32 * mem[_2115]) + 544 len 32 * _4048] = mem[_1051 + 32 len 32 * _4048]
                return Array(len=mem[_2115 + (2 * ceil32(return_data.size)) + 448 len (32 * _2447) + 32], data=mem[_2115], mem[_2115 + (2 * ceil32(return_data.size)) + (32 * _2447) + 512 len (32 * mem[_2115]) + (32 * _4048) + 32]), 
                       (32 * _2447) + 192,
                       (32 * _2447) + (32 * mem[_2115]) + 224,
                       ext_call.return_data[0],
                       ext_call.return_data[0]
            _3122 = mem[128]
            idx = 0
            while idx < uint8(_3122):
                require idx < mem[_1051]
                require idx < mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 320]
                if not mem[(32 * idx) + ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 352]:
                    if 10^uint8(Mask(256, -8 * idx, mem[192]) >> 8 * idx) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require 10^uint8(Mask(256, -8 * idx, mem[192]) >> 8 * idx)
                    require idx < mem[_2115]
                    mem[(32 * idx) + _2115 + 32] = 0 / 10^uint8(Mask(256, -8 * idx, mem[192]) >> 8 * idx)
                else:
                    if mem[(32 * idx) + _1051 + 32] * mem[(32 * idx) + ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 352] / mem[(32 * idx) + ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 352] != mem[(32 * idx) + _1051 + 32]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 10^uint8(Mask(256, -8 * idx, mem[192]) >> 8 * idx) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require 10^uint8(Mask(256, -8 * idx, mem[192]) >> 8 * idx)
                    require idx < mem[_2115]
                    mem[(32 * idx) + _2115 + 32] = mem[(32 * idx) + _1051 + 32] * mem[(32 * idx) + ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 352] / 10^uint8(Mask(256, -8 * idx, mem[192]) >> 8 * idx)
                idx = idx + 1
                continue 
            require ext_code.size(mem[108 len 20])
            staticcall mem[108 len 20].A() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3202 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _3249 = mem[_3202]
            require ext_code.size(mem[108 len 20])
            staticcall mem[108 len 20].fee() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3342 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _3464 = mem[_3342]
            mem[mem[64]] = 160
            _3593 = mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 320]
            mem[mem[64] + 160] = mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 320]
            mem[mem[64] + 192 len 32 * _3593] = mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 352 len 32 * _3593]
            mem[mem[64] + 32] = (32 * _3593) + 192
            _4049 = mem[_2115]
            mem[mem[64] + (32 * _3593) + 192] = mem[_2115]
            mem[mem[64] + (32 * _3593) + 224 len 32 * _4049] = mem[_2115 + 32 len 32 * _4049]
            mem[mem[64] + 64] = (32 * _3593) + (32 * _4049) + 224
            _4421 = mem[_1051]
            mem[mem[64] + (32 * _3593) + (32 * _4049) + 224] = mem[_1051]
            mem[mem[64] + (32 * _3593) + (32 * _4049) + 256 len 32 * _4421] = mem[_1051 + 32 len 32 * _4421]
            mem[mem[64] + 96] = _3249
            return 160, 
                   (32 * _3593) + 192,
                   (32 * _3593) + (32 * _4049) + 224,
                   _3249,
                   _3464,
                   mem[mem[64] + 160 len (32 * _3593) + (32 * _4049) + (32 * _4421) + 96]
        _2099 = mem[128]
        idx = 0
        while idx < uint8(_2099):
            if 1 == mem[191 len 1]:
                _2118 = mem[96]
                mem[mem[64] + 4] = ('signextend', 15, ('var', 0))
                require ext_code.size(address(_2118))
                staticcall address(_2118).coins(int128 arg1) with:
                        gas gas_remaining wei
                       args ('signextend', 15, ('var', 0))
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2206 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2206] == mem[_2206 + 12 len 20]
                require idx < mem[_1051 + 288]
                mem[(32 * idx) + _1051 + 320] = mem[_2206 + 12 len 20]
            else:
                _2120 = mem[96]
                mem[mem[64] + 4] = idx
                require ext_code.size(address(_2120))
                staticcall address(_2120).coins(uint256 arg1) with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2207 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2207] == mem[_2207 + 12 len 20]
                require idx < mem[_1051 + 288]
                mem[(32 * idx) + _1051 + 320] = mem[_2207 + 12 len 20]
            idx = idx + 1
            continue 
        _3123 = mem[128]
        idx = 0
        while idx < uint8(_3123):
            if not mem[_1055]:
                require idx < mem[_1051]
                mem[(32 * idx) + _1051 + 32] = 10^18
                idx = idx + 1
                continue 
            if address(_1054):
                _3231 = mem[64]
                mem[64] = mem[64] + 96
                mem[_3231] = 37
                mem[_3231 + 32 len 37] = 0xfe416464726573733a206c6f772d6c6576656c207374617469632063616c6c206661696c65
                if not ext_code.size(address(_1054)):
                    revert with 0, 'Address: static call to non-contract'
                _3355 = mem[64]
                _3421 = mem[_1055]
                s = 0
                while s < _3421:
                    mem[s + _3355] = mem[s + _1055 + 32]
                    s = s + 32
                    continue 
                if ceil32(_3421) <= _3421:
                    staticcall address(_1054).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _3421 + _3355 + -mem[64] - 4]
                    if not return_data.size:
                        if ext_call.success:
                            require mem[96] >= 32
                            require idx < mem[_1051]
                            mem[(32 * idx) + _1051 + 32] = mem[128]
                            idx = idx + 1
                            continue 
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        _4197 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _4227 = mem[_3231]
                        mem[mem[64] + 36] = mem[_3231]
                        idx = 0
                        while idx < _4227:
                            mem[idx + _4197 + 68] = mem[idx + _3231 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_4227) > _4227:
                            mem[_4197 + _4227 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_4227) + _4197 + -mem[64] + 68
                    _4125 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_4125] = return_data.size
                    mem[_4125 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        require return_data.size >= 32
                        require idx < mem[_1051]
                        mem[(32 * idx) + _1051 + 32] = mem[_4125 + 32]
                        idx = idx + 1
                        continue 
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4199 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _4228 = mem[_3231]
                    mem[mem[64] + 36] = mem[_3231]
                    idx = 0
                    while idx < _4228:
                        mem[idx + _4199 + 68] = mem[idx + _3231 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_4228) > _4228:
                        mem[_4199 + _4228 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_4228) + _4199 + -mem[64] + 68
                mem[_3355 + _3421] = 0
                staticcall address(_1054).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _3421 + _3355 + -mem[64] - 4]
                if not return_data.size:
                    if ext_call.success:
                        require mem[96] >= 32
                        require idx < mem[_1051]
                        mem[(32 * idx) + _1051 + 32] = mem[128]
                        idx = idx + 1
                        continue 
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    _4229 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _4254 = mem[_3231]
                    mem[mem[64] + 36] = mem[_3231]
                    idx = 0
                    while idx < _4254:
                        mem[idx + _4229 + 68] = mem[idx + _3231 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_4254) > _4254:
                        mem[_4229 + _4254 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_4254) + _4229 + -mem[64] + 68
                _4154 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_4154] = return_data.size
                mem[_4154 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    require return_data.size >= 32
                    require idx < mem[_1051]
                    mem[(32 * idx) + _1051 + 32] = mem[_4154 + 32]
                    idx = idx + 1
                    continue 
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                _4231 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _4255 = mem[_3231]
                mem[mem[64] + 36] = mem[_3231]
                idx = 0
                while idx < _4255:
                    mem[idx + _4231 + 68] = mem[idx + _3231 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_4255) > _4255:
                    mem[_4231 + _4255 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_4255) + _4231 + -mem[64] + 68
            require idx < mem[_1051 + 288]
            _3207 = mem[(32 * idx) + _1051 + 320]
            _3256 = mem[64]
            mem[64] = mem[64] + 96
            mem[_3256] = 37
            mem[_3256 + 32 len 37] = 0xfe416464726573733a206c6f772d6c6576656c207374617469632063616c6c206661696c65
            if not ext_code.size(address(_3207)):
                revert with 0, 'Address: static call to non-contract'
            _3419 = mem[64]
            _3472 = mem[_1055]
            s = 0
            while s < _3472:
                mem[s + _3419] = mem[s + _1055 + 32]
                s = s + 32
                continue 
            if ceil32(_3472) <= _3472:
                staticcall address(_3207).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _3472 + _3419 + -mem[64] - 4]
                if not return_data.size:
                    if ext_call.success:
                        require mem[96] >= 32
                        require idx < mem[_1051]
                        mem[(32 * idx) + _1051 + 32] = mem[128]
                        idx = idx + 1
                        continue 
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    _4191 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _4221 = mem[_3256]
                    mem[mem[64] + 36] = mem[_3256]
                    idx = 0
                    while idx < _4221:
                        mem[idx + _4191 + 68] = mem[idx + _3256 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_4221) > _4221:
                        mem[_4191 + _4221 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_4221) + _4191 + -mem[64] + 68
                _4123 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_4123] = return_data.size
                mem[_4123 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    require return_data.size >= 32
                    require idx < mem[_1051]
                    mem[(32 * idx) + _1051 + 32] = mem[_4123 + 32]
                    idx = idx + 1
                    continue 
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                _4193 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _4222 = mem[_3256]
                mem[mem[64] + 36] = mem[_3256]
                idx = 0
                while idx < _4222:
                    mem[idx + _4193 + 68] = mem[idx + _3256 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_4222) > _4222:
                    mem[_4193 + _4222 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_4222) + _4193 + -mem[64] + 68
            mem[_3419 + _3472] = 0
            staticcall address(_3207).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _3472 + _3419 + -mem[64] - 4]
            if not return_data.size:
                if ext_call.success:
                    require mem[96] >= 32
                    require idx < mem[_1051]
                    mem[(32 * idx) + _1051 + 32] = mem[128]
                    idx = idx + 1
                    continue 
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                _4223 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _4252 = mem[_3256]
                mem[mem[64] + 36] = mem[_3256]
                idx = 0
                while idx < _4252:
                    mem[idx + _4223 + 68] = mem[idx + _3256 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_4252) > _4252:
                    mem[_4223 + _4252 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_4252) + _4223 + -mem[64] + 68
            _4153 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_4153] = return_data.size
            mem[_4153 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                require return_data.size >= 32
                require idx < mem[_1051]
                mem[(32 * idx) + _1051 + 32] = mem[_4153 + 32]
                idx = idx + 1
                continue 
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            _4225 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _4253 = mem[_3256]
            mem[mem[64] + 36] = mem[_3256]
            idx = 0
            while idx < _4253:
                mem[idx + _4225 + 68] = mem[idx + _3256 + 32]
                idx = idx + 32
                continue 
            if ceil32(_4253) > _4253:
                mem[_4225 + _4253 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_4253) + _4225 + -mem[64] + 68
        _3159 = mem[64]
        mem[mem[64]] = 8
        mem[64] = mem[64] + 288
        mem[_3159 + 32 len 256] = call.data[calldata.size len 256]
        if not mem[192]:
            mem[_3159 + 288] = 0xf446c1d000000000000000000000000000000000000000000000000000000000
            require ext_code.size(mem[108 len 20])
            staticcall mem[108 len 20].A() with:
                    gas gas_remaining wei
            mem[_3159 + 288] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(mem[108 len 20])
            staticcall mem[108 len 20].fee() with:
                    gas gas_remaining wei
            mem[_3159 + ceil32(return_data.size) + 288] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _3159 + (2 * ceil32(return_data.size)) + 288
            require return_data.size >= 32
            mem[_3159 + (2 * ceil32(return_data.size)) + 288] = 160
            _3626 = mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 320]
            mem[_3159 + (2 * ceil32(return_data.size)) + 448] = mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 320]
            mem[_3159 + (2 * ceil32(return_data.size)) + 480 len 32 * _3626] = mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 352 len 32 * _3626]
            mem[_3159 + (2 * ceil32(return_data.size)) + 320] = (32 * _3626) + 192
            mem[_3159 + (2 * ceil32(return_data.size)) + (32 * _3626) + 480] = mem[_3159]
            mem[_3159 + (2 * ceil32(return_data.size)) + (32 * _3626) + 512 len 32 * mem[_3159]] = mem[_3159 + 32 len 32 * mem[_3159]]
            mem[_3159 + (2 * ceil32(return_data.size)) + 352] = (32 * _3626) + (32 * mem[_3159]) + 224
            _4422 = mem[_1051]
            mem[_3159 + (2 * ceil32(return_data.size)) + (32 * _3626) + (32 * mem[_3159]) + 512] = mem[_1051]
            mem[_3159 + (2 * ceil32(return_data.size)) + (32 * _3626) + (32 * mem[_3159]) + 544 len 32 * _4422] = mem[_1051 + 32 len 32 * _4422]
            return Array(len=mem[_3159 + (2 * ceil32(return_data.size)) + 448 len (32 * _3626) + 32], data=mem[_3159], mem[_3159 + (2 * ceil32(return_data.size)) + (32 * _3626) + 512 len (32 * mem[_3159]) + (32 * _4422) + 32]), 
                   (32 * _3626) + 192,
                   (32 * _3626) + (32 * mem[_3159]) + 224,
                   ext_call.return_data[0],
                   ext_call.return_data[0]
        _3984 = mem[128]
        idx = 0
        while idx < uint8(_3984):
            require idx < mem[_1051]
            require idx < mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 320]
            if not mem[(32 * idx) + ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 352]:
                if 10^uint8(Mask(256, -8 * idx, mem[192]) >> 8 * idx) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 10^uint8(Mask(256, -8 * idx, mem[192]) >> 8 * idx)
                require idx < mem[_3159]
                mem[(32 * idx) + _3159 + 32] = 0 / 10^uint8(Mask(256, -8 * idx, mem[192]) >> 8 * idx)
            else:
                if mem[(32 * idx) + _1051 + 32] * mem[(32 * idx) + ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 352] / mem[(32 * idx) + ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 352] != mem[(32 * idx) + _1051 + 32]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 10^uint8(Mask(256, -8 * idx, mem[192]) >> 8 * idx) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 10^uint8(Mask(256, -8 * idx, mem[192]) >> 8 * idx)
                require idx < mem[_3159]
                mem[(32 * idx) + _3159 + 32] = mem[(32 * idx) + _1051 + 32] * mem[(32 * idx) + ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 352] / 10^uint8(Mask(256, -8 * idx, mem[192]) >> 8 * idx)
            idx = idx + 1
            continue 
        require ext_code.size(mem[108 len 20])
        staticcall mem[108 len 20].A() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _4076 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _4152 = mem[_4076]
        require ext_code.size(mem[108 len 20])
        staticcall mem[108 len 20].fee() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _4190 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _4251 = mem[_4190]
        mem[mem[64]] = 160
        _4300 = mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 320]
        mem[mem[64] + 160] = mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 320]
        mem[mem[64] + 192 len 32 * _4300] = mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 352 len 32 * _4300]
        mem[mem[64] + 32] = (32 * _4300) + 192
        _4423 = mem[_3159]
        mem[mem[64] + (32 * _4300) + 192] = mem[_3159]
        mem[mem[64] + (32 * _4300) + 224 len 32 * _4423] = mem[_3159 + 32 len 32 * _4423]
        mem[mem[64] + 64] = (32 * _4300) + (32 * _4423) + 224
        _4497 = mem[_1051]
        mem[mem[64] + (32 * _4300) + (32 * _4423) + 224] = mem[_1051]
        mem[mem[64] + (32 * _4300) + (32 * _4423) + 256 len 32 * _4497] = mem[_1051 + 32 len 32 * _4497]
        mem[mem[64] + 96] = _4152
        return 160, 
               (32 * _4300) + 192,
               (32 * _4300) + (32 * _4423) + 224,
               _4152,
               _4251,
               mem[mem[64] + 160 len (32 * _4300) + (32 * _4423) + (32 * _4497) + 96]
    mem[_1051 + 320 len 32 * uint8(mem[128])] = call.data[calldata.size len 32 * uint8(mem[128])]
    if mem[mem[256]] <= 0:
        _2100 = mem[128]
        idx = 0
        while idx < uint8(_2100):
            if not mem[_1055]:
                require idx < mem[_1051]
                mem[(32 * idx) + _1051 + 32] = 10^18
                idx = idx + 1
                continue 
            if address(_1054):
                _2181 = mem[64]
                mem[64] = mem[64] + 96
                mem[_2181] = 37
                mem[_2181 + 32 len 37] = 0xfe416464726573733a206c6f772d6c6576656c207374617469632063616c6c206661696c65
                if not ext_code.size(address(_1054)):
                    revert with 0, 'Address: static call to non-contract'
                _2287 = mem[64]
                _2315 = mem[_1055]
                s = 0
                while s < _2315:
                    mem[s + _2287] = mem[s + _1055 + 32]
                    s = s + 32
                    continue 
                if ceil32(_2315) <= _2315:
                    staticcall address(_1054).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _2315 + _2287 + -mem[64] - 4]
                    if not return_data.size:
                        if ext_call.success:
                            require mem[96] >= 32
                            require idx < mem[_1051]
                            mem[(32 * idx) + _1051 + 32] = mem[128]
                            idx = idx + 1
                            continue 
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        _3365 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _3430 = mem[_2181]
                        mem[mem[64] + 36] = mem[_2181]
                        idx = 0
                        while idx < _3430:
                            mem[idx + _3365 + 68] = mem[idx + _2181 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_3430) > _3430:
                            mem[_3365 + _3430 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_3430) + _3365 + -mem[64] + 68
                    _3235 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_3235] = return_data.size
                    mem[_3235 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        require return_data.size >= 32
                        require idx < mem[_1051]
                        mem[(32 * idx) + _1051 + 32] = mem[_3235 + 32]
                        idx = idx + 1
                        continue 
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3367 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _3431 = mem[_2181]
                    mem[mem[64] + 36] = mem[_2181]
                    idx = 0
                    while idx < _3431:
                        mem[idx + _3367 + 68] = mem[idx + _2181 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_3431) > _3431:
                        mem[_3367 + _3431 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_3431) + _3367 + -mem[64] + 68
                mem[_2287 + _2315] = 0
                staticcall address(_1054).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _2315 + _2287 + -mem[64] - 4]
                if not return_data.size:
                    if ext_call.success:
                        require mem[96] >= 32
                        require idx < mem[_1051]
                        mem[(32 * idx) + _1051 + 32] = mem[128]
                        idx = idx + 1
                        continue 
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    _3432 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _3478 = mem[_2181]
                    mem[mem[64] + 36] = mem[_2181]
                    idx = 0
                    while idx < _3478:
                        mem[idx + _3432 + 68] = mem[idx + _2181 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_3478) > _3478:
                        mem[_3432 + _3478 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_3478) + _3432 + -mem[64] + 68
                _3259 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_3259] = return_data.size
                mem[_3259 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    require return_data.size >= 32
                    require idx < mem[_1051]
                    mem[(32 * idx) + _1051 + 32] = mem[_3259 + 32]
                    idx = idx + 1
                    continue 
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                _3434 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _3479 = mem[_2181]
                mem[mem[64] + 36] = mem[_2181]
                idx = 0
                while idx < _3479:
                    mem[idx + _3434 + 68] = mem[idx + _2181 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_3479) > _3479:
                    mem[_3434 + _3479 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_3479) + _3434 + -mem[64] + 68
            require idx < mem[_1051 + 288]
            _2162 = mem[(32 * idx) + _1051 + 320]
            _2212 = mem[64]
            mem[64] = mem[64] + 96
            mem[_2212] = 37
            mem[_2212 + 32 len 37] = 0xfe416464726573733a206c6f772d6c6576656c207374617469632063616c6c206661696c65
            if not ext_code.size(address(_2162)):
                revert with 0, 'Address: static call to non-contract'
            _2313 = mem[64]
            _2345 = mem[_1055]
            s = 0
            while s < _2345:
                mem[s + _2313] = mem[s + _1055 + 32]
                s = s + 32
                continue 
            if ceil32(_2345) <= _2345:
                staticcall address(_2162).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _2345 + _2313 + -mem[64] - 4]
                if not return_data.size:
                    if ext_call.success:
                        require mem[96] >= 32
                        require idx < mem[_1051]
                        mem[(32 * idx) + _1051 + 32] = mem[128]
                        idx = idx + 1
                        continue 
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    _3359 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _3424 = mem[_2212]
                    mem[mem[64] + 36] = mem[_2212]
                    idx = 0
                    while idx < _3424:
                        mem[idx + _3359 + 68] = mem[idx + _2212 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_3424) > _3424:
                        mem[_3359 + _3424 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_3424) + _3359 + -mem[64] + 68
                _3233 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_3233] = return_data.size
                mem[_3233 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    require return_data.size >= 32
                    require idx < mem[_1051]
                    mem[(32 * idx) + _1051 + 32] = mem[_3233 + 32]
                    idx = idx + 1
                    continue 
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                _3361 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _3425 = mem[_2212]
                mem[mem[64] + 36] = mem[_2212]
                idx = 0
                while idx < _3425:
                    mem[idx + _3361 + 68] = mem[idx + _2212 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_3425) > _3425:
                    mem[_3361 + _3425 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_3425) + _3361 + -mem[64] + 68
            mem[_2313 + _2345] = 0
            staticcall address(_2162).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _2345 + _2313 + -mem[64] - 4]
            if not return_data.size:
                if ext_call.success:
                    require mem[96] >= 32
                    require idx < mem[_1051]
                    mem[(32 * idx) + _1051 + 32] = mem[128]
                    idx = idx + 1
                    continue 
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                _3426 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _3476 = mem[_2212]
                mem[mem[64] + 36] = mem[_2212]
                idx = 0
                while idx < _3476:
                    mem[idx + _3426 + 68] = mem[idx + _2212 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_3476) > _3476:
                    mem[_3426 + _3476 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_3476) + _3426 + -mem[64] + 68
            _3258 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_3258] = return_data.size
            mem[_3258 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                require return_data.size >= 32
                require idx < mem[_1051]
                mem[(32 * idx) + _1051 + 32] = mem[_3258 + 32]
                idx = idx + 1
                continue 
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            _3428 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _3477 = mem[_2212]
            mem[mem[64] + 36] = mem[_2212]
            idx = 0
            while idx < _3477:
                mem[idx + _3428 + 68] = mem[idx + _2212 + 32]
                idx = idx + 32
                continue 
            if ceil32(_3477) > _3477:
                mem[_3428 + _3477 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_3477) + _3428 + -mem[64] + 68
        _2122 = mem[64]
        mem[mem[64]] = 8
        mem[64] = mem[64] + 288
        mem[_2122 + 32 len 256] = call.data[calldata.size len 256]
        if not mem[192]:
            mem[_2122 + 288] = 0xf446c1d000000000000000000000000000000000000000000000000000000000
            require ext_code.size(mem[108 len 20])
            staticcall mem[108 len 20].A() with:
                    gas gas_remaining wei
            mem[_2122 + 288] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(mem[108 len 20])
            staticcall mem[108 len 20].fee() with:
                    gas gas_remaining wei
            mem[_2122 + ceil32(return_data.size) + 288] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _2122 + (2 * ceil32(return_data.size)) + 288
            require return_data.size >= 32
            mem[_2122 + (2 * ceil32(return_data.size)) + 288] = 160
            _2454 = mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 320]
            mem[_2122 + (2 * ceil32(return_data.size)) + 448] = mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 320]
            mem[_2122 + (2 * ceil32(return_data.size)) + 480 len 32 * _2454] = mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 352 len 32 * _2454]
            mem[_2122 + (2 * ceil32(return_data.size)) + 320] = (32 * _2454) + 192
            mem[_2122 + (2 * ceil32(return_data.size)) + (32 * _2454) + 480] = mem[_2122]
            mem[_2122 + (2 * ceil32(return_data.size)) + (32 * _2454) + 512 len 32 * mem[_2122]] = mem[_2122 + 32 len 32 * mem[_2122]]
            mem[_2122 + (2 * ceil32(return_data.size)) + 352] = (32 * _2454) + (32 * mem[_2122]) + 224
            _4053 = mem[_1051]
            mem[_2122 + (2 * ceil32(return_data.size)) + (32 * _2454) + (32 * mem[_2122]) + 512] = mem[_1051]
            mem[_2122 + (2 * ceil32(return_data.size)) + (32 * _2454) + (32 * mem[_2122]) + 544 len 32 * _4053] = mem[_1051 + 32 len 32 * _4053]
            return Array(len=mem[_2122 + (2 * ceil32(return_data.size)) + 448 len (32 * _2454) + 32], data=mem[_2122], mem[_2122 + (2 * ceil32(return_data.size)) + (32 * _2454) + 512 len (32 * mem[_2122]) + (32 * _4053) + 32]), 
                   (32 * _2454) + 192,
                   (32 * _2454) + (32 * mem[_2122]) + 224,
                   ext_call.return_data[0],
                   ext_call.return_data[0]
        _3124 = mem[128]
        idx = 0
        while idx < uint8(_3124):
            require idx < mem[_1051]
            require idx < mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 320]
            if not mem[(32 * idx) + ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 352]:
                if 10^uint8(Mask(256, -8 * idx, mem[192]) >> 8 * idx) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 10^uint8(Mask(256, -8 * idx, mem[192]) >> 8 * idx)
                require idx < mem[_2122]
                mem[(32 * idx) + _2122 + 32] = 0 / 10^uint8(Mask(256, -8 * idx, mem[192]) >> 8 * idx)
            else:
                if mem[(32 * idx) + _1051 + 32] * mem[(32 * idx) + ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 352] / mem[(32 * idx) + ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 352] != mem[(32 * idx) + _1051 + 32]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 10^uint8(Mask(256, -8 * idx, mem[192]) >> 8 * idx) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 10^uint8(Mask(256, -8 * idx, mem[192]) >> 8 * idx)
                require idx < mem[_2122]
                mem[(32 * idx) + _2122 + 32] = mem[(32 * idx) + _1051 + 32] * mem[(32 * idx) + ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 352] / 10^uint8(Mask(256, -8 * idx, mem[192]) >> 8 * idx)
            idx = idx + 1
            continue 
        require ext_code.size(mem[108 len 20])
        staticcall mem[108 len 20].A() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3208 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _3257 = mem[_3208]
        require ext_code.size(mem[108 len 20])
        staticcall mem[108 len 20].fee() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3358 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _3475 = mem[_3358]
        mem[mem[64]] = 160
        _3599 = mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 320]
        mem[mem[64] + 160] = mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 320]
        mem[mem[64] + 192 len 32 * _3599] = mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 352 len 32 * _3599]
        mem[mem[64] + 32] = (32 * _3599) + 192
        _4054 = mem[_2122]
        mem[mem[64] + (32 * _3599) + 192] = mem[_2122]
        mem[mem[64] + (32 * _3599) + 224 len 32 * _4054] = mem[_2122 + 32 len 32 * _4054]
        mem[mem[64] + 64] = (32 * _3599) + (32 * _4054) + 224
        _4425 = mem[_1051]
        mem[mem[64] + (32 * _3599) + (32 * _4054) + 224] = mem[_1051]
        mem[mem[64] + (32 * _3599) + (32 * _4054) + 256 len 32 * _4425] = mem[_1051 + 32 len 32 * _4425]
        mem[mem[64] + 96] = _3257
        return 160, 
               (32 * _3599) + 192,
               (32 * _3599) + (32 * _4054) + 224,
               _3257,
               _3475,
               mem[mem[64] + 160 len (32 * _3599) + (32 * _4054) + (32 * _4425) + 96]
    if mem[236 len 20]:
        _2101 = mem[128]
        idx = 0
        while idx < uint8(_2101):
            if not mem[_1055]:
                require idx < mem[_1051]
                mem[(32 * idx) + _1051 + 32] = 10^18
                idx = idx + 1
                continue 
            if address(_1054):
                _2184 = mem[64]
                mem[64] = mem[64] + 96
                mem[_2184] = 37
                mem[_2184 + 32 len 37] = 0xfe416464726573733a206c6f772d6c6576656c207374617469632063616c6c206661696c65
                if not ext_code.size(address(_1054)):
                    revert with 0, 'Address: static call to non-contract'
                _2289 = mem[64]
                _2320 = mem[_1055]
                s = 0
                while s < _2320:
                    mem[s + _2289] = mem[s + _1055 + 32]
                    s = s + 32
                    continue 
                if ceil32(_2320) <= _2320:
                    staticcall address(_1054).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _2320 + _2289 + -mem[64] - 4]
                    if not return_data.size:
                        if ext_call.success:
                            require mem[96] >= 32
                            require idx < mem[_1051]
                            mem[(32 * idx) + _1051 + 32] = mem[128]
                            idx = idx + 1
                            continue 
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        _3379 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _3444 = mem[_2184]
                        mem[mem[64] + 36] = mem[_2184]
                        idx = 0
                        while idx < _3444:
                            mem[idx + _3379 + 68] = mem[idx + _2184 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_3444) > _3444:
                            mem[_3379 + _3444 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_3444) + _3379 + -mem[64] + 68
                    _3240 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_3240] = return_data.size
                    mem[_3240 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        require return_data.size >= 32
                        require idx < mem[_1051]
                        mem[(32 * idx) + _1051 + 32] = mem[_3240 + 32]
                        idx = idx + 1
                        continue 
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3381 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _3445 = mem[_2184]
                    mem[mem[64] + 36] = mem[_2184]
                    idx = 0
                    while idx < _3445:
                        mem[idx + _3381 + 68] = mem[idx + _2184 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_3445) > _3445:
                        mem[_3381 + _3445 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_3445) + _3381 + -mem[64] + 68
                mem[_2289 + _2320] = 0
                staticcall address(_1054).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _2320 + _2289 + -mem[64] - 4]
                if not return_data.size:
                    if ext_call.success:
                        require mem[96] >= 32
                        require idx < mem[_1051]
                        mem[(32 * idx) + _1051 + 32] = mem[128]
                        idx = idx + 1
                        continue 
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    _3446 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _3484 = mem[_2184]
                    mem[mem[64] + 36] = mem[_2184]
                    idx = 0
                    while idx < _3484:
                        mem[idx + _3446 + 68] = mem[idx + _2184 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_3484) > _3484:
                        mem[_3446 + _3484 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_3484) + _3446 + -mem[64] + 68
                _3262 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_3262] = return_data.size
                mem[_3262 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    require return_data.size >= 32
                    require idx < mem[_1051]
                    mem[(32 * idx) + _1051 + 32] = mem[_3262 + 32]
                    idx = idx + 1
                    continue 
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                _3448 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _3485 = mem[_2184]
                mem[mem[64] + 36] = mem[_2184]
                idx = 0
                while idx < _3485:
                    mem[idx + _3448 + 68] = mem[idx + _2184 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_3485) > _3485:
                    mem[_3448 + _3485 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_3485) + _3448 + -mem[64] + 68
            require idx < mem[_1051 + 288]
            _2164 = mem[(32 * idx) + _1051 + 320]
            _2217 = mem[64]
            mem[64] = mem[64] + 96
            mem[_2217] = 37
            mem[_2217 + 32 len 37] = 0xfe416464726573733a206c6f772d6c6576656c207374617469632063616c6c206661696c65
            if not ext_code.size(address(_2164)):
                revert with 0, 'Address: static call to non-contract'
            _2318 = mem[64]
            _2350 = mem[_1055]
            s = 0
            while s < _2350:
                mem[s + _2318] = mem[s + _1055 + 32]
                s = s + 32
                continue 
            if ceil32(_2350) <= _2350:
                staticcall address(_2164).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _2350 + _2318 + -mem[64] - 4]
                if not return_data.size:
                    if ext_call.success:
                        require mem[96] >= 32
                        require idx < mem[_1051]
                        mem[(32 * idx) + _1051 + 32] = mem[128]
                        idx = idx + 1
                        continue 
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    _3373 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _3438 = mem[_2217]
                    mem[mem[64] + 36] = mem[_2217]
                    idx = 0
                    while idx < _3438:
                        mem[idx + _3373 + 68] = mem[idx + _2217 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_3438) > _3438:
                        mem[_3373 + _3438 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_3438) + _3373 + -mem[64] + 68
                _3238 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_3238] = return_data.size
                mem[_3238 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    require return_data.size >= 32
                    require idx < mem[_1051]
                    mem[(32 * idx) + _1051 + 32] = mem[_3238 + 32]
                    idx = idx + 1
                    continue 
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                _3375 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _3439 = mem[_2217]
                mem[mem[64] + 36] = mem[_2217]
                idx = 0
                while idx < _3439:
                    mem[idx + _3375 + 68] = mem[idx + _2217 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_3439) > _3439:
                    mem[_3375 + _3439 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_3439) + _3375 + -mem[64] + 68
            mem[_2318 + _2350] = 0
            staticcall address(_2164).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _2350 + _2318 + -mem[64] - 4]
            if not return_data.size:
                if ext_call.success:
                    require mem[96] >= 32
                    require idx < mem[_1051]
                    mem[(32 * idx) + _1051 + 32] = mem[128]
                    idx = idx + 1
                    continue 
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                _3440 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _3482 = mem[_2217]
                mem[mem[64] + 36] = mem[_2217]
                idx = 0
                while idx < _3482:
                    mem[idx + _3440 + 68] = mem[idx + _2217 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_3482) > _3482:
                    mem[_3440 + _3482 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_3482) + _3440 + -mem[64] + 68
            _3261 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_3261] = return_data.size
            mem[_3261 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                require return_data.size >= 32
                require idx < mem[_1051]
                mem[(32 * idx) + _1051 + 32] = mem[_3261 + 32]
                idx = idx + 1
                continue 
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            _3442 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _3483 = mem[_2217]
            mem[mem[64] + 36] = mem[_2217]
            idx = 0
            while idx < _3483:
                mem[idx + _3442 + 68] = mem[idx + _2217 + 32]
                idx = idx + 32
                continue 
            if ceil32(_3483) > _3483:
                mem[_3442 + _3483 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_3483) + _3442 + -mem[64] + 68
        _2125 = mem[64]
        mem[mem[64]] = 8
        mem[64] = mem[64] + 288
        mem[_2125 + 32 len 256] = call.data[calldata.size len 256]
        if not mem[192]:
            mem[_2125 + 288] = 0xf446c1d000000000000000000000000000000000000000000000000000000000
            require ext_code.size(mem[108 len 20])
            staticcall mem[108 len 20].A() with:
                    gas gas_remaining wei
            mem[_2125 + 288] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(mem[108 len 20])
            staticcall mem[108 len 20].fee() with:
                    gas gas_remaining wei
            mem[_2125 + ceil32(return_data.size) + 288] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _2125 + (2 * ceil32(return_data.size)) + 288
            require return_data.size >= 32
            mem[_2125 + (2 * ceil32(return_data.size)) + 288] = 160
            _2459 = mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 320]
            mem[_2125 + (2 * ceil32(return_data.size)) + 448] = mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 320]
            mem[_2125 + (2 * ceil32(return_data.size)) + 480 len 32 * _2459] = mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 352 len 32 * _2459]
            mem[_2125 + (2 * ceil32(return_data.size)) + 320] = (32 * _2459) + 192
            mem[_2125 + (2 * ceil32(return_data.size)) + (32 * _2459) + 480] = mem[_2125]
            mem[_2125 + (2 * ceil32(return_data.size)) + (32 * _2459) + 512 len 32 * mem[_2125]] = mem[_2125 + 32 len 32 * mem[_2125]]
            mem[_2125 + (2 * ceil32(return_data.size)) + 352] = (32 * _2459) + (32 * mem[_2125]) + 224
            _4055 = mem[_1051]
            mem[_2125 + (2 * ceil32(return_data.size)) + (32 * _2459) + (32 * mem[_2125]) + 512] = mem[_1051]
            mem[_2125 + (2 * ceil32(return_data.size)) + (32 * _2459) + (32 * mem[_2125]) + 544 len 32 * _4055] = mem[_1051 + 32 len 32 * _4055]
            return Array(len=mem[_2125 + (2 * ceil32(return_data.size)) + 448 len (32 * _2459) + 32], data=mem[_2125], mem[_2125 + (2 * ceil32(return_data.size)) + (32 * _2459) + 512 len (32 * mem[_2125]) + (32 * _4055) + 32]), 
                   (32 * _2459) + 192,
                   (32 * _2459) + (32 * mem[_2125]) + 224,
                   ext_call.return_data[0],
                   ext_call.return_data[0]
        _3125 = mem[128]
        idx = 0
        while idx < uint8(_3125):
            require idx < mem[_1051]
            require idx < mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 320]
            if not mem[(32 * idx) + ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 352]:
                if 10^uint8(Mask(256, -8 * idx, mem[192]) >> 8 * idx) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 10^uint8(Mask(256, -8 * idx, mem[192]) >> 8 * idx)
                require idx < mem[_2125]
                mem[(32 * idx) + _2125 + 32] = 0 / 10^uint8(Mask(256, -8 * idx, mem[192]) >> 8 * idx)
            else:
                if mem[(32 * idx) + _1051 + 32] * mem[(32 * idx) + ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 352] / mem[(32 * idx) + ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 352] != mem[(32 * idx) + _1051 + 32]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 10^uint8(Mask(256, -8 * idx, mem[192]) >> 8 * idx) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 10^uint8(Mask(256, -8 * idx, mem[192]) >> 8 * idx)
                require idx < mem[_2125]
                mem[(32 * idx) + _2125 + 32] = mem[(32 * idx) + _1051 + 32] * mem[(32 * idx) + ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 352] / 10^uint8(Mask(256, -8 * idx, mem[192]) >> 8 * idx)
            idx = idx + 1
            continue 
        require ext_code.size(mem[108 len 20])
        staticcall mem[108 len 20].A() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3212 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _3260 = mem[_3212]
        require ext_code.size(mem[108 len 20])
        staticcall mem[108 len 20].fee() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3372 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _3481 = mem[_3372]
        mem[mem[64]] = 160
        _3604 = mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 320]
        mem[mem[64] + 160] = mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 320]
        mem[mem[64] + 192 len 32 * _3604] = mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 352 len 32 * _3604]
        mem[mem[64] + 32] = (32 * _3604) + 192
        _4056 = mem[_2125]
        mem[mem[64] + (32 * _3604) + 192] = mem[_2125]
        mem[mem[64] + (32 * _3604) + 224 len 32 * _4056] = mem[_2125 + 32 len 32 * _4056]
        mem[mem[64] + 64] = (32 * _3604) + (32 * _4056) + 224
        _4427 = mem[_1051]
        mem[mem[64] + (32 * _3604) + (32 * _4056) + 224] = mem[_1051]
        mem[mem[64] + (32 * _3604) + (32 * _4056) + 256 len 32 * _4427] = mem[_1051 + 32 len 32 * _4427]
        mem[mem[64] + 96] = _3260
        return 160, 
               (32 * _3604) + 192,
               (32 * _3604) + (32 * _4056) + 224,
               _3260,
               _3481,
               mem[mem[64] + 160 len (32 * _3604) + (32 * _4056) + (32 * _4427) + 96]
    _2102 = mem[128]
    idx = 0
    while idx < uint8(_2102):
        if 1 == mem[191 len 1]:
            _2128 = mem[96]
            mem[mem[64] + 4] = ('signextend', 15, ('var', 0))
            require ext_code.size(address(_2128))
            staticcall address(_2128).coins(int128 arg1) with:
                    gas gas_remaining wei
                   args ('signextend', 15, ('var', 0))
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2222 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2222] == mem[_2222 + 12 len 20]
            require idx < mem[_1051 + 288]
            mem[(32 * idx) + _1051 + 320] = mem[_2222 + 12 len 20]
        else:
            _2130 = mem[96]
            mem[mem[64] + 4] = idx
            require ext_code.size(address(_2130))
            staticcall address(_2130).coins(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2223 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2223] == mem[_2223 + 12 len 20]
            require idx < mem[_1051 + 288]
            mem[(32 * idx) + _1051 + 320] = mem[_2223 + 12 len 20]
        idx = idx + 1
        continue 
    _3126 = mem[128]
    idx = 0
    while idx < uint8(_3126):
        if not mem[_1055]:
            require idx < mem[_1051]
            mem[(32 * idx) + _1051 + 32] = 10^18
            idx = idx + 1
            continue 
        if address(_1054):
            _3244 = mem[64]
            mem[64] = mem[64] + 96
            mem[_3244] = 37
            mem[_3244 + 32 len 37] = 0xfe416464726573733a206c6f772d6c6576656c207374617469632063616c6c206661696c65
            if not ext_code.size(address(_1054)):
                revert with 0, 'Address: static call to non-contract'
            _3385 = mem[64]
            _3454 = mem[_1055]
            s = 0
            while s < _3454:
                mem[s + _3385] = mem[s + _1055 + 32]
                s = s + 32
                continue 
            if ceil32(_3454) <= _3454:
                staticcall address(_1054).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _3454 + _3385 + -mem[64] - 4]
                if not return_data.size:
                    if ext_call.success:
                        require mem[96] >= 32
                        require idx < mem[_1051]
                        mem[(32 * idx) + _1051 + 32] = mem[128]
                        idx = idx + 1
                        continue 
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    _4213 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _4241 = mem[_3244]
                    mem[mem[64] + 36] = mem[_3244]
                    idx = 0
                    while idx < _4241:
                        mem[idx + _4213 + 68] = mem[idx + _3244 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_4241) > _4241:
                        mem[_4213 + _4241 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_4241) + _4213 + -mem[64] + 68
                _4150 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_4150] = return_data.size
                mem[_4150 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    require return_data.size >= 32
                    require idx < mem[_1051]
                    mem[(32 * idx) + _1051 + 32] = mem[_4150 + 32]
                    idx = idx + 1
                    continue 
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                _4215 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _4242 = mem[_3244]
                mem[mem[64] + 36] = mem[_3244]
                idx = 0
                while idx < _4242:
                    mem[idx + _4215 + 68] = mem[idx + _3244 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_4242) > _4242:
                    mem[_4215 + _4242 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_4242) + _4215 + -mem[64] + 68
            mem[_3385 + _3454] = 0
            staticcall address(_1054).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _3454 + _3385 + -mem[64] - 4]
            if not return_data.size:
                if ext_call.success:
                    require mem[96] >= 32
                    require idx < mem[_1051]
                    mem[(32 * idx) + _1051 + 32] = mem[128]
                    idx = idx + 1
                    continue 
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                _4243 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _4262 = mem[_3244]
                mem[mem[64] + 36] = mem[_3244]
                idx = 0
                while idx < _4262:
                    mem[idx + _4243 + 68] = mem[idx + _3244 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_4262) > _4262:
                    mem[_4243 + _4262 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_4262) + _4243 + -mem[64] + 68
            _4157 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_4157] = return_data.size
            mem[_4157 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                require return_data.size >= 32
                require idx < mem[_1051]
                mem[(32 * idx) + _1051 + 32] = mem[_4157 + 32]
                idx = idx + 1
                continue 
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            _4245 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _4263 = mem[_3244]
            mem[mem[64] + 36] = mem[_3244]
            idx = 0
            while idx < _4263:
                mem[idx + _4245 + 68] = mem[idx + _3244 + 32]
                idx = idx + 32
                continue 
            if ceil32(_4263) > _4263:
                mem[_4245 + _4263 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_4263) + _4245 + -mem[64] + 68
        require idx < mem[_1051 + 288]
        _3217 = mem[(32 * idx) + _1051 + 320]
        _3267 = mem[64]
        mem[64] = mem[64] + 96
        mem[_3267] = 37
        mem[_3267 + 32 len 37] = 0xfe416464726573733a206c6f772d6c6576656c207374617469632063616c6c206661696c65
        if not ext_code.size(address(_3217)):
            revert with 0, 'Address: static call to non-contract'
        _3452 = mem[64]
        _3489 = mem[_1055]
        s = 0
        while s < _3489:
            mem[s + _3452] = mem[s + _1055 + 32]
            s = s + 32
            continue 
        if ceil32(_3489) <= _3489:
            staticcall address(_3217).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _3489 + _3452 + -mem[64] - 4]
            if not return_data.size:
                if ext_call.success:
                    require mem[96] >= 32
                    require idx < mem[_1051]
                    mem[(32 * idx) + _1051 + 32] = mem[128]
                    idx = idx + 1
                    continue 
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                _4207 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _4235 = mem[_3267]
                mem[mem[64] + 36] = mem[_3267]
                idx = 0
                while idx < _4235:
                    mem[idx + _4207 + 68] = mem[idx + _3267 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_4235) > _4235:
                    mem[_4207 + _4235 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_4235) + _4207 + -mem[64] + 68
            _4148 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_4148] = return_data.size
            mem[_4148 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                require return_data.size >= 32
                require idx < mem[_1051]
                mem[(32 * idx) + _1051 + 32] = mem[_4148 + 32]
                idx = idx + 1
                continue 
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            _4209 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _4236 = mem[_3267]
            mem[mem[64] + 36] = mem[_3267]
            idx = 0
            while idx < _4236:
                mem[idx + _4209 + 68] = mem[idx + _3267 + 32]
                idx = idx + 32
                continue 
            if ceil32(_4236) > _4236:
                mem[_4209 + _4236 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_4236) + _4209 + -mem[64] + 68
        mem[_3452 + _3489] = 0
        staticcall address(_3217).mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _3489 + _3452 + -mem[64] - 4]
        if not return_data.size:
            if ext_call.success:
                require mem[96] >= 32
                require idx < mem[_1051]
                mem[(32 * idx) + _1051 + 32] = mem[128]
                idx = idx + 1
                continue 
            if mem[96]:
                revert with memory
                  from 128
                   len mem[96]
            _4237 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _4260 = mem[_3267]
            mem[mem[64] + 36] = mem[_3267]
            idx = 0
            while idx < _4260:
                mem[idx + _4237 + 68] = mem[idx + _3267 + 32]
                idx = idx + 32
                continue 
            if ceil32(_4260) > _4260:
                mem[_4237 + _4260 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_4260) + _4237 + -mem[64] + 68
        _4156 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_4156] = return_data.size
        mem[_4156 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if ext_call.success:
            require return_data.size >= 32
            require idx < mem[_1051]
            mem[(32 * idx) + _1051 + 32] = mem[_4156 + 32]
            idx = idx + 1
            continue 
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        _4239 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _4261 = mem[_3267]
        mem[mem[64] + 36] = mem[_3267]
        idx = 0
        while idx < _4261:
            mem[idx + _4239 + 68] = mem[idx + _3267 + 32]
            idx = idx + 32
            continue 
        if ceil32(_4261) > _4261:
            mem[_4239 + _4261 + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_4261) + _4239 + -mem[64] + 68
    _3170 = mem[64]
    mem[mem[64]] = 8
    mem[64] = mem[64] + 288
    mem[_3170 + 32 len 256] = call.data[calldata.size len 256]
    if not mem[192]:
        mem[_3170 + 288] = 0xf446c1d000000000000000000000000000000000000000000000000000000000
        require ext_code.size(mem[108 len 20])
        staticcall mem[108 len 20].A() with:
                gas gas_remaining wei
        mem[_3170 + 288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(mem[108 len 20])
        staticcall mem[108 len 20].fee() with:
                gas gas_remaining wei
        mem[_3170 + ceil32(return_data.size) + 288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _3170 + (2 * ceil32(return_data.size)) + 288
        require return_data.size >= 32
        mem[_3170 + (2 * ceil32(return_data.size)) + 288] = 160
        _3647 = mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 320]
        mem[_3170 + (2 * ceil32(return_data.size)) + 448] = mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 320]
        mem[_3170 + (2 * ceil32(return_data.size)) + 480 len 32 * _3647] = mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 352 len 32 * _3647]
        mem[_3170 + (2 * ceil32(return_data.size)) + 320] = (32 * _3647) + 192
        mem[_3170 + (2 * ceil32(return_data.size)) + (32 * _3647) + 480] = mem[_3170]
        mem[_3170 + (2 * ceil32(return_data.size)) + (32 * _3647) + 512 len 32 * mem[_3170]] = mem[_3170 + 32 len 32 * mem[_3170]]
        mem[_3170 + (2 * ceil32(return_data.size)) + 352] = (32 * _3647) + (32 * mem[_3170]) + 224
        _4428 = mem[_1051]
        mem[_3170 + (2 * ceil32(return_data.size)) + (32 * _3647) + (32 * mem[_3170]) + 512] = mem[_1051]
        mem[_3170 + (2 * ceil32(return_data.size)) + (32 * _3647) + (32 * mem[_3170]) + 544 len 32 * _4428] = mem[_1051 + 32 len 32 * _4428]
        return Array(len=mem[_3170 + (2 * ceil32(return_data.size)) + 448 len (32 * _3647) + 32], data=mem[_3170], mem[_3170 + (2 * ceil32(return_data.size)) + (32 * _3647) + 512 len (32 * mem[_3170]) + (32 * _4428) + 32]), 
               (32 * _3647) + 192,
               (32 * _3647) + (32 * mem[_3170]) + 224,
               ext_call.return_data[0],
               ext_call.return_data[0]
    _3985 = mem[128]
    idx = 0
    while idx < uint8(_3985):
        require idx < mem[_1051]
        require idx < mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 320]
        if not mem[(32 * idx) + ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 352]:
            if 10^uint8(Mask(256, -8 * idx, mem[192]) >> 8 * idx) <= 0:
                revert with 0, 'SafeMath: division by zero'
            require 10^uint8(Mask(256, -8 * idx, mem[192]) >> 8 * idx)
            require idx < mem[_3170]
            mem[(32 * idx) + _3170 + 32] = 0 / 10^uint8(Mask(256, -8 * idx, mem[192]) >> 8 * idx)
        else:
            if mem[(32 * idx) + _1051 + 32] * mem[(32 * idx) + ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 352] / mem[(32 * idx) + ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 352] != mem[(32 * idx) + _1051 + 32]:
                revert with 0, 'SafeMath: multiplication overflow'
            if 10^uint8(Mask(256, -8 * idx, mem[192]) >> 8 * idx) <= 0:
                revert with 0, 'SafeMath: division by zero'
            require 10^uint8(Mask(256, -8 * idx, mem[192]) >> 8 * idx)
            require idx < mem[_3170]
            mem[(32 * idx) + _3170 + 32] = mem[(32 * idx) + _1051 + 32] * mem[(32 * idx) + ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 352] / 10^uint8(Mask(256, -8 * idx, mem[192]) >> 8 * idx)
        idx = idx + 1
        continue 
    require ext_code.size(mem[108 len 20])
    staticcall mem[108 len 20].A() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _4096 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _4155 = mem[_4096]
    require ext_code.size(mem[108 len 20])
    staticcall mem[108 len 20].fee() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _4206 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _4259 = mem[_4206]
    mem[mem[64]] = 160
    _4305 = mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 320]
    mem[mem[64] + 160] = mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 320]
    mem[mem[64] + 192 len 32 * _4305] = mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 352 len 32 * _4305]
    mem[mem[64] + 32] = (32 * _4305) + 192
    _4429 = mem[_3170]
    mem[mem[64] + (32 * _4305) + 192] = mem[_3170]
    mem[mem[64] + (32 * _4305) + 224 len 32 * _4429] = mem[_3170 + 32 len 32 * _4429]
    mem[mem[64] + 64] = (32 * _4305) + (32 * _4429) + 224
    _4501 = mem[_1051]
    mem[mem[64] + (32 * _4305) + (32 * _4429) + 224] = mem[_1051]
    mem[mem[64] + (32 * _4305) + (32 * _4429) + 256 len 32 * _4501] = mem[_1051 + 32 len 32 * _4501]
    mem[mem[64] + 96] = _4155
    return 160, 
           (32 * _4305) + 192,
           (32 * _4305) + (32 * _4429) + 224,
           _4155,
           _4259,
           mem[mem[64] + 160 len (32 * _4305) + (32 * _4429) + (32 * _4501) + 96]
}



}
