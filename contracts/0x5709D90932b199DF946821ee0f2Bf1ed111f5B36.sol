contract main {




// =====================  Runtime code  =====================


const name = 'Benqi-Resolver-v1', 0

const getQiToken = 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5

const rewardAvax = 1

const getQiAVAXAddress = 0x5c0401e81bc07ca70fad469b451682c0d747ef1c

const getComptroller = 0x486af39519b4dc9a7fccd318217352830e8ad9b4

const getOracleAddress = ext_call.return_data[12 len 20]

const rewardQi = 0


function _fallback() payable {
    revert
}

function getRewardsData(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(arg2)
    staticcall arg2.rewardAccrued(uint8 rg1, address rg2) with:
            gas gas_remaining wei
           args 0, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg2)
    staticcall arg2.rewardAccrued(uint8 rg1, address rg2) with:
            gas gas_remaining wei
           args 1, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg3)
    staticcall arg3.delegates(address rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[288] = ext_call.return_data[12 len 20]
    require ext_code.size(arg3)
    staticcall arg3.getCurrentVotes(address rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[20 len 12]
    mem[320] = ext_call.return_data[20 len 12]
    mem[(6 * ceil32(return_data.size)) + 416] = mem[300 len 20]
    mem[(6 * ceil32(return_data.size)) + 448] = mem[340 len 12]
    return ext_call.return_data[0], ext_call.return_data[0], mem[(6 * ceil32(return_data.size)) + 416 len 64]
}

function getPriceInAvax(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 0x5c0401e81bc07ca70fad469b451682c0d747ef1c == arg1:
        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.oracle() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getUnderlyingPrice(address rg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.oracle() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getUnderlyingPrice(address rg1) with:
                gas gas_remaining wei
               args 0x5c0401e81bc07ca70fad469b451682c0d747ef1c
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if 10^18 * ext_call.return_data[0] / 10^18 != ext_call.return_data[0]:
            revert with 0, 'math-not-safe'
        if 10^18 * ext_call.return_data[0] > -(ext_call.return_data[0] / 2) - 1:
            revert with 'NH{q', 17
        if (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) < 10^18 * ext_call.return_data[0]:
            revert with 0, 'math-not-safe'
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        return (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0], ext_call.return_data[0]
    require ext_code.size(arg1)
    staticcall arg1.underlying() with:
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
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.oracle() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getUnderlyingPrice(address rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.oracle() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getUnderlyingPrice(address rg1) with:
            gas gas_remaining wei
           args 0x5c0401e81bc07ca70fad469b451682c0d747ef1c
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if 18 < ext_call.return_data[0]:
        revert with 'NH{q', 17
    if not -ext_call.return_data[0] + 18:
        if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if 10^18 * ext_call.return_data[0] / 10^18 != ext_call.return_data[0]:
            revert with 0, 'math-not-safe'
        if 10^18 * ext_call.return_data[0] > -(ext_call.return_data[0] / 2) - 1:
            revert with 'NH{q', 17
        if (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) < 10^18 * ext_call.return_data[0]:
            revert with 0, 'math-not-safe'
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        return (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0], ext_call.return_data[0]
    if bool(bool(-ext_call.return_data[0] + 18 < 78)) or bool(bool(-ext_call.return_data[0] + 18 < 32)):
        if 10^(-ext_call.return_data[0] + 18) > -1:
            revert with 'NH{q', 17
        if not 10^(-ext_call.return_data[0] + 18):
            revert with 'NH{q', 18
        if ext_call.return_data[0] / 10^(-ext_call.return_data[0] + 18) and 10^18 > -1 / ext_call.return_data[0] / 10^(-ext_call.return_data[0] + 18):
            revert with 'NH{q', 17
        if 10^18 * ext_call.return_data[0] / 10^(-ext_call.return_data[0] + 18) / 10^18 != ext_call.return_data[0] / 10^(-ext_call.return_data[0] + 18):
            revert with 0, 'math-not-safe'
        if 10^18 * ext_call.return_data[0] / 10^(-ext_call.return_data[0] + 18) > -(ext_call.return_data[0] / 2) - 1:
            revert with 'NH{q', 17
        if (10^18 * ext_call.return_data[0] / 10^(-ext_call.return_data[0] + 18)) + (ext_call.return_data[0] / 2) < 10^18 * ext_call.return_data[0] / 10^(-ext_call.return_data[0] + 18):
            revert with 0, 'math-not-safe'
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        return (10^18 * ext_call.return_data[0] / 10^(-ext_call.return_data[0] + 18)) + (ext_call.return_data[0] / 2) / ext_call.return_data[0], 
               ext_call.return_data[0] / 10^(-ext_call.return_data[0] + 18)
    s = 10
    t = 1
    idx = -ext_call.return_data[0] + 18
    while idx > 1:
        if s > -1 / s:
            revert with 'NH{q', 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = t * s
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 'NH{q', 17
    if not t * s:
        revert with 'NH{q', 18
    if ext_call.return_data[0] / t * s and 10^18 > -1 / ext_call.return_data[0] / t * s:
        revert with 'NH{q', 17
    if 10^18 * ext_call.return_data[0] / t * s / 10^18 != ext_call.return_data[0] / t * s:
        revert with 0, 'math-not-safe'
    if 10^18 * ext_call.return_data[0] / t * s > -(ext_call.return_data[0] / 2) - 1:
        revert with 'NH{q', 17
    if (10^18 * ext_call.return_data[0] / t * s) + (ext_call.return_data[0] / 2) < 10^18 * ext_call.return_data[0] / t * s:
        revert with 0, 'math-not-safe'
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    return (10^18 * ext_call.return_data[0] / t * s) + (ext_call.return_data[0] / 2) / ext_call.return_data[0], 
           ext_call.return_data[0] / t * s
}

function getBenqiData(address arg1, address[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg2.length) + 97 > test266151307() or floor32(arg2.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = 128
    while idx < arg2.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    mem[floor32(arg2.length) + 97] = arg2.length
    mem[64] = floor32(arg2.length) + (32 * arg2.length) + 129
    if not arg2.length:
        idx = 0
        while idx < arg2.length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _768 = mem[(32 * idx) + 128]
            if 0x5c0401e81bc07ca70fad469b451682c0d747ef1c == mem[(32 * idx) + 140 len 20]:
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.oracle() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _788 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _794 = mem[_788]
                require mem[_788] == mem[_788 + 12 len 20]
                mem[mem[64] + 4] = address(_768)
                require ext_code.size(address(_794))
                staticcall address(_794).getUnderlyingPrice(address rg1) with:
                        gas gas_remaining wei
                       args address(_768)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _828 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _834 = mem[_828]
                require mem[_828] == mem[_828]
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.oracle() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _857 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _862 = mem[_857]
                require mem[_857] == mem[_857 + 12 len 20]
                mem[mem[64] + 4] = 0x5c0401e81bc07ca70fad469b451682c0d747ef1c
                require ext_code.size(address(_862))
                staticcall address(_862).getUnderlyingPrice(address rg1) with:
                        gas gas_remaining wei
                       args 0x5c0401e81bc07ca70fad469b451682c0d747ef1c
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _895 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _898 = mem[_895]
                require mem[_895] == mem[_895]
                if _834 and 10^18 > -1 / _834:
                    revert with 'NH{q', 17
                if 10^18 * _834 / 10^18 != _834:
                    revert with 0, 'math-not-safe'
                if 10^18 * _834 > -(mem[_895] / 2) - 1:
                    revert with 'NH{q', 17
                if (10^18 * _834) + (mem[_895] / 2) < 10^18 * _834:
                    revert with 0, 'math-not-safe'
                if not mem[_895]:
                    revert with 'NH{q', 18
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.markets(address rg1) with:
                        gas gas_remaining wei
                       args address(_768)
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1013 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_1013] == bool(mem[_1013])
                _1025 = mem[_1013 + 32]
                require mem[_1013 + 32] == mem[_1013 + 32]
                _1041 = mem[_1013 + 64]
                require mem[_1013 + 64] == bool(mem[_1013 + 64])
                require ext_code.size(address(_768))
                staticcall address(_768).totalBorrows() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1058 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1063 = mem[_1058]
                require mem[_1058] == mem[_1058]
                _1076 = mem[64]
                mem[64] = mem[64] + 480
                mem[_1076] = (10^18 * _834) + (_898 / 2) / _898
                mem[_1076 + 32] = _834
                require ext_code.size(address(_768))
                staticcall address(_768).exchangeRateStored() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1085 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1085] == mem[_1085]
                mem[_1076 + 64] = mem[_1085]
                mem[mem[64] + 4] = arg1
                require ext_code.size(address(_768))
                staticcall address(_768).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1119 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1119] == mem[_1119]
                mem[_1076 + 96] = mem[_1119]
                mem[mem[64] + 4] = arg1
                require ext_code.size(address(_768))
                staticcall address(_768).borrowBalanceStored(address rg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1151 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1151] == mem[_1151]
                mem[_1076 + 128] = mem[_1151]
                mem[_1076 + 160] = _1063
                require ext_code.size(address(_768))
                staticcall address(_768).getCash() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1167 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1167] == mem[_1167]
                if _1063 > -mem[_1167] - 1:
                    revert with 'NH{q', 17
                if _1063 + mem[_1167] < _1063:
                    revert with 0, 'math-not-safe'
                mem[_1076 + 192] = _1063 + mem[_1167]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _1192 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowCaps(address rg1) with:
                        gas gas_remaining wei
                       args address(_1192)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1206 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1206] == mem[_1206]
                mem[_1076 + 224] = mem[_1206]
                require ext_code.size(address(_768))
                staticcall address(_768).0xd3bd2c72 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1218 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1218] == mem[_1218]
                mem[_1076 + 256] = mem[_1218]
                require ext_code.size(address(_768))
                staticcall address(_768).0xcd91801c with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1236 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1236] == mem[_1236]
                mem[_1076 + 288] = mem[_1236]
                mem[_1076 + 320] = _1025
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _1247 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = address(_1247)
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 rg1, address rg2) with:
                        gas gas_remaining wei
                       args 0, address(_1247)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1264 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1264] == mem[_1264]
                mem[_1076 + 352] = mem[_1264]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _1275 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = 1
                mem[mem[64] + 36] = address(_1275)
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 rg1, address rg2) with:
                        gas gas_remaining wei
                       args 1, address(_1275)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1290 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1290] == mem[_1290]
                mem[_1076 + 384] = mem[_1290]
                mem[_1076 + 416] = bool(_1041)
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _1299 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowGuardianPaused(address rg1) with:
                        gas gas_remaining wei
                       args address(_1299)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1312 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1312] == bool(mem[_1312])
                mem[_1076 + 448] = bool(mem[_1312])
                if idx >= mem[floor32(arg2.length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(arg2.length) + 129] = _1076
            else:
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].underlying() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _781 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_781] == mem[_781 + 12 len 20]
                require ext_code.size(mem[_781 + 12 len 20])
                staticcall mem[_781 + 12 len 20].0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _805 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _809 = mem[_805]
                require mem[_805] == mem[_805]
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.oracle() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _835 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _843 = mem[_835]
                require mem[_835] == mem[_835 + 12 len 20]
                mem[mem[64] + 4] = address(_768)
                require ext_code.size(address(_843))
                staticcall address(_843).getUnderlyingPrice(address rg1) with:
                        gas gas_remaining wei
                       args address(_768)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _876 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _880 = mem[_876]
                require mem[_876] == mem[_876]
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.oracle() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _897 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _900 = mem[_897]
                require mem[_897] == mem[_897 + 12 len 20]
                mem[mem[64] + 4] = 0x5c0401e81bc07ca70fad469b451682c0d747ef1c
                require ext_code.size(address(_900))
                staticcall address(_900).getUnderlyingPrice(address rg1) with:
                        gas gas_remaining wei
                       args 0x5c0401e81bc07ca70fad469b451682c0d747ef1c
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _928 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _931 = mem[_928]
                require mem[_928] == mem[_928]
                if 18 < _809:
                    revert with 'NH{q', 17
                if not -_809 + 18:
                    if _880 and 10^18 > -1 / _880:
                        revert with 'NH{q', 17
                    if 10^18 * _880 / 10^18 != _880:
                        revert with 0, 'math-not-safe'
                    if 10^18 * _880 > -(mem[_928] / 2) - 1:
                        revert with 'NH{q', 17
                    if (10^18 * _880) + (mem[_928] / 2) < 10^18 * _880:
                        revert with 0, 'math-not-safe'
                    if not mem[_928]:
                        revert with 'NH{q', 18
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.markets(address rg1) with:
                            gas gas_remaining wei
                           args address(_768)
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1060 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_1060] == bool(mem[_1060])
                    _1079 = mem[_1060 + 32]
                    require mem[_1060 + 32] == mem[_1060 + 32]
                    _1092 = mem[_1060 + 64]
                    require mem[_1060 + 64] == bool(mem[_1060 + 64])
                    require ext_code.size(address(_768))
                    staticcall address(_768).totalBorrows() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1108 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1113 = mem[_1108]
                    require mem[_1108] == mem[_1108]
                    _1128 = mem[64]
                    mem[64] = mem[64] + 480
                    mem[_1128] = (10^18 * _880) + (_931 / 2) / _931
                    mem[_1128 + 32] = _880
                    require ext_code.size(address(_768))
                    staticcall address(_768).exchangeRateStored() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1131 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1131] == mem[_1131]
                    mem[_1128 + 64] = mem[_1131]
                    mem[mem[64] + 4] = arg1
                    require ext_code.size(address(_768))
                    staticcall address(_768).0x70a08231 with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1157 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1157] == mem[_1157]
                    mem[_1128 + 96] = mem[_1157]
                    mem[mem[64] + 4] = arg1
                    require ext_code.size(address(_768))
                    staticcall address(_768).borrowBalanceStored(address rg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1182 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1182] == mem[_1182]
                    mem[_1128 + 128] = mem[_1182]
                    mem[_1128 + 160] = _1113
                    require ext_code.size(address(_768))
                    staticcall address(_768).getCash() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1198 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1198] == mem[_1198]
                    if _1113 > -mem[_1198] - 1:
                        revert with 'NH{q', 17
                    if _1113 + mem[_1198] < _1113:
                        revert with 0, 'math-not-safe'
                    mem[_1128 + 192] = _1113 + mem[_1198]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1223 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowCaps(address rg1) with:
                            gas gas_remaining wei
                           args address(_1223)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1239 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1239] == mem[_1239]
                    mem[_1128 + 224] = mem[_1239]
                    require ext_code.size(address(_768))
                    staticcall address(_768).0xd3bd2c72 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1252 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1252] == mem[_1252]
                    mem[_1128 + 256] = mem[_1252]
                    require ext_code.size(address(_768))
                    staticcall address(_768).0xcd91801c with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1265 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1265] == mem[_1265]
                    mem[_1128 + 288] = mem[_1265]
                    mem[_1128 + 320] = _1079
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1279 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = 0
                    mem[mem[64] + 36] = address(_1279)
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 rg1, address rg2) with:
                            gas gas_remaining wei
                           args 0, address(_1279)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1291 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1291] == mem[_1291]
                    mem[_1128 + 352] = mem[_1291]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1302 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = 1
                    mem[mem[64] + 36] = address(_1302)
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 rg1, address rg2) with:
                            gas gas_remaining wei
                           args 1, address(_1302)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1316 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1316] == mem[_1316]
                    mem[_1128 + 384] = mem[_1316]
                    mem[_1128 + 416] = bool(_1092)
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1326 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowGuardianPaused(address rg1) with:
                            gas gas_remaining wei
                           args address(_1326)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1343 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1343] == bool(mem[_1343])
                    mem[_1128 + 448] = bool(mem[_1343])
                    if idx >= mem[floor32(arg2.length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(arg2.length) + 129] = _1128
                else:
                    if bool(bool(-_809 + 18 < 78)) or bool(bool(-_809 + 18 < 32)):
                        if 10^(-_809 + 18) > -1:
                            revert with 'NH{q', 17
                        if not 10^(-_809 + 18):
                            revert with 'NH{q', 18
                        if _880 / 10^(-_809 + 18) and 10^18 > -1 / _880 / 10^(-_809 + 18):
                            revert with 'NH{q', 17
                        if 10^18 * _880 / 10^(-_809 + 18) / 10^18 != _880 / 10^(-_809 + 18):
                            revert with 0, 'math-not-safe'
                        if 10^18 * _880 / 10^(-_809 + 18) > -(mem[_928] / 2) - 1:
                            revert with 'NH{q', 17
                        if (10^18 * _880 / 10^(-_809 + 18)) + (mem[_928] / 2) < 10^18 * _880 / 10^(-_809 + 18):
                            revert with 0, 'math-not-safe'
                        if not mem[_928]:
                            revert with 'NH{q', 18
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.markets(address rg1) with:
                                gas gas_remaining wei
                               args address(_768)
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1068 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_1068] == bool(mem[_1068])
                        _1091 = mem[_1068 + 32]
                        require mem[_1068 + 32] == mem[_1068 + 32]
                        _1102 = mem[_1068 + 64]
                        require mem[_1068 + 64] == bool(mem[_1068 + 64])
                        require ext_code.size(address(_768))
                        staticcall address(_768).totalBorrows() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1120 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1126 = mem[_1120]
                        require mem[_1120] == mem[_1120]
                        _1137 = mem[64]
                        mem[64] = mem[64] + 480
                        mem[_1137] = (10^18 * _880 / 10^(-_809 + 18)) + (_931 / 2) / _931
                        mem[_1137 + 32] = _880 / 10^(-_809 + 18)
                        require ext_code.size(address(_768))
                        staticcall address(_768).exchangeRateStored() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1141 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1141] == mem[_1141]
                        mem[_1137 + 64] = mem[_1141]
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(address(_768))
                        staticcall address(_768).0x70a08231 with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1168 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1168] == mem[_1168]
                        mem[_1137 + 96] = mem[_1168]
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(address(_768))
                        staticcall address(_768).borrowBalanceStored(address rg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1189 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1189] == mem[_1189]
                        mem[_1137 + 128] = mem[_1189]
                        mem[_1137 + 160] = _1126
                        require ext_code.size(address(_768))
                        staticcall address(_768).getCash() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1208 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1208] == mem[_1208]
                        if _1126 > -mem[_1208] - 1:
                            revert with 'NH{q', 17
                        if _1126 + mem[_1208] < _1126:
                            revert with 0, 'math-not-safe'
                        mem[_1137 + 192] = _1126 + mem[_1208]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _1233 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowCaps(address rg1) with:
                                gas gas_remaining wei
                               args address(_1233)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1245 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1245] == mem[_1245]
                        mem[_1137 + 224] = mem[_1245]
                        require ext_code.size(address(_768))
                        staticcall address(_768).0xd3bd2c72 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1259 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1259] == mem[_1259]
                        mem[_1137 + 256] = mem[_1259]
                        require ext_code.size(address(_768))
                        staticcall address(_768).0xcd91801c with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1271 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1271] == mem[_1271]
                        mem[_1137 + 288] = mem[_1271]
                        mem[_1137 + 320] = _1091
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _1283 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = address(_1283)
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 rg1, address rg2) with:
                                gas gas_remaining wei
                               args 0, address(_1283)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1296 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1296] == mem[_1296]
                        mem[_1137 + 352] = mem[_1296]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _1306 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = 1
                        mem[mem[64] + 36] = address(_1306)
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 rg1, address rg2) with:
                                gas gas_remaining wei
                               args 1, address(_1306)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1322 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1322] == mem[_1322]
                        mem[_1137 + 384] = mem[_1322]
                        mem[_1137 + 416] = bool(_1102)
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _1336 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowGuardianPaused(address rg1) with:
                                gas gas_remaining wei
                               args address(_1336)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1354 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1354] == bool(mem[_1354])
                        mem[_1137 + 448] = bool(mem[_1354])
                        if idx >= mem[floor32(arg2.length) + 97]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + floor32(arg2.length) + 129] = _1137
                    else:
                        t = 10
                        u = 1
                        s = -_809 + 18
                        while s > 1:
                            if t > -1 / t:
                                revert with 'NH{q', 17
                            if not bool(s):
                                t = t * t
                                u = u
                                s = uint255(s) * 0.5
                                continue 
                            t = t * t
                            u = u * t
                            s = uint255(s) * 0.5
                            continue 
                        if u > -1 / t:
                            revert with 'NH{q', 17
                        if not u * t:
                            revert with 'NH{q', 18
                        if _880 / u * t and 10^18 > -1 / _880 / u * t:
                            revert with 'NH{q', 17
                        if 10^18 * _880 / u * t / 10^18 != _880 / u * t:
                            revert with 0, 'math-not-safe'
                        if 10^18 * _880 / u * t > -(mem[_928] / 2) - 1:
                            revert with 'NH{q', 17
                        if (10^18 * _880 / u * t) + (mem[_928] / 2) < 10^18 * _880 / u * t:
                            revert with 0, 'math-not-safe'
                        if not mem[_928]:
                            revert with 'NH{q', 18
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.markets(address rg1) with:
                                gas gas_remaining wei
                               args address(_768)
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1181 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_1181] == bool(mem[_1181])
                        _1195 = mem[_1181 + 32]
                        require mem[_1181 + 32] == mem[_1181 + 32]
                        _1207 = mem[_1181 + 64]
                        require mem[_1181 + 64] == bool(mem[_1181 + 64])
                        require ext_code.size(address(_768))
                        staticcall address(_768).totalBorrows() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1214 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1219 = mem[_1214]
                        require mem[_1214] == mem[_1214]
                        _1225 = mem[64]
                        mem[64] = mem[64] + 480
                        mem[_1225] = (10^18 * _880 / u * t) + (_931 / 2) / _931
                        mem[_1225 + 32] = _880 / u * t
                        require ext_code.size(address(_768))
                        staticcall address(_768).exchangeRateStored() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1229 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1229] == mem[_1229]
                        mem[_1225 + 64] = mem[_1229]
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(address(_768))
                        staticcall address(_768).0x70a08231 with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1254 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1254] == mem[_1254]
                        mem[_1225 + 96] = mem[_1254]
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(address(_768))
                        staticcall address(_768).borrowBalanceStored(address rg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1278 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1278] == mem[_1278]
                        mem[_1225 + 128] = mem[_1278]
                        mem[_1225 + 160] = _1219
                        require ext_code.size(address(_768))
                        staticcall address(_768).getCash() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1288 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1288] == mem[_1288]
                        if _1219 > -mem[_1288] - 1:
                            revert with 'NH{q', 17
                        if _1219 + mem[_1288] < _1219:
                            revert with 0, 'math-not-safe'
                        mem[_1225 + 192] = _1219 + mem[_1288]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _1310 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowCaps(address rg1) with:
                                gas gas_remaining wei
                               args address(_1310)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1319 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1319] == mem[_1319]
                        mem[_1225 + 224] = mem[_1319]
                        require ext_code.size(address(_768))
                        staticcall address(_768).0xd3bd2c72 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1332 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1332] == mem[_1332]
                        mem[_1225 + 256] = mem[_1332]
                        require ext_code.size(address(_768))
                        staticcall address(_768).0xcd91801c with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1355 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1355] == mem[_1355]
                        mem[_1225 + 288] = mem[_1355]
                        mem[_1225 + 320] = _1195
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _1369 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = address(_1369)
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 rg1, address rg2) with:
                                gas gas_remaining wei
                               args 0, address(_1369)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1384 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1384] == mem[_1384]
                        mem[_1225 + 352] = mem[_1384]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _1392 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = 1
                        mem[mem[64] + 36] = address(_1392)
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 rg1, address rg2) with:
                                gas gas_remaining wei
                               args 1, address(_1392)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1404 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1404] == mem[_1404]
                        mem[_1225 + 384] = mem[_1404]
                        mem[_1225 + 416] = bool(_1207)
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _1414 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowGuardianPaused(address rg1) with:
                                gas gas_remaining wei
                               args address(_1414)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1421 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1421] == bool(mem[_1421])
                        mem[_1225 + 448] = bool(mem[_1421])
                        if idx >= mem[floor32(arg2.length) + 97]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + floor32(arg2.length) + 129] = _1225
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _767 = mem[64]
        mem[mem[64]] = 32
        _772 = mem[floor32(arg2.length) + 97]
        mem[mem[64] + 32] = mem[floor32(arg2.length) + 97]
        idx = 0
        s = floor32(arg2.length) + 129
        t = mem[64] + 64
        while idx < _772:
            _1075 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_1075 + 32]
            mem[t + 64] = mem[_1075 + 64]
            mem[t + 96] = mem[_1075 + 96]
            mem[t + 128] = mem[_1075 + 128]
            mem[t + 160] = mem[_1075 + 160]
            mem[t + 192] = mem[_1075 + 192]
            mem[t + 224] = mem[_1075 + 224]
            mem[t + 256] = mem[_1075 + 256]
            mem[t + 288] = mem[_1075 + 288]
            mem[t + 320] = mem[_1075 + 320]
            mem[t + 352] = mem[_1075 + 352]
            mem[t + 384] = mem[_1075 + 384]
            mem[t + 416] = bool(mem[_1075 + 416])
            mem[t + 448] = bool(mem[_1075 + 448])
            idx = idx + 1
            s = s + 32
            t = t + 480
            continue 
        return memory
          from mem[64]
           len _767 + (480 * _772) + -mem[64] + 64
    mem[64] = floor32(arg2.length) + (32 * arg2.length) + 609
    mem[floor32(arg2.length) + (32 * arg2.length) + 129] = 0
    mem[floor32(arg2.length) + (32 * arg2.length) + 161] = 0
    mem[floor32(arg2.length) + (32 * arg2.length) + 193] = 0
    mem[floor32(arg2.length) + (32 * arg2.length) + 225] = 0
    mem[floor32(arg2.length) + (32 * arg2.length) + 257] = 0
    mem[floor32(arg2.length) + (32 * arg2.length) + 289] = 0
    mem[floor32(arg2.length) + (32 * arg2.length) + 321] = 0
    mem[floor32(arg2.length) + (32 * arg2.length) + 353] = 0
    mem[floor32(arg2.length) + (32 * arg2.length) + 385] = 0
    mem[floor32(arg2.length) + (32 * arg2.length) + 417] = 0
    mem[floor32(arg2.length) + (32 * arg2.length) + 449] = 0
    mem[floor32(arg2.length) + (32 * arg2.length) + 481] = 0
    mem[floor32(arg2.length) + (32 * arg2.length) + 513] = 0
    mem[floor32(arg2.length) + (32 * arg2.length) + 545] = 0
    mem[floor32(arg2.length) + (32 * arg2.length) + 577] = 0
    mem[var42001] = floor32(arg2.length) + (32 * arg2.length) + 129
    s = var42001
    idx = var42002
    while idx - 1:
        mem[64] = mem[64] + 480
        mem[floor32(arg2.length) + (32 * arg2.length) + 129] = 0
        mem[floor32(arg2.length) + (32 * arg2.length) + 161] = 0
        mem[floor32(arg2.length) + (32 * arg2.length) + 193] = 0
        mem[floor32(arg2.length) + (32 * arg2.length) + 225] = 0
        mem[floor32(arg2.length) + (32 * arg2.length) + 257] = 0
        mem[floor32(arg2.length) + (32 * arg2.length) + 289] = 0
        mem[floor32(arg2.length) + (32 * arg2.length) + 321] = 0
        mem[floor32(arg2.length) + (32 * arg2.length) + 353] = 0
        mem[floor32(arg2.length) + (32 * arg2.length) + 385] = 0
        mem[floor32(arg2.length) + (32 * arg2.length) + 417] = 0
        mem[floor32(arg2.length) + (32 * arg2.length) + 449] = 0
        mem[floor32(arg2.length) + (32 * arg2.length) + 481] = 0
        mem[floor32(arg2.length) + (32 * arg2.length) + 513] = 0
        mem[floor32(arg2.length) + (32 * arg2.length) + 545] = 0
        mem[floor32(arg2.length) + (32 * arg2.length) + 577] = 0
        mem[s + 32] = floor32(arg2.length) + (32 * arg2.length) + 129
        s = s + 32
        idx = idx - 1
        continue 
    _1330 = mem[96]
    idx = 0
    while idx < _1330:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _1335 = mem[(32 * idx) + 128]
        if 0x5c0401e81bc07ca70fad469b451682c0d747ef1c == mem[(32 * idx) + 140 len 20]:
            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.oracle() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1353 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1358 = mem[_1353]
            require mem[_1353] == mem[_1353 + 12 len 20]
            mem[mem[64] + 4] = address(_1335)
            require ext_code.size(address(_1358))
            staticcall address(_1358).getUnderlyingPrice(address rg1) with:
                    gas gas_remaining wei
                   args address(_1335)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1377 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1382 = mem[_1377]
            require mem[_1377] == mem[_1377]
            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.oracle() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1395 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1397 = mem[_1395]
            require mem[_1395] == mem[_1395 + 12 len 20]
            mem[mem[64] + 4] = 0x5c0401e81bc07ca70fad469b451682c0d747ef1c
            require ext_code.size(address(_1397))
            staticcall address(_1397).getUnderlyingPrice(address rg1) with:
                    gas gas_remaining wei
                   args 0x5c0401e81bc07ca70fad469b451682c0d747ef1c
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1416 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1418 = mem[_1416]
            require mem[_1416] == mem[_1416]
            if _1382 and 10^18 > -1 / _1382:
                revert with 'NH{q', 17
            if 10^18 * _1382 / 10^18 != _1382:
                revert with 0, 'math-not-safe'
            if 10^18 * _1382 > -(mem[_1416] / 2) - 1:
                revert with 'NH{q', 17
            if (10^18 * _1382) + (mem[_1416] / 2) < 10^18 * _1382:
                revert with 0, 'math-not-safe'
            if not mem[_1416]:
                revert with 'NH{q', 18
            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.markets(address rg1) with:
                    gas gas_remaining wei
                   args address(_1335)
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1438 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_1438] == bool(mem[_1438])
            _1443 = mem[_1438 + 32]
            require mem[_1438 + 32] == mem[_1438 + 32]
            _1448 = mem[_1438 + 64]
            require mem[_1438 + 64] == bool(mem[_1438 + 64])
            require ext_code.size(address(_1335))
            staticcall address(_1335).totalBorrows() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1455 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1458 = mem[_1455]
            require mem[_1455] == mem[_1455]
            _1465 = mem[64]
            mem[64] = mem[64] + 480
            mem[_1465] = (10^18 * _1382) + (_1418 / 2) / _1418
            mem[_1465 + 32] = _1382
            require ext_code.size(address(_1335))
            staticcall address(_1335).exchangeRateStored() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1471 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1471] == mem[_1471]
            mem[_1465 + 64] = mem[_1471]
            mem[mem[64] + 4] = arg1
            require ext_code.size(address(_1335))
            staticcall address(_1335).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1489 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1489] == mem[_1489]
            mem[_1465 + 96] = mem[_1489]
            mem[mem[64] + 4] = arg1
            require ext_code.size(address(_1335))
            staticcall address(_1335).borrowBalanceStored(address rg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1513 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1513] == mem[_1513]
            mem[_1465 + 128] = mem[_1513]
            mem[_1465 + 160] = _1458
            require ext_code.size(address(_1335))
            staticcall address(_1335).getCash() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1526 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1526] == mem[_1526]
            if _1458 > -mem[_1526] - 1:
                revert with 'NH{q', 17
            if _1458 + mem[_1526] < _1458:
                revert with 0, 'math-not-safe'
            mem[_1465 + 192] = _1458 + mem[_1526]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _1545 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowCaps(address rg1) with:
                    gas gas_remaining wei
                   args address(_1545)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1557 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1557] == mem[_1557]
            mem[_1465 + 224] = mem[_1557]
            require ext_code.size(address(_1335))
            staticcall address(_1335).0xd3bd2c72 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1567 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1567] == mem[_1567]
            mem[_1465 + 256] = mem[_1567]
            require ext_code.size(address(_1335))
            staticcall address(_1335).0xcd91801c with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1585 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1585] == mem[_1585]
            mem[_1465 + 288] = mem[_1585]
            mem[_1465 + 320] = _1443
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _1596 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = 0
            mem[mem[64] + 36] = address(_1596)
            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 rg1, address rg2) with:
                    gas gas_remaining wei
                   args 0, address(_1596)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1613 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1613] == mem[_1613]
            mem[_1465 + 352] = mem[_1613]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _1624 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = 1
            mem[mem[64] + 36] = address(_1624)
            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 rg1, address rg2) with:
                    gas gas_remaining wei
                   args 1, address(_1624)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1639 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1639] == mem[_1639]
            mem[_1465 + 384] = mem[_1639]
            mem[_1465 + 416] = bool(_1448)
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _1648 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowGuardianPaused(address rg1) with:
                    gas gas_remaining wei
                   args address(_1648)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1661 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1661] == bool(mem[_1661])
            mem[_1465 + 448] = bool(mem[_1661])
            if idx >= mem[floor32(arg2.length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(arg2.length) + 129] = _1465
        else:
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].underlying() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1344 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1344] == mem[_1344 + 12 len 20]
            require ext_code.size(mem[_1344 + 12 len 20])
            staticcall mem[_1344 + 12 len 20].0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1366 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1372 = mem[_1366]
            require mem[_1366] == mem[_1366]
            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.oracle() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1383 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1385 = mem[_1383]
            require mem[_1383] == mem[_1383 + 12 len 20]
            mem[mem[64] + 4] = address(_1335)
            require ext_code.size(address(_1385))
            staticcall address(_1385).getUnderlyingPrice(address rg1) with:
                    gas gas_remaining wei
                   args address(_1335)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1401 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1405 = mem[_1401]
            require mem[_1401] == mem[_1401]
            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.oracle() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1417 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1419 = mem[_1417]
            require mem[_1417] == mem[_1417 + 12 len 20]
            mem[mem[64] + 4] = 0x5c0401e81bc07ca70fad469b451682c0d747ef1c
            require ext_code.size(address(_1419))
            staticcall address(_1419).getUnderlyingPrice(address rg1) with:
                    gas gas_remaining wei
                   args 0x5c0401e81bc07ca70fad469b451682c0d747ef1c
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1426 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1427 = mem[_1426]
            require mem[_1426] == mem[_1426]
            if 18 < _1372:
                revert with 'NH{q', 17
            if not -_1372 + 18:
                if _1405 and 10^18 > -1 / _1405:
                    revert with 'NH{q', 17
                if 10^18 * _1405 / 10^18 != _1405:
                    revert with 0, 'math-not-safe'
                if 10^18 * _1405 > -(mem[_1426] / 2) - 1:
                    revert with 'NH{q', 17
                if (10^18 * _1405) + (mem[_1426] / 2) < 10^18 * _1405:
                    revert with 0, 'math-not-safe'
                if not mem[_1426]:
                    revert with 'NH{q', 18
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.markets(address rg1) with:
                        gas gas_remaining wei
                       args address(_1335)
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1457 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_1457] == bool(mem[_1457])
                _1468 = mem[_1457 + 32]
                require mem[_1457 + 32] == mem[_1457 + 32]
                _1475 = mem[_1457 + 64]
                require mem[_1457 + 64] == bool(mem[_1457 + 64])
                require ext_code.size(address(_1335))
                staticcall address(_1335).totalBorrows() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1482 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1484 = mem[_1482]
                require mem[_1482] == mem[_1482]
                _1494 = mem[64]
                mem[64] = mem[64] + 480
                mem[_1494] = (10^18 * _1405) + (_1427 / 2) / _1427
                mem[_1494 + 32] = _1405
                require ext_code.size(address(_1335))
                staticcall address(_1335).exchangeRateStored() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1497 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1497] == mem[_1497]
                mem[_1494 + 64] = mem[_1497]
                mem[mem[64] + 4] = arg1
                require ext_code.size(address(_1335))
                staticcall address(_1335).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1519 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1519] == mem[_1519]
                mem[_1494 + 96] = mem[_1519]
                mem[mem[64] + 4] = arg1
                require ext_code.size(address(_1335))
                staticcall address(_1335).borrowBalanceStored(address rg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1538 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1538] == mem[_1538]
                mem[_1494 + 128] = mem[_1538]
                mem[_1494 + 160] = _1484
                require ext_code.size(address(_1335))
                staticcall address(_1335).getCash() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1551 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1551] == mem[_1551]
                if _1484 > -mem[_1551] - 1:
                    revert with 'NH{q', 17
                if _1484 + mem[_1551] < _1484:
                    revert with 0, 'math-not-safe'
                mem[_1494 + 192] = _1484 + mem[_1551]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _1572 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowCaps(address rg1) with:
                        gas gas_remaining wei
                       args address(_1572)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1588 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1588] == mem[_1588]
                mem[_1494 + 224] = mem[_1588]
                require ext_code.size(address(_1335))
                staticcall address(_1335).0xd3bd2c72 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1601 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1601] == mem[_1601]
                mem[_1494 + 256] = mem[_1601]
                require ext_code.size(address(_1335))
                staticcall address(_1335).0xcd91801c with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1614 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1614] == mem[_1614]
                mem[_1494 + 288] = mem[_1614]
                mem[_1494 + 320] = _1468
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _1628 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = address(_1628)
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 rg1, address rg2) with:
                        gas gas_remaining wei
                       args 0, address(_1628)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1640 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1640] == mem[_1640]
                mem[_1494 + 352] = mem[_1640]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _1651 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = 1
                mem[mem[64] + 36] = address(_1651)
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 rg1, address rg2) with:
                        gas gas_remaining wei
                       args 1, address(_1651)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1665 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1665] == mem[_1665]
                mem[_1494 + 384] = mem[_1665]
                mem[_1494 + 416] = bool(_1475)
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _1675 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowGuardianPaused(address rg1) with:
                        gas gas_remaining wei
                       args address(_1675)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1685 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1685] == bool(mem[_1685])
                mem[_1494 + 448] = bool(mem[_1685])
                if idx >= mem[floor32(arg2.length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(arg2.length) + 129] = _1494
            else:
                if bool(bool(-_1372 + 18 < 78)) or bool(bool(-_1372 + 18 < 32)):
                    if 10^(-_1372 + 18) > -1:
                        revert with 'NH{q', 17
                    if not 10^(-_1372 + 18):
                        revert with 'NH{q', 18
                    if _1405 / 10^(-_1372 + 18) and 10^18 > -1 / _1405 / 10^(-_1372 + 18):
                        revert with 'NH{q', 17
                    if 10^18 * _1405 / 10^(-_1372 + 18) / 10^18 != _1405 / 10^(-_1372 + 18):
                        revert with 0, 'math-not-safe'
                    if 10^18 * _1405 / 10^(-_1372 + 18) > -(mem[_1426] / 2) - 1:
                        revert with 'NH{q', 17
                    if (10^18 * _1405 / 10^(-_1372 + 18)) + (mem[_1426] / 2) < 10^18 * _1405 / 10^(-_1372 + 18):
                        revert with 0, 'math-not-safe'
                    if not mem[_1426]:
                        revert with 'NH{q', 18
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.markets(address rg1) with:
                            gas gas_remaining wei
                           args address(_1335)
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1461 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_1461] == bool(mem[_1461])
                    _1474 = mem[_1461 + 32]
                    require mem[_1461 + 32] == mem[_1461 + 32]
                    _1478 = mem[_1461 + 64]
                    require mem[_1461 + 64] == bool(mem[_1461 + 64])
                    require ext_code.size(address(_1335))
                    staticcall address(_1335).totalBorrows() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1490 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1492 = mem[_1490]
                    require mem[_1490] == mem[_1490]
                    _1502 = mem[64]
                    mem[64] = mem[64] + 480
                    mem[_1502] = (10^18 * _1405 / 10^(-_1372 + 18)) + (_1427 / 2) / _1427
                    mem[_1502 + 32] = _1405 / 10^(-_1372 + 18)
                    require ext_code.size(address(_1335))
                    staticcall address(_1335).exchangeRateStored() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1506 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1506] == mem[_1506]
                    mem[_1502 + 64] = mem[_1506]
                    mem[mem[64] + 4] = arg1
                    require ext_code.size(address(_1335))
                    staticcall address(_1335).0x70a08231 with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1527 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1527] == mem[_1527]
                    mem[_1502 + 96] = mem[_1527]
                    mem[mem[64] + 4] = arg1
                    require ext_code.size(address(_1335))
                    staticcall address(_1335).borrowBalanceStored(address rg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1544 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1544] == mem[_1544]
                    mem[_1502 + 128] = mem[_1544]
                    mem[_1502 + 160] = _1492
                    require ext_code.size(address(_1335))
                    staticcall address(_1335).getCash() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1559 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1559] == mem[_1559]
                    if _1492 > -mem[_1559] - 1:
                        revert with 'NH{q', 17
                    if _1492 + mem[_1559] < _1492:
                        revert with 0, 'math-not-safe'
                    mem[_1502 + 192] = _1492 + mem[_1559]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1582 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowCaps(address rg1) with:
                            gas gas_remaining wei
                           args address(_1582)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1594 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1594] == mem[_1594]
                    mem[_1502 + 224] = mem[_1594]
                    require ext_code.size(address(_1335))
                    staticcall address(_1335).0xd3bd2c72 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1608 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1608] == mem[_1608]
                    mem[_1502 + 256] = mem[_1608]
                    require ext_code.size(address(_1335))
                    staticcall address(_1335).0xcd91801c with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1620 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1620] == mem[_1620]
                    mem[_1502 + 288] = mem[_1620]
                    mem[_1502 + 320] = _1474
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1632 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = 0
                    mem[mem[64] + 36] = address(_1632)
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 rg1, address rg2) with:
                            gas gas_remaining wei
                           args 0, address(_1632)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1645 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1645] == mem[_1645]
                    mem[_1502 + 352] = mem[_1645]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1655 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = 1
                    mem[mem[64] + 36] = address(_1655)
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 rg1, address rg2) with:
                            gas gas_remaining wei
                           args 1, address(_1655)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1671 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1671] == mem[_1671]
                    mem[_1502 + 384] = mem[_1671]
                    mem[_1502 + 416] = bool(_1478)
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1681 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowGuardianPaused(address rg1) with:
                            gas gas_remaining wei
                           args address(_1681)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1690 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1690] == bool(mem[_1690])
                    mem[_1502 + 448] = bool(mem[_1690])
                    if idx >= mem[floor32(arg2.length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(arg2.length) + 129] = _1502
                else:
                    t = 10
                    u = 1
                    s = -_1372 + 18
                    while s > 1:
                        if t > -1 / t:
                            revert with 'NH{q', 17
                        _1330 = mem[96]
                        if not bool(s):
                            t = t * t
                            u = u
                            s = uint255(s) * 0.5
                            continue 
                        t = t * t
                        u = u * t
                        s = uint255(s) * 0.5
                        continue 
                    if u > -1 / t:
                        revert with 'NH{q', 17
                    if not u * t:
                        revert with 'NH{q', 18
                    if _1405 / u * t and 10^18 > -1 / _1405 / u * t:
                        revert with 'NH{q', 17
                    if 10^18 * _1405 / u * t / 10^18 != _1405 / u * t:
                        revert with 0, 'math-not-safe'
                    if 10^18 * _1405 / u * t > -(mem[_1426] / 2) - 1:
                        revert with 'NH{q', 17
                    if (10^18 * _1405 / u * t) + (mem[_1426] / 2) < 10^18 * _1405 / u * t:
                        revert with 0, 'math-not-safe'
                    if not mem[_1426]:
                        revert with 'NH{q', 18
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.markets(address rg1) with:
                            gas gas_remaining wei
                           args address(_1335)
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1537 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_1537] == bool(mem[_1537])
                    _1548 = mem[_1537 + 32]
                    require mem[_1537 + 32] == mem[_1537 + 32]
                    _1558 = mem[_1537 + 64]
                    require mem[_1537 + 64] == bool(mem[_1537 + 64])
                    require ext_code.size(address(_1335))
                    staticcall address(_1335).totalBorrows() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1564 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1568 = mem[_1564]
                    require mem[_1564] == mem[_1564]
                    _1574 = mem[64]
                    mem[64] = mem[64] + 480
                    mem[_1574] = (10^18 * _1405 / u * t) + (_1427 / 2) / _1427
                    mem[_1574 + 32] = _1405 / u * t
                    require ext_code.size(address(_1335))
                    staticcall address(_1335).exchangeRateStored() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1578 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1578] == mem[_1578]
                    mem[_1574 + 64] = mem[_1578]
                    mem[mem[64] + 4] = arg1
                    require ext_code.size(address(_1335))
                    staticcall address(_1335).0x70a08231 with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1603 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1603] == mem[_1603]
                    mem[_1574 + 96] = mem[_1603]
                    mem[mem[64] + 4] = arg1
                    require ext_code.size(address(_1335))
                    staticcall address(_1335).borrowBalanceStored(address rg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1627 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1627] == mem[_1627]
                    mem[_1574 + 128] = mem[_1627]
                    mem[_1574 + 160] = _1568
                    require ext_code.size(address(_1335))
                    staticcall address(_1335).getCash() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1637 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1637] == mem[_1637]
                    if _1568 > -mem[_1637] - 1:
                        revert with 'NH{q', 17
                    if _1568 + mem[_1637] < _1568:
                        revert with 0, 'math-not-safe'
                    mem[_1574 + 192] = _1568 + mem[_1637]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1659 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowCaps(address rg1) with:
                            gas gas_remaining wei
                           args address(_1659)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1668 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1668] == mem[_1668]
                    mem[_1574 + 224] = mem[_1668]
                    require ext_code.size(address(_1335))
                    staticcall address(_1335).0xd3bd2c72 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1679 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1679] == mem[_1679]
                    mem[_1574 + 256] = mem[_1679]
                    require ext_code.size(address(_1335))
                    staticcall address(_1335).0xcd91801c with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1691 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1691] == mem[_1691]
                    mem[_1574 + 288] = mem[_1691]
                    mem[_1574 + 320] = _1548
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1697 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = 0
                    mem[mem[64] + 36] = address(_1697)
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 rg1, address rg2) with:
                            gas gas_remaining wei
                           args 0, address(_1697)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1700 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1700] == mem[_1700]
                    mem[_1574 + 352] = mem[_1700]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1703 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = 1
                    mem[mem[64] + 36] = address(_1703)
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 rg1, address rg2) with:
                            gas gas_remaining wei
                           args 1, address(_1703)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1706 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1706] == mem[_1706]
                    mem[_1574 + 384] = mem[_1706]
                    mem[_1574 + 416] = bool(_1558)
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1709 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowGuardianPaused(address rg1) with:
                            gas gas_remaining wei
                           args address(_1709)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1712 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1712] == bool(mem[_1712])
                    mem[_1574 + 448] = bool(mem[_1712])
                    if idx >= mem[floor32(arg2.length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(arg2.length) + 129] = _1574
        if idx == -1:
            revert with 'NH{q', 17
        _1330 = mem[96]
        idx = idx + 1
        continue 
    _1334 = mem[64]
    mem[mem[64]] = 32
    _1340 = mem[floor32(arg2.length) + 97]
    mem[mem[64] + 32] = mem[floor32(arg2.length) + 97]
    idx = 0
    s = floor32(arg2.length) + 129
    t = mem[64] + 64
    while idx < _1340:
        _1464 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_1464 + 32]
        mem[t + 64] = mem[_1464 + 64]
        mem[t + 96] = mem[_1464 + 96]
        mem[t + 128] = mem[_1464 + 128]
        mem[t + 160] = mem[_1464 + 160]
        mem[t + 192] = mem[_1464 + 192]
        mem[t + 224] = mem[_1464 + 224]
        mem[t + 256] = mem[_1464 + 256]
        mem[t + 288] = mem[_1464 + 288]
        mem[t + 320] = mem[_1464 + 320]
        mem[t + 352] = mem[_1464 + 352]
        mem[t + 384] = mem[_1464 + 384]
        mem[t + 416] = bool(mem[_1464 + 416])
        mem[t + 448] = bool(mem[_1464 + 448])
        idx = idx + 1
        s = s + 32
        t = t + 480
        continue 
    return memory
      from mem[64]
       len _1334 + (480 * _1340) + -mem[64] + 64
}

function getPosition(address arg1, address[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg2.length) + 97 > test266151307() or floor32(arg2.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = 128
    while idx < arg2.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(arg2.length) + 97] = 0
    mem[floor32(arg2.length) + 129] = 0
    mem[floor32(arg2.length) + 161] = 0
    mem[floor32(arg2.length) + 193] = 0
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    mem[floor32(arg2.length) + 225] = arg2.length
    mem[64] = floor32(arg2.length) + (32 * arg2.length) + 257
    if not arg2.length:
        idx = 0
        while idx < arg2.length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _889 = mem[(32 * idx) + 128]
            if 0x5c0401e81bc07ca70fad469b451682c0d747ef1c == mem[(32 * idx) + 140 len 20]:
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.oracle() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _912 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _916 = mem[_912]
                require mem[_912] == mem[_912 + 12 len 20]
                mem[mem[64] + 4] = address(_889)
                require ext_code.size(address(_916))
                staticcall address(_916).getUnderlyingPrice(address rg1) with:
                        gas gas_remaining wei
                       args address(_889)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _951 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _956 = mem[_951]
                require mem[_951] == mem[_951]
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.oracle() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _977 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _983 = mem[_977]
                require mem[_977] == mem[_977 + 12 len 20]
                mem[mem[64] + 4] = 0x5c0401e81bc07ca70fad469b451682c0d747ef1c
                require ext_code.size(address(_983))
                staticcall address(_983).getUnderlyingPrice(address rg1) with:
                        gas gas_remaining wei
                       args 0x5c0401e81bc07ca70fad469b451682c0d747ef1c
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1016 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1019 = mem[_1016]
                require mem[_1016] == mem[_1016]
                if _956 and 10^18 > -1 / _956:
                    revert with 'NH{q', 17
                if 10^18 * _956 / 10^18 != _956:
                    revert with 0, 'math-not-safe'
                if 10^18 * _956 > -(mem[_1016] / 2) - 1:
                    revert with 'NH{q', 17
                if (10^18 * _956) + (mem[_1016] / 2) < 10^18 * _956:
                    revert with 0, 'math-not-safe'
                if not mem[_1016]:
                    revert with 'NH{q', 18
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.markets(address rg1) with:
                        gas gas_remaining wei
                       args address(_889)
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1159 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_1159] == bool(mem[_1159])
                _1173 = mem[_1159 + 32]
                require mem[_1159 + 32] == mem[_1159 + 32]
                _1189 = mem[_1159 + 64]
                require mem[_1159 + 64] == bool(mem[_1159 + 64])
                require ext_code.size(address(_889))
                staticcall address(_889).totalBorrows() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1206 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1211 = mem[_1206]
                require mem[_1206] == mem[_1206]
                _1224 = mem[64]
                mem[64] = mem[64] + 480
                mem[_1224] = (10^18 * _956) + (_1019 / 2) / _1019
                mem[_1224 + 32] = _956
                require ext_code.size(address(_889))
                staticcall address(_889).exchangeRateStored() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1233 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1233] == mem[_1233]
                mem[_1224 + 64] = mem[_1233]
                mem[mem[64] + 4] = arg1
                require ext_code.size(address(_889))
                staticcall address(_889).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1271 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1271] == mem[_1271]
                mem[_1224 + 96] = mem[_1271]
                mem[mem[64] + 4] = arg1
                require ext_code.size(address(_889))
                staticcall address(_889).borrowBalanceStored(address rg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1303 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1303] == mem[_1303]
                mem[_1224 + 128] = mem[_1303]
                mem[_1224 + 160] = _1211
                require ext_code.size(address(_889))
                staticcall address(_889).getCash() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1319 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1319] == mem[_1319]
                if _1211 > -mem[_1319] - 1:
                    revert with 'NH{q', 17
                if _1211 + mem[_1319] < _1211:
                    revert with 0, 'math-not-safe'
                mem[_1224 + 192] = _1211 + mem[_1319]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _1344 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowCaps(address rg1) with:
                        gas gas_remaining wei
                       args address(_1344)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1358 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1358] == mem[_1358]
                mem[_1224 + 224] = mem[_1358]
                require ext_code.size(address(_889))
                staticcall address(_889).0xd3bd2c72 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1370 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1370] == mem[_1370]
                mem[_1224 + 256] = mem[_1370]
                require ext_code.size(address(_889))
                staticcall address(_889).0xcd91801c with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1388 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1388] == mem[_1388]
                mem[_1224 + 288] = mem[_1388]
                mem[_1224 + 320] = _1173
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _1399 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = address(_1399)
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 rg1, address rg2) with:
                        gas gas_remaining wei
                       args 0, address(_1399)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1416 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1416] == mem[_1416]
                mem[_1224 + 352] = mem[_1416]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _1427 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = 1
                mem[mem[64] + 36] = address(_1427)
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 rg1, address rg2) with:
                        gas gas_remaining wei
                       args 1, address(_1427)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1442 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1442] == mem[_1442]
                mem[_1224 + 384] = mem[_1442]
                mem[_1224 + 416] = bool(_1189)
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _1451 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowGuardianPaused(address rg1) with:
                        gas gas_remaining wei
                       args address(_1451)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1464 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1464] == bool(mem[_1464])
                mem[_1224 + 448] = bool(mem[_1464])
                if idx >= mem[floor32(arg2.length) + 225]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(arg2.length) + 257] = _1224
            else:
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].underlying() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _903 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_903] == mem[_903 + 12 len 20]
                require ext_code.size(mem[_903 + 12 len 20])
                staticcall mem[_903 + 12 len 20].0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _926 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _933 = mem[_926]
                require mem[_926] == mem[_926]
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.oracle() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _957 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _965 = mem[_957]
                require mem[_957] == mem[_957 + 12 len 20]
                mem[mem[64] + 4] = address(_889)
                require ext_code.size(address(_965))
                staticcall address(_965).getUnderlyingPrice(address rg1) with:
                        gas gas_remaining wei
                       args address(_889)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _997 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1000 = mem[_997]
                require mem[_997] == mem[_997]
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.oracle() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1018 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1021 = mem[_1018]
                require mem[_1018] == mem[_1018 + 12 len 20]
                mem[mem[64] + 4] = 0x5c0401e81bc07ca70fad469b451682c0d747ef1c
                require ext_code.size(address(_1021))
                staticcall address(_1021).getUnderlyingPrice(address rg1) with:
                        gas gas_remaining wei
                       args 0x5c0401e81bc07ca70fad469b451682c0d747ef1c
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1053 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1056 = mem[_1053]
                require mem[_1053] == mem[_1053]
                if 18 < _933:
                    revert with 'NH{q', 17
                if not -_933 + 18:
                    if _1000 and 10^18 > -1 / _1000:
                        revert with 'NH{q', 17
                    if 10^18 * _1000 / 10^18 != _1000:
                        revert with 0, 'math-not-safe'
                    if 10^18 * _1000 > -(mem[_1053] / 2) - 1:
                        revert with 'NH{q', 17
                    if (10^18 * _1000) + (mem[_1053] / 2) < 10^18 * _1000:
                        revert with 0, 'math-not-safe'
                    if not mem[_1053]:
                        revert with 'NH{q', 18
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.markets(address rg1) with:
                            gas gas_remaining wei
                           args address(_889)
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1208 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_1208] == bool(mem[_1208])
                    _1227 = mem[_1208 + 32]
                    require mem[_1208 + 32] == mem[_1208 + 32]
                    _1241 = mem[_1208 + 64]
                    require mem[_1208 + 64] == bool(mem[_1208 + 64])
                    require ext_code.size(address(_889))
                    staticcall address(_889).totalBorrows() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1259 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1264 = mem[_1259]
                    require mem[_1259] == mem[_1259]
                    _1280 = mem[64]
                    mem[64] = mem[64] + 480
                    mem[_1280] = (10^18 * _1000) + (_1056 / 2) / _1056
                    mem[_1280 + 32] = _1000
                    require ext_code.size(address(_889))
                    staticcall address(_889).exchangeRateStored() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1283 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1283] == mem[_1283]
                    mem[_1280 + 64] = mem[_1283]
                    mem[mem[64] + 4] = arg1
                    require ext_code.size(address(_889))
                    staticcall address(_889).0x70a08231 with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1309 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1309] == mem[_1309]
                    mem[_1280 + 96] = mem[_1309]
                    mem[mem[64] + 4] = arg1
                    require ext_code.size(address(_889))
                    staticcall address(_889).borrowBalanceStored(address rg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1334 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1334] == mem[_1334]
                    mem[_1280 + 128] = mem[_1334]
                    mem[_1280 + 160] = _1264
                    require ext_code.size(address(_889))
                    staticcall address(_889).getCash() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1350 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1350] == mem[_1350]
                    if _1264 > -mem[_1350] - 1:
                        revert with 'NH{q', 17
                    if _1264 + mem[_1350] < _1264:
                        revert with 0, 'math-not-safe'
                    mem[_1280 + 192] = _1264 + mem[_1350]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1375 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowCaps(address rg1) with:
                            gas gas_remaining wei
                           args address(_1375)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1391 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1391] == mem[_1391]
                    mem[_1280 + 224] = mem[_1391]
                    require ext_code.size(address(_889))
                    staticcall address(_889).0xd3bd2c72 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1404 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1404] == mem[_1404]
                    mem[_1280 + 256] = mem[_1404]
                    require ext_code.size(address(_889))
                    staticcall address(_889).0xcd91801c with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1417 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1417] == mem[_1417]
                    mem[_1280 + 288] = mem[_1417]
                    mem[_1280 + 320] = _1227
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1431 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = 0
                    mem[mem[64] + 36] = address(_1431)
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 rg1, address rg2) with:
                            gas gas_remaining wei
                           args 0, address(_1431)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1443 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1443] == mem[_1443]
                    mem[_1280 + 352] = mem[_1443]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1454 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = 1
                    mem[mem[64] + 36] = address(_1454)
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 rg1, address rg2) with:
                            gas gas_remaining wei
                           args 1, address(_1454)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1468 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1468] == mem[_1468]
                    mem[_1280 + 384] = mem[_1468]
                    mem[_1280 + 416] = bool(_1241)
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1478 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowGuardianPaused(address rg1) with:
                            gas gas_remaining wei
                           args address(_1478)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1493 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1493] == bool(mem[_1493])
                    mem[_1280 + 448] = bool(mem[_1493])
                    if idx >= mem[floor32(arg2.length) + 225]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(arg2.length) + 257] = _1280
                else:
                    if bool(bool(-_933 + 18 < 78)) or bool(bool(-_933 + 18 < 32)):
                        if 10^(-_933 + 18) > -1:
                            revert with 'NH{q', 17
                        if not 10^(-_933 + 18):
                            revert with 'NH{q', 18
                        if _1000 / 10^(-_933 + 18) and 10^18 > -1 / _1000 / 10^(-_933 + 18):
                            revert with 'NH{q', 17
                        if 10^18 * _1000 / 10^(-_933 + 18) / 10^18 != _1000 / 10^(-_933 + 18):
                            revert with 0, 'math-not-safe'
                        if 10^18 * _1000 / 10^(-_933 + 18) > -(mem[_1053] / 2) - 1:
                            revert with 'NH{q', 17
                        if (10^18 * _1000 / 10^(-_933 + 18)) + (mem[_1053] / 2) < 10^18 * _1000 / 10^(-_933 + 18):
                            revert with 0, 'math-not-safe'
                        if not mem[_1053]:
                            revert with 'NH{q', 18
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.markets(address rg1) with:
                                gas gas_remaining wei
                               args address(_889)
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1216 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_1216] == bool(mem[_1216])
                        _1240 = mem[_1216 + 32]
                        require mem[_1216 + 32] == mem[_1216 + 32]
                        _1252 = mem[_1216 + 64]
                        require mem[_1216 + 64] == bool(mem[_1216 + 64])
                        require ext_code.size(address(_889))
                        staticcall address(_889).totalBorrows() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1272 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1278 = mem[_1272]
                        require mem[_1272] == mem[_1272]
                        _1289 = mem[64]
                        mem[64] = mem[64] + 480
                        mem[_1289] = (10^18 * _1000 / 10^(-_933 + 18)) + (_1056 / 2) / _1056
                        mem[_1289 + 32] = _1000 / 10^(-_933 + 18)
                        require ext_code.size(address(_889))
                        staticcall address(_889).exchangeRateStored() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1293 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1293] == mem[_1293]
                        mem[_1289 + 64] = mem[_1293]
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(address(_889))
                        staticcall address(_889).0x70a08231 with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1320 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1320] == mem[_1320]
                        mem[_1289 + 96] = mem[_1320]
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(address(_889))
                        staticcall address(_889).borrowBalanceStored(address rg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1341 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1341] == mem[_1341]
                        mem[_1289 + 128] = mem[_1341]
                        mem[_1289 + 160] = _1278
                        require ext_code.size(address(_889))
                        staticcall address(_889).getCash() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1360 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1360] == mem[_1360]
                        if _1278 > -mem[_1360] - 1:
                            revert with 'NH{q', 17
                        if _1278 + mem[_1360] < _1278:
                            revert with 0, 'math-not-safe'
                        mem[_1289 + 192] = _1278 + mem[_1360]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _1385 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowCaps(address rg1) with:
                                gas gas_remaining wei
                               args address(_1385)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1397 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1397] == mem[_1397]
                        mem[_1289 + 224] = mem[_1397]
                        require ext_code.size(address(_889))
                        staticcall address(_889).0xd3bd2c72 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1411 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1411] == mem[_1411]
                        mem[_1289 + 256] = mem[_1411]
                        require ext_code.size(address(_889))
                        staticcall address(_889).0xcd91801c with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1423 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1423] == mem[_1423]
                        mem[_1289 + 288] = mem[_1423]
                        mem[_1289 + 320] = _1240
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _1435 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = address(_1435)
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 rg1, address rg2) with:
                                gas gas_remaining wei
                               args 0, address(_1435)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1448 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1448] == mem[_1448]
                        mem[_1289 + 352] = mem[_1448]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _1458 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = 1
                        mem[mem[64] + 36] = address(_1458)
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 rg1, address rg2) with:
                                gas gas_remaining wei
                               args 1, address(_1458)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1474 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1474] == mem[_1474]
                        mem[_1289 + 384] = mem[_1474]
                        mem[_1289 + 416] = bool(_1252)
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _1487 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowGuardianPaused(address rg1) with:
                                gas gas_remaining wei
                               args address(_1487)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1506 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1506] == bool(mem[_1506])
                        mem[_1289 + 448] = bool(mem[_1506])
                        if idx >= mem[floor32(arg2.length) + 225]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + floor32(arg2.length) + 257] = _1289
                    else:
                        t = 10
                        u = 1
                        s = -_933 + 18
                        while s > 1:
                            if t > -1 / t:
                                revert with 'NH{q', 17
                            if not bool(s):
                                t = t * t
                                u = u
                                s = uint255(s) * 0.5
                                continue 
                            t = t * t
                            u = u * t
                            s = uint255(s) * 0.5
                            continue 
                        if u > -1 / t:
                            revert with 'NH{q', 17
                        if not u * t:
                            revert with 'NH{q', 18
                        if _1000 / u * t and 10^18 > -1 / _1000 / u * t:
                            revert with 'NH{q', 17
                        if 10^18 * _1000 / u * t / 10^18 != _1000 / u * t:
                            revert with 0, 'math-not-safe'
                        if 10^18 * _1000 / u * t > -(mem[_1053] / 2) - 1:
                            revert with 'NH{q', 17
                        if (10^18 * _1000 / u * t) + (mem[_1053] / 2) < 10^18 * _1000 / u * t:
                            revert with 0, 'math-not-safe'
                        if not mem[_1053]:
                            revert with 'NH{q', 18
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.markets(address rg1) with:
                                gas gas_remaining wei
                               args address(_889)
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1333 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_1333] == bool(mem[_1333])
                        _1347 = mem[_1333 + 32]
                        require mem[_1333 + 32] == mem[_1333 + 32]
                        _1359 = mem[_1333 + 64]
                        require mem[_1333 + 64] == bool(mem[_1333 + 64])
                        require ext_code.size(address(_889))
                        staticcall address(_889).totalBorrows() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1366 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1371 = mem[_1366]
                        require mem[_1366] == mem[_1366]
                        _1377 = mem[64]
                        mem[64] = mem[64] + 480
                        mem[_1377] = (10^18 * _1000 / u * t) + (_1056 / 2) / _1056
                        mem[_1377 + 32] = _1000 / u * t
                        require ext_code.size(address(_889))
                        staticcall address(_889).exchangeRateStored() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1381 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1381] == mem[_1381]
                        mem[_1377 + 64] = mem[_1381]
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(address(_889))
                        staticcall address(_889).0x70a08231 with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1406 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1406] == mem[_1406]
                        mem[_1377 + 96] = mem[_1406]
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(address(_889))
                        staticcall address(_889).borrowBalanceStored(address rg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1430 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1430] == mem[_1430]
                        mem[_1377 + 128] = mem[_1430]
                        mem[_1377 + 160] = _1371
                        require ext_code.size(address(_889))
                        staticcall address(_889).getCash() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1440 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1440] == mem[_1440]
                        if _1371 > -mem[_1440] - 1:
                            revert with 'NH{q', 17
                        if _1371 + mem[_1440] < _1371:
                            revert with 0, 'math-not-safe'
                        mem[_1377 + 192] = _1371 + mem[_1440]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _1462 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowCaps(address rg1) with:
                                gas gas_remaining wei
                               args address(_1462)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1471 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1471] == mem[_1471]
                        mem[_1377 + 224] = mem[_1471]
                        require ext_code.size(address(_889))
                        staticcall address(_889).0xd3bd2c72 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1484 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1484] == mem[_1484]
                        mem[_1377 + 256] = mem[_1484]
                        require ext_code.size(address(_889))
                        staticcall address(_889).0xcd91801c with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1507 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1507] == mem[_1507]
                        mem[_1377 + 288] = mem[_1507]
                        mem[_1377 + 320] = _1347
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _1518 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = address(_1518)
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 rg1, address rg2) with:
                                gas gas_remaining wei
                               args 0, address(_1518)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1532 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1532] == mem[_1532]
                        mem[_1377 + 352] = mem[_1532]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _1539 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = 1
                        mem[mem[64] + 36] = address(_1539)
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 rg1, address rg2) with:
                                gas gas_remaining wei
                               args 1, address(_1539)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1550 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1550] == mem[_1550]
                        mem[_1377 + 384] = mem[_1550]
                        mem[_1377 + 416] = bool(_1359)
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _1561 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowGuardianPaused(address rg1) with:
                                gas gas_remaining wei
                               args address(_1561)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1569 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1569] == bool(mem[_1569])
                        mem[_1377 + 448] = bool(mem[_1569])
                        if idx >= mem[floor32(arg2.length) + 225]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + floor32(arg2.length) + 257] = _1377
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _902 = mem[64]
        mem[64] = mem[64] + 128
        mem[_902] = 0
        mem[_902 + 32] = 0
        mem[_902 + 64] = 0
        mem[_902 + 96] = 0
        _904 = mem[64]
        mem[64] = mem[64] + 128
        mem[mem[64] + 4] = 0
        mem[mem[64] + 36] = arg1
        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardAccrued(uint8 rg1, address rg2) with:
                gas gas_remaining wei
               args 0, arg1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _931 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_931] == mem[_931]
        mem[_904] = mem[_931]
        mem[mem[64] + 4] = 1
        mem[mem[64] + 36] = arg1
        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardAccrued(uint8 rg1, address rg2) with:
                gas gas_remaining wei
               args 1, arg1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _978 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_978] == mem[_978]
        mem[_904 + 32] = mem[_978]
        mem[mem[64] + 4] = arg1
        require ext_code.size(0x8729438eb15e2c8b576fcc6aecda6a148776c0f5)
        staticcall 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5.delegates(address rg1) with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1008 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1008] == mem[_1008 + 12 len 20]
        mem[_904 + 64] = mem[_1008 + 12 len 20]
        mem[mem[64] + 4] = arg1
        require ext_code.size(0x8729438eb15e2c8b576fcc6aecda6a148776c0f5)
        staticcall 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5.getCurrentVotes(address rg1) with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1043 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1043] == mem[_1043 + 20 len 12]
        mem[_904 + 96] = mem[_1043 + 20 len 12]
        _1058 = mem[64]
        mem[mem[64]] = 160
        _1066 = mem[floor32(arg2.length) + 225]
        mem[mem[64] + 160] = mem[floor32(arg2.length) + 225]
        idx = 0
        s = floor32(arg2.length) + 257
        t = mem[64] + 192
        while idx < _1066:
            _1223 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_1223 + 32]
            mem[t + 64] = mem[_1223 + 64]
            mem[t + 96] = mem[_1223 + 96]
            mem[t + 128] = mem[_1223 + 128]
            mem[t + 160] = mem[_1223 + 160]
            mem[t + 192] = mem[_1223 + 192]
            mem[t + 224] = mem[_1223 + 224]
            mem[t + 256] = mem[_1223 + 256]
            mem[t + 288] = mem[_1223 + 288]
            mem[t + 320] = mem[_1223 + 320]
            mem[t + 352] = mem[_1223 + 352]
            mem[t + 384] = mem[_1223 + 384]
            mem[t + 416] = bool(mem[_1223 + 416])
            mem[t + 448] = bool(mem[_1223 + 448])
            idx = idx + 1
            s = s + 32
            t = t + 480
            continue 
        mem[_1058 + 32] = mem[_904]
        mem[_1058 + 64] = mem[_904 + 32]
        mem[_1058 + 96] = mem[_904 + 76 len 20]
        mem[_1058 + 128] = mem[_904 + 116 len 12]
        return memory
          from mem[64]
           len _1058 + (480 * _1066) + -mem[64] + 192
    mem[64] = floor32(arg2.length) + (32 * arg2.length) + 737
    mem[floor32(arg2.length) + (32 * arg2.length) + 257] = 0
    mem[floor32(arg2.length) + (32 * arg2.length) + 289] = 0
    mem[floor32(arg2.length) + (32 * arg2.length) + 321] = 0
    mem[floor32(arg2.length) + (32 * arg2.length) + 353] = 0
    mem[floor32(arg2.length) + (32 * arg2.length) + 385] = 0
    mem[floor32(arg2.length) + (32 * arg2.length) + 417] = 0
    mem[floor32(arg2.length) + (32 * arg2.length) + 449] = 0
    mem[floor32(arg2.length) + (32 * arg2.length) + 481] = 0
    mem[floor32(arg2.length) + (32 * arg2.length) + 513] = 0
    mem[floor32(arg2.length) + (32 * arg2.length) + 545] = 0
    mem[floor32(arg2.length) + (32 * arg2.length) + 577] = 0
    mem[floor32(arg2.length) + (32 * arg2.length) + 609] = 0
    mem[floor32(arg2.length) + (32 * arg2.length) + 641] = 0
    mem[floor32(arg2.length) + (32 * arg2.length) + 673] = 0
    mem[floor32(arg2.length) + (32 * arg2.length) + 705] = 0
    mem[var45001] = floor32(arg2.length) + (32 * arg2.length) + 257
    s = var45001
    idx = var45002
    while idx - 1:
        mem[64] = mem[64] + 480
        mem[floor32(arg2.length) + (32 * arg2.length) + 257] = 0
        mem[floor32(arg2.length) + (32 * arg2.length) + 289] = 0
        mem[floor32(arg2.length) + (32 * arg2.length) + 321] = 0
        mem[floor32(arg2.length) + (32 * arg2.length) + 353] = 0
        mem[floor32(arg2.length) + (32 * arg2.length) + 385] = 0
        mem[floor32(arg2.length) + (32 * arg2.length) + 417] = 0
        mem[floor32(arg2.length) + (32 * arg2.length) + 449] = 0
        mem[floor32(arg2.length) + (32 * arg2.length) + 481] = 0
        mem[floor32(arg2.length) + (32 * arg2.length) + 513] = 0
        mem[floor32(arg2.length) + (32 * arg2.length) + 545] = 0
        mem[floor32(arg2.length) + (32 * arg2.length) + 577] = 0
        mem[floor32(arg2.length) + (32 * arg2.length) + 609] = 0
        mem[floor32(arg2.length) + (32 * arg2.length) + 641] = 0
        mem[floor32(arg2.length) + (32 * arg2.length) + 673] = 0
        mem[floor32(arg2.length) + (32 * arg2.length) + 705] = 0
        mem[s + 32] = floor32(arg2.length) + (32 * arg2.length) + 257
        s = s + 32
        idx = idx - 1
        continue 
    _1482 = mem[96]
    idx = 0
    while idx < _1482:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _1486 = mem[(32 * idx) + 128]
        if 0x5c0401e81bc07ca70fad469b451682c0d747ef1c == mem[(32 * idx) + 140 len 20]:
            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.oracle() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1505 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1508 = mem[_1505]
            require mem[_1505] == mem[_1505 + 12 len 20]
            mem[mem[64] + 4] = address(_1486)
            require ext_code.size(address(_1508))
            staticcall address(_1508).getUnderlyingPrice(address rg1) with:
                    gas gas_remaining wei
                   args address(_1486)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1526 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1530 = mem[_1526]
            require mem[_1526] == mem[_1526]
            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.oracle() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1541 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1544 = mem[_1541]
            require mem[_1541] == mem[_1541 + 12 len 20]
            mem[mem[64] + 4] = 0x5c0401e81bc07ca70fad469b451682c0d747ef1c
            require ext_code.size(address(_1544))
            staticcall address(_1544).getUnderlyingPrice(address rg1) with:
                    gas gas_remaining wei
                   args 0x5c0401e81bc07ca70fad469b451682c0d747ef1c
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1563 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1565 = mem[_1563]
            require mem[_1563] == mem[_1563]
            if _1530 and 10^18 > -1 / _1530:
                revert with 'NH{q', 17
            if 10^18 * _1530 / 10^18 != _1530:
                revert with 0, 'math-not-safe'
            if 10^18 * _1530 > -(mem[_1563] / 2) - 1:
                revert with 'NH{q', 17
            if (10^18 * _1530) + (mem[_1563] / 2) < 10^18 * _1530:
                revert with 0, 'math-not-safe'
            if not mem[_1563]:
                revert with 'NH{q', 18
            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.markets(address rg1) with:
                    gas gas_remaining wei
                   args address(_1486)
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1610 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_1610] == bool(mem[_1610])
            _1617 = mem[_1610 + 32]
            require mem[_1610 + 32] == mem[_1610 + 32]
            _1622 = mem[_1610 + 64]
            require mem[_1610 + 64] == bool(mem[_1610 + 64])
            require ext_code.size(address(_1486))
            staticcall address(_1486).totalBorrows() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1629 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1632 = mem[_1629]
            require mem[_1629] == mem[_1629]
            _1639 = mem[64]
            mem[64] = mem[64] + 480
            mem[_1639] = (10^18 * _1530) + (_1565 / 2) / _1565
            mem[_1639 + 32] = _1530
            require ext_code.size(address(_1486))
            staticcall address(_1486).exchangeRateStored() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1645 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1645] == mem[_1645]
            mem[_1639 + 64] = mem[_1645]
            mem[mem[64] + 4] = arg1
            require ext_code.size(address(_1486))
            staticcall address(_1486).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1667 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1667] == mem[_1667]
            mem[_1639 + 96] = mem[_1667]
            mem[mem[64] + 4] = arg1
            require ext_code.size(address(_1486))
            staticcall address(_1486).borrowBalanceStored(address rg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1691 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1691] == mem[_1691]
            mem[_1639 + 128] = mem[_1691]
            mem[_1639 + 160] = _1632
            require ext_code.size(address(_1486))
            staticcall address(_1486).getCash() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1704 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1704] == mem[_1704]
            if _1632 > -mem[_1704] - 1:
                revert with 'NH{q', 17
            if _1632 + mem[_1704] < _1632:
                revert with 0, 'math-not-safe'
            mem[_1639 + 192] = _1632 + mem[_1704]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _1723 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowCaps(address rg1) with:
                    gas gas_remaining wei
                   args address(_1723)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1735 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1735] == mem[_1735]
            mem[_1639 + 224] = mem[_1735]
            require ext_code.size(address(_1486))
            staticcall address(_1486).0xd3bd2c72 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1745 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1745] == mem[_1745]
            mem[_1639 + 256] = mem[_1745]
            require ext_code.size(address(_1486))
            staticcall address(_1486).0xcd91801c with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1763 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1763] == mem[_1763]
            mem[_1639 + 288] = mem[_1763]
            mem[_1639 + 320] = _1617
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _1774 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = 0
            mem[mem[64] + 36] = address(_1774)
            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 rg1, address rg2) with:
                    gas gas_remaining wei
                   args 0, address(_1774)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1791 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1791] == mem[_1791]
            mem[_1639 + 352] = mem[_1791]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _1802 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = 1
            mem[mem[64] + 36] = address(_1802)
            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 rg1, address rg2) with:
                    gas gas_remaining wei
                   args 1, address(_1802)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1817 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1817] == mem[_1817]
            mem[_1639 + 384] = mem[_1817]
            mem[_1639 + 416] = bool(_1622)
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _1826 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowGuardianPaused(address rg1) with:
                    gas gas_remaining wei
                   args address(_1826)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1839 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1839] == bool(mem[_1839])
            mem[_1639 + 448] = bool(mem[_1839])
            if idx >= mem[floor32(arg2.length) + 225]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(arg2.length) + 257] = _1639
        else:
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].underlying() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1495 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1495] == mem[_1495 + 12 len 20]
            require ext_code.size(mem[_1495 + 12 len 20])
            staticcall mem[_1495 + 12 len 20].0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1514 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1522 = mem[_1514]
            require mem[_1514] == mem[_1514]
            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.oracle() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1531 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1533 = mem[_1531]
            require mem[_1531] == mem[_1531 + 12 len 20]
            mem[mem[64] + 4] = address(_1486)
            require ext_code.size(address(_1533))
            staticcall address(_1533).getUnderlyingPrice(address rg1) with:
                    gas gas_remaining wei
                   args address(_1486)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1548 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1551 = mem[_1548]
            require mem[_1548] == mem[_1548]
            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.oracle() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1564 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1566 = mem[_1564]
            require mem[_1564] == mem[_1564 + 12 len 20]
            mem[mem[64] + 4] = 0x5c0401e81bc07ca70fad469b451682c0d747ef1c
            require ext_code.size(address(_1566))
            staticcall address(_1566).getUnderlyingPrice(address rg1) with:
                    gas gas_remaining wei
                   args 0x5c0401e81bc07ca70fad469b451682c0d747ef1c
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1577 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1578 = mem[_1577]
            require mem[_1577] == mem[_1577]
            if 18 < _1522:
                revert with 'NH{q', 17
            if not -_1522 + 18:
                if _1551 and 10^18 > -1 / _1551:
                    revert with 'NH{q', 17
                if 10^18 * _1551 / 10^18 != _1551:
                    revert with 0, 'math-not-safe'
                if 10^18 * _1551 > -(mem[_1577] / 2) - 1:
                    revert with 'NH{q', 17
                if (10^18 * _1551) + (mem[_1577] / 2) < 10^18 * _1551:
                    revert with 0, 'math-not-safe'
                if not mem[_1577]:
                    revert with 'NH{q', 18
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.markets(address rg1) with:
                        gas gas_remaining wei
                       args address(_1486)
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1631 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_1631] == bool(mem[_1631])
                _1642 = mem[_1631 + 32]
                require mem[_1631 + 32] == mem[_1631 + 32]
                _1650 = mem[_1631 + 64]
                require mem[_1631 + 64] == bool(mem[_1631 + 64])
                require ext_code.size(address(_1486))
                staticcall address(_1486).totalBorrows() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1659 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1661 = mem[_1659]
                require mem[_1659] == mem[_1659]
                _1672 = mem[64]
                mem[64] = mem[64] + 480
                mem[_1672] = (10^18 * _1551) + (_1578 / 2) / _1578
                mem[_1672 + 32] = _1551
                require ext_code.size(address(_1486))
                staticcall address(_1486).exchangeRateStored() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1675 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1675] == mem[_1675]
                mem[_1672 + 64] = mem[_1675]
                mem[mem[64] + 4] = arg1
                require ext_code.size(address(_1486))
                staticcall address(_1486).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1697 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1697] == mem[_1697]
                mem[_1672 + 96] = mem[_1697]
                mem[mem[64] + 4] = arg1
                require ext_code.size(address(_1486))
                staticcall address(_1486).borrowBalanceStored(address rg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1716 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1716] == mem[_1716]
                mem[_1672 + 128] = mem[_1716]
                mem[_1672 + 160] = _1661
                require ext_code.size(address(_1486))
                staticcall address(_1486).getCash() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1729 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1729] == mem[_1729]
                if _1661 > -mem[_1729] - 1:
                    revert with 'NH{q', 17
                if _1661 + mem[_1729] < _1661:
                    revert with 0, 'math-not-safe'
                mem[_1672 + 192] = _1661 + mem[_1729]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _1750 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowCaps(address rg1) with:
                        gas gas_remaining wei
                       args address(_1750)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1766 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1766] == mem[_1766]
                mem[_1672 + 224] = mem[_1766]
                require ext_code.size(address(_1486))
                staticcall address(_1486).0xd3bd2c72 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1779 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1779] == mem[_1779]
                mem[_1672 + 256] = mem[_1779]
                require ext_code.size(address(_1486))
                staticcall address(_1486).0xcd91801c with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1792 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1792] == mem[_1792]
                mem[_1672 + 288] = mem[_1792]
                mem[_1672 + 320] = _1642
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _1806 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = address(_1806)
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 rg1, address rg2) with:
                        gas gas_remaining wei
                       args 0, address(_1806)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1818 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1818] == mem[_1818]
                mem[_1672 + 352] = mem[_1818]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _1829 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = 1
                mem[mem[64] + 36] = address(_1829)
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 rg1, address rg2) with:
                        gas gas_remaining wei
                       args 1, address(_1829)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1843 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1843] == mem[_1843]
                mem[_1672 + 384] = mem[_1843]
                mem[_1672 + 416] = bool(_1650)
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _1853 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowGuardianPaused(address rg1) with:
                        gas gas_remaining wei
                       args address(_1853)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1863 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1863] == bool(mem[_1863])
                mem[_1672 + 448] = bool(mem[_1863])
                if idx >= mem[floor32(arg2.length) + 225]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(arg2.length) + 257] = _1672
            else:
                if bool(bool(-_1522 + 18 < 78)) or bool(bool(-_1522 + 18 < 32)):
                    if 10^(-_1522 + 18) > -1:
                        revert with 'NH{q', 17
                    if not 10^(-_1522 + 18):
                        revert with 'NH{q', 18
                    if _1551 / 10^(-_1522 + 18) and 10^18 > -1 / _1551 / 10^(-_1522 + 18):
                        revert with 'NH{q', 17
                    if 10^18 * _1551 / 10^(-_1522 + 18) / 10^18 != _1551 / 10^(-_1522 + 18):
                        revert with 0, 'math-not-safe'
                    if 10^18 * _1551 / 10^(-_1522 + 18) > -(mem[_1577] / 2) - 1:
                        revert with 'NH{q', 17
                    if (10^18 * _1551 / 10^(-_1522 + 18)) + (mem[_1577] / 2) < 10^18 * _1551 / 10^(-_1522 + 18):
                        revert with 0, 'math-not-safe'
                    if not mem[_1577]:
                        revert with 'NH{q', 18
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.markets(address rg1) with:
                            gas gas_remaining wei
                           args address(_1486)
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1635 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_1635] == bool(mem[_1635])
                    _1649 = mem[_1635 + 32]
                    require mem[_1635 + 32] == mem[_1635 + 32]
                    _1654 = mem[_1635 + 64]
                    require mem[_1635 + 64] == bool(mem[_1635 + 64])
                    require ext_code.size(address(_1486))
                    staticcall address(_1486).totalBorrows() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1668 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1670 = mem[_1668]
                    require mem[_1668] == mem[_1668]
                    _1680 = mem[64]
                    mem[64] = mem[64] + 480
                    mem[_1680] = (10^18 * _1551 / 10^(-_1522 + 18)) + (_1578 / 2) / _1578
                    mem[_1680 + 32] = _1551 / 10^(-_1522 + 18)
                    require ext_code.size(address(_1486))
                    staticcall address(_1486).exchangeRateStored() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1684 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1684] == mem[_1684]
                    mem[_1680 + 64] = mem[_1684]
                    mem[mem[64] + 4] = arg1
                    require ext_code.size(address(_1486))
                    staticcall address(_1486).0x70a08231 with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1705 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1705] == mem[_1705]
                    mem[_1680 + 96] = mem[_1705]
                    mem[mem[64] + 4] = arg1
                    require ext_code.size(address(_1486))
                    staticcall address(_1486).borrowBalanceStored(address rg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1722 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1722] == mem[_1722]
                    mem[_1680 + 128] = mem[_1722]
                    mem[_1680 + 160] = _1670
                    require ext_code.size(address(_1486))
                    staticcall address(_1486).getCash() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1737 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1737] == mem[_1737]
                    if _1670 > -mem[_1737] - 1:
                        revert with 'NH{q', 17
                    if _1670 + mem[_1737] < _1670:
                        revert with 0, 'math-not-safe'
                    mem[_1680 + 192] = _1670 + mem[_1737]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1760 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowCaps(address rg1) with:
                            gas gas_remaining wei
                           args address(_1760)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1772 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1772] == mem[_1772]
                    mem[_1680 + 224] = mem[_1772]
                    require ext_code.size(address(_1486))
                    staticcall address(_1486).0xd3bd2c72 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1786 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1786] == mem[_1786]
                    mem[_1680 + 256] = mem[_1786]
                    require ext_code.size(address(_1486))
                    staticcall address(_1486).0xcd91801c with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1798 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1798] == mem[_1798]
                    mem[_1680 + 288] = mem[_1798]
                    mem[_1680 + 320] = _1649
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1810 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = 0
                    mem[mem[64] + 36] = address(_1810)
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 rg1, address rg2) with:
                            gas gas_remaining wei
                           args 0, address(_1810)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1823 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1823] == mem[_1823]
                    mem[_1680 + 352] = mem[_1823]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1833 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = 1
                    mem[mem[64] + 36] = address(_1833)
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 rg1, address rg2) with:
                            gas gas_remaining wei
                           args 1, address(_1833)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1849 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1849] == mem[_1849]
                    mem[_1680 + 384] = mem[_1849]
                    mem[_1680 + 416] = bool(_1654)
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1859 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowGuardianPaused(address rg1) with:
                            gas gas_remaining wei
                           args address(_1859)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1868 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1868] == bool(mem[_1868])
                    mem[_1680 + 448] = bool(mem[_1868])
                    if idx >= mem[floor32(arg2.length) + 225]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(arg2.length) + 257] = _1680
                else:
                    t = 10
                    u = 1
                    s = -_1522 + 18
                    while s > 1:
                        if t > -1 / t:
                            revert with 'NH{q', 17
                        _1482 = mem[96]
                        if not bool(s):
                            t = t * t
                            u = u
                            s = uint255(s) * 0.5
                            continue 
                        t = t * t
                        u = u * t
                        s = uint255(s) * 0.5
                        continue 
                    if u > -1 / t:
                        revert with 'NH{q', 17
                    if not u * t:
                        revert with 'NH{q', 18
                    if _1551 / u * t and 10^18 > -1 / _1551 / u * t:
                        revert with 'NH{q', 17
                    if 10^18 * _1551 / u * t / 10^18 != _1551 / u * t:
                        revert with 0, 'math-not-safe'
                    if 10^18 * _1551 / u * t > -(mem[_1577] / 2) - 1:
                        revert with 'NH{q', 17
                    if (10^18 * _1551 / u * t) + (mem[_1577] / 2) < 10^18 * _1551 / u * t:
                        revert with 0, 'math-not-safe'
                    if not mem[_1577]:
                        revert with 'NH{q', 18
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.markets(address rg1) with:
                            gas gas_remaining wei
                           args address(_1486)
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1715 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_1715] == bool(mem[_1715])
                    _1726 = mem[_1715 + 32]
                    require mem[_1715 + 32] == mem[_1715 + 32]
                    _1736 = mem[_1715 + 64]
                    require mem[_1715 + 64] == bool(mem[_1715 + 64])
                    require ext_code.size(address(_1486))
                    staticcall address(_1486).totalBorrows() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1742 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1746 = mem[_1742]
                    require mem[_1742] == mem[_1742]
                    _1752 = mem[64]
                    mem[64] = mem[64] + 480
                    mem[_1752] = (10^18 * _1551 / u * t) + (_1578 / 2) / _1578
                    mem[_1752 + 32] = _1551 / u * t
                    require ext_code.size(address(_1486))
                    staticcall address(_1486).exchangeRateStored() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1756 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1756] == mem[_1756]
                    mem[_1752 + 64] = mem[_1756]
                    mem[mem[64] + 4] = arg1
                    require ext_code.size(address(_1486))
                    staticcall address(_1486).0x70a08231 with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1781 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1781] == mem[_1781]
                    mem[_1752 + 96] = mem[_1781]
                    mem[mem[64] + 4] = arg1
                    require ext_code.size(address(_1486))
                    staticcall address(_1486).borrowBalanceStored(address rg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1805 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1805] == mem[_1805]
                    mem[_1752 + 128] = mem[_1805]
                    mem[_1752 + 160] = _1746
                    require ext_code.size(address(_1486))
                    staticcall address(_1486).getCash() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1815 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1815] == mem[_1815]
                    if _1746 > -mem[_1815] - 1:
                        revert with 'NH{q', 17
                    if _1746 + mem[_1815] < _1746:
                        revert with 0, 'math-not-safe'
                    mem[_1752 + 192] = _1746 + mem[_1815]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1837 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowCaps(address rg1) with:
                            gas gas_remaining wei
                           args address(_1837)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1846 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1846] == mem[_1846]
                    mem[_1752 + 224] = mem[_1846]
                    require ext_code.size(address(_1486))
                    staticcall address(_1486).0xd3bd2c72 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1857 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1857] == mem[_1857]
                    mem[_1752 + 256] = mem[_1857]
                    require ext_code.size(address(_1486))
                    staticcall address(_1486).0xcd91801c with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1869 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1869] == mem[_1869]
                    mem[_1752 + 288] = mem[_1869]
                    mem[_1752 + 320] = _1726
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1875 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = 0
                    mem[mem[64] + 36] = address(_1875)
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 rg1, address rg2) with:
                            gas gas_remaining wei
                           args 0, address(_1875)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1878 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1878] == mem[_1878]
                    mem[_1752 + 352] = mem[_1878]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1881 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = 1
                    mem[mem[64] + 36] = address(_1881)
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 rg1, address rg2) with:
                            gas gas_remaining wei
                           args 1, address(_1881)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1884 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1884] == mem[_1884]
                    mem[_1752 + 384] = mem[_1884]
                    mem[_1752 + 416] = bool(_1736)
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1887 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowGuardianPaused(address rg1) with:
                            gas gas_remaining wei
                           args address(_1887)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1890 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1890] == bool(mem[_1890])
                    mem[_1752 + 448] = bool(mem[_1890])
                    if idx >= mem[floor32(arg2.length) + 225]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(arg2.length) + 257] = _1752
        if idx == -1:
            revert with 'NH{q', 17
        _1482 = mem[96]
        idx = idx + 1
        continue 
    _1494 = mem[64]
    mem[64] = mem[64] + 128
    mem[_1494] = 0
    mem[_1494 + 32] = 0
    mem[_1494 + 64] = 0
    mem[_1494 + 96] = 0
    _1496 = mem[64]
    mem[64] = mem[64] + 128
    mem[mem[64] + 4] = 0
    mem[mem[64] + 36] = arg1
    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardAccrued(uint8 rg1, address rg2) with:
            gas gas_remaining wei
           args 0, arg1
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1520 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_1520] == mem[_1520]
    mem[_1496] = mem[_1520]
    mem[mem[64] + 4] = 1
    mem[mem[64] + 36] = arg1
    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardAccrued(uint8 rg1, address rg2) with:
            gas gas_remaining wei
           args 1, arg1
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1542 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_1542] == mem[_1542]
    mem[_1496 + 32] = mem[_1542]
    mem[mem[64] + 4] = arg1
    require ext_code.size(0x8729438eb15e2c8b576fcc6aecda6a148776c0f5)
    staticcall 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5.delegates(address rg1) with:
            gas gas_remaining wei
           args address(arg1)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1555 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_1555] == mem[_1555 + 12 len 20]
    mem[_1496 + 64] = mem[_1555 + 12 len 20]
    mem[mem[64] + 4] = arg1
    require ext_code.size(0x8729438eb15e2c8b576fcc6aecda6a148776c0f5)
    staticcall 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5.getCurrentVotes(address rg1) with:
            gas gas_remaining wei
           args address(arg1)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1573 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_1573] == mem[_1573 + 20 len 12]
    mem[_1496 + 96] = mem[_1573 + 20 len 12]
    _1579 = mem[64]
    mem[mem[64]] = 160
    _1580 = mem[floor32(arg2.length) + 225]
    mem[mem[64] + 160] = mem[floor32(arg2.length) + 225]
    idx = 0
    s = floor32(arg2.length) + 257
    t = mem[64] + 192
    while idx < _1580:
        _1638 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_1638 + 32]
        mem[t + 64] = mem[_1638 + 64]
        mem[t + 96] = mem[_1638 + 96]
        mem[t + 128] = mem[_1638 + 128]
        mem[t + 160] = mem[_1638 + 160]
        mem[t + 192] = mem[_1638 + 192]
        mem[t + 224] = mem[_1638 + 224]
        mem[t + 256] = mem[_1638 + 256]
        mem[t + 288] = mem[_1638 + 288]
        mem[t + 320] = mem[_1638 + 320]
        mem[t + 352] = mem[_1638 + 352]
        mem[t + 384] = mem[_1638 + 384]
        mem[t + 416] = bool(mem[_1638 + 416])
        mem[t + 448] = bool(mem[_1638 + 448])
        idx = idx + 1
        s = s + 32
        t = t + 480
        continue 
    mem[_1579 + 32] = mem[_1496]
    mem[_1579 + 64] = mem[_1496 + 32]
    mem[_1579 + 96] = mem[_1496 + 76 len 20]
    mem[_1579 + 128] = mem[_1496 + 116 len 12]
    return memory
      from mem[64]
       len _1579 + (480 * _1580) + -mem[64] + 192
}



}
